require 'MailingService.rb'
require 'MailingServiceMappingRegistry.rb'
require 'soap/rpc/driver'

class MailingService < ::SOAP::RPC::Driver
  DefaultEndpointUrl = "https://10.0.5.43:4443/sm/services/mailing/2009/03/02"

  Methods = [
    [ "",
      "addRecords",
      [ [:in, "addRecords", ["::SOAP::SOAPElement", "http://www.strongmail.com/services/2009/03/02/schema", "addRecords"]],
        [:out, "addRecordsResponse", ["::SOAP::SOAPElement", "http://www.strongmail.com/services/2009/03/02/schema", "addRecordsResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"ObjectNotFoundFault"=>{:ns=>"http://www.strongmail.com/services/2009/03/02", :name=>"objectNotFoundFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "AuthorizationFault"=>{:ns=>"http://www.strongmail.com/services/2009/03/02", :name=>"authorizationFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "UnrecognizedObjectTypeFault"=>{:ns=>"http://www.strongmail.com/services/2009/03/02", :name=>"unrecognizedObjectTypeFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "UnexpectedFault"=>{:ns=>"http://www.strongmail.com/services/2009/03/02", :name=>"unexpectedFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "InvalidObjectFault"=>{:ns=>"http://www.strongmail.com/services/2009/03/02", :name=>"invalidObjectFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ConcurrentModificationFault"=>{:ns=>"http://www.strongmail.com/services/2009/03/02", :name=>"concurrentModificationFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}} }
    ],
    [ "",
      "getProgramNodes",
      [ [:in, "getProgramNodes", ["::SOAP::SOAPElement", "http://www.strongmail.com/services/2009/03/02/schema", "getProgramNodes"]],
        [:out, "getProgramNodesResponse", ["::SOAP::SOAPElement", "http://www.strongmail.com/services/2009/03/02/schema", "getProgramNodesResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"ObjectNotFoundFault"=>{:ns=>"http://www.strongmail.com/services/2009/03/02", :name=>"objectNotFoundFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "AuthorizationFault"=>{:ns=>"http://www.strongmail.com/services/2009/03/02", :name=>"authorizationFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "UnexpectedFault"=>{:ns=>"http://www.strongmail.com/services/2009/03/02", :name=>"unexpectedFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}} }
    ],
    [ "",
      "archive",
      [ [:in, "archive", ["::SOAP::SOAPElement", "http://www.strongmail.com/services/2009/03/02/schema", "archive"]],
        [:out, "archiveResponse", ["::SOAP::SOAPElement", "http://www.strongmail.com/services/2009/03/02/schema", "archiveResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"ObjectNotFoundFault"=>{:ns=>"http://www.strongmail.com/services/2009/03/02", :name=>"objectNotFoundFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "AuthorizationFault"=>{:ns=>"http://www.strongmail.com/services/2009/03/02", :name=>"authorizationFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "UnexpectedFault"=>{:ns=>"http://www.strongmail.com/services/2009/03/02", :name=>"unexpectedFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}} }
    ],
    [ "",
      "cancel",
      [ [:in, "cancel", ["::SOAP::SOAPElement", "http://www.strongmail.com/services/2009/03/02/schema", "cancel"]],
        [:out, "cancelResponse", ["::SOAP::SOAPElement", "http://www.strongmail.com/services/2009/03/02/schema", "cancelResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"ObjectNotFoundFault"=>{:ns=>"http://www.strongmail.com/services/2009/03/02", :name=>"objectNotFoundFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "AuthorizationFault"=>{:ns=>"http://www.strongmail.com/services/2009/03/02", :name=>"authorizationFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "UnexpectedFault"=>{:ns=>"http://www.strongmail.com/services/2009/03/02", :name=>"unexpectedFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}} }
    ],
    [ "",
      "cancelRefreshRecords",
      [ [:in, "cancelRefreshRecords", ["::SOAP::SOAPElement", "http://www.strongmail.com/services/2009/03/02/schema", "cancelRefreshRecords"]],
        [:out, "cancelRefreshRecordsResponse", ["::SOAP::SOAPElement", "http://www.strongmail.com/services/2009/03/02/schema", "cancelRefreshRecordsResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"ObjectNotFoundFault"=>{:ns=>"http://www.strongmail.com/services/2009/03/02", :name=>"objectNotFoundFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "AuthorizationFault"=>{:ns=>"http://www.strongmail.com/services/2009/03/02", :name=>"authorizationFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "UnexpectedFault"=>{:ns=>"http://www.strongmail.com/services/2009/03/02", :name=>"unexpectedFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}} }
    ],
    [ "",
      "close",
      [ [:in, "close", ["::SOAP::SOAPElement", "http://www.strongmail.com/services/2009/03/02/schema", "close"]],
        [:out, "closeResponse", ["::SOAP::SOAPElement", "http://www.strongmail.com/services/2009/03/02/schema", "closeResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"ObjectNotFoundFault"=>{:ns=>"http://www.strongmail.com/services/2009/03/02", :name=>"objectNotFoundFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "AuthorizationFault"=>{:ns=>"http://www.strongmail.com/services/2009/03/02", :name=>"authorizationFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "UnexpectedFault"=>{:ns=>"http://www.strongmail.com/services/2009/03/02", :name=>"unexpectedFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}} }
    ],
    [ "",
      "copy",
      [ [:in, "copy", ["::SOAP::SOAPElement", "http://www.strongmail.com/services/2009/03/02/schema", "copy"]],
        [:out, "copyResponse", ["::SOAP::SOAPElement", "http://www.strongmail.com/services/2009/03/02/schema", "copyResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"ObjectNotFoundFault"=>{:ns=>"http://www.strongmail.com/services/2009/03/02", :name=>"objectNotFoundFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "AuthorizationFault"=>{:ns=>"http://www.strongmail.com/services/2009/03/02", :name=>"authorizationFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "UnrecognizedObjectTypeFault"=>{:ns=>"http://www.strongmail.com/services/2009/03/02", :name=>"unrecognizedObjectTypeFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "UnexpectedFault"=>{:ns=>"http://www.strongmail.com/services/2009/03/02", :name=>"unexpectedFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "InvalidObjectFault"=>{:ns=>"http://www.strongmail.com/services/2009/03/02", :name=>"invalidObjectFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}} }
    ],
    [ "",
      "create",
      [ [:in, "create", ["::SOAP::SOAPElement", "http://www.strongmail.com/services/2009/03/02/schema", "create"]],
        [:out, "createResponse", ["::SOAP::SOAPElement", "http://www.strongmail.com/services/2009/03/02/schema", "createResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "",
      "dedupeRecords",
      [ [:in, "dedupeRecords", ["::SOAP::SOAPElement", "http://www.strongmail.com/services/2009/03/02/schema", "dedupeRecords"]],
        [:out, "dedupeRecordsResponse", ["::SOAP::SOAPElement", "http://www.strongmail.com/services/2009/03/02/schema", "dedupeRecordsResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"ObjectNotFoundFault"=>{:ns=>"http://www.strongmail.com/services/2009/03/02", :name=>"objectNotFoundFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "AuthorizationFault"=>{:ns=>"http://www.strongmail.com/services/2009/03/02", :name=>"authorizationFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "UnrecognizedObjectTypeFault"=>{:ns=>"http://www.strongmail.com/services/2009/03/02", :name=>"unrecognizedObjectTypeFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "UnexpectedFault"=>{:ns=>"http://www.strongmail.com/services/2009/03/02", :name=>"unexpectedFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ConcurrentModificationFault"=>{:ns=>"http://www.strongmail.com/services/2009/03/02", :name=>"concurrentModificationFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}} }
    ],
    [ "",
      "delete",
      [ [:in, "delete", ["::SOAP::SOAPElement", "http://www.strongmail.com/services/2009/03/02/schema", "delete"]],
        [:out, "deleteResponse", ["::SOAP::SOAPElement", "http://www.strongmail.com/services/2009/03/02/schema", "deleteResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "",
      "exportRecords",
      [ [:in, "exportRecords", ["::SOAP::SOAPElement", "http://www.strongmail.com/services/2009/03/02/schema", "exportRecords"]],
        [:out, "exportRecordsResponse", ["::SOAP::SOAPElement", "http://www.strongmail.com/services/2009/03/02/schema", "exportRecordsResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"ObjectNotFoundFault"=>{:ns=>"http://www.strongmail.com/services/2009/03/02", :name=>"objectNotFoundFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "AuthorizationFault"=>{:ns=>"http://www.strongmail.com/services/2009/03/02", :name=>"authorizationFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "UnrecognizedObjectTypeFault"=>{:ns=>"http://www.strongmail.com/services/2009/03/02", :name=>"unrecognizedObjectTypeFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "UnexpectedFault"=>{:ns=>"http://www.strongmail.com/services/2009/03/02", :name=>"unexpectedFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}} }
    ],
    [ "",
      "get",
      [ [:in, "get", ["::SOAP::SOAPElement", "http://www.strongmail.com/services/2009/03/02/schema", "get"]],
        [:out, "getResponse", ["::SOAP::SOAPElement", "http://www.strongmail.com/services/2009/03/02/schema", "getResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "",
      "getStatistics",
      [ [:in, "getStatistics", ["::SOAP::SOAPElement", "http://www.strongmail.com/services/2009/03/02/schema", "getStatistics"]],
        [:out, "getStatisticsResponse", ["::SOAP::SOAPElement", "http://www.strongmail.com/services/2009/03/02/schema", "getStatisticsResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"ObjectNotFoundFault"=>{:ns=>"http://www.strongmail.com/services/2009/03/02", :name=>"objectNotFoundFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "AuthorizationFault"=>{:ns=>"http://www.strongmail.com/services/2009/03/02", :name=>"authorizationFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "UnrecognizedObjectTypeFault"=>{:ns=>"http://www.strongmail.com/services/2009/03/02", :name=>"unrecognizedObjectTypeFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "UnexpectedFault"=>{:ns=>"http://www.strongmail.com/services/2009/03/02", :name=>"unexpectedFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}} }
    ],
    [ "",
      "importContent",
      [ [:in, "importContent", ["::SOAP::SOAPElement", "http://www.strongmail.com/services/2009/03/02/schema", "importContent"]],
        [:out, "importContentResponse", ["::SOAP::SOAPElement", "http://www.strongmail.com/services/2009/03/02/schema", "importContentResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"ObjectNotFoundFault"=>{:ns=>"http://www.strongmail.com/services/2009/03/02", :name=>"objectNotFoundFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "AuthorizationFault"=>{:ns=>"http://www.strongmail.com/services/2009/03/02", :name=>"authorizationFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "UnrecognizedObjectTypeFault"=>{:ns=>"http://www.strongmail.com/services/2009/03/02", :name=>"unrecognizedObjectTypeFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "UnexpectedFault"=>{:ns=>"http://www.strongmail.com/services/2009/03/02", :name=>"unexpectedFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}} }
    ],
    [ "",
      "importMessagePart",
      [ [:in, "importMessagePart", ["::SOAP::SOAPElement", "http://www.strongmail.com/services/2009/03/02/schema", "importMessagePart"]],
        [:out, "importMessagePartResponse", ["::SOAP::SOAPElement", "http://www.strongmail.com/services/2009/03/02/schema", "importMessagePartResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"ObjectNotFoundFault"=>{:ns=>"http://www.strongmail.com/services/2009/03/02", :name=>"objectNotFoundFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "AuthorizationFault"=>{:ns=>"http://www.strongmail.com/services/2009/03/02", :name=>"authorizationFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "UnexpectedFault"=>{:ns=>"http://www.strongmail.com/services/2009/03/02", :name=>"unexpectedFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}} }
    ],
    [ "",
      "launch",
      [ [:in, "launch", ["::SOAP::SOAPElement", "http://www.strongmail.com/services/2009/03/02/schema", "launch"]],
        [:out, "launchResponse", ["::SOAP::SOAPElement", "http://www.strongmail.com/services/2009/03/02/schema", "launchResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"ObjectNotFoundFault"=>{:ns=>"http://www.strongmail.com/services/2009/03/02", :name=>"objectNotFoundFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "AuthorizationFault"=>{:ns=>"http://www.strongmail.com/services/2009/03/02", :name=>"authorizationFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "UnexpectedFault"=>{:ns=>"http://www.strongmail.com/services/2009/03/02", :name=>"unexpectedFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}} }
    ],
    [ "",
      "list",
      [ [:in, "list", ["::SOAP::SOAPElement", "http://www.strongmail.com/services/2009/03/02/schema", "list"]],
        [:out, "listResponse", ["::SOAP::SOAPElement", "http://www.strongmail.com/services/2009/03/02/schema", "listResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"UnrecognizedObjectTypeFault"=>{:ns=>"http://www.strongmail.com/services/2009/03/02", :name=>"unrecognizedObjectTypeFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "UnexpectedFault"=>{:ns=>"http://www.strongmail.com/services/2009/03/02", :name=>"unexpectedFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "InvalidObjectFault"=>{:ns=>"http://www.strongmail.com/services/2009/03/02", :name=>"invalidObjectFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}} }
    ],
    [ "",
      "load",
      [ [:in, "load", ["::SOAP::SOAPElement", "http://www.strongmail.com/services/2009/03/02/schema", "load"]],
        [:out, "loadResponse", ["::SOAP::SOAPElement", "http://www.strongmail.com/services/2009/03/02/schema", "loadResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"ObjectNotFoundFault"=>{:ns=>"http://www.strongmail.com/services/2009/03/02", :name=>"objectNotFoundFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "AuthorizationFault"=>{:ns=>"http://www.strongmail.com/services/2009/03/02", :name=>"authorizationFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "UnexpectedFault"=>{:ns=>"http://www.strongmail.com/services/2009/03/02", :name=>"unexpectedFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}} }
    ],
    [ "",
      "pause",
      [ [:in, "pause", ["::SOAP::SOAPElement", "http://www.strongmail.com/services/2009/03/02/schema", "pause"]],
        [:out, "pauseResponse", ["::SOAP::SOAPElement", "http://www.strongmail.com/services/2009/03/02/schema", "pauseResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"ObjectNotFoundFault"=>{:ns=>"http://www.strongmail.com/services/2009/03/02", :name=>"objectNotFoundFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "AuthorizationFault"=>{:ns=>"http://www.strongmail.com/services/2009/03/02", :name=>"authorizationFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "UnexpectedFault"=>{:ns=>"http://www.strongmail.com/services/2009/03/02", :name=>"unexpectedFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}} }
    ],
    [ "",
      "refreshRecords",
      [ [:in, "refreshRecords", ["::SOAP::SOAPElement", "http://www.strongmail.com/services/2009/03/02/schema", "refreshRecords"]],
        [:out, "refreshRecordsResponse", ["::SOAP::SOAPElement", "http://www.strongmail.com/services/2009/03/02/schema", "refreshRecordsResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"ObjectNotFoundFault"=>{:ns=>"http://www.strongmail.com/services/2009/03/02", :name=>"objectNotFoundFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "AuthorizationFault"=>{:ns=>"http://www.strongmail.com/services/2009/03/02", :name=>"authorizationFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "UnexpectedFault"=>{:ns=>"http://www.strongmail.com/services/2009/03/02", :name=>"unexpectedFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ConcurrentModificationFault"=>{:ns=>"http://www.strongmail.com/services/2009/03/02", :name=>"concurrentModificationFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}} }
    ],
    [ "",
      "removeRecords",
      [ [:in, "removeRecords", ["::SOAP::SOAPElement", "http://www.strongmail.com/services/2009/03/02/schema", "removeRecords"]],
        [:out, "removeRecordsResponse", ["::SOAP::SOAPElement", "http://www.strongmail.com/services/2009/03/02/schema", "removeRecordsResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"ObjectNotFoundFault"=>{:ns=>"http://www.strongmail.com/services/2009/03/02", :name=>"objectNotFoundFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "AuthorizationFault"=>{:ns=>"http://www.strongmail.com/services/2009/03/02", :name=>"authorizationFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "UnrecognizedObjectTypeFault"=>{:ns=>"http://www.strongmail.com/services/2009/03/02", :name=>"unrecognizedObjectTypeFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "UnexpectedFault"=>{:ns=>"http://www.strongmail.com/services/2009/03/02", :name=>"unexpectedFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ConcurrentModificationFault"=>{:ns=>"http://www.strongmail.com/services/2009/03/02", :name=>"concurrentModificationFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}} }
    ],
    [ "",
      "resume",
      [ [:in, "resume", ["::SOAP::SOAPElement", "http://www.strongmail.com/services/2009/03/02/schema", "resume"]],
        [:out, "resumeResponse", ["::SOAP::SOAPElement", "http://www.strongmail.com/services/2009/03/02/schema", "resumeResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"ObjectNotFoundFault"=>{:ns=>"http://www.strongmail.com/services/2009/03/02", :name=>"objectNotFoundFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "AuthorizationFault"=>{:ns=>"http://www.strongmail.com/services/2009/03/02", :name=>"authorizationFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "UnexpectedFault"=>{:ns=>"http://www.strongmail.com/services/2009/03/02", :name=>"unexpectedFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}} }
    ],
    [ "",
      "schedule",
      [ [:in, "schedule", ["::SOAP::SOAPElement", "http://www.strongmail.com/services/2009/03/02/schema", "schedule"]],
        [:out, "scheduleResponse", ["::SOAP::SOAPElement", "http://www.strongmail.com/services/2009/03/02/schema", "scheduleResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"ObjectNotFoundFault"=>{:ns=>"http://www.strongmail.com/services/2009/03/02", :name=>"objectNotFoundFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "AuthorizationFault"=>{:ns=>"http://www.strongmail.com/services/2009/03/02", :name=>"authorizationFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "UnexpectedFault"=>{:ns=>"http://www.strongmail.com/services/2009/03/02", :name=>"unexpectedFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "InvalidObjectFault"=>{:ns=>"http://www.strongmail.com/services/2009/03/02", :name=>"invalidObjectFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}} }
    ],
    [ "",
      "send",
      [ [:in, "send", ["::SOAP::SOAPElement", "http://www.strongmail.com/services/2009/03/02/schema", "send"]],
        [:out, "sendResponse", ["::SOAP::SOAPElement", "http://www.strongmail.com/services/2009/03/02/schema", "sendResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"ObjectNotFoundFault"=>{:ns=>"http://www.strongmail.com/services/2009/03/02", :name=>"objectNotFoundFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "AuthorizationFault"=>{:ns=>"http://www.strongmail.com/services/2009/03/02", :name=>"authorizationFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "UnexpectedFault"=>{:ns=>"http://www.strongmail.com/services/2009/03/02", :name=>"unexpectedFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}} }
    ],
    [ "",
      "getTxnMailingHandle",
      [ [:in, "getTxnMailingHandle", ["::SOAP::SOAPElement", "http://www.strongmail.com/services/2009/03/02/schema", "getTxnMailingHandle"]],
        [:out, "getTxnMailingHandleResponse", ["::SOAP::SOAPElement", "http://www.strongmail.com/services/2009/03/02/schema", "getTxnMailingHandleResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"ObjectNotFoundFault"=>{:ns=>"http://www.strongmail.com/services/2009/03/02", :name=>"objectNotFoundFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "AuthorizationFault"=>{:ns=>"http://www.strongmail.com/services/2009/03/02", :name=>"authorizationFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "UnexpectedFault"=>{:ns=>"http://www.strongmail.com/services/2009/03/02", :name=>"unexpectedFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "InvalidObjectFault"=>{:ns=>"http://www.strongmail.com/services/2009/03/02", :name=>"invalidObjectFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}} }
    ],
    [ "",
      "getTxnEasInfo",
      [ [:in, "getTxnEasInfo", ["::SOAP::SOAPElement", "http://www.strongmail.com/services/2009/03/02/schema", "getTxnEasInfo"]],
        [:out, "getTxnEasInfoResponse", ["::SOAP::SOAPElement", "http://www.strongmail.com/services/2009/03/02/schema", "getTxnEasInfoResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"ObjectNotFoundFault"=>{:ns=>"http://www.strongmail.com/services/2009/03/02", :name=>"objectNotFoundFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "AuthorizationFault"=>{:ns=>"http://www.strongmail.com/services/2009/03/02", :name=>"authorizationFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "UnexpectedFault"=>{:ns=>"http://www.strongmail.com/services/2009/03/02", :name=>"unexpectedFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "InvalidObjectFault"=>{:ns=>"http://www.strongmail.com/services/2009/03/02", :name=>"invalidObjectFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}} }
    ],
    [ "",
      "txnSend",
      [ [:in, "txnSend", ["::SOAP::SOAPElement", "http://www.strongmail.com/services/2009/03/02/schema", "txnSend"]],
        [:out, "txnSendResponse", ["::SOAP::SOAPElement", "http://www.strongmail.com/services/2009/03/02/schema", "txnSendResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"ObjectNotFoundFault"=>{:ns=>"http://www.strongmail.com/services/2009/03/02", :name=>"objectNotFoundFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "AuthorizationFault"=>{:ns=>"http://www.strongmail.com/services/2009/03/02", :name=>"authorizationFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "UnexpectedFault"=>{:ns=>"http://www.strongmail.com/services/2009/03/02", :name=>"unexpectedFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "BadHandleFault"=>{:ns=>"http://www.strongmail.com/services/2009/03/02", :name=>"badHandleFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}} }
    ],
    [ "",
      "test",
      [ [:in, "test", ["::SOAP::SOAPElement", "http://www.strongmail.com/services/2009/03/02/schema", "test"]],
        [:out, "testResponse", ["::SOAP::SOAPElement", "http://www.strongmail.com/services/2009/03/02/schema", "testResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"ObjectNotFoundFault"=>{:ns=>"http://www.strongmail.com/services/2009/03/02", :name=>"objectNotFoundFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "AuthorizationFault"=>{:ns=>"http://www.strongmail.com/services/2009/03/02", :name=>"authorizationFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "UnexpectedFault"=>{:ns=>"http://www.strongmail.com/services/2009/03/02", :name=>"unexpectedFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "UnrecognizedObjectTypeFault"=>{:ns=>"http://www.strongmail.com/services/2009/03/02", :name=>"unrecognizedObjectTypeFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "InvalidObjectFault"=>{:ns=>"http://www.strongmail.com/services/2009/03/02", :name=>"invalidObjectFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}} }
    ],
    [ "",
      "update",
      [ [:in, "update", ["::SOAP::SOAPElement", "http://www.strongmail.com/services/2009/03/02/schema", "update"]],
        [:out, "updateResponse", ["::SOAP::SOAPElement", "http://www.strongmail.com/services/2009/03/02/schema", "updateResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "",
      "upsertRecord",
      [ [:in, "upsertRecords", ["::SOAP::SOAPElement", "http://www.strongmail.com/services/2009/03/02/schema", "upsertRecords"]],
        [:out, "upsertRecordsResponse", ["::SOAP::SOAPElement", "http://www.strongmail.com/services/2009/03/02/schema", "upsertRecordsResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"ObjectNotFoundFault"=>{:ns=>"http://www.strongmail.com/services/2009/03/02", :name=>"objectNotFoundFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "AuthorizationFault"=>{:ns=>"http://www.strongmail.com/services/2009/03/02", :name=>"authorizationFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "UnrecognizedObjectTypeFault"=>{:ns=>"http://www.strongmail.com/services/2009/03/02", :name=>"unrecognizedObjectTypeFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "UnexpectedFault"=>{:ns=>"http://www.strongmail.com/services/2009/03/02", :name=>"unexpectedFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "InvalidObjectFault"=>{:ns=>"http://www.strongmail.com/services/2009/03/02", :name=>"invalidObjectFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ConcurrentModificationFault"=>{:ns=>"http://www.strongmail.com/services/2009/03/02", :name=>"concurrentModificationFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}} }
    ],
    [ "",
      "importFtpFile",
      [ [:in, "importFtpFile", ["::SOAP::SOAPElement", "http://www.strongmail.com/services/2009/03/02/schema", "importFtpFile"]],
        [:out, "importFtpFileResponse", ["::SOAP::SOAPElement", "http://www.strongmail.com/services/2009/03/02/schema", "importFtpFileResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"ObjectNotFoundFault"=>{:ns=>"http://www.strongmail.com/services/2009/03/02", :name=>"objectNotFoundFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "AuthorizationFault"=>{:ns=>"http://www.strongmail.com/services/2009/03/02", :name=>"authorizationFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "UnrecognizedObjectTypeFault"=>{:ns=>"http://www.strongmail.com/services/2009/03/02", :name=>"unrecognizedObjectTypeFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "UnexpectedFault"=>{:ns=>"http://www.strongmail.com/services/2009/03/02", :name=>"unexpectedFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "InvalidObjectFault"=>{:ns=>"http://www.strongmail.com/services/2009/03/02", :name=>"invalidObjectFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ConcurrentModificationFault"=>{:ns=>"http://www.strongmail.com/services/2009/03/02", :name=>"concurrentModificationFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}} }
    ],
    [ "",
      "getRecords",
      [ [:in, "getRecords", ["::SOAP::SOAPElement", "http://www.strongmail.com/services/2009/03/02/schema", "getRecords"]],
        [:out, "getRecordsResponse", ["::SOAP::SOAPElement", "http://www.strongmail.com/services/2009/03/02/schema", "getRecordsResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"ObjectNotFoundFault"=>{:ns=>"http://www.strongmail.com/services/2009/03/02", :name=>"objectNotFoundFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "AuthorizationFault"=>{:ns=>"http://www.strongmail.com/services/2009/03/02", :name=>"authorizationFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "UnrecognizedObjectTypeFault"=>{:ns=>"http://www.strongmail.com/services/2009/03/02", :name=>"unrecognizedObjectTypeFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "UnexpectedFault"=>{:ns=>"http://www.strongmail.com/services/2009/03/02", :name=>"unexpectedFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "InvalidObjectFault"=>{:ns=>"http://www.strongmail.com/services/2009/03/02", :name=>"invalidObjectFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "ConcurrentModificationFault"=>{:ns=>"http://www.strongmail.com/services/2009/03/02", :name=>"concurrentModificationFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}} }
    ],
    [ "",
      "validateXsl",
      [ [:in, "validateXsl", ["::SOAP::SOAPElement", "http://www.strongmail.com/services/2009/03/02/schema", "validateXsl"]],
        [:out, "validateXslResponse", ["::SOAP::SOAPElement", "http://www.strongmail.com/services/2009/03/02/schema", "validateXslResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"ObjectNotFoundFault"=>{:ns=>"http://www.strongmail.com/services/2009/03/02", :name=>"objectNotFoundFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "AuthorizationFault"=>{:ns=>"http://www.strongmail.com/services/2009/03/02", :name=>"authorizationFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "UnexpectedFault"=>{:ns=>"http://www.strongmail.com/services/2009/03/02", :name=>"unexpectedFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}} }
    ],
    [ "",
      "fetchLinks",
      [ [:in, "fetchLinks", ["::SOAP::SOAPElement", "http://www.strongmail.com/services/2009/03/02/schema", "fetchLinks"]],
        [:out, "fetchLinksResponse", ["::SOAP::SOAPElement", "http://www.strongmail.com/services/2009/03/02/schema", "fetchLinksResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"ObjectNotFoundFault"=>{:ns=>"http://www.strongmail.com/services/2009/03/02", :name=>"objectNotFoundFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "AuthorizationFault"=>{:ns=>"http://www.strongmail.com/services/2009/03/02", :name=>"authorizationFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "UnexpectedFault"=>{:ns=>"http://www.strongmail.com/services/2009/03/02", :name=>"unexpectedFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}} }
    ],
    [ "",
      "getSingleSignOnURL",
      [ [:in, "getSingleSignOnURL", ["::SOAP::SOAPElement", "http://www.strongmail.com/services/2009/03/02/schema", "getSingleSignOnURL"]],
        [:out, "getSingleSignOnURLResponse", ["::SOAP::SOAPElement", "http://www.strongmail.com/services/2009/03/02/schema", "getSingleSignOnURLResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"AuthorizationFault"=>{:ns=>"http://www.strongmail.com/services/2009/03/02", :name=>"authorizationFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "UnexpectedFault"=>{:ns=>"http://www.strongmail.com/services/2009/03/02", :name=>"unexpectedFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}} }
    ],
    [ "",
      "getAllEasByMailingId",
      [ [:in, "GetAllEasByMailingId", ["::SOAP::SOAPElement", "http://www.strongmail.com/services/2009/03/02/schema", "GetAllEasByMailingId"]],
        [:out, "GetAllEasListByMailingIdResponse", ["::SOAP::SOAPElement", "http://www.strongmail.com/services/2009/03/02/schema", "GetAllEasListByMailingIdResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"UnexpectedFault"=>{:ns=>"http://www.strongmail.com/services/2009/03/02", :name=>"unexpectedFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}} }
    ],
    [ "",
      "startImport",
      [ [:in, "startImport", ["::SOAP::SOAPElement", "http://www.strongmail.com/services/2009/03/02/schema", "startImport"]],
        [:out, "startImportResponse", ["::SOAP::SOAPElement", "http://www.strongmail.com/services/2009/03/02/schema", "startImportResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"ObjectNotFoundFault"=>{:ns=>"http://www.strongmail.com/services/2009/03/02", :name=>"objectNotFoundFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "AuthorizationFault"=>{:ns=>"http://www.strongmail.com/services/2009/03/02", :name=>"authorizationFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "UnexpectedFault"=>{:ns=>"http://www.strongmail.com/services/2009/03/02", :name=>"unexpectedFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}} }
    ],
    [ "",
      "getImportStatus",
      [ [:in, "getImportStatus", ["::SOAP::SOAPElement", "http://www.strongmail.com/services/2009/03/02/schema", "getImportStatus"]],
        [:out, "getImportStatusResponse", ["::SOAP::SOAPElement", "http://www.strongmail.com/services/2009/03/02/schema", "getImportStatusResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"ObjectNotFoundFault"=>{:ns=>"http://www.strongmail.com/services/2009/03/02", :name=>"objectNotFoundFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "AuthorizationFault"=>{:ns=>"http://www.strongmail.com/services/2009/03/02", :name=>"authorizationFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "UnexpectedFault"=>{:ns=>"http://www.strongmail.com/services/2009/03/02", :name=>"unexpectedFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}} }
    ],
    [ "",
      "findImport",
      [ [:in, "findImport", ["::SOAP::SOAPElement", "http://www.strongmail.com/services/2009/03/02/schema", "findImport"]],
        [:out, "findImportResponse", ["::SOAP::SOAPElement", "http://www.strongmail.com/services/2009/03/02/schema", "findImportResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"ObjectNotFoundFault"=>{:ns=>"http://www.strongmail.com/services/2009/03/02", :name=>"objectNotFoundFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "AuthorizationFault"=>{:ns=>"http://www.strongmail.com/services/2009/03/02", :name=>"authorizationFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "UnexpectedFault"=>{:ns=>"http://www.strongmail.com/services/2009/03/02", :name=>"unexpectedFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}} }
    ],
    [ "",
      "getImportDetails",
      [ [:in, "getImportDetails", ["::SOAP::SOAPElement", "http://www.strongmail.com/services/2009/03/02/schema", "getImportDetails"]],
        [:out, "getImportDetailsResponse", ["::SOAP::SOAPElement", "http://www.strongmail.com/services/2009/03/02/schema", "getImportDetailsResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"ObjectNotFoundFault"=>{:ns=>"http://www.strongmail.com/services/2009/03/02", :name=>"objectNotFoundFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "AuthorizationFault"=>{:ns=>"http://www.strongmail.com/services/2009/03/02", :name=>"authorizationFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "UnexpectedFault"=>{:ns=>"http://www.strongmail.com/services/2009/03/02", :name=>"unexpectedFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}} }
    ]
  ]

  def initialize(endpoint_url = nil)
    endpoint_url ||= DefaultEndpointUrl
    super(endpoint_url, nil)
    self.mapping_registry = MailingServiceMappingRegistry::EncodedRegistry
    self.literal_mapping_registry = MailingServiceMappingRegistry::LiteralRegistry
    init_methods
  end

private

  def init_methods
    Methods.each do |definitions|
      opt = definitions.last
      if opt[:request_style] == :document
        add_document_operation(*definitions)
      else
        add_rpc_operation(*definitions)
        qname = definitions[0]
        name = definitions[2]
        if qname.name != name and qname.name.capitalize == name.capitalize
          ::SOAP::Mapping.define_singleton_method(self, qname.name) do |*arg|
            __send__(name, *arg)
          end
        end
      end
    end
  end
end

