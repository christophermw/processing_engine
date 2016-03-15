# Copyright 2008, 2009, StrongMail Systems, Inc.  All rights reserved.

require 'MailingServiceDriver'
require 'soap/header/simplehandler'
require 'soap/element'
require 'xsd/datatypes'

class WsseAuthHeader < SOAP::Header::Handler
  NAMESPACE= 'http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-secext-1.0.xsd'

  def initialize(username, password, organization, sso=false, suborganization=nil)
    super(XSD::QName.new(NAMESPACE, 'Security'))
    @username = username
    @password = password
    @organization = organization
    @sso = sso
    @suborganization = suborganization
  end

  def on_outbound
    security = SOAP::SOAPElement.new('wsse:Security')
    security.extraattr['xmlns:wsse'] = 'http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-secext-1.0.xsd'
    unt = SOAP::SOAPElement.new('wsse:UsernameToken')
    unt.extraattr['xmlns:wsu'] = 'http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd'
    unt.extraattr['xmlns:wsse'] = 'http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-secext-1.0.xsd'
    unt.extraattr['wsu:Id'] = 'UsernameToken-12499848'
    un = SOAP::SOAPElement.new('wsse:Username', @username)
    un.extraattr['xmlns:wsse'] = 'http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-secext-1.0.xsd'
    unt.add(un)
    pw = SOAP::SOAPElement.new('wsse:Password', @password)
    pw.extraattr['Type'] = 'http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-username-token-profile-1.0#PasswordText'
    unt.add(pw)
    orgtok = SOAP::SOAPElement.new('OrganizationToken')
    orgtok.extraattr['xmlns'] = 'http://www.strongmail.com/services/2009/03/02/schema'
    orgname = SOAP::SOAPElement.new('organizationName', @organization)
    orgtok.add(orgname)
    unless @suborganization.blank?
      suborgid = SOAP::SOAPElement.new('subOrganizationId')
      suborgid.add(SOAP::SOAPElement.new('id', @suborganization))
      orgtok.add(suborgid)
    end
    security.add(unt)
    security.add(orgtok)
    if(@sso)
      ssotok = SOAP::SOAPElement.new('IsSSO')
      ssotok.extraattr['xmlns'] = 'http://www.strongmail.com/services/2009/03/02/schema'
      security.add(ssotok)
    end
    # puts security.inspect
    return SOAP::SOAPHeaderItem.new(security, true)
  end

  #
  # Static method to return the service end point
  #
  def self.sm_service(opts={})
    # create the service
    obj = MailingService.new(opts["endpoint_url"])

    # run ruby with -d to see SOAP wiredumps.
    obj.wiredump_dev = STDERR if $DEBUG

    # attach auth header handler
    obj.headerhandler << WsseAuthHeader.new(opts["username"], opts["password"], opts["organization"], opts["sso"], opts["suborganization"])

    obj
  end
end
