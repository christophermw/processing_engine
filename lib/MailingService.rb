require 'xsd/qname'

# {http://www.strongmail.com/services/2009/03/02/schema}GetSingleSignOnURLRequest
class GetSingleSignOnURLRequest
  def initialize
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}DataSourceField
#   dataType - DataSourceDataType
#   fieldType - DataSourceFieldType
#   name - SOAP::SOAPString
#   isPrimaryKey - SOAP::SOAPBoolean
#   writebackEnabled - SOAP::SOAPBoolean
class DataSourceField
  attr_accessor :dataType
  attr_accessor :fieldType
  attr_accessor :name
  attr_accessor :isPrimaryKey
  attr_accessor :writebackEnabled

  def initialize(dataType = nil, fieldType = nil, name = nil, isPrimaryKey = nil, writebackEnabled = nil)
    @dataType = dataType
    @fieldType = fieldType
    @name = name
    @isPrimaryKey = isPrimaryKey
    @writebackEnabled = writebackEnabled
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}DataSourceRecord
class DataSourceRecord
  attr_accessor :field

  def initialize(field = [])
    @field = field
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}ImportFtpFileRequest
#   dataSourceId - DataSourceId
#   containsFieldNames - SOAP::SOAPBoolean
#   fieldDelimiter - SOAP::SOAPString
#   ftpFileName - SOAP::SOAPString
#   importMode - ImportType
class ImportFtpFileRequest
  attr_accessor :dataSourceId
  attr_accessor :containsFieldNames
  attr_accessor :fieldDelimiter
  attr_accessor :ftpFileName
  attr_accessor :importMode

  def initialize(dataSourceId = nil, containsFieldNames = nil, fieldDelimiter = nil, ftpFileName = nil, importMode = nil)
    @dataSourceId = dataSourceId
    @containsFieldNames = containsFieldNames
    @fieldDelimiter = fieldDelimiter
    @ftpFileName = ftpFileName
    @importMode = importMode
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}RefreshRecordsRequest
#   dataSourceId - ExternalDataSourceId
class RefreshRecordsRequest
  attr_accessor :dataSourceId

  def initialize(dataSourceId = nil)
    @dataSourceId = dataSourceId
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}CancelRefreshRecordsRequest
#   dataSourceId - ExternalDataSourceId
class CancelRefreshRecordsRequest
  attr_accessor :dataSourceId

  def initialize(dataSourceId = nil)
    @dataSourceId = dataSourceId
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}RecurringImportResult
#   importType - RecurringImportType
#   importFrom - SOAP::SOAPString
#   status - RecurringImportStatus
#   startTime - SOAP::SOAPDateTime
#   endTime - SOAP::SOAPDateTime
#   recordsAdded - SOAP::SOAPInteger
#   recordsUpdated - SOAP::SOAPInteger
#   recordsMalformed - SOAP::SOAPInteger
#   errorMessage - SOAP::SOAPString
class RecurringImportResult
  attr_accessor :importType
  attr_accessor :importFrom
  attr_accessor :status
  attr_accessor :startTime
  attr_accessor :endTime
  attr_accessor :recordsAdded
  attr_accessor :recordsUpdated
  attr_accessor :recordsMalformed
  attr_accessor :errorMessage

  def initialize(importType = nil, importFrom = nil, status = nil, startTime = nil, endTime = nil, recordsAdded = nil, recordsUpdated = nil, recordsMalformed = nil, errorMessage = nil)
    @importType = importType
    @importFrom = importFrom
    @status = status
    @startTime = startTime
    @endTime = endTime
    @recordsAdded = recordsAdded
    @recordsUpdated = recordsUpdated
    @recordsMalformed = recordsMalformed
    @errorMessage = errorMessage
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}StartRecurringImportRequest
#   importId - RecurringImportId
#   fullRefresh - SOAP::SOAPBoolean
class StartRecurringImportRequest
  attr_accessor :importId
  attr_accessor :fullRefresh

  def initialize(importId = nil, fullRefresh = nil)
    @importId = importId
    @fullRefresh = fullRefresh
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}GetRecurringImportStatusRequest
#   internalDataSourceId - InternalDataSourceId
#   extensionId - ExtensionId
class GetRecurringImportStatusRequest
  attr_accessor :internalDataSourceId
  attr_accessor :extensionId

  def initialize(internalDataSourceId = nil, extensionId = nil)
    @internalDataSourceId = internalDataSourceId
    @extensionId = extensionId
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}FindRecurringImportRequest
#   internalDataSourceId - InternalDataSourceId
#   extensionId - ExtensionId
class FindRecurringImportRequest
  attr_accessor :internalDataSourceId
  attr_accessor :extensionId

  def initialize(internalDataSourceId = nil, extensionId = nil)
    @internalDataSourceId = internalDataSourceId
    @extensionId = extensionId
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}GetRecurringImportRequest
#   importId - RecurringImportId
class GetRecurringImportRequest
  attr_accessor :importId

  def initialize(importId = nil)
    @importId = importId
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}TrackingTagProperties
#   title - SOAP::SOAPString
#   description - SOAP::SOAPString
#   offerUrl - SOAP::SOAPString
#   imageUrl - SOAP::SOAPString
class TrackingTagProperties
  attr_accessor :title
  attr_accessor :description
  attr_accessor :offerUrl
  attr_accessor :imageUrl

  def initialize(title = nil, description = nil, offerUrl = nil, imageUrl = nil)
    @title = title
    @description = description
    @offerUrl = offerUrl
    @imageUrl = imageUrl
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}NamedLink
#   name - SOAP::SOAPString
#   url - SOAP::SOAPString
#   linkId - SOAP::SOAPString
#   trackingTag - TrackingTag
#   trackingTagProperties - TrackingTagProperties
#   webAnalytics - WebAnalytics
class NamedLink
  attr_accessor :name
  attr_accessor :url
  attr_accessor :linkId
  attr_accessor :trackingTag
  attr_accessor :trackingTagProperties
  attr_accessor :webAnalytics

  def initialize(name = nil, url = nil, linkId = nil, trackingTag = nil, trackingTagProperties = nil, webAnalytics = nil)
    @name = name
    @url = url
    @linkId = linkId
    @trackingTag = trackingTag
    @trackingTagProperties = trackingTagProperties
    @webAnalytics = webAnalytics
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}MessagePart
#   content - SOAP::SOAPString
#   format - MessageFormat
#   mediaServerFolderName - SOAP::SOAPString
#   mediaServerId - MediaServerId
#   isXsl - SOAP::SOAPBoolean
#   openTag - OpenTag
#   namedLinks - NamedLink
class MessagePart
  attr_accessor :content
  attr_accessor :format
  attr_accessor :mediaServerFolderName
  attr_accessor :mediaServerId
  attr_accessor :isXsl
  attr_accessor :openTag
  attr_accessor :namedLinks

  def initialize(content = nil, format = nil, mediaServerFolderName = nil, mediaServerId = nil, isXsl = nil, openTag = nil, namedLinks = [])
    @content = content
    @format = format
    @mediaServerFolderName = mediaServerFolderName
    @mediaServerId = mediaServerId
    @isXsl = isXsl
    @openTag = openTag
    @namedLinks = namedLinks
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}ImportMessagePartRequest
#   templateId - TemplateId
#   mediaServerId - MediaServerId
#   isXsl - SOAP::SOAPBoolean
#   folderName - SOAP::SOAPString
#   zipFile - SOAP::SOAPBase64
class ImportMessagePartRequest
  attr_accessor :templateId
  attr_accessor :mediaServerId
  attr_accessor :isXsl
  attr_accessor :folderName
  attr_accessor :zipFile

  def initialize(templateId = nil, mediaServerId = nil, isXsl = nil, folderName = nil, zipFile = nil)
    @templateId = templateId
    @mediaServerId = mediaServerId
    @isXsl = isXsl
    @folderName = folderName
    @zipFile = zipFile
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}ValidateXslRequest
#   templateId - TemplateId
#   messageFormat - MessageFormat
class ValidateXslRequest
  attr_accessor :templateId
  attr_accessor :messageFormat

  def initialize(templateId = nil, messageFormat = nil)
    @templateId = templateId
    @messageFormat = messageFormat
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}FetchLinksRequest
# abstract
class FetchLinksRequest
  def initialize
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}FetchLinksTemplateRequest
#   template - Template
#   messageFormat - MessageFormat
class FetchLinksTemplateRequest < FetchLinksRequest
  attr_accessor :template
  attr_accessor :messageFormat

  def initialize(template = nil, messageFormat = nil)
    @template = template
    @messageFormat = messageFormat
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}FetchLinksContentBlockRequest
#   contentBlock - ContentBlock
class FetchLinksContentBlockRequest < FetchLinksRequest
  attr_accessor :contentBlock

  def initialize(contentBlock = nil)
    @contentBlock = contentBlock
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}ContentBlockToken
#   contentBlockId - ContentBlockId
#   token - SOAP::SOAPString
class ContentBlockToken
  attr_accessor :contentBlockId
  attr_accessor :token

  def initialize(contentBlockId = nil, token = nil)
    @contentBlockId = contentBlockId
    @token = token
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}RuleValue
# abstract
class RuleValue
  def initialize
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}ColumnRuleValue
#   value - SOAP::SOAPString
class ColumnRuleValue < RuleValue
  attr_accessor :value

  def initialize(value = nil)
    @value = value
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}ContentBlockTokenRuleValue
#   value - ContentBlockToken
class ContentBlockTokenRuleValue < RuleValue
  attr_accessor :value

  def initialize(value = nil)
    @value = value
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}TextRuleValue
#   value - SOAP::SOAPString
class TextRuleValue < RuleValue
  attr_accessor :value

  def initialize(value = nil)
    @value = value
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}NestedRuleRuleValue
#   value - RuleId
class NestedRuleRuleValue < RuleValue
  attr_accessor :value

  def initialize(value = nil)
    @value = value
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}RuleIfPartCondition
#   column - SOAP::SOAPString
#   op - ComparisonOperation
#   value - SOAP::SOAPString
class RuleIfPartCondition
  attr_accessor :column
  attr_accessor :op
  attr_accessor :value

  def initialize(column = nil, op = nil, value = nil)
    @column = column
    @op = op
    @value = value
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}RuleIfPart
#   condition1 - RuleIfPartCondition
#   logicalOperation - LogicalOperation
#   condition - RuleIfPartCondition
class RuleIfPart
  attr_accessor :condition1
  attr_accessor :logicalOperation
  attr_accessor :condition

  def initialize(condition1 = nil, logicalOperation = [], condition = [])
    @condition1 = condition1
    @logicalOperation = logicalOperation
    @condition = condition
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}RuleThenPart
#   columnRuleValue - ColumnRuleValue
#   contentBlockTokenRuleValue - ContentBlockTokenRuleValue
#   textRuleValue - TextRuleValue
class RuleThenPart
  attr_accessor :columnRuleValue
  attr_accessor :contentBlockTokenRuleValue
  attr_accessor :textRuleValue

  def initialize(columnRuleValue = nil, contentBlockTokenRuleValue = nil, textRuleValue = nil)
    @columnRuleValue = columnRuleValue
    @contentBlockTokenRuleValue = contentBlockTokenRuleValue
    @textRuleValue = textRuleValue
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}RuleElsePart
#   columnRuleValue - ColumnRuleValue
#   contentBlockTokenRuleValue - ContentBlockTokenRuleValue
#   nestedRuleRuleValue - NestedRuleRuleValue
#   textRuleValue - TextRuleValue
class RuleElsePart
  attr_accessor :columnRuleValue
  attr_accessor :contentBlockTokenRuleValue
  attr_accessor :nestedRuleRuleValue
  attr_accessor :textRuleValue

  def initialize(columnRuleValue = nil, contentBlockTokenRuleValue = nil, nestedRuleRuleValue = nil, textRuleValue = nil)
    @columnRuleValue = columnRuleValue
    @contentBlockTokenRuleValue = contentBlockTokenRuleValue
    @nestedRuleRuleValue = nestedRuleRuleValue
    @textRuleValue = textRuleValue
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}CancelRequest
#   mailingId - MailingId
class CancelRequest
  attr_accessor :mailingId

  def initialize(mailingId = nil)
    @mailingId = mailingId
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}CloseRequest
#   mailingId - TransactionalMailingId
class CloseRequest
  attr_accessor :mailingId

  def initialize(mailingId = nil)
    @mailingId = mailingId
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}ArchiveRequest
#   mailingId - MailingId
class ArchiveRequest
  attr_accessor :mailingId

  def initialize(mailingId = nil)
    @mailingId = mailingId
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}LaunchRequest
#   mailingId - StandardMailingId
class LaunchRequest
  attr_accessor :mailingId

  def initialize(mailingId = nil)
    @mailingId = mailingId
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}LoadRequest
#   mailingId - TransactionalMailingId
class LoadRequest
  attr_accessor :mailingId

  def initialize(mailingId = nil)
    @mailingId = mailingId
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}PauseRequest
#   mailingId - MailingId
class PauseRequest
  attr_accessor :mailingId

  def initialize(mailingId = nil)
    @mailingId = mailingId
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}ResumeRequest
#   mailingId - MailingId
class ResumeRequest
  attr_accessor :mailingId

  def initialize(mailingId = nil)
    @mailingId = mailingId
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}ScheduleRequest
#   mailingId - StandardMailingId
class ScheduleRequest
  attr_accessor :mailingId

  def initialize(mailingId = nil)
    @mailingId = mailingId
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}SendRecord
class SendRecord
  attr_accessor :field

  def initialize(field = [])
    @field = field
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}SendRequest
#   mailingId - TransactionalMailingId
#   sendData - SOAP::SOAPString
#   sendRecord - SendRecord
class SendRequest
  attr_accessor :mailingId
  attr_accessor :sendData
  attr_accessor :sendRecord

  def initialize(mailingId = nil, sendData = nil, sendRecord = [])
    @mailingId = mailingId
    @sendData = sendData
    @sendRecord = sendRecord
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}GetTxnMailingHandleRequest
#   mailingId - TransactionalMailingId
#   mailingName - SOAP::SOAPString
class GetTxnMailingHandleRequest
  attr_accessor :mailingId
  attr_accessor :mailingName

  def initialize(mailingId = nil, mailingName = nil)
    @mailingId = mailingId
    @mailingName = mailingName
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}TxnSendRequest
#   handle - SOAP::SOAPString
#   sendRecord - SendRecord
class TxnSendRequest
  attr_accessor :handle
  attr_accessor :sendRecord

  def initialize(handle = nil, sendRecord = [])
    @handle = handle
    @sendRecord = sendRecord
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}GetTxnEasInfoRequest
#   mailingId - TransactionalMailingId
class GetTxnEasInfoRequest
  attr_accessor :mailingId

  def initialize(mailingId = nil)
    @mailingId = mailingId
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}GetAllEasByMailingIdRequest
#   mailingId - MailingId
class GetAllEasByMailingIdRequest
  attr_accessor :mailingId

  def initialize(mailingId = nil)
    @mailingId = mailingId
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}ProgramContactRecord
#   programDataSourcePk - SOAP::SOAPString
#   contactId - SOAP::SOAPString
class ProgramContactRecord
  attr_accessor :programDataSourcePk
  attr_accessor :contactId

  def initialize(programDataSourcePk = nil, contactId = nil)
    @programDataSourcePk = programDataSourcePk
    @contactId = contactId
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}GetProgramNodesRequest
#   programId - ProgramId
class GetProgramNodesRequest
  attr_accessor :programId

  def initialize(programId = nil)
    @programId = programId
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}RolePermissions
#   create - SOAP::SOAPBoolean
#   update - SOAP::SOAPBoolean
#   delete - SOAP::SOAPBoolean
#   view - SOAP::SOAPBoolean
#   approve - SOAP::SOAPBoolean
#   advanced - SOAP::SOAPBoolean
class RolePermissions
  attr_accessor :create
  attr_accessor :update
  attr_accessor :delete
  attr_accessor :view
  attr_accessor :approve
  attr_accessor :advanced

  def initialize(create = nil, update = nil, delete = nil, view = nil, approve = nil, advanced = nil)
    @create = create
    @update = update
    @delete = delete
    @view = view
    @approve = approve
    @advanced = advanced
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}Permissions
#   internalDataSources - RolePermissions
#   externalDataSources - RolePermissions
#   targets - RolePermissions
#   suppressionLists - RolePermissions
#   seedLists - RolePermissions
#   messageTemplates - RolePermissions
#   attachments - RolePermissions
#   contentBlocks - RolePermissions
#   mailings - RolePermissions
#   txMailings - RolePermissions
#   reports - RolePermissions
#   bounceAddresses - RolePermissions
#   fromAddresses - RolePermissions
#   replyAddresses - RolePermissions
class Permissions
  attr_accessor :internalDataSources
  attr_accessor :externalDataSources
  attr_accessor :targets
  attr_accessor :suppressionLists
  attr_accessor :seedLists
  attr_accessor :messageTemplates
  attr_accessor :attachments
  attr_accessor :contentBlocks
  attr_accessor :mailings
  attr_accessor :txMailings
  attr_accessor :reports
  attr_accessor :bounceAddresses
  attr_accessor :fromAddresses
  attr_accessor :replyAddresses

  def initialize(internalDataSources = nil, externalDataSources = nil, targets = nil, suppressionLists = nil, seedLists = nil, messageTemplates = nil, attachments = nil, contentBlocks = nil, mailings = nil, txMailings = nil, reports = nil, bounceAddresses = nil, fromAddresses = nil, replyAddresses = nil)
    @internalDataSources = internalDataSources
    @externalDataSources = externalDataSources
    @targets = targets
    @suppressionLists = suppressionLists
    @seedLists = seedLists
    @messageTemplates = messageTemplates
    @attachments = attachments
    @contentBlocks = contentBlocks
    @mailings = mailings
    @txMailings = txMailings
    @reports = reports
    @bounceAddresses = bounceAddresses
    @fromAddresses = fromAddresses
    @replyAddresses = replyAddresses
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}OrganizationToken
#   organizationName - SOAP::SOAPString
#   subOrganizationId - OrganizationId
class OrganizationToken
  attr_accessor :organizationName
  attr_accessor :subOrganizationId

  def initialize(organizationName = nil, subOrganizationId = nil)
    @organizationName = organizationName
    @subOrganizationId = subOrganizationId
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}IsSSO
class IsSSO
  def initialize
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}ObjectId
#   id - SOAP::SOAPString
class ObjectId
  attr_accessor :id

  def initialize(id = nil)
    @id = id
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}DataSourceId
# abstract
#   id - SOAP::SOAPString
class DataSourceId < ObjectId
  attr_accessor :id

  def initialize(id = nil)
    @id = id
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}InternalDataSourceId
#   id - SOAP::SOAPString
class InternalDataSourceId < DataSourceId
  attr_accessor :id

  def initialize(id = nil)
    @id = id
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}ExternalDataSourceId
#   id - SOAP::SOAPString
class ExternalDataSourceId < DataSourceId
  attr_accessor :id

  def initialize(id = nil)
    @id = id
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}InternalDataSourceExtnId
#   id - SOAP::SOAPString
class InternalDataSourceExtnId < DataSourceId
  attr_accessor :id

  def initialize(id = nil)
    @id = id
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}ExtensionId
#   id - SOAP::SOAPString
class ExtensionId < DataSourceId
  attr_accessor :id

  def initialize(id = nil)
    @id = id
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}CatalogId
#   id - SOAP::SOAPString
class CatalogId < ExtensionId
  attr_accessor :id

  def initialize(id = nil)
    @id = id
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}RecurringImportId
#   id - SOAP::SOAPString
class RecurringImportId < ObjectId
  attr_accessor :id

  def initialize(id = nil)
    @id = id
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}FtpImportId
#   id - SOAP::SOAPString
class FtpImportId < RecurringImportId
  attr_accessor :id

  def initialize(id = nil)
    @id = id
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}DatabaseImportId
#   id - SOAP::SOAPString
class DatabaseImportId < RecurringImportId
  attr_accessor :id

  def initialize(id = nil)
    @id = id
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}TargetId
#   id - SOAP::SOAPString
class TargetId < ObjectId
  attr_accessor :id

  def initialize(id = nil)
    @id = id
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}SuppressionListId
#   id - SOAP::SOAPString
class SuppressionListId < ObjectId
  attr_accessor :id

  def initialize(id = nil)
    @id = id
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}SeedListId
#   id - SOAP::SOAPString
class SeedListId < ObjectId
  attr_accessor :id

  def initialize(id = nil)
    @id = id
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}TemplateId
#   id - SOAP::SOAPString
class TemplateId < ObjectId
  attr_accessor :id

  def initialize(id = nil)
    @id = id
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}ContentBlockId
#   id - SOAP::SOAPString
class ContentBlockId < ObjectId
  attr_accessor :id

  def initialize(id = nil)
    @id = id
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}AttachmentId
#   id - SOAP::SOAPString
class AttachmentId < ObjectId
  attr_accessor :id

  def initialize(id = nil)
    @id = id
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}RuleId
#   id - SOAP::SOAPString
class RuleId < ObjectId
  attr_accessor :id

  def initialize(id = nil)
    @id = id
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}MailingId
#   id - SOAP::SOAPString
class MailingId < ObjectId
  attr_accessor :id

  def initialize(id = nil)
    @id = id
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}StandardMailingId
#   id - SOAP::SOAPString
class StandardMailingId < MailingId
  attr_accessor :id

  def initialize(id = nil)
    @id = id
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}TransactionalMailingId
#   id - SOAP::SOAPString
class TransactionalMailingId < MailingId
  attr_accessor :id

  def initialize(id = nil)
    @id = id
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}ProgramId
#   id - SOAP::SOAPString
class ProgramId < ObjectId
  attr_accessor :id

  def initialize(id = nil)
    @id = id
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}ProgramNodeId
#   id - SOAP::SOAPString
class ProgramNodeId < ObjectId
  attr_accessor :id

  def initialize(id = nil)
    @id = id
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}OrganizationId
#   id - SOAP::SOAPString
class OrganizationId < ObjectId
  attr_accessor :id

  def initialize(id = nil)
    @id = id
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}UserId
#   id - SOAP::SOAPString
class UserId < ObjectId
  attr_accessor :id

  def initialize(id = nil)
    @id = id
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}RoleId
#   id - SOAP::SOAPString
class RoleId < ObjectId
  attr_accessor :id

  def initialize(id = nil)
    @id = id
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}AssignedRoleId
#   id - SOAP::SOAPString
class AssignedRoleId < ObjectId
  attr_accessor :id

  def initialize(id = nil)
    @id = id
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}SystemAddressId
#   id - SOAP::SOAPString
class SystemAddressId < ObjectId
  attr_accessor :id

  def initialize(id = nil)
    @id = id
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}CampaignId
#   id - SOAP::SOAPString
class CampaignId < ObjectId
  attr_accessor :id

  def initialize(id = nil)
    @id = id
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}MediaServerId
#   id - SOAP::SOAPString
class MediaServerId < ObjectId
  attr_accessor :id

  def initialize(id = nil)
    @id = id
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}WebAnalyticsId
#   id - SOAP::SOAPString
class WebAnalyticsId < ObjectId
  attr_accessor :id

  def initialize(id = nil)
    @id = id
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}MailingClassId
#   id - SOAP::SOAPString
class MailingClassId < ObjectId
  attr_accessor :id

  def initialize(id = nil)
    @id = id
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}StrongtoolId
#   id - SOAP::SOAPString
class StrongtoolId < ObjectId
  attr_accessor :id

  def initialize(id = nil)
    @id = id
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}BaseObject
# abstract
#   modifiedTime - SOAP::SOAPDateTime
#   objectId - ObjectId
#   version - SOAP::SOAPInt
class BaseObject
  attr_accessor :modifiedTime
  attr_accessor :objectId
  attr_accessor :version

  def initialize(modifiedTime = nil, objectId = nil, version = nil)
    @modifiedTime = modifiedTime
    @objectId = objectId
    @version = version
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}DataSource
# abstract
#   modifiedTime - SOAP::SOAPDateTime
#   objectId - ObjectId
#   version - SOAP::SOAPInt
#   campaignId - CampaignId
#   createdTime - SOAP::SOAPDateTime
#   description - SOAP::SOAPString
#   field - DataSourceField
#   name - SOAP::SOAPString
#   operationStatus - DataSourceOperationStatus
#   organizationId - OrganizationId
#   ownerId - UserId
class DataSource < BaseObject
  attr_accessor :modifiedTime
  attr_accessor :objectId
  attr_accessor :version
  attr_accessor :campaignId
  attr_accessor :createdTime
  attr_accessor :description
  attr_accessor :field
  attr_accessor :name
  attr_accessor :operationStatus
  attr_accessor :organizationId
  attr_accessor :ownerId

  def initialize(modifiedTime = nil, objectId = nil, version = nil, campaignId = nil, createdTime = nil, description = nil, field = [], name = nil, operationStatus = nil, organizationId = nil, ownerId = nil)
    @modifiedTime = modifiedTime
    @objectId = objectId
    @version = version
    @campaignId = campaignId
    @createdTime = createdTime
    @description = description
    @field = field
    @name = name
    @operationStatus = operationStatus
    @organizationId = organizationId
    @ownerId = ownerId
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}InternalDataSource
#   modifiedTime - SOAP::SOAPDateTime
#   objectId - ObjectId
#   version - SOAP::SOAPInt
#   campaignId - CampaignId
#   createdTime - SOAP::SOAPDateTime
#   description - SOAP::SOAPString
#   field - DataSourceField
#   name - SOAP::SOAPString
#   operationStatus - DataSourceOperationStatus
#   organizationId - OrganizationId
#   ownerId - UserId
class InternalDataSource < DataSource
  attr_accessor :modifiedTime
  attr_accessor :objectId
  attr_accessor :version
  attr_accessor :campaignId
  attr_accessor :createdTime
  attr_accessor :description
  attr_accessor :field
  attr_accessor :name
  attr_accessor :operationStatus
  attr_accessor :organizationId
  attr_accessor :ownerId

  def initialize(modifiedTime = nil, objectId = nil, version = nil, campaignId = nil, createdTime = nil, description = nil, field = [], name = nil, operationStatus = nil, organizationId = nil, ownerId = nil)
    @modifiedTime = modifiedTime
    @objectId = objectId
    @version = version
    @campaignId = campaignId
    @createdTime = createdTime
    @description = description
    @field = field
    @name = name
    @operationStatus = operationStatus
    @organizationId = organizationId
    @ownerId = ownerId
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}Extension
#   modifiedTime - SOAP::SOAPDateTime
#   objectId - ObjectId
#   version - SOAP::SOAPInt
#   campaignId - CampaignId
#   createdTime - SOAP::SOAPDateTime
#   description - SOAP::SOAPString
#   field - DataSourceField
#   name - SOAP::SOAPString
#   operationStatus - DataSourceOperationStatus
#   organizationId - OrganizationId
#   ownerId - UserId
class Extension < DataSource
  attr_accessor :modifiedTime
  attr_accessor :objectId
  attr_accessor :version
  attr_accessor :campaignId
  attr_accessor :createdTime
  attr_accessor :description
  attr_accessor :field
  attr_accessor :name
  attr_accessor :operationStatus
  attr_accessor :organizationId
  attr_accessor :ownerId

  def initialize(modifiedTime = nil, objectId = nil, version = nil, campaignId = nil, createdTime = nil, description = nil, field = [], name = nil, operationStatus = nil, organizationId = nil, ownerId = nil)
    @modifiedTime = modifiedTime
    @objectId = objectId
    @version = version
    @campaignId = campaignId
    @createdTime = createdTime
    @description = description
    @field = field
    @name = name
    @operationStatus = operationStatus
    @organizationId = organizationId
    @ownerId = ownerId
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}Catalog
#   modifiedTime - SOAP::SOAPDateTime
#   objectId - ObjectId
#   version - SOAP::SOAPInt
#   campaignId - CampaignId
#   createdTime - SOAP::SOAPDateTime
#   description - SOAP::SOAPString
#   field - DataSourceField
#   name - SOAP::SOAPString
#   operationStatus - DataSourceOperationStatus
#   organizationId - OrganizationId
#   ownerId - UserId
class Catalog < Extension
  attr_accessor :modifiedTime
  attr_accessor :objectId
  attr_accessor :version
  attr_accessor :campaignId
  attr_accessor :createdTime
  attr_accessor :description
  attr_accessor :field
  attr_accessor :name
  attr_accessor :operationStatus
  attr_accessor :organizationId
  attr_accessor :ownerId

  def initialize(modifiedTime = nil, objectId = nil, version = nil, campaignId = nil, createdTime = nil, description = nil, field = [], name = nil, operationStatus = nil, organizationId = nil, ownerId = nil)
    @modifiedTime = modifiedTime
    @objectId = objectId
    @version = version
    @campaignId = campaignId
    @createdTime = createdTime
    @description = description
    @field = field
    @name = name
    @operationStatus = operationStatus
    @organizationId = organizationId
    @ownerId = ownerId
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}InternalDataSourceExtn
#   modifiedTime - SOAP::SOAPDateTime
#   objectId - ObjectId
#   version - SOAP::SOAPInt
#   campaignId - CampaignId
#   createdTime - SOAP::SOAPDateTime
#   description - SOAP::SOAPString
#   field - DataSourceField
#   name - SOAP::SOAPString
#   operationStatus - DataSourceOperationStatus
#   organizationId - OrganizationId
#   ownerId - UserId
#   importFrequency - DataSourceImportFrequency
#   startTime - SOAP::SOAPString
#   hourlyInterval - SOAP::SOAPLong
#   weeklyDays - DayOfWeek
#   importMode - DataSourceImportMode
#   useFTP - SOAP::SOAPBoolean
class InternalDataSourceExtn < DataSource
  attr_accessor :modifiedTime
  attr_accessor :objectId
  attr_accessor :version
  attr_accessor :campaignId
  attr_accessor :createdTime
  attr_accessor :description
  attr_accessor :field
  attr_accessor :name
  attr_accessor :operationStatus
  attr_accessor :organizationId
  attr_accessor :ownerId
  attr_accessor :importFrequency
  attr_accessor :startTime
  attr_accessor :hourlyInterval
  attr_accessor :weeklyDays
  attr_accessor :importMode
  attr_accessor :useFTP

  def initialize(modifiedTime = nil, objectId = nil, version = nil, campaignId = nil, createdTime = nil, description = nil, field = [], name = nil, operationStatus = nil, organizationId = nil, ownerId = nil, importFrequency = nil, startTime = nil, hourlyInterval = nil, weeklyDays = [], importMode = nil, useFTP = nil)
    @modifiedTime = modifiedTime
    @objectId = objectId
    @version = version
    @campaignId = campaignId
    @createdTime = createdTime
    @description = description
    @field = field
    @name = name
    @operationStatus = operationStatus
    @organizationId = organizationId
    @ownerId = ownerId
    @importFrequency = importFrequency
    @startTime = startTime
    @hourlyInterval = hourlyInterval
    @weeklyDays = weeklyDays
    @importMode = importMode
    @useFTP = useFTP
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}ExternalDataSource
#   modifiedTime - SOAP::SOAPDateTime
#   objectId - ObjectId
#   version - SOAP::SOAPInt
#   campaignId - CampaignId
#   createdTime - SOAP::SOAPDateTime
#   description - SOAP::SOAPString
#   field - DataSourceField
#   name - SOAP::SOAPString
#   operationStatus - DataSourceOperationStatus
#   organizationId - OrganizationId
#   ownerId - UserId
#   connectionInfo - ExternalDataSource::ConnectionInfo
#   enableLocalCopy - SOAP::SOAPBoolean
#   tableName - SOAP::SOAPString
#   allowRefreshAtLaunchTime - SOAP::SOAPBoolean
#   hourlyRefresh - ExternalDataSource::HourlyRefresh
#   dailyRefresh - ExternalDataSource::DailyRefresh
#   weeklyRefresh - ExternalDataSource::WeeklyRefresh
#   writebackTable - SOAP::SOAPString
#   advancedQuery - SOAP::SOAPString
#   sourceTableName - SOAP::SOAPString
class ExternalDataSource < DataSource

  # inner class for member: connectionInfo
  # {http://www.strongmail.com/services/2009/03/02/schema}connectionInfo
  #   databaseName - SOAP::SOAPString
  #   databaseType - DatabaseType
  #   hostname - SOAP::SOAPString
  #   password - SOAP::SOAPString
  #   port - SOAP::SOAPString
  #   username - SOAP::SOAPString
  class ConnectionInfo
    attr_accessor :databaseName
    attr_accessor :databaseType
    attr_accessor :hostname
    attr_accessor :password
    attr_accessor :port
    attr_accessor :username

    def initialize(databaseName = nil, databaseType = nil, hostname = nil, password = nil, port = nil, username = nil)
      @databaseName = databaseName
      @databaseType = databaseType
      @hostname = hostname
      @password = password
      @port = port
      @username = username
    end
  end

  # inner class for member: hourlyRefresh
  # {http://www.strongmail.com/services/2009/03/02/schema}hourlyRefresh
  #   interval - (any)
  class HourlyRefresh
    attr_accessor :interval

    def initialize(interval = nil)
      @interval = interval
    end
  end

  # inner class for member: dailyRefresh
  # {http://www.strongmail.com/services/2009/03/02/schema}dailyRefresh
  #   startTime - SOAP::SOAPTime
  class DailyRefresh
    attr_accessor :startTime

    def initialize(startTime = nil)
      @startTime = startTime
    end
  end

  # inner class for member: weeklyRefresh
  # {http://www.strongmail.com/services/2009/03/02/schema}weeklyRefresh
  #   startTime - SOAP::SOAPTime
  #   day - DayOfWeek
  class WeeklyRefresh
    attr_accessor :startTime
    attr_accessor :day

    def initialize(startTime = nil, day = [])
      @startTime = startTime
      @day = day
    end
  end

  attr_accessor :modifiedTime
  attr_accessor :objectId
  attr_accessor :version
  attr_accessor :campaignId
  attr_accessor :createdTime
  attr_accessor :description
  attr_accessor :field
  attr_accessor :name
  attr_accessor :operationStatus
  attr_accessor :organizationId
  attr_accessor :ownerId
  attr_accessor :connectionInfo
  attr_accessor :enableLocalCopy
  attr_accessor :tableName
  attr_accessor :allowRefreshAtLaunchTime
  attr_accessor :hourlyRefresh
  attr_accessor :dailyRefresh
  attr_accessor :weeklyRefresh
  attr_accessor :writebackTable
  attr_accessor :advancedQuery
  attr_accessor :sourceTableName

  def initialize(modifiedTime = nil, objectId = nil, version = nil, campaignId = nil, createdTime = nil, description = nil, field = [], name = nil, operationStatus = nil, organizationId = nil, ownerId = nil, connectionInfo = nil, enableLocalCopy = nil, tableName = nil, allowRefreshAtLaunchTime = nil, hourlyRefresh = nil, dailyRefresh = nil, weeklyRefresh = nil, writebackTable = nil, advancedQuery = nil, sourceTableName = nil)
    @modifiedTime = modifiedTime
    @objectId = objectId
    @version = version
    @campaignId = campaignId
    @createdTime = createdTime
    @description = description
    @field = field
    @name = name
    @operationStatus = operationStatus
    @organizationId = organizationId
    @ownerId = ownerId
    @connectionInfo = connectionInfo
    @enableLocalCopy = enableLocalCopy
    @tableName = tableName
    @allowRefreshAtLaunchTime = allowRefreshAtLaunchTime
    @hourlyRefresh = hourlyRefresh
    @dailyRefresh = dailyRefresh
    @weeklyRefresh = weeklyRefresh
    @writebackTable = writebackTable
    @advancedQuery = advancedQuery
    @sourceTableName = sourceTableName
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}RecurringImport
# abstract
#   modifiedTime - SOAP::SOAPDateTime
#   objectId - ObjectId
#   version - SOAP::SOAPInt
#   name - SOAP::SOAPString
#   importTo - InternalDataSourceId
#   importResult - RecurringImportResult
class RecurringImport < BaseObject
  attr_accessor :modifiedTime
  attr_accessor :objectId
  attr_accessor :version
  attr_accessor :name
  attr_accessor :importTo
  attr_accessor :importResult

  def initialize(modifiedTime = nil, objectId = nil, version = nil, name = nil, importTo = nil, importResult = [])
    @modifiedTime = modifiedTime
    @objectId = objectId
    @version = version
    @name = name
    @importTo = importTo
    @importResult = importResult
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}DatabaseImport
#   modifiedTime - SOAP::SOAPDateTime
#   objectId - ObjectId
#   version - SOAP::SOAPInt
#   name - SOAP::SOAPString
#   importTo - InternalDataSourceId
#   importResult - RecurringImportResult
#   importFrom - ExternalDataSourceId
class DatabaseImport < RecurringImport
  attr_accessor :modifiedTime
  attr_accessor :objectId
  attr_accessor :version
  attr_accessor :name
  attr_accessor :importTo
  attr_accessor :importResult
  attr_accessor :importFrom

  def initialize(modifiedTime = nil, objectId = nil, version = nil, name = nil, importTo = nil, importResult = [], importFrom = nil)
    @modifiedTime = modifiedTime
    @objectId = objectId
    @version = version
    @name = name
    @importTo = importTo
    @importResult = importResult
    @importFrom = importFrom
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}FtpImport
#   modifiedTime - SOAP::SOAPDateTime
#   objectId - ObjectId
#   version - SOAP::SOAPInt
#   name - SOAP::SOAPString
#   importTo - InternalDataSourceId
#   importResult - RecurringImportResult
#   fileNamePrefix - SOAP::SOAPString
#   fileNameSuffix - SOAP::SOAPString
class FtpImport < RecurringImport
  attr_accessor :modifiedTime
  attr_accessor :objectId
  attr_accessor :version
  attr_accessor :name
  attr_accessor :importTo
  attr_accessor :importResult
  attr_accessor :fileNamePrefix
  attr_accessor :fileNameSuffix

  def initialize(modifiedTime = nil, objectId = nil, version = nil, name = nil, importTo = nil, importResult = [], fileNamePrefix = nil, fileNameSuffix = nil)
    @modifiedTime = modifiedTime
    @objectId = objectId
    @version = version
    @name = name
    @importTo = importTo
    @importResult = importResult
    @fileNamePrefix = fileNamePrefix
    @fileNameSuffix = fileNameSuffix
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}Target
#   modifiedTime - SOAP::SOAPDateTime
#   objectId - ObjectId
#   version - SOAP::SOAPInt
#   advancedQuery - SOAP::SOAPString
#   bounceFieldName - SOAP::SOAPString
#   campaignId - CampaignId
#   dataSourceId - DataSourceId
#   emailAddressFieldName - SOAP::SOAPString
#   excludeBounce - SOAP::SOAPBoolean
#   excludeUnsubscribe - SOAP::SOAPBoolean
#   smsAddressFieldName - SOAP::SOAPString
#   totalRecords - SOAP::SOAPInt
#   type - TargetType
#   retargetingDataSourceId - DataSourceId
#   unsubscribeFieldName - SOAP::SOAPString
#   createdTime - SOAP::SOAPDateTime
#   description - SOAP::SOAPString
#   name - SOAP::SOAPString
#   organizationId - OrganizationId
#   ownerId - UserId
class Target < BaseObject
  attr_accessor :modifiedTime
  attr_accessor :objectId
  attr_accessor :version
  attr_accessor :advancedQuery
  attr_accessor :bounceFieldName
  attr_accessor :campaignId
  attr_accessor :dataSourceId
  attr_accessor :emailAddressFieldName
  attr_accessor :excludeBounce
  attr_accessor :excludeUnsubscribe
  attr_accessor :smsAddressFieldName
  attr_accessor :totalRecords
  attr_accessor :type
  attr_accessor :retargetingDataSourceId
  attr_accessor :unsubscribeFieldName
  attr_accessor :createdTime
  attr_accessor :description
  attr_accessor :name
  attr_accessor :organizationId
  attr_accessor :ownerId

  def initialize(modifiedTime = nil, objectId = nil, version = nil, advancedQuery = nil, bounceFieldName = nil, campaignId = nil, dataSourceId = nil, emailAddressFieldName = nil, excludeBounce = nil, excludeUnsubscribe = nil, smsAddressFieldName = nil, totalRecords = nil, type = nil, retargetingDataSourceId = nil, unsubscribeFieldName = nil, createdTime = nil, description = nil, name = nil, organizationId = nil, ownerId = nil)
    @modifiedTime = modifiedTime
    @objectId = objectId
    @version = version
    @advancedQuery = advancedQuery
    @bounceFieldName = bounceFieldName
    @campaignId = campaignId
    @dataSourceId = dataSourceId
    @emailAddressFieldName = emailAddressFieldName
    @excludeBounce = excludeBounce
    @excludeUnsubscribe = excludeUnsubscribe
    @smsAddressFieldName = smsAddressFieldName
    @totalRecords = totalRecords
    @type = type
    @retargetingDataSourceId = retargetingDataSourceId
    @unsubscribeFieldName = unsubscribeFieldName
    @createdTime = createdTime
    @description = description
    @name = name
    @organizationId = organizationId
    @ownerId = ownerId
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}SuppressionList
#   modifiedTime - SOAP::SOAPDateTime
#   objectId - ObjectId
#   version - SOAP::SOAPInt
#   campaignId - CampaignId
#   includeByDefaultOnMailings - SOAP::SOAPBoolean
#   totalRecords - SOAP::SOAPInt
#   createdTime - SOAP::SOAPDateTime
#   description - SOAP::SOAPString
#   name - SOAP::SOAPString
#   organizationId - OrganizationId
#   ownerId - UserId
class SuppressionList < BaseObject
  attr_accessor :modifiedTime
  attr_accessor :objectId
  attr_accessor :version
  attr_accessor :campaignId
  attr_accessor :includeByDefaultOnMailings
  attr_accessor :totalRecords
  attr_accessor :createdTime
  attr_accessor :description
  attr_accessor :name
  attr_accessor :organizationId
  attr_accessor :ownerId

  def initialize(modifiedTime = nil, objectId = nil, version = nil, campaignId = nil, includeByDefaultOnMailings = nil, totalRecords = nil, createdTime = nil, description = nil, name = nil, organizationId = nil, ownerId = nil)
    @modifiedTime = modifiedTime
    @objectId = objectId
    @version = version
    @campaignId = campaignId
    @includeByDefaultOnMailings = includeByDefaultOnMailings
    @totalRecords = totalRecords
    @createdTime = createdTime
    @description = description
    @name = name
    @organizationId = organizationId
    @ownerId = ownerId
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}SeedList
#   modifiedTime - SOAP::SOAPDateTime
#   objectId - ObjectId
#   version - SOAP::SOAPInt
#   campaignId - CampaignId
#   isTestList - SOAP::SOAPBoolean
#   totalRecords - SOAP::SOAPInt
#   createdTime - SOAP::SOAPDateTime
#   description - SOAP::SOAPString
#   name - SOAP::SOAPString
#   organizationId - OrganizationId
#   ownerId - UserId
class SeedList < BaseObject
  attr_accessor :modifiedTime
  attr_accessor :objectId
  attr_accessor :version
  attr_accessor :campaignId
  attr_accessor :isTestList
  attr_accessor :totalRecords
  attr_accessor :createdTime
  attr_accessor :description
  attr_accessor :name
  attr_accessor :organizationId
  attr_accessor :ownerId

  def initialize(modifiedTime = nil, objectId = nil, version = nil, campaignId = nil, isTestList = nil, totalRecords = nil, createdTime = nil, description = nil, name = nil, organizationId = nil, ownerId = nil)
    @modifiedTime = modifiedTime
    @objectId = objectId
    @version = version
    @campaignId = campaignId
    @isTestList = isTestList
    @totalRecords = totalRecords
    @createdTime = createdTime
    @description = description
    @name = name
    @organizationId = organizationId
    @ownerId = ownerId
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}Template
#   modifiedTime - SOAP::SOAPDateTime
#   objectId - ObjectId
#   version - SOAP::SOAPInt
#   attachmentId - AttachmentId
#   createdTime - SOAP::SOAPDateTime
#   description - SOAP::SOAPString
#   bodyEncoding - Encoding
#   bounceAddressId - SystemAddressId
#   campaignId - CampaignId
#   contentBlockId - ContentBlockId
#   fromAddressId - SystemAddressId
#   fromName - SOAP::SOAPString
#   headerEncoding - Encoding
#   header - SOAP::SOAPString
#   isApproved - SOAP::SOAPBoolean
#   messagePart - MessagePart
#   assetExpiryInterval - AssetExpiryInterval
#   outputBodyCharSet - CharSet
#   outputBodyCharSetToken - (any)
#   outputHeaderCharSet - CharSet
#   outputHeaderCharSetToken - (any)
#   name - SOAP::SOAPString
#   organizationId - OrganizationId
#   ownerId - UserId
#   replyAddressId - SystemAddressId
#   subject - SOAP::SOAPString
#   forward2FriendOffer - SOAP::SOAPString
#   forward2FriendOfferTrackingOption - Forward2FriendOfferTrackingOption
class Template < BaseObject
  attr_accessor :modifiedTime
  attr_accessor :objectId
  attr_accessor :version
  attr_accessor :attachmentId
  attr_accessor :createdTime
  attr_accessor :description
  attr_accessor :bodyEncoding
  attr_accessor :bounceAddressId
  attr_accessor :campaignId
  attr_accessor :contentBlockId
  attr_accessor :fromAddressId
  attr_accessor :fromName
  attr_accessor :headerEncoding
  attr_accessor :header
  attr_accessor :isApproved
  attr_accessor :messagePart
  attr_accessor :assetExpiryInterval
  attr_accessor :outputBodyCharSet
  attr_accessor :outputBodyCharSetToken
  attr_accessor :outputHeaderCharSet
  attr_accessor :outputHeaderCharSetToken
  attr_accessor :name
  attr_accessor :organizationId
  attr_accessor :ownerId
  attr_accessor :replyAddressId
  attr_accessor :subject
  attr_accessor :forward2FriendOffer
  attr_accessor :forward2FriendOfferTrackingOption

  def initialize(modifiedTime = nil, objectId = nil, version = nil, attachmentId = [], createdTime = nil, description = nil, bodyEncoding = nil, bounceAddressId = nil, campaignId = nil, contentBlockId = [], fromAddressId = nil, fromName = nil, headerEncoding = nil, header = [], isApproved = nil, messagePart = [], assetExpiryInterval = nil, outputBodyCharSet = nil, outputBodyCharSetToken = nil, outputHeaderCharSet = nil, outputHeaderCharSetToken = nil, name = nil, organizationId = nil, ownerId = nil, replyAddressId = nil, subject = nil, forward2FriendOffer = nil, forward2FriendOfferTrackingOption = nil)
    @modifiedTime = modifiedTime
    @objectId = objectId
    @version = version
    @attachmentId = attachmentId
    @createdTime = createdTime
    @description = description
    @bodyEncoding = bodyEncoding
    @bounceAddressId = bounceAddressId
    @campaignId = campaignId
    @contentBlockId = contentBlockId
    @fromAddressId = fromAddressId
    @fromName = fromName
    @headerEncoding = headerEncoding
    @header = header
    @isApproved = isApproved
    @messagePart = messagePart
    @assetExpiryInterval = assetExpiryInterval
    @outputBodyCharSet = outputBodyCharSet
    @outputBodyCharSetToken = outputBodyCharSetToken
    @outputHeaderCharSet = outputHeaderCharSet
    @outputHeaderCharSetToken = outputHeaderCharSetToken
    @name = name
    @organizationId = organizationId
    @ownerId = ownerId
    @replyAddressId = replyAddressId
    @subject = subject
    @forward2FriendOffer = forward2FriendOffer
    @forward2FriendOfferTrackingOption = forward2FriendOfferTrackingOption
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}ContentBlock
#   modifiedTime - SOAP::SOAPDateTime
#   objectId - ObjectId
#   version - SOAP::SOAPInt
#   campaignId - CampaignId
#   content - SOAP::SOAPString
#   createdTime - SOAP::SOAPDateTime
#   description - SOAP::SOAPString
#   name - SOAP::SOAPString
#   organizationId - OrganizationId
#   ownerId - UserId
#   size - SOAP::SOAPInt
#   namedLinks - NamedLink
class ContentBlock < BaseObject
  attr_accessor :modifiedTime
  attr_accessor :objectId
  attr_accessor :version
  attr_accessor :campaignId
  attr_accessor :content
  attr_accessor :createdTime
  attr_accessor :description
  attr_accessor :name
  attr_accessor :organizationId
  attr_accessor :ownerId
  attr_accessor :size
  attr_accessor :namedLinks

  def initialize(modifiedTime = nil, objectId = nil, version = nil, campaignId = nil, content = nil, createdTime = nil, description = nil, name = nil, organizationId = nil, ownerId = nil, size = nil, namedLinks = [])
    @modifiedTime = modifiedTime
    @objectId = objectId
    @version = version
    @campaignId = campaignId
    @content = content
    @createdTime = createdTime
    @description = description
    @name = name
    @organizationId = organizationId
    @ownerId = ownerId
    @size = size
    @namedLinks = namedLinks
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}Attachment
#   modifiedTime - SOAP::SOAPDateTime
#   objectId - ObjectId
#   version - SOAP::SOAPInt
#   campaignId - CampaignId
#   createdTime - SOAP::SOAPDateTime
#   description - SOAP::SOAPString
#   content - SOAP::SOAPBase64
#   fileName - SOAP::SOAPString
#   fileReference - SOAP::SOAPString
#   name - SOAP::SOAPString
#   organizationId - OrganizationId
#   ownerId - UserId
#   size - SOAP::SOAPInt
class Attachment < BaseObject
  attr_accessor :modifiedTime
  attr_accessor :objectId
  attr_accessor :version
  attr_accessor :campaignId
  attr_accessor :createdTime
  attr_accessor :description
  attr_accessor :content
  attr_accessor :fileName
  attr_accessor :fileReference
  attr_accessor :name
  attr_accessor :organizationId
  attr_accessor :ownerId
  attr_accessor :size

  def initialize(modifiedTime = nil, objectId = nil, version = nil, campaignId = nil, createdTime = nil, description = nil, content = nil, fileName = nil, fileReference = nil, name = nil, organizationId = nil, ownerId = nil, size = nil)
    @modifiedTime = modifiedTime
    @objectId = objectId
    @version = version
    @campaignId = campaignId
    @createdTime = createdTime
    @description = description
    @content = content
    @fileName = fileName
    @fileReference = fileReference
    @name = name
    @organizationId = organizationId
    @ownerId = ownerId
    @size = size
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}Rule
#   modifiedTime - SOAP::SOAPDateTime
#   objectId - ObjectId
#   version - SOAP::SOAPInt
#   campaignId - CampaignId
#   targetId - TargetId
#   ifPart - RuleIfPart
#   thenPart - RuleThenPart
#   elsePart - RuleElsePart
#   createdTime - SOAP::SOAPDateTime
#   description - SOAP::SOAPString
#   name - SOAP::SOAPString
#   organizationId - OrganizationId
#   ownerId - UserId
class Rule < BaseObject
  attr_accessor :modifiedTime
  attr_accessor :objectId
  attr_accessor :version
  attr_accessor :campaignId
  attr_accessor :targetId
  attr_accessor :ifPart
  attr_accessor :thenPart
  attr_accessor :elsePart
  attr_accessor :createdTime
  attr_accessor :description
  attr_accessor :name
  attr_accessor :organizationId
  attr_accessor :ownerId

  def initialize(modifiedTime = nil, objectId = nil, version = nil, campaignId = nil, targetId = [], ifPart = nil, thenPart = nil, elsePart = nil, createdTime = nil, description = nil, name = nil, organizationId = nil, ownerId = nil)
    @modifiedTime = modifiedTime
    @objectId = objectId
    @version = version
    @campaignId = campaignId
    @targetId = targetId
    @ifPart = ifPart
    @thenPart = thenPart
    @elsePart = elsePart
    @createdTime = createdTime
    @description = description
    @name = name
    @organizationId = organizationId
    @ownerId = ownerId
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}Mailing
# abstract
#   modifiedTime - SOAP::SOAPDateTime
#   objectId - ObjectId
#   version - SOAP::SOAPInt
#   attachmentId - AttachmentId
#   bodyEncoding - Encoding
#   bounceAddressId - SystemAddressId
#   campaignId - CampaignId
#   isApproved - SOAP::SOAPBoolean
#   isCompliant - SOAP::SOAPBoolean
#   contentBlockId - ContentBlockId
#   fieldDelimiter - SOAP::SOAPString
#   format - MessageFormat
#   fromAddressId - SystemAddressId
#   fromName - SOAP::SOAPString
#   headerEncoding - Encoding
#   header - SOAP::SOAPString
#   lastGoodStatus - MailingStatus
#   mailingClassId - MailingClassId
#   name - SOAP::SOAPString
#   priority - MailingPriority
#   outputBodyCharSet - CharSet
#   outputBodyCharSetToken - (any)
#   outputHeaderCharSet - CharSet
#   outputHeaderCharSetToken - (any)
#   parentId - MailingId
#   plannedLaunchDate - SOAP::SOAPDate
#   replyAddressId - SystemAddressId
#   rowDelimiter - SOAP::SOAPString
#   serverErrorCode - SOAP::SOAPInt
#   serverErrorMessage - SOAP::SOAPString
#   status - MailingStatus
#   subject - SOAP::SOAPString
#   templateId - TemplateId
#   type - MailingType
#   createdTime - SOAP::SOAPDateTime
#   description - SOAP::SOAPString
#   organizationId - OrganizationId
#   ownerId - UserId
#   forward2FriendOffer - SOAP::SOAPString
#   forward2FriendOfferTrackingOption - Forward2FriendOfferTrackingOption
class Mailing < BaseObject
  attr_accessor :modifiedTime
  attr_accessor :objectId
  attr_accessor :version
  attr_accessor :attachmentId
  attr_accessor :bodyEncoding
  attr_accessor :bounceAddressId
  attr_accessor :campaignId
  attr_accessor :isApproved
  attr_accessor :isCompliant
  attr_accessor :contentBlockId
  attr_accessor :fieldDelimiter
  attr_accessor :format
  attr_accessor :fromAddressId
  attr_accessor :fromName
  attr_accessor :headerEncoding
  attr_accessor :header
  attr_accessor :lastGoodStatus
  attr_accessor :mailingClassId
  attr_accessor :name
  attr_accessor :priority
  attr_accessor :outputBodyCharSet
  attr_accessor :outputBodyCharSetToken
  attr_accessor :outputHeaderCharSet
  attr_accessor :outputHeaderCharSetToken
  attr_accessor :parentId
  attr_accessor :plannedLaunchDate
  attr_accessor :replyAddressId
  attr_accessor :rowDelimiter
  attr_accessor :serverErrorCode
  attr_accessor :serverErrorMessage
  attr_accessor :status
  attr_accessor :subject
  attr_accessor :templateId
  attr_accessor :type
  attr_accessor :createdTime
  attr_accessor :description
  attr_accessor :organizationId
  attr_accessor :ownerId
  attr_accessor :forward2FriendOffer
  attr_accessor :forward2FriendOfferTrackingOption

  def initialize(modifiedTime = nil, objectId = nil, version = nil, attachmentId = [], bodyEncoding = nil, bounceAddressId = nil, campaignId = nil, isApproved = nil, isCompliant = nil, contentBlockId = [], fieldDelimiter = nil, format = [], fromAddressId = nil, fromName = nil, headerEncoding = nil, header = [], lastGoodStatus = nil, mailingClassId = nil, name = nil, priority = nil, outputBodyCharSet = nil, outputBodyCharSetToken = nil, outputHeaderCharSet = nil, outputHeaderCharSetToken = nil, parentId = nil, plannedLaunchDate = nil, replyAddressId = nil, rowDelimiter = nil, serverErrorCode = nil, serverErrorMessage = nil, status = nil, subject = nil, templateId = nil, type = nil, createdTime = nil, description = nil, organizationId = nil, ownerId = nil, forward2FriendOffer = nil, forward2FriendOfferTrackingOption = nil)
    @modifiedTime = modifiedTime
    @objectId = objectId
    @version = version
    @attachmentId = attachmentId
    @bodyEncoding = bodyEncoding
    @bounceAddressId = bounceAddressId
    @campaignId = campaignId
    @isApproved = isApproved
    @isCompliant = isCompliant
    @contentBlockId = contentBlockId
    @fieldDelimiter = fieldDelimiter
    @format = format
    @fromAddressId = fromAddressId
    @fromName = fromName
    @headerEncoding = headerEncoding
    @header = header
    @lastGoodStatus = lastGoodStatus
    @mailingClassId = mailingClassId
    @name = name
    @priority = priority
    @outputBodyCharSet = outputBodyCharSet
    @outputBodyCharSetToken = outputBodyCharSetToken
    @outputHeaderCharSet = outputHeaderCharSet
    @outputHeaderCharSetToken = outputHeaderCharSetToken
    @parentId = parentId
    @plannedLaunchDate = plannedLaunchDate
    @replyAddressId = replyAddressId
    @rowDelimiter = rowDelimiter
    @serverErrorCode = serverErrorCode
    @serverErrorMessage = serverErrorMessage
    @status = status
    @subject = subject
    @templateId = templateId
    @type = type
    @createdTime = createdTime
    @description = description
    @organizationId = organizationId
    @ownerId = ownerId
    @forward2FriendOffer = forward2FriendOffer
    @forward2FriendOfferTrackingOption = forward2FriendOfferTrackingOption
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}SchedulableMailing
# abstract
#   modifiedTime - SOAP::SOAPDateTime
#   objectId - ObjectId
#   version - SOAP::SOAPInt
#   attachmentId - AttachmentId
#   bodyEncoding - Encoding
#   bounceAddressId - SystemAddressId
#   campaignId - CampaignId
#   isApproved - SOAP::SOAPBoolean
#   isCompliant - SOAP::SOAPBoolean
#   contentBlockId - ContentBlockId
#   fieldDelimiter - SOAP::SOAPString
#   format - MessageFormat
#   fromAddressId - SystemAddressId
#   fromName - SOAP::SOAPString
#   headerEncoding - Encoding
#   header - SOAP::SOAPString
#   lastGoodStatus - MailingStatus
#   mailingClassId - MailingClassId
#   name - SOAP::SOAPString
#   priority - MailingPriority
#   outputBodyCharSet - CharSet
#   outputBodyCharSetToken - (any)
#   outputHeaderCharSet - CharSet
#   outputHeaderCharSetToken - (any)
#   parentId - MailingId
#   plannedLaunchDate - SOAP::SOAPDate
#   replyAddressId - SystemAddressId
#   rowDelimiter - SOAP::SOAPString
#   serverErrorCode - SOAP::SOAPInt
#   serverErrorMessage - SOAP::SOAPString
#   status - MailingStatus
#   subject - SOAP::SOAPString
#   templateId - TemplateId
#   type - MailingType
#   createdTime - SOAP::SOAPDateTime
#   description - SOAP::SOAPString
#   organizationId - OrganizationId
#   ownerId - UserId
#   forward2FriendOffer - SOAP::SOAPString
#   forward2FriendOfferTrackingOption - Forward2FriendOfferTrackingOption
#   schedule - SchedulableMailing::Schedule
class SchedulableMailing < Mailing

  # inner class for member: schedule
  # {http://www.strongmail.com/services/2009/03/02/schema}schedule
  #   startDateTime - SOAP::SOAPDateTime
  #   recurrence - SchedulableMailing::Schedule::Recurrence
  class Schedule

    # inner class for member: recurrence
    # {http://www.strongmail.com/services/2009/03/02/schema}recurrence
    #   endDate - SOAP::SOAPDate
    #   endAfterXMailings - SOAP::SOAPInt
    #   minutelyRecurrence - SchedulableMailing::Schedule::Recurrence::MinutelyRecurrence
    #   hourlyRecurrence - SchedulableMailing::Schedule::Recurrence::HourlyRecurrence
    #   dailyRecurrence - SchedulableMailing::Schedule::Recurrence::DailyRecurrence
    #   weeklyRecurrence - SchedulableMailing::Schedule::Recurrence::WeeklyRecurrence
    #   monthlyByDateRecurrence - SchedulableMailing::Schedule::Recurrence::MonthlyByDateRecurrence
    #   monthlyByDayRecurrence - SchedulableMailing::Schedule::Recurrence::MonthlyByDayRecurrence
    #   yearlyByDateRecurrence - SchedulableMailing::Schedule::Recurrence::YearlyByDateRecurrence
    #   yearlyByDayRecurrence - SchedulableMailing::Schedule::Recurrence::YearlyByDayRecurrence
    #   nextScheduledDateTime - SOAP::SOAPDateTime
    class Recurrence

      # inner class for member: minutelyRecurrence
      # {http://www.strongmail.com/services/2009/03/02/schema}minutelyRecurrence
      #   interval - (any)
      class MinutelyRecurrence
        attr_accessor :interval

        def initialize(interval = nil)
          @interval = interval
        end
      end

      # inner class for member: hourlyRecurrence
      # {http://www.strongmail.com/services/2009/03/02/schema}hourlyRecurrence
      #   interval - (any)
      class HourlyRecurrence
        attr_accessor :interval

        def initialize(interval = nil)
          @interval = interval
        end
      end

      # inner class for member: dailyRecurrence
      # {http://www.strongmail.com/services/2009/03/02/schema}dailyRecurrence
      #   interval - (any)
      #   everyWeekDay - SOAP::SOAPBoolean
      class DailyRecurrence
        attr_accessor :interval
        attr_accessor :everyWeekDay

        def initialize(interval = nil, everyWeekDay = nil)
          @interval = interval
          @everyWeekDay = everyWeekDay
        end
      end

      # inner class for member: weeklyRecurrence
      # {http://www.strongmail.com/services/2009/03/02/schema}weeklyRecurrence
      #   interval - (any)
      #   day - DayOfWeek
      class WeeklyRecurrence
        attr_accessor :interval
        attr_accessor :day

        def initialize(interval = nil, day = [])
          @interval = interval
          @day = day
        end
      end

      # inner class for member: monthlyByDateRecurrence
      # {http://www.strongmail.com/services/2009/03/02/schema}monthlyByDateRecurrence
      #   interval - (any)
      #   dayOfMonth - (any)
      class MonthlyByDateRecurrence
        attr_accessor :interval
        attr_accessor :dayOfMonth

        def initialize(interval = nil, dayOfMonth = [])
          @interval = interval
          @dayOfMonth = dayOfMonth
        end
      end

      # inner class for member: monthlyByDayRecurrence
      # {http://www.strongmail.com/services/2009/03/02/schema}monthlyByDayRecurrence
      #   interval - (any)
      #   weeklyOccurrence - WeeklyOccurrence
      #   dailyOccurrence - DailyOccurrence
      class MonthlyByDayRecurrence
        attr_accessor :interval
        attr_accessor :weeklyOccurrence
        attr_accessor :dailyOccurrence

        def initialize(interval = nil, weeklyOccurrence = nil, dailyOccurrence = nil)
          @interval = interval
          @weeklyOccurrence = weeklyOccurrence
          @dailyOccurrence = dailyOccurrence
        end
      end

      # inner class for member: yearlyByDateRecurrence
      # {http://www.strongmail.com/services/2009/03/02/schema}yearlyByDateRecurrence
      #   month - (any)
      #   day - (any)
      class YearlyByDateRecurrence
        attr_accessor :month
        attr_accessor :day

        def initialize(month = nil, day = nil)
          @month = month
          @day = day
        end
      end

      # inner class for member: yearlyByDayRecurrence
      # {http://www.strongmail.com/services/2009/03/02/schema}yearlyByDayRecurrence
      #   month - (any)
      #   weeklyOccurrence - WeeklyOccurrence
      #   dailyOccurrence - DailyOccurrence
      class YearlyByDayRecurrence
        attr_accessor :month
        attr_accessor :weeklyOccurrence
        attr_accessor :dailyOccurrence

        def initialize(month = nil, weeklyOccurrence = nil, dailyOccurrence = nil)
          @month = month
          @weeklyOccurrence = weeklyOccurrence
          @dailyOccurrence = dailyOccurrence
        end
      end

      attr_accessor :endDate
      attr_accessor :endAfterXMailings
      attr_accessor :minutelyRecurrence
      attr_accessor :hourlyRecurrence
      attr_accessor :dailyRecurrence
      attr_accessor :weeklyRecurrence
      attr_accessor :monthlyByDateRecurrence
      attr_accessor :monthlyByDayRecurrence
      attr_accessor :yearlyByDateRecurrence
      attr_accessor :yearlyByDayRecurrence
      attr_accessor :nextScheduledDateTime

      def initialize(endDate = nil, endAfterXMailings = nil, minutelyRecurrence = nil, hourlyRecurrence = nil, dailyRecurrence = nil, weeklyRecurrence = nil, monthlyByDateRecurrence = nil, monthlyByDayRecurrence = nil, yearlyByDateRecurrence = nil, yearlyByDayRecurrence = nil, nextScheduledDateTime = nil)
        @endDate = endDate
        @endAfterXMailings = endAfterXMailings
        @minutelyRecurrence = minutelyRecurrence
        @hourlyRecurrence = hourlyRecurrence
        @dailyRecurrence = dailyRecurrence
        @weeklyRecurrence = weeklyRecurrence
        @monthlyByDateRecurrence = monthlyByDateRecurrence
        @monthlyByDayRecurrence = monthlyByDayRecurrence
        @yearlyByDateRecurrence = yearlyByDateRecurrence
        @yearlyByDayRecurrence = yearlyByDayRecurrence
        @nextScheduledDateTime = nextScheduledDateTime
      end
    end

    attr_accessor :startDateTime
    attr_accessor :recurrence

    def initialize(startDateTime = nil, recurrence = nil)
      @startDateTime = startDateTime
      @recurrence = recurrence
    end
  end

  attr_accessor :modifiedTime
  attr_accessor :objectId
  attr_accessor :version
  attr_accessor :attachmentId
  attr_accessor :bodyEncoding
  attr_accessor :bounceAddressId
  attr_accessor :campaignId
  attr_accessor :isApproved
  attr_accessor :isCompliant
  attr_accessor :contentBlockId
  attr_accessor :fieldDelimiter
  attr_accessor :format
  attr_accessor :fromAddressId
  attr_accessor :fromName
  attr_accessor :headerEncoding
  attr_accessor :header
  attr_accessor :lastGoodStatus
  attr_accessor :mailingClassId
  attr_accessor :name
  attr_accessor :priority
  attr_accessor :outputBodyCharSet
  attr_accessor :outputBodyCharSetToken
  attr_accessor :outputHeaderCharSet
  attr_accessor :outputHeaderCharSetToken
  attr_accessor :parentId
  attr_accessor :plannedLaunchDate
  attr_accessor :replyAddressId
  attr_accessor :rowDelimiter
  attr_accessor :serverErrorCode
  attr_accessor :serverErrorMessage
  attr_accessor :status
  attr_accessor :subject
  attr_accessor :templateId
  attr_accessor :type
  attr_accessor :createdTime
  attr_accessor :description
  attr_accessor :organizationId
  attr_accessor :ownerId
  attr_accessor :forward2FriendOffer
  attr_accessor :forward2FriendOfferTrackingOption
  attr_accessor :schedule

  def initialize(modifiedTime = nil, objectId = nil, version = nil, attachmentId = [], bodyEncoding = nil, bounceAddressId = nil, campaignId = nil, isApproved = nil, isCompliant = nil, contentBlockId = [], fieldDelimiter = nil, format = [], fromAddressId = nil, fromName = nil, headerEncoding = nil, header = [], lastGoodStatus = nil, mailingClassId = nil, name = nil, priority = nil, outputBodyCharSet = nil, outputBodyCharSetToken = nil, outputHeaderCharSet = nil, outputHeaderCharSetToken = nil, parentId = nil, plannedLaunchDate = nil, replyAddressId = nil, rowDelimiter = nil, serverErrorCode = nil, serverErrorMessage = nil, status = nil, subject = nil, templateId = nil, type = nil, createdTime = nil, description = nil, organizationId = nil, ownerId = nil, forward2FriendOffer = nil, forward2FriendOfferTrackingOption = nil, schedule = nil)
    @modifiedTime = modifiedTime
    @objectId = objectId
    @version = version
    @attachmentId = attachmentId
    @bodyEncoding = bodyEncoding
    @bounceAddressId = bounceAddressId
    @campaignId = campaignId
    @isApproved = isApproved
    @isCompliant = isCompliant
    @contentBlockId = contentBlockId
    @fieldDelimiter = fieldDelimiter
    @format = format
    @fromAddressId = fromAddressId
    @fromName = fromName
    @headerEncoding = headerEncoding
    @header = header
    @lastGoodStatus = lastGoodStatus
    @mailingClassId = mailingClassId
    @name = name
    @priority = priority
    @outputBodyCharSet = outputBodyCharSet
    @outputBodyCharSetToken = outputBodyCharSetToken
    @outputHeaderCharSet = outputHeaderCharSet
    @outputHeaderCharSetToken = outputHeaderCharSetToken
    @parentId = parentId
    @plannedLaunchDate = plannedLaunchDate
    @replyAddressId = replyAddressId
    @rowDelimiter = rowDelimiter
    @serverErrorCode = serverErrorCode
    @serverErrorMessage = serverErrorMessage
    @status = status
    @subject = subject
    @templateId = templateId
    @type = type
    @createdTime = createdTime
    @description = description
    @organizationId = organizationId
    @ownerId = ownerId
    @forward2FriendOffer = forward2FriendOffer
    @forward2FriendOfferTrackingOption = forward2FriendOfferTrackingOption
    @schedule = schedule
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}StandardMailing
#   modifiedTime - SOAP::SOAPDateTime
#   objectId - ObjectId
#   version - SOAP::SOAPInt
#   attachmentId - AttachmentId
#   bodyEncoding - Encoding
#   bounceAddressId - SystemAddressId
#   campaignId - CampaignId
#   isApproved - SOAP::SOAPBoolean
#   isCompliant - SOAP::SOAPBoolean
#   contentBlockId - ContentBlockId
#   fieldDelimiter - SOAP::SOAPString
#   format - MessageFormat
#   fromAddressId - SystemAddressId
#   fromName - SOAP::SOAPString
#   headerEncoding - Encoding
#   header - SOAP::SOAPString
#   lastGoodStatus - MailingStatus
#   mailingClassId - MailingClassId
#   name - SOAP::SOAPString
#   priority - MailingPriority
#   outputBodyCharSet - CharSet
#   outputBodyCharSetToken - (any)
#   outputHeaderCharSet - CharSet
#   outputHeaderCharSetToken - (any)
#   parentId - MailingId
#   plannedLaunchDate - SOAP::SOAPDate
#   replyAddressId - SystemAddressId
#   rowDelimiter - SOAP::SOAPString
#   serverErrorCode - SOAP::SOAPInt
#   serverErrorMessage - SOAP::SOAPString
#   status - MailingStatus
#   subject - SOAP::SOAPString
#   templateId - TemplateId
#   type - MailingType
#   createdTime - SOAP::SOAPDateTime
#   description - SOAP::SOAPString
#   organizationId - OrganizationId
#   ownerId - UserId
#   forward2FriendOffer - SOAP::SOAPString
#   forward2FriendOfferTrackingOption - Forward2FriendOfferTrackingOption
#   schedule - StandardMailing::Schedule
#   eliminateDuplicates - SOAP::SOAPBoolean
#   excludedTargetId - TargetId
#   includedTargetId - TargetId
#   seedListId - SeedListId
#   suppressionListId - SuppressionListId
#   assetExpiryInterval - AssetExpiryInterval
#   addDefaultSuppress - SOAP::SOAPBoolean
class StandardMailing < SchedulableMailing

  # inner class for member: schedule
  # {http://www.strongmail.com/services/2009/03/02/schema}schedule
  #   startDateTime - SOAP::SOAPDateTime
  #   recurrence - StandardMailing::Schedule::Recurrence
  class Schedule

    # inner class for member: recurrence
    # {http://www.strongmail.com/services/2009/03/02/schema}recurrence
    #   endDate - SOAP::SOAPDate
    #   endAfterXMailings - SOAP::SOAPInt
    #   minutelyRecurrence - StandardMailing::Schedule::Recurrence::MinutelyRecurrence
    #   hourlyRecurrence - StandardMailing::Schedule::Recurrence::HourlyRecurrence
    #   dailyRecurrence - StandardMailing::Schedule::Recurrence::DailyRecurrence
    #   weeklyRecurrence - StandardMailing::Schedule::Recurrence::WeeklyRecurrence
    #   monthlyByDateRecurrence - StandardMailing::Schedule::Recurrence::MonthlyByDateRecurrence
    #   monthlyByDayRecurrence - StandardMailing::Schedule::Recurrence::MonthlyByDayRecurrence
    #   yearlyByDateRecurrence - StandardMailing::Schedule::Recurrence::YearlyByDateRecurrence
    #   yearlyByDayRecurrence - StandardMailing::Schedule::Recurrence::YearlyByDayRecurrence
    #   nextScheduledDateTime - SOAP::SOAPDateTime
    class Recurrence

      # inner class for member: minutelyRecurrence
      # {http://www.strongmail.com/services/2009/03/02/schema}minutelyRecurrence
      #   interval - (any)
      class MinutelyRecurrence
        attr_accessor :interval

        def initialize(interval = nil)
          @interval = interval
        end
      end

      # inner class for member: hourlyRecurrence
      # {http://www.strongmail.com/services/2009/03/02/schema}hourlyRecurrence
      #   interval - (any)
      class HourlyRecurrence
        attr_accessor :interval

        def initialize(interval = nil)
          @interval = interval
        end
      end

      # inner class for member: dailyRecurrence
      # {http://www.strongmail.com/services/2009/03/02/schema}dailyRecurrence
      #   interval - (any)
      #   everyWeekDay - SOAP::SOAPBoolean
      class DailyRecurrence
        attr_accessor :interval
        attr_accessor :everyWeekDay

        def initialize(interval = nil, everyWeekDay = nil)
          @interval = interval
          @everyWeekDay = everyWeekDay
        end
      end

      # inner class for member: weeklyRecurrence
      # {http://www.strongmail.com/services/2009/03/02/schema}weeklyRecurrence
      #   interval - (any)
      #   day - DayOfWeek
      class WeeklyRecurrence
        attr_accessor :interval
        attr_accessor :day

        def initialize(interval = nil, day = [])
          @interval = interval
          @day = day
        end
      end

      # inner class for member: monthlyByDateRecurrence
      # {http://www.strongmail.com/services/2009/03/02/schema}monthlyByDateRecurrence
      #   interval - (any)
      #   dayOfMonth - (any)
      class MonthlyByDateRecurrence
        attr_accessor :interval
        attr_accessor :dayOfMonth

        def initialize(interval = nil, dayOfMonth = [])
          @interval = interval
          @dayOfMonth = dayOfMonth
        end
      end

      # inner class for member: monthlyByDayRecurrence
      # {http://www.strongmail.com/services/2009/03/02/schema}monthlyByDayRecurrence
      #   interval - (any)
      #   weeklyOccurrence - WeeklyOccurrence
      #   dailyOccurrence - DailyOccurrence
      class MonthlyByDayRecurrence
        attr_accessor :interval
        attr_accessor :weeklyOccurrence
        attr_accessor :dailyOccurrence

        def initialize(interval = nil, weeklyOccurrence = nil, dailyOccurrence = nil)
          @interval = interval
          @weeklyOccurrence = weeklyOccurrence
          @dailyOccurrence = dailyOccurrence
        end
      end

      # inner class for member: yearlyByDateRecurrence
      # {http://www.strongmail.com/services/2009/03/02/schema}yearlyByDateRecurrence
      #   month - (any)
      #   day - (any)
      class YearlyByDateRecurrence
        attr_accessor :month
        attr_accessor :day

        def initialize(month = nil, day = nil)
          @month = month
          @day = day
        end
      end

      # inner class for member: yearlyByDayRecurrence
      # {http://www.strongmail.com/services/2009/03/02/schema}yearlyByDayRecurrence
      #   month - (any)
      #   weeklyOccurrence - WeeklyOccurrence
      #   dailyOccurrence - DailyOccurrence
      class YearlyByDayRecurrence
        attr_accessor :month
        attr_accessor :weeklyOccurrence
        attr_accessor :dailyOccurrence

        def initialize(month = nil, weeklyOccurrence = nil, dailyOccurrence = nil)
          @month = month
          @weeklyOccurrence = weeklyOccurrence
          @dailyOccurrence = dailyOccurrence
        end
      end

      attr_accessor :endDate
      attr_accessor :endAfterXMailings
      attr_accessor :minutelyRecurrence
      attr_accessor :hourlyRecurrence
      attr_accessor :dailyRecurrence
      attr_accessor :weeklyRecurrence
      attr_accessor :monthlyByDateRecurrence
      attr_accessor :monthlyByDayRecurrence
      attr_accessor :yearlyByDateRecurrence
      attr_accessor :yearlyByDayRecurrence
      attr_accessor :nextScheduledDateTime

      def initialize(endDate = nil, endAfterXMailings = nil, minutelyRecurrence = nil, hourlyRecurrence = nil, dailyRecurrence = nil, weeklyRecurrence = nil, monthlyByDateRecurrence = nil, monthlyByDayRecurrence = nil, yearlyByDateRecurrence = nil, yearlyByDayRecurrence = nil, nextScheduledDateTime = nil)
        @endDate = endDate
        @endAfterXMailings = endAfterXMailings
        @minutelyRecurrence = minutelyRecurrence
        @hourlyRecurrence = hourlyRecurrence
        @dailyRecurrence = dailyRecurrence
        @weeklyRecurrence = weeklyRecurrence
        @monthlyByDateRecurrence = monthlyByDateRecurrence
        @monthlyByDayRecurrence = monthlyByDayRecurrence
        @yearlyByDateRecurrence = yearlyByDateRecurrence
        @yearlyByDayRecurrence = yearlyByDayRecurrence
        @nextScheduledDateTime = nextScheduledDateTime
      end
    end

    attr_accessor :startDateTime
    attr_accessor :recurrence

    def initialize(startDateTime = nil, recurrence = nil)
      @startDateTime = startDateTime
      @recurrence = recurrence
    end
  end

  attr_accessor :modifiedTime
  attr_accessor :objectId
  attr_accessor :version
  attr_accessor :attachmentId
  attr_accessor :bodyEncoding
  attr_accessor :bounceAddressId
  attr_accessor :campaignId
  attr_accessor :isApproved
  attr_accessor :isCompliant
  attr_accessor :contentBlockId
  attr_accessor :fieldDelimiter
  attr_accessor :format
  attr_accessor :fromAddressId
  attr_accessor :fromName
  attr_accessor :headerEncoding
  attr_accessor :header
  attr_accessor :lastGoodStatus
  attr_accessor :mailingClassId
  attr_accessor :name
  attr_accessor :priority
  attr_accessor :outputBodyCharSet
  attr_accessor :outputBodyCharSetToken
  attr_accessor :outputHeaderCharSet
  attr_accessor :outputHeaderCharSetToken
  attr_accessor :parentId
  attr_accessor :plannedLaunchDate
  attr_accessor :replyAddressId
  attr_accessor :rowDelimiter
  attr_accessor :serverErrorCode
  attr_accessor :serverErrorMessage
  attr_accessor :status
  attr_accessor :subject
  attr_accessor :templateId
  attr_accessor :type
  attr_accessor :createdTime
  attr_accessor :description
  attr_accessor :organizationId
  attr_accessor :ownerId
  attr_accessor :forward2FriendOffer
  attr_accessor :forward2FriendOfferTrackingOption
  attr_accessor :schedule
  attr_accessor :eliminateDuplicates
  attr_accessor :excludedTargetId
  attr_accessor :includedTargetId
  attr_accessor :seedListId
  attr_accessor :suppressionListId
  attr_accessor :assetExpiryInterval
  attr_accessor :addDefaultSuppress

  def initialize(modifiedTime = nil, objectId = nil, version = nil, attachmentId = [], bodyEncoding = nil, bounceAddressId = nil, campaignId = nil, isApproved = nil, isCompliant = nil, contentBlockId = [], fieldDelimiter = nil, format = [], fromAddressId = nil, fromName = nil, headerEncoding = nil, header = [], lastGoodStatus = nil, mailingClassId = nil, name = nil, priority = nil, outputBodyCharSet = nil, outputBodyCharSetToken = nil, outputHeaderCharSet = nil, outputHeaderCharSetToken = nil, parentId = nil, plannedLaunchDate = nil, replyAddressId = nil, rowDelimiter = nil, serverErrorCode = nil, serverErrorMessage = nil, status = nil, subject = nil, templateId = nil, type = nil, createdTime = nil, description = nil, organizationId = nil, ownerId = nil, forward2FriendOffer = nil, forward2FriendOfferTrackingOption = nil, schedule = nil, eliminateDuplicates = nil, excludedTargetId = [], includedTargetId = [], seedListId = [], suppressionListId = [], assetExpiryInterval = nil, addDefaultSuppress = nil)
    @modifiedTime = modifiedTime
    @objectId = objectId
    @version = version
    @attachmentId = attachmentId
    @bodyEncoding = bodyEncoding
    @bounceAddressId = bounceAddressId
    @campaignId = campaignId
    @isApproved = isApproved
    @isCompliant = isCompliant
    @contentBlockId = contentBlockId
    @fieldDelimiter = fieldDelimiter
    @format = format
    @fromAddressId = fromAddressId
    @fromName = fromName
    @headerEncoding = headerEncoding
    @header = header
    @lastGoodStatus = lastGoodStatus
    @mailingClassId = mailingClassId
    @name = name
    @priority = priority
    @outputBodyCharSet = outputBodyCharSet
    @outputBodyCharSetToken = outputBodyCharSetToken
    @outputHeaderCharSet = outputHeaderCharSet
    @outputHeaderCharSetToken = outputHeaderCharSetToken
    @parentId = parentId
    @plannedLaunchDate = plannedLaunchDate
    @replyAddressId = replyAddressId
    @rowDelimiter = rowDelimiter
    @serverErrorCode = serverErrorCode
    @serverErrorMessage = serverErrorMessage
    @status = status
    @subject = subject
    @templateId = templateId
    @type = type
    @createdTime = createdTime
    @description = description
    @organizationId = organizationId
    @ownerId = ownerId
    @forward2FriendOffer = forward2FriendOffer
    @forward2FriendOfferTrackingOption = forward2FriendOfferTrackingOption
    @schedule = schedule
    @eliminateDuplicates = eliminateDuplicates
    @excludedTargetId = excludedTargetId
    @includedTargetId = includedTargetId
    @seedListId = seedListId
    @suppressionListId = suppressionListId
    @assetExpiryInterval = assetExpiryInterval
    @addDefaultSuppress = addDefaultSuppress
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}TransactionalMailing
#   modifiedTime - SOAP::SOAPDateTime
#   objectId - ObjectId
#   version - SOAP::SOAPInt
#   attachmentId - AttachmentId
#   bodyEncoding - Encoding
#   bounceAddressId - SystemAddressId
#   campaignId - CampaignId
#   isApproved - SOAP::SOAPBoolean
#   isCompliant - SOAP::SOAPBoolean
#   contentBlockId - ContentBlockId
#   fieldDelimiter - SOAP::SOAPString
#   format - MessageFormat
#   fromAddressId - SystemAddressId
#   fromName - SOAP::SOAPString
#   headerEncoding - Encoding
#   header - SOAP::SOAPString
#   lastGoodStatus - MailingStatus
#   mailingClassId - MailingClassId
#   name - SOAP::SOAPString
#   priority - MailingPriority
#   outputBodyCharSet - CharSet
#   outputBodyCharSetToken - (any)
#   outputHeaderCharSet - CharSet
#   outputHeaderCharSetToken - (any)
#   parentId - MailingId
#   plannedLaunchDate - SOAP::SOAPDate
#   replyAddressId - SystemAddressId
#   rowDelimiter - SOAP::SOAPString
#   serverErrorCode - SOAP::SOAPInt
#   serverErrorMessage - SOAP::SOAPString
#   status - MailingStatus
#   subject - SOAP::SOAPString
#   templateId - TemplateId
#   type - MailingType
#   createdTime - SOAP::SOAPDateTime
#   description - SOAP::SOAPString
#   organizationId - OrganizationId
#   ownerId - UserId
#   forward2FriendOffer - SOAP::SOAPString
#   forward2FriendOfferTrackingOption - Forward2FriendOfferTrackingOption
#   formatFieldName - SOAP::SOAPString
#   mailingConfig - SOAP::SOAPString
#   messageType - MessageType
#   recordStructure - SOAP::SOAPString
#   senderNumber - SOAP::SOAPString
#   targetId - TargetId
class TransactionalMailing < Mailing
  attr_accessor :modifiedTime
  attr_accessor :objectId
  attr_accessor :version
  attr_accessor :attachmentId
  attr_accessor :bodyEncoding
  attr_accessor :bounceAddressId
  attr_accessor :campaignId
  attr_accessor :isApproved
  attr_accessor :isCompliant
  attr_accessor :contentBlockId
  attr_accessor :fieldDelimiter
  attr_accessor :format
  attr_accessor :fromAddressId
  attr_accessor :fromName
  attr_accessor :headerEncoding
  attr_accessor :header
  attr_accessor :lastGoodStatus
  attr_accessor :mailingClassId
  attr_accessor :name
  attr_accessor :priority
  attr_accessor :outputBodyCharSet
  attr_accessor :outputBodyCharSetToken
  attr_accessor :outputHeaderCharSet
  attr_accessor :outputHeaderCharSetToken
  attr_accessor :parentId
  attr_accessor :plannedLaunchDate
  attr_accessor :replyAddressId
  attr_accessor :rowDelimiter
  attr_accessor :serverErrorCode
  attr_accessor :serverErrorMessage
  attr_accessor :status
  attr_accessor :subject
  attr_accessor :templateId
  attr_accessor :type
  attr_accessor :createdTime
  attr_accessor :description
  attr_accessor :organizationId
  attr_accessor :ownerId
  attr_accessor :forward2FriendOffer
  attr_accessor :forward2FriendOfferTrackingOption
  attr_accessor :formatFieldName
  attr_accessor :mailingConfig
  attr_accessor :messageType
  attr_accessor :recordStructure
  attr_accessor :senderNumber
  attr_accessor :targetId

  def initialize(modifiedTime = nil, objectId = nil, version = nil, attachmentId = [], bodyEncoding = nil, bounceAddressId = nil, campaignId = nil, isApproved = nil, isCompliant = nil, contentBlockId = [], fieldDelimiter = nil, format = [], fromAddressId = nil, fromName = nil, headerEncoding = nil, header = [], lastGoodStatus = nil, mailingClassId = nil, name = nil, priority = nil, outputBodyCharSet = nil, outputBodyCharSetToken = nil, outputHeaderCharSet = nil, outputHeaderCharSetToken = nil, parentId = nil, plannedLaunchDate = nil, replyAddressId = nil, rowDelimiter = nil, serverErrorCode = nil, serverErrorMessage = nil, status = nil, subject = nil, templateId = nil, type = nil, createdTime = nil, description = nil, organizationId = nil, ownerId = nil, forward2FriendOffer = nil, forward2FriendOfferTrackingOption = nil, formatFieldName = nil, mailingConfig = nil, messageType = nil, recordStructure = [], senderNumber = nil, targetId = nil)
    @modifiedTime = modifiedTime
    @objectId = objectId
    @version = version
    @attachmentId = attachmentId
    @bodyEncoding = bodyEncoding
    @bounceAddressId = bounceAddressId
    @campaignId = campaignId
    @isApproved = isApproved
    @isCompliant = isCompliant
    @contentBlockId = contentBlockId
    @fieldDelimiter = fieldDelimiter
    @format = format
    @fromAddressId = fromAddressId
    @fromName = fromName
    @headerEncoding = headerEncoding
    @header = header
    @lastGoodStatus = lastGoodStatus
    @mailingClassId = mailingClassId
    @name = name
    @priority = priority
    @outputBodyCharSet = outputBodyCharSet
    @outputBodyCharSetToken = outputBodyCharSetToken
    @outputHeaderCharSet = outputHeaderCharSet
    @outputHeaderCharSetToken = outputHeaderCharSetToken
    @parentId = parentId
    @plannedLaunchDate = plannedLaunchDate
    @replyAddressId = replyAddressId
    @rowDelimiter = rowDelimiter
    @serverErrorCode = serverErrorCode
    @serverErrorMessage = serverErrorMessage
    @status = status
    @subject = subject
    @templateId = templateId
    @type = type
    @createdTime = createdTime
    @description = description
    @organizationId = organizationId
    @ownerId = ownerId
    @forward2FriendOffer = forward2FriendOffer
    @forward2FriendOfferTrackingOption = forward2FriendOfferTrackingOption
    @formatFieldName = formatFieldName
    @mailingConfig = mailingConfig
    @messageType = messageType
    @recordStructure = recordStructure
    @senderNumber = senderNumber
    @targetId = targetId
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}Program
#   modifiedTime - SOAP::SOAPDateTime
#   objectId - ObjectId
#   version - SOAP::SOAPInt
#   organizationId - OrganizationId
#   name - SOAP::SOAPString
#   description - SOAP::SOAPString
#   startDate - SOAP::SOAPDateTime
#   endDate - SOAP::SOAPDateTime
#   status - ProgramStatus
#   dataSourceId - DataSourceId
#   emailColumnName - SOAP::SOAPString
#   bounceColumnName - SOAP::SOAPString
#   unsubColumnName - SOAP::SOAPString
#   smsColumnName - SOAP::SOAPString
#   smsBounceColumnName - SOAP::SOAPString
#   smsUnsubColumnName - SOAP::SOAPString
#   smsShortCode - SOAP::SOAPString
class Program < BaseObject
  attr_accessor :modifiedTime
  attr_accessor :objectId
  attr_accessor :version
  attr_accessor :organizationId
  attr_accessor :name
  attr_accessor :description
  attr_accessor :startDate
  attr_accessor :endDate
  attr_accessor :status
  attr_accessor :dataSourceId
  attr_accessor :emailColumnName
  attr_accessor :bounceColumnName
  attr_accessor :unsubColumnName
  attr_accessor :smsColumnName
  attr_accessor :smsBounceColumnName
  attr_accessor :smsUnsubColumnName
  attr_accessor :smsShortCode

  def initialize(modifiedTime = nil, objectId = nil, version = nil, organizationId = nil, name = nil, description = nil, startDate = nil, endDate = nil, status = nil, dataSourceId = nil, emailColumnName = nil, bounceColumnName = nil, unsubColumnName = nil, smsColumnName = nil, smsBounceColumnName = nil, smsUnsubColumnName = nil, smsShortCode = nil)
    @modifiedTime = modifiedTime
    @objectId = objectId
    @version = version
    @organizationId = organizationId
    @name = name
    @description = description
    @startDate = startDate
    @endDate = endDate
    @status = status
    @dataSourceId = dataSourceId
    @emailColumnName = emailColumnName
    @bounceColumnName = bounceColumnName
    @unsubColumnName = unsubColumnName
    @smsColumnName = smsColumnName
    @smsBounceColumnName = smsBounceColumnName
    @smsUnsubColumnName = smsUnsubColumnName
    @smsShortCode = smsShortCode
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}ProgramNode
#   modifiedTime - SOAP::SOAPDateTime
#   objectId - ObjectId
#   version - SOAP::SOAPInt
#   name - SOAP::SOAPString
#   description - SOAP::SOAPString
#   programNodeType - ProgramNodeType
#   mailingId - MailingId
class ProgramNode < BaseObject
  attr_accessor :modifiedTime
  attr_accessor :objectId
  attr_accessor :version
  attr_accessor :name
  attr_accessor :description
  attr_accessor :programNodeType
  attr_accessor :mailingId

  def initialize(modifiedTime = nil, objectId = nil, version = nil, name = nil, description = nil, programNodeType = nil, mailingId = nil)
    @modifiedTime = modifiedTime
    @objectId = objectId
    @version = version
    @name = name
    @description = description
    @programNodeType = programNodeType
    @mailingId = mailingId
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}Organization
#   modifiedTime - SOAP::SOAPDateTime
#   objectId - ObjectId
#   version - SOAP::SOAPInt
#   description - SOAP::SOAPString
#   logo - SOAP::SOAPBase64
#   name - SOAP::SOAPString
#   parentId - OrganizationId
#   viewInBrowserExceptionURL - SOAP::SOAPString
#   forward2FriendExceptionURL - SOAP::SOAPString
#   socialNotesExceptionURL - SOAP::SOAPString
#   socialNotesWidget - SOAP::SOAPString
#   forward2FriendOffer - SOAP::SOAPString
#   forward2FriendOfferTrackingOption - Forward2FriendOfferTrackingOption
#   influencerSecretKey - SOAP::SOAPString
#   influencerClientUuid - SOAP::SOAPString
class Organization < BaseObject
  attr_accessor :modifiedTime
  attr_accessor :objectId
  attr_accessor :version
  attr_accessor :description
  attr_accessor :logo
  attr_accessor :name
  attr_accessor :parentId
  attr_accessor :viewInBrowserExceptionURL
  attr_accessor :forward2FriendExceptionURL
  attr_accessor :socialNotesExceptionURL
  attr_accessor :socialNotesWidget
  attr_accessor :forward2FriendOffer
  attr_accessor :forward2FriendOfferTrackingOption
  attr_accessor :influencerSecretKey
  attr_accessor :influencerClientUuid

  def initialize(modifiedTime = nil, objectId = nil, version = nil, description = nil, logo = nil, name = nil, parentId = nil, viewInBrowserExceptionURL = nil, forward2FriendExceptionURL = nil, socialNotesExceptionURL = nil, socialNotesWidget = nil, forward2FriendOffer = nil, forward2FriendOfferTrackingOption = nil, influencerSecretKey = nil, influencerClientUuid = nil)
    @modifiedTime = modifiedTime
    @objectId = objectId
    @version = version
    @description = description
    @logo = logo
    @name = name
    @parentId = parentId
    @viewInBrowserExceptionURL = viewInBrowserExceptionURL
    @forward2FriendExceptionURL = forward2FriendExceptionURL
    @socialNotesExceptionURL = socialNotesExceptionURL
    @socialNotesWidget = socialNotesWidget
    @forward2FriendOffer = forward2FriendOffer
    @forward2FriendOfferTrackingOption = forward2FriendOfferTrackingOption
    @influencerSecretKey = influencerSecretKey
    @influencerClientUuid = influencerClientUuid
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}User
#   modifiedTime - SOAP::SOAPDateTime
#   objectId - ObjectId
#   version - SOAP::SOAPInt
#   access - User::Access
#   description - SOAP::SOAPString
#   email - SOAP::SOAPString
#   firstName - SOAP::SOAPString
#   isAdmin - SOAP::SOAPBoolean
#   isSuperUser - SOAP::SOAPBoolean
#   lastName - SOAP::SOAPString
#   login - SOAP::SOAPString
#   organizationId - OrganizationId
#   password - SOAP::SOAPString
class User < BaseObject

  # inner class for member: access
  # {http://www.strongmail.com/services/2009/03/02/schema}access
  #   organizationId - OrganizationId
  #   roleId - RoleId
  class Access
    attr_accessor :organizationId
    attr_accessor :roleId

    def initialize(organizationId = nil, roleId = nil)
      @organizationId = organizationId
      @roleId = roleId
    end
  end

  attr_accessor :modifiedTime
  attr_accessor :objectId
  attr_accessor :version
  attr_accessor :access
  attr_accessor :description
  attr_accessor :email
  attr_accessor :firstName
  attr_accessor :isAdmin
  attr_accessor :isSuperUser
  attr_accessor :lastName
  attr_accessor :login
  attr_accessor :organizationId
  attr_accessor :password

  def initialize(modifiedTime = nil, objectId = nil, version = nil, access = [], description = nil, email = nil, firstName = nil, isAdmin = nil, isSuperUser = nil, lastName = nil, login = nil, organizationId = nil, password = nil)
    @modifiedTime = modifiedTime
    @objectId = objectId
    @version = version
    @access = access
    @description = description
    @email = email
    @firstName = firstName
    @isAdmin = isAdmin
    @isSuperUser = isSuperUser
    @lastName = lastName
    @login = login
    @organizationId = organizationId
    @password = password
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}Role
#   modifiedTime - SOAP::SOAPDateTime
#   objectId - ObjectId
#   version - SOAP::SOAPInt
#   description - SOAP::SOAPString
#   name - SOAP::SOAPString
#   organizationId - OrganizationId
#   permissions - Permissions
class Role < BaseObject
  attr_accessor :modifiedTime
  attr_accessor :objectId
  attr_accessor :version
  attr_accessor :description
  attr_accessor :name
  attr_accessor :organizationId
  attr_accessor :permissions

  def initialize(modifiedTime = nil, objectId = nil, version = nil, description = nil, name = nil, organizationId = nil, permissions = nil)
    @modifiedTime = modifiedTime
    @objectId = objectId
    @version = version
    @description = description
    @name = name
    @organizationId = organizationId
    @permissions = permissions
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}AssignedRole
#   modifiedTime - SOAP::SOAPDateTime
#   objectId - ObjectId
#   version - SOAP::SOAPInt
#   roleId - RoleId
#   organizationId - OrganizationId
#   userId - UserId
class AssignedRole < BaseObject
  attr_accessor :modifiedTime
  attr_accessor :objectId
  attr_accessor :version
  attr_accessor :roleId
  attr_accessor :organizationId
  attr_accessor :userId

  def initialize(modifiedTime = nil, objectId = nil, version = nil, roleId = nil, organizationId = nil, userId = nil)
    @modifiedTime = modifiedTime
    @objectId = objectId
    @version = version
    @roleId = roleId
    @organizationId = organizationId
    @userId = userId
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}SystemAddress
#   modifiedTime - SOAP::SOAPDateTime
#   objectId - ObjectId
#   version - SOAP::SOAPInt
#   createdTime - SOAP::SOAPDateTime
#   description - SOAP::SOAPString
#   emailAddress - SOAP::SOAPString
#   isBounce - SOAP::SOAPBoolean
#   fromName - SOAP::SOAPString
#   isFrom - SOAP::SOAPBoolean
#   isReply - SOAP::SOAPBoolean
#   organizationId - OrganizationId
#   ownerId - UserId
class SystemAddress < BaseObject
  attr_accessor :modifiedTime
  attr_accessor :objectId
  attr_accessor :version
  attr_accessor :createdTime
  attr_accessor :description
  attr_accessor :emailAddress
  attr_accessor :isBounce
  attr_accessor :fromName
  attr_accessor :isFrom
  attr_accessor :isReply
  attr_accessor :organizationId
  attr_accessor :ownerId

  def initialize(modifiedTime = nil, objectId = nil, version = nil, createdTime = nil, description = nil, emailAddress = nil, isBounce = nil, fromName = nil, isFrom = nil, isReply = nil, organizationId = nil, ownerId = nil)
    @modifiedTime = modifiedTime
    @objectId = objectId
    @version = version
    @createdTime = createdTime
    @description = description
    @emailAddress = emailAddress
    @isBounce = isBounce
    @fromName = fromName
    @isFrom = isFrom
    @isReply = isReply
    @organizationId = organizationId
    @ownerId = ownerId
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}Campaign
#   modifiedTime - SOAP::SOAPDateTime
#   objectId - ObjectId
#   version - SOAP::SOAPInt
#   createdTime - SOAP::SOAPDateTime
#   description - SOAP::SOAPString
#   name - SOAP::SOAPString
#   organizationId - OrganizationId
#   ownerId - UserId
class Campaign < BaseObject
  attr_accessor :modifiedTime
  attr_accessor :objectId
  attr_accessor :version
  attr_accessor :createdTime
  attr_accessor :description
  attr_accessor :name
  attr_accessor :organizationId
  attr_accessor :ownerId

  def initialize(modifiedTime = nil, objectId = nil, version = nil, createdTime = nil, description = nil, name = nil, organizationId = nil, ownerId = nil)
    @modifiedTime = modifiedTime
    @objectId = objectId
    @version = version
    @createdTime = createdTime
    @description = description
    @name = name
    @organizationId = organizationId
    @ownerId = ownerId
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}MediaServer
#   modifiedTime - SOAP::SOAPDateTime
#   objectId - ObjectId
#   version - SOAP::SOAPInt
#   createdTime - SOAP::SOAPDateTime
#   defaultUrl - SOAP::SOAPAnyURI
#   description - SOAP::SOAPString
#   isWritable - SOAP::SOAPBoolean
#   name - SOAP::SOAPString
#   organizationId - OrganizationId
#   ownerId - UserId
#   server - MediaServer::Server
class MediaServer < BaseObject

  # inner class for member: server
  # {http://www.strongmail.com/services/2009/03/02/schema}server
  #   defaultImagePath - SOAP::SOAPString
  #   host - SOAP::SOAPString
  #   login - SOAP::SOAPString
  #   password - SOAP::SOAPString
  #   sshPort - SOAP::SOAPInt
  class Server
    attr_accessor :defaultImagePath
    attr_accessor :host
    attr_accessor :login
    attr_accessor :password
    attr_accessor :sshPort

    def initialize(defaultImagePath = nil, host = nil, login = nil, password = nil, sshPort = nil)
      @defaultImagePath = defaultImagePath
      @host = host
      @login = login
      @password = password
      @sshPort = sshPort
    end
  end

  attr_accessor :modifiedTime
  attr_accessor :objectId
  attr_accessor :version
  attr_accessor :createdTime
  attr_accessor :defaultUrl
  attr_accessor :description
  attr_accessor :isWritable
  attr_accessor :name
  attr_accessor :organizationId
  attr_accessor :ownerId
  attr_accessor :server

  def initialize(modifiedTime = nil, objectId = nil, version = nil, createdTime = nil, defaultUrl = nil, description = nil, isWritable = nil, name = nil, organizationId = nil, ownerId = nil, server = [])
    @modifiedTime = modifiedTime
    @objectId = objectId
    @version = version
    @createdTime = createdTime
    @defaultUrl = defaultUrl
    @description = description
    @isWritable = isWritable
    @name = name
    @organizationId = organizationId
    @ownerId = ownerId
    @server = server
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}WebAnalytics
#   modifiedTime - SOAP::SOAPDateTime
#   objectId - ObjectId
#   version - SOAP::SOAPInt
#   createdTime - SOAP::SOAPDateTime
#   description - SOAP::SOAPString
#   name - SOAP::SOAPString
#   organizationId - OrganizationId
#   ownerId - UserId
#   parameter - NameValuePair
class WebAnalytics < BaseObject
  attr_accessor :modifiedTime
  attr_accessor :objectId
  attr_accessor :version
  attr_accessor :createdTime
  attr_accessor :description
  attr_accessor :name
  attr_accessor :organizationId
  attr_accessor :ownerId
  attr_accessor :parameter

  def initialize(modifiedTime = nil, objectId = nil, version = nil, createdTime = nil, description = nil, name = nil, organizationId = nil, ownerId = nil, parameter = [])
    @modifiedTime = modifiedTime
    @objectId = objectId
    @version = version
    @createdTime = createdTime
    @description = description
    @name = name
    @organizationId = organizationId
    @ownerId = ownerId
    @parameter = parameter
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}MailingClass
#   modifiedTime - SOAP::SOAPDateTime
#   objectId - ObjectId
#   version - SOAP::SOAPInt
#   createdTime - SOAP::SOAPDateTime
#   description - SOAP::SOAPString
#   name - SOAP::SOAPString
#   organizationId - OrganizationId
#   ownerId - UserId
class MailingClass < BaseObject
  attr_accessor :modifiedTime
  attr_accessor :objectId
  attr_accessor :version
  attr_accessor :createdTime
  attr_accessor :description
  attr_accessor :name
  attr_accessor :organizationId
  attr_accessor :ownerId

  def initialize(modifiedTime = nil, objectId = nil, version = nil, createdTime = nil, description = nil, name = nil, organizationId = [], ownerId = nil)
    @modifiedTime = modifiedTime
    @objectId = objectId
    @version = version
    @createdTime = createdTime
    @description = description
    @name = name
    @organizationId = organizationId
    @ownerId = ownerId
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}Strongtool
#   modifiedTime - SOAP::SOAPDateTime
#   objectId - ObjectId
#   version - SOAP::SOAPInt
#   name - SOAP::SOAPString
#   description - SOAP::SOAPString
#   url - SOAP::SOAPString
#   openAs - StrongtoolOpenAs
#   organizationId - OrganizationId
#   ownerId - UserId
class Strongtool < BaseObject
  attr_accessor :modifiedTime
  attr_accessor :objectId
  attr_accessor :version
  attr_accessor :name
  attr_accessor :description
  attr_accessor :url
  attr_accessor :openAs
  attr_accessor :organizationId
  attr_accessor :ownerId

  def initialize(modifiedTime = nil, objectId = nil, version = nil, name = nil, description = nil, url = nil, openAs = nil, organizationId = nil, ownerId = nil)
    @modifiedTime = modifiedTime
    @objectId = objectId
    @version = version
    @name = name
    @description = description
    @url = url
    @openAs = openAs
    @organizationId = organizationId
    @ownerId = ownerId
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}DedupeRecordsRequest
class DedupeRecordsRequest < ::Array
end

# {http://www.strongmail.com/services/2009/03/02/schema}DedupeDataSourceRecordsRequest
#   matchField - SOAP::SOAPString
#   dataSourceId - DataSourceId
#   option - DataSourceDedupeOption
class DedupeDataSourceRecordsRequest
  attr_accessor :matchField
  attr_accessor :dataSourceId
  attr_accessor :option

  def initialize(matchField = [], dataSourceId = nil, option = nil)
    @matchField = matchField
    @dataSourceId = dataSourceId
    @option = option
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}NameValuePair
#   name - SOAP::SOAPString
#   value - SOAP::SOAPString
class NameValuePair
  attr_accessor :name
  attr_accessor :value

  def initialize(name = nil, value = nil)
    @name = name
    @value = value
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}BaseFilter
# abstract
#   isAscending - SOAP::SOAPBoolean
#   pageNumber - SOAP::SOAPInt
#   recordsPerPage - SOAP::SOAPInt
#   maxRecordsPerPage - SOAP::SOAPInt
class BaseFilter
  attr_accessor :isAscending
  attr_accessor :pageNumber
  attr_accessor :recordsPerPage
  attr_accessor :maxRecordsPerPage

  def initialize(isAscending = nil, pageNumber = nil, recordsPerPage = nil, maxRecordsPerPage = nil)
    @isAscending = isAscending
    @pageNumber = pageNumber
    @recordsPerPage = recordsPerPage
    @maxRecordsPerPage = maxRecordsPerPage
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}DataSourceFilter
#   isAscending - SOAP::SOAPBoolean
#   pageNumber - SOAP::SOAPInt
#   recordsPerPage - SOAP::SOAPInt
#   maxRecordsPerPage - SOAP::SOAPInt
#   campaignIdCondition - ScalarIdFilterCondition
#   nameCondition - ScalarStringFilterCondition
#   typeCondition - ScalarStringFilterCondition
#   userIdCondition - ScalarIdFilterCondition
#   orderBy - DataSourceOrderBy
class DataSourceFilter < BaseFilter
  attr_accessor :isAscending
  attr_accessor :pageNumber
  attr_accessor :recordsPerPage
  attr_accessor :maxRecordsPerPage
  attr_accessor :campaignIdCondition
  attr_accessor :nameCondition
  attr_accessor :typeCondition
  attr_accessor :userIdCondition
  attr_accessor :orderBy

  def initialize(isAscending = nil, pageNumber = nil, recordsPerPage = nil, maxRecordsPerPage = nil, campaignIdCondition = nil, nameCondition = nil, typeCondition = nil, userIdCondition = nil, orderBy = [])
    @isAscending = isAscending
    @pageNumber = pageNumber
    @recordsPerPage = recordsPerPage
    @maxRecordsPerPage = maxRecordsPerPage
    @campaignIdCondition = campaignIdCondition
    @nameCondition = nameCondition
    @typeCondition = typeCondition
    @userIdCondition = userIdCondition
    @orderBy = orderBy
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}TargetFilter
#   isAscending - SOAP::SOAPBoolean
#   pageNumber - SOAP::SOAPInt
#   recordsPerPage - SOAP::SOAPInt
#   maxRecordsPerPage - SOAP::SOAPInt
#   campaignIdCondition - ScalarIdFilterCondition
#   dataSourceIdCondition - ScalarIdFilterCondition
#   nameCondition - ScalarStringFilterCondition
#   typeCondition - ScalarStringFilterCondition
#   userIdCondition - ScalarIdFilterCondition
#   orderBy - TargetOrderBy
class TargetFilter < BaseFilter
  attr_accessor :isAscending
  attr_accessor :pageNumber
  attr_accessor :recordsPerPage
  attr_accessor :maxRecordsPerPage
  attr_accessor :campaignIdCondition
  attr_accessor :dataSourceIdCondition
  attr_accessor :nameCondition
  attr_accessor :typeCondition
  attr_accessor :userIdCondition
  attr_accessor :orderBy

  def initialize(isAscending = nil, pageNumber = nil, recordsPerPage = nil, maxRecordsPerPage = nil, campaignIdCondition = nil, dataSourceIdCondition = nil, nameCondition = nil, typeCondition = nil, userIdCondition = nil, orderBy = [])
    @isAscending = isAscending
    @pageNumber = pageNumber
    @recordsPerPage = recordsPerPage
    @maxRecordsPerPage = maxRecordsPerPage
    @campaignIdCondition = campaignIdCondition
    @dataSourceIdCondition = dataSourceIdCondition
    @nameCondition = nameCondition
    @typeCondition = typeCondition
    @userIdCondition = userIdCondition
    @orderBy = orderBy
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}SuppressionFilter
#   isAscending - SOAP::SOAPBoolean
#   pageNumber - SOAP::SOAPInt
#   recordsPerPage - SOAP::SOAPInt
#   maxRecordsPerPage - SOAP::SOAPInt
#   campaignIdCondition - ScalarIdFilterCondition
#   nameCondition - ScalarStringFilterCondition
#   userIdCondition - ScalarIdFilterCondition
#   orderBy - SuppressionListOrderBy
class SuppressionFilter < BaseFilter
  attr_accessor :isAscending
  attr_accessor :pageNumber
  attr_accessor :recordsPerPage
  attr_accessor :maxRecordsPerPage
  attr_accessor :campaignIdCondition
  attr_accessor :nameCondition
  attr_accessor :userIdCondition
  attr_accessor :orderBy

  def initialize(isAscending = nil, pageNumber = nil, recordsPerPage = nil, maxRecordsPerPage = nil, campaignIdCondition = nil, nameCondition = nil, userIdCondition = nil, orderBy = [])
    @isAscending = isAscending
    @pageNumber = pageNumber
    @recordsPerPage = recordsPerPage
    @maxRecordsPerPage = maxRecordsPerPage
    @campaignIdCondition = campaignIdCondition
    @nameCondition = nameCondition
    @userIdCondition = userIdCondition
    @orderBy = orderBy
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}SeedFilter
#   isAscending - SOAP::SOAPBoolean
#   pageNumber - SOAP::SOAPInt
#   recordsPerPage - SOAP::SOAPInt
#   maxRecordsPerPage - SOAP::SOAPInt
#   campaignIdCondition - ScalarIdFilterCondition
#   nameCondition - ScalarStringFilterCondition
#   userIdCondition - ScalarIdFilterCondition
#   orderBy - SeedListOrderBy
class SeedFilter < BaseFilter
  attr_accessor :isAscending
  attr_accessor :pageNumber
  attr_accessor :recordsPerPage
  attr_accessor :maxRecordsPerPage
  attr_accessor :campaignIdCondition
  attr_accessor :nameCondition
  attr_accessor :userIdCondition
  attr_accessor :orderBy

  def initialize(isAscending = nil, pageNumber = nil, recordsPerPage = nil, maxRecordsPerPage = nil, campaignIdCondition = nil, nameCondition = nil, userIdCondition = nil, orderBy = [])
    @isAscending = isAscending
    @pageNumber = pageNumber
    @recordsPerPage = recordsPerPage
    @maxRecordsPerPage = maxRecordsPerPage
    @campaignIdCondition = campaignIdCondition
    @nameCondition = nameCondition
    @userIdCondition = userIdCondition
    @orderBy = orderBy
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}TemplateFilter
#   isAscending - SOAP::SOAPBoolean
#   pageNumber - SOAP::SOAPInt
#   recordsPerPage - SOAP::SOAPInt
#   maxRecordsPerPage - SOAP::SOAPInt
#   approvalCondition - ScalarBooleanFilterCondition
#   campaignIdCondition - ScalarIdFilterCondition
#   nameCondition - ScalarStringFilterCondition
#   userIdCondition - ScalarIdFilterCondition
#   orderBy - TemplateOrderBy
class TemplateFilter < BaseFilter
  attr_accessor :isAscending
  attr_accessor :pageNumber
  attr_accessor :recordsPerPage
  attr_accessor :maxRecordsPerPage
  attr_accessor :approvalCondition
  attr_accessor :campaignIdCondition
  attr_accessor :nameCondition
  attr_accessor :userIdCondition
  attr_accessor :orderBy

  def initialize(isAscending = nil, pageNumber = nil, recordsPerPage = nil, maxRecordsPerPage = nil, approvalCondition = nil, campaignIdCondition = nil, nameCondition = nil, userIdCondition = nil, orderBy = [])
    @isAscending = isAscending
    @pageNumber = pageNumber
    @recordsPerPage = recordsPerPage
    @maxRecordsPerPage = maxRecordsPerPage
    @approvalCondition = approvalCondition
    @campaignIdCondition = campaignIdCondition
    @nameCondition = nameCondition
    @userIdCondition = userIdCondition
    @orderBy = orderBy
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}ContentBlockFilter
#   isAscending - SOAP::SOAPBoolean
#   pageNumber - SOAP::SOAPInt
#   recordsPerPage - SOAP::SOAPInt
#   maxRecordsPerPage - SOAP::SOAPInt
#   campaignIdCondition - ScalarIdFilterCondition
#   nameCondition - ScalarStringFilterCondition
#   userIdCondition - ScalarIdFilterCondition
#   orderBy - ContentBlockOrderBy
class ContentBlockFilter < BaseFilter
  attr_accessor :isAscending
  attr_accessor :pageNumber
  attr_accessor :recordsPerPage
  attr_accessor :maxRecordsPerPage
  attr_accessor :campaignIdCondition
  attr_accessor :nameCondition
  attr_accessor :userIdCondition
  attr_accessor :orderBy

  def initialize(isAscending = nil, pageNumber = nil, recordsPerPage = nil, maxRecordsPerPage = nil, campaignIdCondition = nil, nameCondition = nil, userIdCondition = nil, orderBy = [])
    @isAscending = isAscending
    @pageNumber = pageNumber
    @recordsPerPage = recordsPerPage
    @maxRecordsPerPage = maxRecordsPerPage
    @campaignIdCondition = campaignIdCondition
    @nameCondition = nameCondition
    @userIdCondition = userIdCondition
    @orderBy = orderBy
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}AttachmentFilter
#   isAscending - SOAP::SOAPBoolean
#   pageNumber - SOAP::SOAPInt
#   recordsPerPage - SOAP::SOAPInt
#   maxRecordsPerPage - SOAP::SOAPInt
#   campaignIdCondition - ScalarIdFilterCondition
#   nameCondition - ScalarStringFilterCondition
#   userIdCondition - ScalarIdFilterCondition
#   orderBy - AttachmentOrderBy
class AttachmentFilter < BaseFilter
  attr_accessor :isAscending
  attr_accessor :pageNumber
  attr_accessor :recordsPerPage
  attr_accessor :maxRecordsPerPage
  attr_accessor :campaignIdCondition
  attr_accessor :nameCondition
  attr_accessor :userIdCondition
  attr_accessor :orderBy

  def initialize(isAscending = nil, pageNumber = nil, recordsPerPage = nil, maxRecordsPerPage = nil, campaignIdCondition = nil, nameCondition = nil, userIdCondition = nil, orderBy = [])
    @isAscending = isAscending
    @pageNumber = pageNumber
    @recordsPerPage = recordsPerPage
    @maxRecordsPerPage = maxRecordsPerPage
    @campaignIdCondition = campaignIdCondition
    @nameCondition = nameCondition
    @userIdCondition = userIdCondition
    @orderBy = orderBy
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}RuleFilter
#   isAscending - SOAP::SOAPBoolean
#   pageNumber - SOAP::SOAPInt
#   recordsPerPage - SOAP::SOAPInt
#   maxRecordsPerPage - SOAP::SOAPInt
#   campaignIdCondition - ScalarIdFilterCondition
#   nameCondition - ScalarStringFilterCondition
#   orderBy - RuleOrderBy
class RuleFilter < BaseFilter
  attr_accessor :isAscending
  attr_accessor :pageNumber
  attr_accessor :recordsPerPage
  attr_accessor :maxRecordsPerPage
  attr_accessor :campaignIdCondition
  attr_accessor :nameCondition
  attr_accessor :orderBy

  def initialize(isAscending = nil, pageNumber = nil, recordsPerPage = nil, maxRecordsPerPage = nil, campaignIdCondition = nil, nameCondition = nil, orderBy = [])
    @isAscending = isAscending
    @pageNumber = pageNumber
    @recordsPerPage = recordsPerPage
    @maxRecordsPerPage = maxRecordsPerPage
    @campaignIdCondition = campaignIdCondition
    @nameCondition = nameCondition
    @orderBy = orderBy
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}MailingFilter
#   isAscending - SOAP::SOAPBoolean
#   pageNumber - SOAP::SOAPInt
#   recordsPerPage - SOAP::SOAPInt
#   maxRecordsPerPage - SOAP::SOAPInt
#   campaignIdCondition - ScalarIdFilterCondition
#   nameCondition - ScalarStringFilterCondition
#   userIdCondition - ScalarIdFilterCondition
#   typeCondition - ArrayStringFilterCondition
#   statusCondition - ArrayStringFilterCondition
#   orderBy - MailingOrderBy
class MailingFilter < BaseFilter
  attr_accessor :isAscending
  attr_accessor :pageNumber
  attr_accessor :recordsPerPage
  attr_accessor :maxRecordsPerPage
  attr_accessor :campaignIdCondition
  attr_accessor :nameCondition
  attr_accessor :userIdCondition
  attr_accessor :typeCondition
  attr_accessor :statusCondition
  attr_accessor :orderBy

  def initialize(isAscending = nil, pageNumber = nil, recordsPerPage = nil, maxRecordsPerPage = nil, campaignIdCondition = nil, nameCondition = nil, userIdCondition = nil, typeCondition = nil, statusCondition = nil, orderBy = [])
    @isAscending = isAscending
    @pageNumber = pageNumber
    @recordsPerPage = recordsPerPage
    @maxRecordsPerPage = maxRecordsPerPage
    @campaignIdCondition = campaignIdCondition
    @nameCondition = nameCondition
    @userIdCondition = userIdCondition
    @typeCondition = typeCondition
    @statusCondition = statusCondition
    @orderBy = orderBy
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}ProgramFilter
#   isAscending - SOAP::SOAPBoolean
#   pageNumber - SOAP::SOAPInt
#   recordsPerPage - SOAP::SOAPInt
#   maxRecordsPerPage - SOAP::SOAPInt
#   campaignIdCondition - ScalarIdFilterCondition
#   nameCondition - ScalarStringFilterCondition
#   userIdCondition - ScalarIdFilterCondition
#   statusCondition - ArrayStringFilterCondition
#   orderBy - ProgramOrderBy
class ProgramFilter < BaseFilter
  attr_accessor :isAscending
  attr_accessor :pageNumber
  attr_accessor :recordsPerPage
  attr_accessor :maxRecordsPerPage
  attr_accessor :campaignIdCondition
  attr_accessor :nameCondition
  attr_accessor :userIdCondition
  attr_accessor :statusCondition
  attr_accessor :orderBy

  def initialize(isAscending = nil, pageNumber = nil, recordsPerPage = nil, maxRecordsPerPage = nil, campaignIdCondition = nil, nameCondition = nil, userIdCondition = nil, statusCondition = nil, orderBy = [])
    @isAscending = isAscending
    @pageNumber = pageNumber
    @recordsPerPage = recordsPerPage
    @maxRecordsPerPage = maxRecordsPerPage
    @campaignIdCondition = campaignIdCondition
    @nameCondition = nameCondition
    @userIdCondition = userIdCondition
    @statusCondition = statusCondition
    @orderBy = orderBy
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}OrganizationFilter
#   isAscending - SOAP::SOAPBoolean
#   pageNumber - SOAP::SOAPInt
#   recordsPerPage - SOAP::SOAPInt
#   maxRecordsPerPage - SOAP::SOAPInt
#   nameCondition - ScalarStringFilterCondition
#   parentIdCondition - ScalarIdFilterCondition
#   orderBy - OrganizationOrderBy
class OrganizationFilter < BaseFilter
  attr_accessor :isAscending
  attr_accessor :pageNumber
  attr_accessor :recordsPerPage
  attr_accessor :maxRecordsPerPage
  attr_accessor :nameCondition
  attr_accessor :parentIdCondition
  attr_accessor :orderBy

  def initialize(isAscending = nil, pageNumber = nil, recordsPerPage = nil, maxRecordsPerPage = nil, nameCondition = nil, parentIdCondition = nil, orderBy = [])
    @isAscending = isAscending
    @pageNumber = pageNumber
    @recordsPerPage = recordsPerPage
    @maxRecordsPerPage = maxRecordsPerPage
    @nameCondition = nameCondition
    @parentIdCondition = parentIdCondition
    @orderBy = orderBy
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}UserFilter
#   isAscending - SOAP::SOAPBoolean
#   pageNumber - SOAP::SOAPInt
#   recordsPerPage - SOAP::SOAPInt
#   maxRecordsPerPage - SOAP::SOAPInt
#   isAdminCondition - ScalarBooleanFilterCondition
#   loginNameCondition - ScalarStringFilterCondition
#   orderBy - UserOrderBy
class UserFilter < BaseFilter
  attr_accessor :isAscending
  attr_accessor :pageNumber
  attr_accessor :recordsPerPage
  attr_accessor :maxRecordsPerPage
  attr_accessor :isAdminCondition
  attr_accessor :loginNameCondition
  attr_accessor :orderBy

  def initialize(isAscending = nil, pageNumber = nil, recordsPerPage = nil, maxRecordsPerPage = nil, isAdminCondition = nil, loginNameCondition = nil, orderBy = [])
    @isAscending = isAscending
    @pageNumber = pageNumber
    @recordsPerPage = recordsPerPage
    @maxRecordsPerPage = maxRecordsPerPage
    @isAdminCondition = isAdminCondition
    @loginNameCondition = loginNameCondition
    @orderBy = orderBy
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}RoleFilter
#   isAscending - SOAP::SOAPBoolean
#   pageNumber - SOAP::SOAPInt
#   recordsPerPage - SOAP::SOAPInt
#   maxRecordsPerPage - SOAP::SOAPInt
#   orderBy - RoleOrderBy
class RoleFilter < BaseFilter
  attr_accessor :isAscending
  attr_accessor :pageNumber
  attr_accessor :recordsPerPage
  attr_accessor :maxRecordsPerPage
  attr_accessor :orderBy

  def initialize(isAscending = nil, pageNumber = nil, recordsPerPage = nil, maxRecordsPerPage = nil, orderBy = [])
    @isAscending = isAscending
    @pageNumber = pageNumber
    @recordsPerPage = recordsPerPage
    @maxRecordsPerPage = maxRecordsPerPage
    @orderBy = orderBy
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}AssignedRoleFilter
#   isAscending - SOAP::SOAPBoolean
#   pageNumber - SOAP::SOAPInt
#   recordsPerPage - SOAP::SOAPInt
#   maxRecordsPerPage - SOAP::SOAPInt
#   roleIdCondition - ScalarIdFilterCondition
#   organizationIdCondition - ScalarIdFilterCondition
#   userIdCondition - ScalarIdFilterCondition
#   orderBy - AssignedRoleOrderBy
class AssignedRoleFilter < BaseFilter
  attr_accessor :isAscending
  attr_accessor :pageNumber
  attr_accessor :recordsPerPage
  attr_accessor :maxRecordsPerPage
  attr_accessor :roleIdCondition
  attr_accessor :organizationIdCondition
  attr_accessor :userIdCondition
  attr_accessor :orderBy

  def initialize(isAscending = nil, pageNumber = nil, recordsPerPage = nil, maxRecordsPerPage = nil, roleIdCondition = nil, organizationIdCondition = nil, userIdCondition = nil, orderBy = [])
    @isAscending = isAscending
    @pageNumber = pageNumber
    @recordsPerPage = recordsPerPage
    @maxRecordsPerPage = maxRecordsPerPage
    @roleIdCondition = roleIdCondition
    @organizationIdCondition = organizationIdCondition
    @userIdCondition = userIdCondition
    @orderBy = orderBy
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}SystemAddressFilter
#   isAscending - SOAP::SOAPBoolean
#   pageNumber - SOAP::SOAPInt
#   recordsPerPage - SOAP::SOAPInt
#   maxRecordsPerPage - SOAP::SOAPInt
#   typeCondition - ScalarStringFilterCondition
#   userIdCondition - ScalarIdFilterCondition
#   orderBy - SystemAddressOrderBy
class SystemAddressFilter < BaseFilter
  attr_accessor :isAscending
  attr_accessor :pageNumber
  attr_accessor :recordsPerPage
  attr_accessor :maxRecordsPerPage
  attr_accessor :typeCondition
  attr_accessor :userIdCondition
  attr_accessor :orderBy

  def initialize(isAscending = nil, pageNumber = nil, recordsPerPage = nil, maxRecordsPerPage = nil, typeCondition = nil, userIdCondition = nil, orderBy = [])
    @isAscending = isAscending
    @pageNumber = pageNumber
    @recordsPerPage = recordsPerPage
    @maxRecordsPerPage = maxRecordsPerPage
    @typeCondition = typeCondition
    @userIdCondition = userIdCondition
    @orderBy = orderBy
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}CampaignFilter
#   isAscending - SOAP::SOAPBoolean
#   pageNumber - SOAP::SOAPInt
#   recordsPerPage - SOAP::SOAPInt
#   maxRecordsPerPage - SOAP::SOAPInt
#   nameCondition - ScalarStringFilterCondition
#   userIdCondition - ScalarIdFilterCondition
#   orderBy - CampaignOrderBy
class CampaignFilter < BaseFilter
  attr_accessor :isAscending
  attr_accessor :pageNumber
  attr_accessor :recordsPerPage
  attr_accessor :maxRecordsPerPage
  attr_accessor :nameCondition
  attr_accessor :userIdCondition
  attr_accessor :orderBy

  def initialize(isAscending = nil, pageNumber = nil, recordsPerPage = nil, maxRecordsPerPage = nil, nameCondition = nil, userIdCondition = nil, orderBy = [])
    @isAscending = isAscending
    @pageNumber = pageNumber
    @recordsPerPage = recordsPerPage
    @maxRecordsPerPage = maxRecordsPerPage
    @nameCondition = nameCondition
    @userIdCondition = userIdCondition
    @orderBy = orderBy
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}MediaServerFilter
#   isAscending - SOAP::SOAPBoolean
#   pageNumber - SOAP::SOAPInt
#   recordsPerPage - SOAP::SOAPInt
#   maxRecordsPerPage - SOAP::SOAPInt
#   nameCondition - ScalarStringFilterCondition
#   urlCondition - ScalarStringFilterCondition
#   userIdCondition - ScalarIdFilterCondition
#   writableCondition - ScalarBooleanFilterCondition
#   orderBy - MediaServerOrderBy
class MediaServerFilter < BaseFilter
  attr_accessor :isAscending
  attr_accessor :pageNumber
  attr_accessor :recordsPerPage
  attr_accessor :maxRecordsPerPage
  attr_accessor :nameCondition
  attr_accessor :urlCondition
  attr_accessor :userIdCondition
  attr_accessor :writableCondition
  attr_accessor :orderBy

  def initialize(isAscending = nil, pageNumber = nil, recordsPerPage = nil, maxRecordsPerPage = nil, nameCondition = nil, urlCondition = nil, userIdCondition = nil, writableCondition = nil, orderBy = [])
    @isAscending = isAscending
    @pageNumber = pageNumber
    @recordsPerPage = recordsPerPage
    @maxRecordsPerPage = maxRecordsPerPage
    @nameCondition = nameCondition
    @urlCondition = urlCondition
    @userIdCondition = userIdCondition
    @writableCondition = writableCondition
    @orderBy = orderBy
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}WebAnalyticsFilter
#   isAscending - SOAP::SOAPBoolean
#   pageNumber - SOAP::SOAPInt
#   recordsPerPage - SOAP::SOAPInt
#   maxRecordsPerPage - SOAP::SOAPInt
#   nameCondition - ScalarStringFilterCondition
#   userIdCondition - ScalarIdFilterCondition
#   orderBy - WebAnalyticsOrderBy
class WebAnalyticsFilter < BaseFilter
  attr_accessor :isAscending
  attr_accessor :pageNumber
  attr_accessor :recordsPerPage
  attr_accessor :maxRecordsPerPage
  attr_accessor :nameCondition
  attr_accessor :userIdCondition
  attr_accessor :orderBy

  def initialize(isAscending = nil, pageNumber = nil, recordsPerPage = nil, maxRecordsPerPage = nil, nameCondition = nil, userIdCondition = nil, orderBy = [])
    @isAscending = isAscending
    @pageNumber = pageNumber
    @recordsPerPage = recordsPerPage
    @maxRecordsPerPage = maxRecordsPerPage
    @nameCondition = nameCondition
    @userIdCondition = userIdCondition
    @orderBy = orderBy
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}MailingClassFilter
#   isAscending - SOAP::SOAPBoolean
#   pageNumber - SOAP::SOAPInt
#   recordsPerPage - SOAP::SOAPInt
#   maxRecordsPerPage - SOAP::SOAPInt
#   nameCondition - ScalarStringFilterCondition
#   userIdCondition - ScalarIdFilterCondition
#   orderBy - MailingClassOrderBy
class MailingClassFilter < BaseFilter
  attr_accessor :isAscending
  attr_accessor :pageNumber
  attr_accessor :recordsPerPage
  attr_accessor :maxRecordsPerPage
  attr_accessor :nameCondition
  attr_accessor :userIdCondition
  attr_accessor :orderBy

  def initialize(isAscending = nil, pageNumber = nil, recordsPerPage = nil, maxRecordsPerPage = nil, nameCondition = nil, userIdCondition = nil, orderBy = [])
    @isAscending = isAscending
    @pageNumber = pageNumber
    @recordsPerPage = recordsPerPage
    @maxRecordsPerPage = maxRecordsPerPage
    @nameCondition = nameCondition
    @userIdCondition = userIdCondition
    @orderBy = orderBy
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}StrongtoolFilter
#   isAscending - SOAP::SOAPBoolean
#   pageNumber - SOAP::SOAPInt
#   recordsPerPage - SOAP::SOAPInt
#   maxRecordsPerPage - SOAP::SOAPInt
#   nameCondition - ScalarStringFilterCondition
#   openAsCondition - ScalarStringFilterCondition
#   orderBy - StrongtoolOrderBy
class StrongtoolFilter < BaseFilter
  attr_accessor :isAscending
  attr_accessor :pageNumber
  attr_accessor :recordsPerPage
  attr_accessor :maxRecordsPerPage
  attr_accessor :nameCondition
  attr_accessor :openAsCondition
  attr_accessor :orderBy

  def initialize(isAscending = nil, pageNumber = nil, recordsPerPage = nil, maxRecordsPerPage = nil, nameCondition = nil, openAsCondition = nil, orderBy = [])
    @isAscending = isAscending
    @pageNumber = pageNumber
    @recordsPerPage = recordsPerPage
    @maxRecordsPerPage = maxRecordsPerPage
    @nameCondition = nameCondition
    @openAsCondition = openAsCondition
    @orderBy = orderBy
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}FilterCondition
# abstract
class FilterCondition
  def initialize
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}BooleanFilterCondition
# abstract
class BooleanFilterCondition
  def initialize
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}ScalarBooleanFilterCondition
#   value - SOAP::SOAPBoolean
#   operator - FilterBooleanScalarOperator
class ScalarBooleanFilterCondition < BooleanFilterCondition
  attr_accessor :value
  attr_accessor :operator

  def initialize(value = nil, operator = nil)
    @value = value
    @operator = operator
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}IntegerFilterCondition
# abstract
class IntegerFilterCondition
  def initialize
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}ScalarIntegerFilterCondition
#   value - SOAP::SOAPInt
#   operator - FilterIntegerScalarOperator
class ScalarIntegerFilterCondition < IntegerFilterCondition
  attr_accessor :value
  attr_accessor :operator

  def initialize(value = nil, operator = nil)
    @value = value
    @operator = operator
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}ArrayIntegerFilterCondition
#   value - SOAP::SOAPInt
#   operator - FilterArrayOperator
class ArrayIntegerFilterCondition < IntegerFilterCondition
  attr_accessor :value
  attr_accessor :operator

  def initialize(value = [], operator = nil)
    @value = value
    @operator = operator
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}IdFilterCondition
# abstract
class IdFilterCondition
  def initialize
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}ScalarIdFilterCondition
#   value - ObjectId
#   operator - FilterIdScalarOperator
class ScalarIdFilterCondition < IdFilterCondition
  attr_accessor :value
  attr_accessor :operator

  def initialize(value = nil, operator = nil)
    @value = value
    @operator = operator
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}ArrayIdFilterCondition
#   value - ObjectId
#   operator - FilterArrayOperator
class ArrayIdFilterCondition < IdFilterCondition
  attr_accessor :value
  attr_accessor :operator

  def initialize(value = [], operator = nil)
    @value = value
    @operator = operator
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}StringFilterCondition
# abstract
class StringFilterCondition
  def initialize
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}ScalarStringFilterCondition
#   value - SOAP::SOAPString
#   operator - FilterStringScalarOperator
class ScalarStringFilterCondition < StringFilterCondition
  attr_accessor :value
  attr_accessor :operator

  def initialize(value = nil, operator = nil)
    @value = value
    @operator = operator
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}ArrayStringFilterCondition
#   value - SOAP::SOAPString
#   operator - FilterArrayOperator
class ArrayStringFilterCondition < StringFilterCondition
  attr_accessor :value
  attr_accessor :operator

  def initialize(value = [], operator = nil)
    @value = value
    @operator = operator
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}AddRecordsRequest
# abstract
class AddRecordsRequest
  def initialize
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}AddDataSourceRecordsRequest
#   dataSourceId - DataSourceId
#   containsFieldNames - SOAP::SOAPBoolean
#   fieldDelimiter - SOAP::SOAPString
#   dataSourceRecord - DataSourceRecord
#   ftpFileName - SOAP::SOAPString
#   dataSourceRecordsAttachment - SOAP::SOAPBase64
class AddDataSourceRecordsRequest < AddRecordsRequest
  attr_accessor :dataSourceId
  attr_accessor :containsFieldNames
  attr_accessor :fieldDelimiter
  attr_accessor :dataSourceRecord
  attr_accessor :ftpFileName
  attr_accessor :dataSourceRecordsAttachment

  def initialize(dataSourceId = nil, containsFieldNames = nil, fieldDelimiter = nil, dataSourceRecord = [], ftpFileName = nil, dataSourceRecordsAttachment = nil)
    @dataSourceId = dataSourceId
    @containsFieldNames = containsFieldNames
    @fieldDelimiter = fieldDelimiter
    @dataSourceRecord = dataSourceRecord
    @ftpFileName = ftpFileName
    @dataSourceRecordsAttachment = dataSourceRecordsAttachment
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}AddSuppressionListRecordsRequest
#   suppressionListId - SuppressionListId
#   addressMatch - SOAP::SOAPString
#   addressMatchesAttachment - SOAP::SOAPBase64
class AddSuppressionListRecordsRequest < AddRecordsRequest
  attr_accessor :suppressionListId
  attr_accessor :addressMatch
  attr_accessor :addressMatchesAttachment

  def initialize(suppressionListId = nil, addressMatch = [], addressMatchesAttachment = nil)
    @suppressionListId = suppressionListId
    @addressMatch = addressMatch
    @addressMatchesAttachment = addressMatchesAttachment
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}AddSeedListRecordsRequest
#   seedListId - SeedListId
#   address - SOAP::SOAPString
#   addressesAttachment - SOAP::SOAPBase64
class AddSeedListRecordsRequest < AddRecordsRequest
  attr_accessor :seedListId
  attr_accessor :address
  attr_accessor :addressesAttachment

  def initialize(seedListId = nil, address = [], addressesAttachment = nil)
    @seedListId = seedListId
    @address = address
    @addressesAttachment = addressesAttachment
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}AddProgramContactRecordsRequest
#   programId - ProgramId
#   programContactRecord - ProgramContactRecord
class AddProgramContactRecordsRequest < AddRecordsRequest
  attr_accessor :programId
  attr_accessor :programContactRecord

  def initialize(programId = nil, programContactRecord = [])
    @programId = programId
    @programContactRecord = programContactRecord
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}UpsertRecordsRequest
# abstract
class UpsertRecordsRequest
  def initialize
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}UpsertDataSourceRecordsRequest
#   dataSourceId - DataSourceId
#   dataSourceRecord - DataSourceRecord
class UpsertDataSourceRecordsRequest < UpsertRecordsRequest
  attr_accessor :dataSourceId
  attr_accessor :dataSourceRecord

  def initialize(dataSourceId = nil, dataSourceRecord = [])
    @dataSourceId = dataSourceId
    @dataSourceRecord = dataSourceRecord
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}GetRecordsRequest
# abstract
class GetRecordsRequest
  def initialize
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}GetDataSourceRecordsRequest
#   dataSourceId - DataSourceId
#   matchFields - NameValuePair
class GetDataSourceRecordsRequest < GetRecordsRequest
  attr_accessor :dataSourceId
  attr_accessor :matchFields

  def initialize(dataSourceId = nil, matchFields = [])
    @dataSourceId = dataSourceId
    @matchFields = matchFields
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}CopyRequest
# abstract
#   newName - SOAP::SOAPString
class CopyRequest
  attr_accessor :newName

  def initialize(newName = nil)
    @newName = newName
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}CopyDataSourceRequest
#   newName - SOAP::SOAPString
#   fromId - InternalDataSourceId
#   fromExtnId - ExtensionId
class CopyDataSourceRequest < CopyRequest
  attr_accessor :newName
  attr_accessor :fromId
  attr_accessor :fromExtnId

  def initialize(newName = nil, fromId = nil, fromExtnId = nil)
    @newName = newName
    @fromId = fromId
    @fromExtnId = fromExtnId
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}CopyTargetRequest
#   newName - SOAP::SOAPString
#   fromId - TargetId
class CopyTargetRequest < CopyRequest
  attr_accessor :newName
  attr_accessor :fromId

  def initialize(newName = nil, fromId = nil)
    @newName = newName
    @fromId = fromId
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}CopySuppressionListRequest
#   newName - SOAP::SOAPString
#   fromId - SuppressionListId
class CopySuppressionListRequest < CopyRequest
  attr_accessor :newName
  attr_accessor :fromId

  def initialize(newName = nil, fromId = nil)
    @newName = newName
    @fromId = fromId
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}CopySeedListRequest
#   newName - SOAP::SOAPString
#   fromId - SeedListId
class CopySeedListRequest < CopyRequest
  attr_accessor :newName
  attr_accessor :fromId

  def initialize(newName = nil, fromId = nil)
    @newName = newName
    @fromId = fromId
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}CopyTemplateRequest
#   newName - SOAP::SOAPString
#   fromId - TemplateId
#   newOrganizationId - OrganizationId
class CopyTemplateRequest < CopyRequest
  attr_accessor :newName
  attr_accessor :fromId
  attr_accessor :newOrganizationId

  def initialize(newName = nil, fromId = nil, newOrganizationId = nil)
    @newName = newName
    @fromId = fromId
    @newOrganizationId = newOrganizationId
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}CopyContentBlockRequest
#   newName - SOAP::SOAPString
#   fromId - ContentBlockId
#   newOrganizationId - OrganizationId
class CopyContentBlockRequest < CopyRequest
  attr_accessor :newName
  attr_accessor :fromId
  attr_accessor :newOrganizationId

  def initialize(newName = nil, fromId = nil, newOrganizationId = nil)
    @newName = newName
    @fromId = fromId
    @newOrganizationId = newOrganizationId
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}CopyRuleRequest
#   newName - SOAP::SOAPString
#   fromId - RuleId
class CopyRuleRequest < CopyRequest
  attr_accessor :newName
  attr_accessor :fromId

  def initialize(newName = nil, fromId = nil)
    @newName = newName
    @fromId = fromId
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}CopyMailingRequest
#   newName - SOAP::SOAPString
#   fromId - MailingId
class CopyMailingRequest < CopyRequest
  attr_accessor :newName
  attr_accessor :fromId

  def initialize(newName = nil, fromId = nil)
    @newName = newName
    @fromId = fromId
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}CreateRequest
class CreateRequest < ::Array
end

# {http://www.strongmail.com/services/2009/03/02/schema}ExportRecordsRequest
# abstract
class ExportRecordsRequest
  def initialize
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}ExportDataSourceRecordsRequest
#   dataSourceId - DataSourceId
#   useMalformedRecords - SOAP::SOAPBoolean
#   fieldDelimiter - SOAP::SOAPString
#   rowDelimiter - SOAP::SOAPString
class ExportDataSourceRecordsRequest < ExportRecordsRequest
  attr_accessor :dataSourceId
  attr_accessor :useMalformedRecords
  attr_accessor :fieldDelimiter
  attr_accessor :rowDelimiter

  def initialize(dataSourceId = nil, useMalformedRecords = nil, fieldDelimiter = nil, rowDelimiter = nil)
    @dataSourceId = dataSourceId
    @useMalformedRecords = useMalformedRecords
    @fieldDelimiter = fieldDelimiter
    @rowDelimiter = rowDelimiter
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}ExportTargetRecordsRequest
#   targetId - TargetId
#   fieldDelimiter - SOAP::SOAPString
#   rowDelimiter - SOAP::SOAPString
class ExportTargetRecordsRequest < ExportRecordsRequest
  attr_accessor :targetId
  attr_accessor :fieldDelimiter
  attr_accessor :rowDelimiter

  def initialize(targetId = nil, fieldDelimiter = nil, rowDelimiter = nil)
    @targetId = targetId
    @fieldDelimiter = fieldDelimiter
    @rowDelimiter = rowDelimiter
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}ExportSuppressionListRecordsRequest
#   suppressionListId - SuppressionListId
class ExportSuppressionListRecordsRequest < ExportRecordsRequest
  attr_accessor :suppressionListId

  def initialize(suppressionListId = nil)
    @suppressionListId = suppressionListId
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}ExportSeedListRecordsRequest
#   seedListId - SeedListId
class ExportSeedListRecordsRequest < ExportRecordsRequest
  attr_accessor :seedListId

  def initialize(seedListId = nil)
    @seedListId = seedListId
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}DeleteRequest
class DeleteRequest < ::Array
end

# {http://www.strongmail.com/services/2009/03/02/schema}GetRequest
class GetRequest < ::Array
end

# {http://www.strongmail.com/services/2009/03/02/schema}Response
# abstract
class Response
  def initialize
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}GetSingleSignOnURLResponse
#   url - SOAP::SOAPString
class GetSingleSignOnURLResponse < Response
  attr_accessor :url

  def initialize(url = nil)
    @url = url
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}DedupeRecordsResponse
#   success - SOAP::SOAPBoolean
class DedupeRecordsResponse < Response
  attr_accessor :success

  def initialize(success = nil)
    @success = success
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}RefreshRecordsResponse
#   success - SOAP::SOAPBoolean
class RefreshRecordsResponse < Response
  attr_accessor :success

  def initialize(success = nil)
    @success = success
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}CancelRefreshRecordsResponse
#   success - SOAP::SOAPBoolean
class CancelRefreshRecordsResponse < Response
  attr_accessor :success

  def initialize(success = nil)
    @success = success
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}StartRecurringImportResponse
#   success - SOAP::SOAPBoolean
class StartRecurringImportResponse < Response
  attr_accessor :success

  def initialize(success = nil)
    @success = success
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}GetRecurringImportStatusResponse
#   importResult - RecurringImportResult
class GetRecurringImportStatusResponse < Response
  attr_accessor :importResult

  def initialize(importResult = [])
    @importResult = importResult
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}FindRecurringImportResponse
#   importId - RecurringImportId
class FindRecurringImportResponse < Response
  attr_accessor :importId

  def initialize(importId = [])
    @importId = importId
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}GetRecurringImportResponse
#   importDetails - RecurringImport
class GetRecurringImportResponse < Response
  attr_accessor :importDetails

  def initialize(importDetails = nil)
    @importDetails = importDetails
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}ImportMessagePartResponse
#   success - SOAP::SOAPBoolean
class ImportMessagePartResponse < Response
  attr_accessor :success

  def initialize(success = nil)
    @success = success
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}ValidateXslResponse
#   valid - SOAP::SOAPBoolean
class ValidateXslResponse < Response
  attr_accessor :valid

  def initialize(valid = nil)
    @valid = valid
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}FetchLinkResponse
#   namedLink - NamedLink
class FetchLinkResponse < Response
  attr_accessor :namedLink

  def initialize(namedLink = nil)
    @namedLink = namedLink
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}CancelResponse
#   success - SOAP::SOAPBoolean
class CancelResponse < Response
  attr_accessor :success

  def initialize(success = nil)
    @success = success
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}CloseResponse
#   success - SOAP::SOAPBoolean
class CloseResponse < Response
  attr_accessor :success

  def initialize(success = nil)
    @success = success
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}ArchiveResponse
#   success - SOAP::SOAPBoolean
class ArchiveResponse < Response
  attr_accessor :success

  def initialize(success = nil)
    @success = success
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}LaunchResponse
#   success - SOAP::SOAPBoolean
class LaunchResponse < Response
  attr_accessor :success

  def initialize(success = nil)
    @success = success
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}LoadResponse
#   success - SOAP::SOAPBoolean
class LoadResponse < Response
  attr_accessor :success

  def initialize(success = nil)
    @success = success
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}PauseResponse
#   success - SOAP::SOAPBoolean
class PauseResponse < Response
  attr_accessor :success

  def initialize(success = nil)
    @success = success
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}ResumeResponse
#   success - SOAP::SOAPBoolean
class ResumeResponse < Response
  attr_accessor :success

  def initialize(success = nil)
    @success = success
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}ScheduleResponse
#   success - SOAP::SOAPBoolean
class ScheduleResponse < Response
  attr_accessor :success

  def initialize(success = nil)
    @success = success
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}SendResponse
#   success - SOAP::SOAPBoolean
class SendResponse < Response
  attr_accessor :success

  def initialize(success = nil)
    @success = success
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}GetTxnMailingHandleResponse
#   handle - SOAP::SOAPString
class GetTxnMailingHandleResponse < Response
  attr_accessor :handle

  def initialize(handle = nil)
    @handle = handle
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}TxnSendResponse
#   success - SOAP::SOAPBoolean
class TxnSendResponse < Response
  attr_accessor :success

  def initialize(success = nil)
    @success = success
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}GetTxnEasInfoResponse
#   hostname - SOAP::SOAPString
#   mailingName - SOAP::SOAPString
#   mailingHandle - SOAP::SOAPString
class GetTxnEasInfoResponse < Response
  attr_accessor :hostname
  attr_accessor :mailingName
  attr_accessor :mailingHandle

  def initialize(hostname = nil, mailingName = nil, mailingHandle = nil)
    @hostname = hostname
    @mailingName = mailingName
    @mailingHandle = mailingHandle
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}GetAllEasListByMailingIdResponse
#   getAllEasByMailingIdResponse - GetAllEasByMailingIdResponse
class GetAllEasListByMailingIdResponse < Response
  attr_accessor :getAllEasByMailingIdResponse

  def initialize(getAllEasByMailingIdResponse = [])
    @getAllEasByMailingIdResponse = getAllEasByMailingIdResponse
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}GetAllEasByMailingIdResponse
#   hostip - SOAP::SOAPString
#   mailingConfigName - SOAP::SOAPString
#   serialNumber - SOAP::SOAPString
#   easId - SOAP::SOAPString
class GetAllEasByMailingIdResponse < Response
  attr_accessor :hostip
  attr_accessor :mailingConfigName
  attr_accessor :serialNumber
  attr_accessor :easId

  def initialize(hostip = nil, mailingConfigName = nil, serialNumber = nil, easId = nil)
    @hostip = hostip
    @mailingConfigName = mailingConfigName
    @serialNumber = serialNumber
    @easId = easId
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}GetProgramNodesResponse
#   programNodes - ProgramNode
class GetProgramNodesResponse < Response
  attr_accessor :programNodes

  def initialize(programNodes = [])
    @programNodes = programNodes
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}AddRecordsResponse
#   success - SOAP::SOAPBoolean
class AddRecordsResponse < Response
  attr_accessor :success

  def initialize(success = nil)
    @success = success
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}AddProgramContactRecordsResponse
#   success - SOAP::SOAPBoolean
#   successCount - SOAP::SOAPInt
#   failureRecord - ProgramContactRecord
#   duplicateRecord - ProgramContactRecord
class AddProgramContactRecordsResponse < AddRecordsResponse
  attr_accessor :success
  attr_accessor :successCount
  attr_accessor :failureRecord
  attr_accessor :duplicateRecord

  def initialize(success = nil, successCount = nil, failureRecord = [], duplicateRecord = [])
    @success = success
    @successCount = successCount
    @failureRecord = failureRecord
    @duplicateRecord = duplicateRecord
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}UpsertRecordsResponse
#   success - SOAP::SOAPBoolean
class UpsertRecordsResponse < Response
  attr_accessor :success

  def initialize(success = nil)
    @success = success
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}ImportFtpFileResponse
#   success - SOAP::SOAPBoolean
class ImportFtpFileResponse < Response
  attr_accessor :success

  def initialize(success = nil)
    @success = success
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}GetRecordsResponse
# abstract
class GetRecordsResponse < Response
  def initialize
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}GetDataSourceRecordsResponse
#   dataSourceRecord - DataSourceRecord
class GetDataSourceRecordsResponse < GetRecordsResponse
  attr_accessor :dataSourceRecord

  def initialize(dataSourceRecord = [])
    @dataSourceRecord = dataSourceRecord
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}CopyResponse
#   objectId - ObjectId
class CopyResponse < Response
  attr_accessor :objectId

  def initialize(objectId = nil)
    @objectId = objectId
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}CreateResponse
#   objectId - ObjectId
class CreateResponse < Response
  attr_accessor :objectId

  def initialize(objectId = nil)
    @objectId = objectId
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}ExportRecordsResponse
#   data - SOAP::SOAPBase64
class ExportRecordsResponse < Response
  attr_accessor :data

  def initialize(data = nil)
    @data = data
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}DeleteResponse
#   success - SOAP::SOAPBoolean
class DeleteResponse < Response
  attr_accessor :success

  def initialize(success = nil)
    @success = success
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}GetResponse
#   baseObject - BaseObject
class GetResponse < Response
  attr_accessor :baseObject

  def initialize(baseObject = nil)
    @baseObject = baseObject
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}GetStatisticsResponse
class GetStatisticsResponse < Response
  def initialize
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}GetDataSourceStatisticsResponse
#   totalInvalidRecords - SOAP::SOAPInt
#   totalMalformedRecords - SOAP::SOAPInt
#   totalRecords - SOAP::SOAPInt
#   totalUnsubscribedRecords - SOAP::SOAPInt
#   lastRefresh - SOAP::SOAPDateTime
class GetDataSourceStatisticsResponse < GetStatisticsResponse
  attr_accessor :totalInvalidRecords
  attr_accessor :totalMalformedRecords
  attr_accessor :totalRecords
  attr_accessor :totalUnsubscribedRecords
  attr_accessor :lastRefresh

  def initialize(totalInvalidRecords = nil, totalMalformedRecords = nil, totalRecords = nil, totalUnsubscribedRecords = nil, lastRefresh = nil)
    @totalInvalidRecords = totalInvalidRecords
    @totalMalformedRecords = totalMalformedRecords
    @totalRecords = totalRecords
    @totalUnsubscribedRecords = totalUnsubscribedRecords
    @lastRefresh = lastRefresh
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}GetMailingStatisticsResponse
#   launchSerial - SOAP::SOAPString
#   elapsedTime - SOAP::SOAPDuration
#   launchTime - SOAP::SOAPDateTime
#   completionTime - SOAP::SOAPDateTime
#   deferred - SOAP::SOAPInt
#   delivered - SOAP::SOAPInt
#   failed - SOAP::SOAPInt
#   invalid - SOAP::SOAPInt
#   sent - SOAP::SOAPInt
#   targeted - SOAP::SOAPInt
#   totalClicks - SOAP::SOAPInt
#   totalComplaints - SOAP::SOAPInt
#   totalOpens - SOAP::SOAPInt
#   totalUnsubscribes - SOAP::SOAPInt
#   uniqueClicks - SOAP::SOAPInt
#   uniqueComplaints - SOAP::SOAPInt
#   uniqueOpens - SOAP::SOAPInt
#   uniqueUnsubscribes - SOAP::SOAPInt
class GetMailingStatisticsResponse < GetStatisticsResponse
  attr_accessor :launchSerial
  attr_accessor :elapsedTime
  attr_accessor :launchTime
  attr_accessor :completionTime
  attr_accessor :deferred
  attr_accessor :delivered
  attr_accessor :failed
  attr_accessor :invalid
  attr_accessor :sent
  attr_accessor :targeted
  attr_accessor :totalClicks
  attr_accessor :totalComplaints
  attr_accessor :totalOpens
  attr_accessor :totalUnsubscribes
  attr_accessor :uniqueClicks
  attr_accessor :uniqueComplaints
  attr_accessor :uniqueOpens
  attr_accessor :uniqueUnsubscribes

  def initialize(launchSerial = nil, elapsedTime = nil, launchTime = nil, completionTime = nil, deferred = nil, delivered = nil, failed = nil, invalid = nil, sent = nil, targeted = nil, totalClicks = nil, totalComplaints = nil, totalOpens = nil, totalUnsubscribes = nil, uniqueClicks = nil, uniqueComplaints = nil, uniqueOpens = nil, uniqueUnsubscribes = nil)
    @launchSerial = launchSerial
    @elapsedTime = elapsedTime
    @launchTime = launchTime
    @completionTime = completionTime
    @deferred = deferred
    @delivered = delivered
    @failed = failed
    @invalid = invalid
    @sent = sent
    @targeted = targeted
    @totalClicks = totalClicks
    @totalComplaints = totalComplaints
    @totalOpens = totalOpens
    @totalUnsubscribes = totalUnsubscribes
    @uniqueClicks = uniqueClicks
    @uniqueComplaints = uniqueComplaints
    @uniqueOpens = uniqueOpens
    @uniqueUnsubscribes = uniqueUnsubscribes
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}ImportContentResponse
#   success - SOAP::SOAPBoolean
class ImportContentResponse < Response
  attr_accessor :success

  def initialize(success = nil)
    @success = success
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}ListResponse
#   objectId - ObjectId
class ListResponse < Response
  attr_accessor :objectId

  def initialize(objectId = [])
    @objectId = objectId
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}RemoveRecordsResponse
#   recordsRemoved - SOAP::SOAPInt
class RemoveRecordsResponse < Response
  attr_accessor :recordsRemoved

  def initialize(recordsRemoved = nil)
    @recordsRemoved = recordsRemoved
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}TestResponse
#   success - SOAP::SOAPBoolean
class TestResponse < Response
  attr_accessor :success

  def initialize(success = nil)
    @success = success
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}UpdateResponse
#   success - SOAP::SOAPBoolean
class UpdateResponse < Response
  attr_accessor :success

  def initialize(success = nil)
    @success = success
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}BatchResponse
# abstract
#   success - SOAP::SOAPBoolean
#   fault - FaultDetail
class BatchResponse
  attr_accessor :success
  attr_accessor :fault

  def initialize(success = [], fault = [])
    @success = success
    @fault = fault
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}FetchLinksResponse
#   success - SOAP::SOAPBoolean
#   fault - FaultDetail
#   fetchLinkResponse - FetchLinkResponse
class FetchLinksResponse < BatchResponse
  attr_accessor :success
  attr_accessor :fault
  attr_accessor :fetchLinkResponse

  def initialize(success = [], fault = [], fetchLinkResponse = [])
    @success = success
    @fault = fault
    @fetchLinkResponse = fetchLinkResponse
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}BatchCreateResponse
#   success - SOAP::SOAPBoolean
#   fault - FaultDetail
#   createResponse - CreateResponse
class BatchCreateResponse < BatchResponse
  attr_accessor :success
  attr_accessor :fault
  attr_accessor :createResponse

  def initialize(success = [], fault = [], createResponse = [])
    @success = success
    @fault = fault
    @createResponse = createResponse
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}BatchDeleteResponse
#   success - SOAP::SOAPBoolean
#   fault - FaultDetail
#   deleteResponse - DeleteResponse
class BatchDeleteResponse < BatchResponse
  attr_accessor :success
  attr_accessor :fault
  attr_accessor :deleteResponse

  def initialize(success = [], fault = [], deleteResponse = [])
    @success = success
    @fault = fault
    @deleteResponse = deleteResponse
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}BatchGetResponse
#   success - SOAP::SOAPBoolean
#   fault - FaultDetail
#   getResponse - GetResponse
class BatchGetResponse < BatchResponse
  attr_accessor :success
  attr_accessor :fault
  attr_accessor :getResponse

  def initialize(success = [], fault = [], getResponse = [])
    @success = success
    @fault = fault
    @getResponse = getResponse
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}BatchUpdateResponse
#   success - SOAP::SOAPBoolean
#   fault - FaultDetail
#   updateResponse - UpdateResponse
class BatchUpdateResponse < BatchResponse
  attr_accessor :success
  attr_accessor :fault
  attr_accessor :updateResponse

  def initialize(success = [], fault = [], updateResponse = [])
    @success = success
    @fault = fault
    @updateResponse = updateResponse
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}GetStatisticsRequest
# abstract
class GetStatisticsRequest
  def initialize
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}GetDataSourceStatisticsRequest
#   dataSourceId - DataSourceId
class GetDataSourceStatisticsRequest < GetStatisticsRequest
  attr_accessor :dataSourceId

  def initialize(dataSourceId = nil)
    @dataSourceId = dataSourceId
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}GetMailingStatisticsRequest
#   mailingId - MailingId
class GetMailingStatisticsRequest < GetStatisticsRequest
  attr_accessor :mailingId

  def initialize(mailingId = nil)
    @mailingId = mailingId
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}ImportContentRequest
#   content - SOAP::SOAPBase64
class ImportContentRequest
  attr_accessor :content

  def initialize(content = nil)
    @content = content
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}ImportAttachmentContentRequest
#   content - SOAP::SOAPBase64
#   attachmentId - AttachmentId
#   fileName - SOAP::SOAPString
class ImportAttachmentContentRequest < ImportContentRequest
  attr_accessor :content
  attr_accessor :attachmentId
  attr_accessor :fileName

  def initialize(content = nil, attachmentId = nil, fileName = nil)
    @content = content
    @attachmentId = attachmentId
    @fileName = fileName
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}ListRequest
#   filter - BaseFilter
class ListRequest
  attr_accessor :filter

  def initialize(filter = nil)
    @filter = filter
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}RemoveRecordsRequest
# abstract
class RemoveRecordsRequest
  def initialize
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}RemoveDataSourceRecordsRequest
#   dataSourceId - DataSourceId
#   matchFieldName - SOAP::SOAPString
#   record - SOAP::SOAPString
#   recordsAttachment - SOAP::SOAPBase64
class RemoveDataSourceRecordsRequest < RemoveRecordsRequest
  attr_accessor :dataSourceId
  attr_accessor :matchFieldName
  attr_accessor :record
  attr_accessor :recordsAttachment

  def initialize(dataSourceId = nil, matchFieldName = nil, record = [], recordsAttachment = nil)
    @dataSourceId = dataSourceId
    @matchFieldName = matchFieldName
    @record = record
    @recordsAttachment = recordsAttachment
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}RemoveSuppressionListRecordsRequest
#   suppressionListId - SuppressionListId
#   addressMatch - SOAP::SOAPString
#   addressMatchesAttachment - SOAP::SOAPBase64
class RemoveSuppressionListRecordsRequest < RemoveRecordsRequest
  attr_accessor :suppressionListId
  attr_accessor :addressMatch
  attr_accessor :addressMatchesAttachment

  def initialize(suppressionListId = nil, addressMatch = [], addressMatchesAttachment = nil)
    @suppressionListId = suppressionListId
    @addressMatch = addressMatch
    @addressMatchesAttachment = addressMatchesAttachment
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}RemoveSeedListRecordsRequest
#   seedListId - SeedListId
#   address - SOAP::SOAPString
#   addressesAttachment - SOAP::SOAPBase64
class RemoveSeedListRecordsRequest < RemoveRecordsRequest
  attr_accessor :seedListId
  attr_accessor :address
  attr_accessor :addressesAttachment

  def initialize(seedListId = nil, address = [], addressesAttachment = nil)
    @seedListId = seedListId
    @address = address
    @addressesAttachment = addressesAttachment
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}TestRequest
#   address - SOAP::SOAPString
#   format - MessageFormat
#   subjectPrefix - SOAP::SOAPString
#   testListId - SeedListId
#   tokenValue - NameValuePair
#   useMultiPart - SOAP::SOAPBoolean
class TestRequest
  attr_accessor :address
  attr_accessor :format
  attr_accessor :subjectPrefix
  attr_accessor :testListId
  attr_accessor :tokenValue
  attr_accessor :useMultiPart

  def initialize(address = [], format = [], subjectPrefix = nil, testListId = nil, tokenValue = [], useMultiPart = nil)
    @address = address
    @format = format
    @subjectPrefix = subjectPrefix
    @testListId = testListId
    @tokenValue = tokenValue
    @useMultiPart = useMultiPart
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}TestTemplateRequest
#   address - SOAP::SOAPString
#   format - MessageFormat
#   subjectPrefix - SOAP::SOAPString
#   testListId - SeedListId
#   tokenValue - NameValuePair
#   useMultiPart - SOAP::SOAPBoolean
#   templateId - TemplateId
#   mailingClassId - MailingClassId
class TestTemplateRequest < TestRequest
  attr_accessor :address
  attr_accessor :format
  attr_accessor :subjectPrefix
  attr_accessor :testListId
  attr_accessor :tokenValue
  attr_accessor :useMultiPart
  attr_accessor :templateId
  attr_accessor :mailingClassId

  def initialize(address = [], format = [], subjectPrefix = nil, testListId = nil, tokenValue = [], useMultiPart = nil, templateId = nil, mailingClassId = nil)
    @address = address
    @format = format
    @subjectPrefix = subjectPrefix
    @testListId = testListId
    @tokenValue = tokenValue
    @useMultiPart = useMultiPart
    @templateId = templateId
    @mailingClassId = mailingClassId
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}TestMailingRequest
#   address - SOAP::SOAPString
#   format - MessageFormat
#   subjectPrefix - SOAP::SOAPString
#   testListId - SeedListId
#   tokenValue - NameValuePair
#   useMultiPart - SOAP::SOAPBoolean
#   mailingId - StandardMailingId
class TestMailingRequest < TestRequest
  attr_accessor :address
  attr_accessor :format
  attr_accessor :subjectPrefix
  attr_accessor :testListId
  attr_accessor :tokenValue
  attr_accessor :useMultiPart
  attr_accessor :mailingId

  def initialize(address = [], format = [], subjectPrefix = nil, testListId = nil, tokenValue = [], useMultiPart = nil, mailingId = nil)
    @address = address
    @format = format
    @subjectPrefix = subjectPrefix
    @testListId = testListId
    @tokenValue = tokenValue
    @useMultiPart = useMultiPart
    @mailingId = mailingId
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}UpdateRequest
class UpdateRequest < ::Array
end

# {http://www.strongmail.com/services/2009/03/02/schema}FaultDetail
#   faultCode - FaultCode
#   faultMessage - (any)
class FaultDetail
  attr_accessor :faultCode
  attr_accessor :faultMessage

  def initialize(faultCode = nil, faultMessage = nil)
    @faultCode = faultCode
    @faultMessage = faultMessage
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}AuthorizationFaultDetail
#   faultCode - FaultCode
#   faultMessage - (any)
class AuthorizationFaultDetail < FaultDetail
  attr_accessor :faultCode
  attr_accessor :faultMessage

  def initialize(faultCode = nil, faultMessage = nil)
    @faultCode = faultCode
    @faultMessage = faultMessage
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}ConcurrentModificationFaultDetail
#   faultCode - FaultCode
#   faultMessage - (any)
class ConcurrentModificationFaultDetail < FaultDetail
  attr_accessor :faultCode
  attr_accessor :faultMessage

  def initialize(faultCode = nil, faultMessage = nil)
    @faultCode = faultCode
    @faultMessage = faultMessage
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}InvalidObjectFaultDetail
#   faultCode - FaultCode
#   faultMessage - (any)
class InvalidObjectFaultDetail < FaultDetail
  attr_accessor :faultCode
  attr_accessor :faultMessage

  def initialize(faultCode = nil, faultMessage = nil)
    @faultCode = faultCode
    @faultMessage = faultMessage
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}ObjectNotFoundFaultDetail
#   faultCode - FaultCode
#   faultMessage - (any)
class ObjectNotFoundFaultDetail < FaultDetail
  attr_accessor :faultCode
  attr_accessor :faultMessage

  def initialize(faultCode = nil, faultMessage = nil)
    @faultCode = faultCode
    @faultMessage = faultMessage
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}StaleObjectFaultDetail
#   faultCode - FaultCode
#   faultMessage - (any)
class StaleObjectFaultDetail < FaultDetail
  attr_accessor :faultCode
  attr_accessor :faultMessage

  def initialize(faultCode = nil, faultMessage = nil)
    @faultCode = faultCode
    @faultMessage = faultMessage
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}UnexpectedFaultDetail
#   faultCode - FaultCode
#   faultMessage - (any)
class UnexpectedFaultDetail < FaultDetail
  attr_accessor :faultCode
  attr_accessor :faultMessage

  def initialize(faultCode = nil, faultMessage = nil)
    @faultCode = faultCode
    @faultMessage = faultMessage
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}UnrecognizedObjectTypeFaultDetail
#   faultCode - FaultCode
#   faultMessage - (any)
class UnrecognizedObjectTypeFaultDetail < FaultDetail
  attr_accessor :faultCode
  attr_accessor :faultMessage

  def initialize(faultCode = nil, faultMessage = nil)
    @faultCode = faultCode
    @faultMessage = faultMessage
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}BadHandleFaultDetail
#   faultCode - FaultCode
#   faultMessage - (any)
class BadHandleFaultDetail < FaultDetail
  attr_accessor :faultCode
  attr_accessor :faultMessage

  def initialize(faultCode = nil, faultMessage = nil)
    @faultCode = faultCode
    @faultMessage = faultMessage
  end
end

# {http://www.strongmail.com/services/2009/03/02/schema}DataSourceType
class DataSourceType < ::String
  CATALOG = new("CATALOG")
  EXTERNAL = new("EXTERNAL")
  IDS_EXTENSION = new("IDS_EXTENSION")
  INTERNAL = new("INTERNAL")
end

# {http://www.strongmail.com/services/2009/03/02/schema}DatabaseType
class DatabaseType < ::String
  DB2 = new("DB2")
  MSSQL = new("MSSQL")
  MYSQL = new("MYSQL")
  ORACLE = new("ORACLE")
  POSTGRES = new("POSTGRES")
  SYBASE_ASE = new("SYBASE_ASE")
  TERADATA = new("TERADATA")
end

# {http://www.strongmail.com/services/2009/03/02/schema}DataSourceFieldType
class DataSourceFieldType < ::String
  DATE = new("DATE")
  DATETIME = new("DATETIME")
  EMAIL = new("EMAIL")
  FLOATING_POINT = new("FLOATING_POINT")
  INTEGER = new("INTEGER")
  SMS = new("SMS")
  TEXT = new("TEXT")
end

# {http://www.strongmail.com/services/2009/03/02/schema}DataSourceDataType
class DataSourceDataType < ::String
  CDATA = new("CDATA")
  DATA = new("DATA")
  SMS_UNSUBSCRIBE = new("SMS_UNSUBSCRIBE")
  STATUS = new("STATUS")
  UNSUBSCRIBE = new("UNSUBSCRIBE")
end

# {http://www.strongmail.com/services/2009/03/02/schema}DataSourceOperationStatus
class DataSourceOperationStatus < ::String
  IDLE = new("IDLE")
  IMPORTING = new("IMPORTING")
  REFRESHING = new("REFRESHING")
end

# {http://www.strongmail.com/services/2009/03/02/schema}DataSourceDedupeOption
class DataSourceDedupeOption < ::String
  KEEP_NEWEST = new("KEEP_NEWEST")
  KEEP_OLDEST = new("KEEP_OLDEST")
end

# {http://www.strongmail.com/services/2009/03/02/schema}DataSourceOrderBy
class DataSourceOrderBy < ::String
  MODIFIED_TIME = new("MODIFIED_TIME")
  NAME = new("NAME")
  TYPE = new("TYPE")
end

# {http://www.strongmail.com/services/2009/03/02/schema}ImportType
class ImportType < ::String
  APPEND = new("APPEND")
  MERGE = new("MERGE")
  REPLACE = new("REPLACE")
  UPDATE = new("UPDATE")
end

# {http://www.strongmail.com/services/2009/03/02/schema}RecurringImportStatus
class RecurringImportStatus < ::String
  FAILURE = new("FAILURE")
  RUNNING = new("RUNNING")
  SUCCESS = new("SUCCESS")
end

# {http://www.strongmail.com/services/2009/03/02/schema}RecurringImportType
class RecurringImportType < ::String
  API = new("API")
  DATABASE_MANUAL = new("DATABASE_MANUAL")
  DATABASE_RECURRING = new("DATABASE_RECURRING")
  FTP_MANUAL = new("FTP_MANUAL")
  FTP_RECURRING = new("FTP_RECURRING")
  UI = new("UI")
end

# {http://www.strongmail.com/services/2009/03/02/schema}TargetType
class TargetType < ::String
  ADVANCED = new("ADVANCED")
  QBE = new("QBE")
  RETARGETING = new("RETARGETING")
end

# {http://www.strongmail.com/services/2009/03/02/schema}TargetOrderBy
class TargetOrderBy < ::String
  MODIFIED_TIME = new("MODIFIED_TIME")
  NAME = new("NAME")
  TYPE = new("TYPE")
end

# {http://www.strongmail.com/services/2009/03/02/schema}SuppressionListOrderBy
class SuppressionListOrderBy < ::String
  MODIFIED_TIME = new("MODIFIED_TIME")
  NAME = new("NAME")
end

# {http://www.strongmail.com/services/2009/03/02/schema}SeedListOrderBy
class SeedListOrderBy < ::String
  MODIFIED_TIME = new("MODIFIED_TIME")
  NAME = new("NAME")
end

# {http://www.strongmail.com/services/2009/03/02/schema}TrackingTag
class TrackingTag < ::String
  CLICKTAG = new("CLICKTAG")
  ENCLICKTAG = new("ENCLICKTAG")
  ENFTAFTAG = new("ENFTAFTAG")
  ENSHARETAG = new("ENSHARETAG")
  ENUNSUBSCRIBETAG = new("ENUNSUBSCRIBETAG")
  ENVIEWINBROWSERTAG = new("ENVIEWINBROWSERTAG")
  FTAFTAG = new("FTAFTAG")
  NONE = new("NONE")
  SHARETAG = new("SHARETAG")
  SHORTCLICKTAG = new("SHORTCLICKTAG")
  SHORTUNSUBSCRIBETAG = new("SHORTUNSUBSCRIBETAG")
  UNSUBSCRIBETAG = new("UNSUBSCRIBETAG")
  VIEWINBROWSERTAG = new("VIEWINBROWSERTAG")
end

# {http://www.strongmail.com/services/2009/03/02/schema}OpenTag
class OpenTag < ::String
  ENOPENTAG = new("ENOPENTAG")
  OPENTAG = new("OPENTAG")
end

# {http://www.strongmail.com/services/2009/03/02/schema}MessageFormat
class MessageFormat < ::String
  AOL = new("AOL")
  HTML = new("HTML")
  RAW = new("RAW")
  SMS = new("SMS")
  TEXT = new("TEXT")
  VIM = new("VIM")
end

# {http://www.strongmail.com/services/2009/03/02/schema}MessageType
class MessageType < ::String
  EMAIL = new("EMAIL")
  TEXT_MESSAGE = new("TEXT_MESSAGE")
end

# {http://www.strongmail.com/services/2009/03/02/schema}TemplateOrderBy
class TemplateOrderBy < ::String
  MODIFIED_TIME = new("MODIFIED_TIME")
  NAME = new("NAME")
end

# {http://www.strongmail.com/services/2009/03/02/schema}ContentBlockOrderBy
class ContentBlockOrderBy < ::String
  MODIFIED_TIME = new("MODIFIED_TIME")
  NAME = new("NAME")
  SIZE = new("SIZE")
end

# {http://www.strongmail.com/services/2009/03/02/schema}AttachmentOrderBy
class AttachmentOrderBy < ::String
  EXTENSION = new("EXTENSION")
  MODIFIED_TIME = new("MODIFIED_TIME")
  NAME = new("NAME")
  SIZE = new("SIZE")
end

# {http://www.strongmail.com/services/2009/03/02/schema}RuleOrderBy
class RuleOrderBy < ::String
  MODIFIED_TIME = new("MODIFIED_TIME")
  NAME = new("NAME")
end

# {http://www.strongmail.com/services/2009/03/02/schema}MailingStatus
class MailingStatus < ::String
  ACTIVE = new("ACTIVE")
  ARCHIVED_COMPLETED = new("ARCHIVED_COMPLETED")
  ARCHIVED_MARKED = new("ARCHIVED_MARKED")
  CANCELED = new("CANCELED")
  CANCELING = new("CANCELING")
  COMPLETED = new("COMPLETED")
  COMPLETED_DEFERRED = new("COMPLETED_DEFERRED")
  COMPLETING = new("COMPLETING")
  EDITING = new("EDITING")
  ERROR = new("ERROR")
  FAILED = new("FAILED")
  INITIATING_EXPORTING = new("INITIATING_EXPORTING")
  INITIATING_LOADING = new("INITIATING_LOADING")
  INITIATING_SAVED = new("INITIATING_SAVED")
  INITIATING_SAVING = new("INITIATING_SAVING")
  INITIATING_STARTING = new("INITIATING_STARTING")
  INITIATING_TARGETING = new("INITIATING_TARGETING")
  INITIATING_TO_LAUNCH = new("INITIATING_TO_LAUNCH")
  INITIATING_TO_LOAD = new("INITIATING_TO_LOAD")
  OVERDUE = new("OVERDUE")
  PAUSED = new("PAUSED")
  PAUSED_OUTBOUND = new("PAUSED_OUTBOUND")
  PAUSING = new("PAUSING")
  PAUSING_OUTBOUND = new("PAUSING_OUTBOUND")
  RECOVERING = new("RECOVERING")
  RESUMING = new("RESUMING")
  SCHEDULED = new("SCHEDULED")
  SCHEDULED_CANCELED = new("SCHEDULED_CANCELED")
  SENDING = new("SENDING")
  SENDING_INTERRUPTED = new("SENDING_INTERRUPTED")
  SENDING_STOPPED = new("SENDING_STOPPED")
  SPEC_CANCELED = new("SPEC_CANCELED")
  SPEC_COMPLETED = new("SPEC_COMPLETED")
  SPEC_EDITING = new("SPEC_EDITING")
  SPEC_FAILED = new("SPEC_FAILED")
  SPEC_SCHEDULED = new("SPEC_SCHEDULED")
  UNKNOWN = new("UNKNOWN")
end

# {http://www.strongmail.com/services/2009/03/02/schema}MailingType
class MailingType < ::String
  ONE_TIME = new("ONE_TIME")
  RECURRING = new("RECURRING")
  RECURRING_INSTANCE = new("RECURRING_INSTANCE")
  TRANSACTIONAL = new("TRANSACTIONAL")
end

# {http://www.strongmail.com/services/2009/03/02/schema}MailingPriority
class MailingPriority < ::String
  HIGH = new("HIGH")
  LOW = new("LOW")
  NORMAL = new("NORMAL")
  URGENT = new("URGENT")
end

# {http://www.strongmail.com/services/2009/03/02/schema}DailyOccurrence
class DailyOccurrence < ::String
  DAY = new("DAY")
  FRIDAY = new("FRIDAY")
  MONDAY = new("MONDAY")
  SATURDAY = new("SATURDAY")
  SUNDAY = new("SUNDAY")
  THURSDAY = new("THURSDAY")
  TUESDAY = new("TUESDAY")
  WEDNESDAY = new("WEDNESDAY")
  WEEKDAY = new("WEEKDAY")
end

# {http://www.strongmail.com/services/2009/03/02/schema}WeeklyOccurrence
class WeeklyOccurrence < ::String
  FIRST = new("FIRST")
  FOURTH = new("FOURTH")
  LAST = new("LAST")
  SECOND = new("SECOND")
  THIRD = new("THIRD")
end

# {http://www.strongmail.com/services/2009/03/02/schema}MailingOrderBy
class MailingOrderBy < ::String
  MODIFIED_TIME = new("MODIFIED_TIME")
  NAME = new("NAME")
end

# {http://www.strongmail.com/services/2009/03/02/schema}AssetExpiryInterval
class AssetExpiryInterval < ::String
  FOURTEEN_DAYS = new("FOURTEEN_DAYS")
  NEVER = new("NEVER")
  NINETY_DAYS = new("NINETY_DAYS")
  ONEEIGHTY_DAYS = new("ONEEIGHTY_DAYS")
  SEVEN_DAYS = new("SEVEN_DAYS")
  SIXTY_DAYS = new("SIXTY_DAYS")
  THIRTY_DAYS = new("THIRTY_DAYS")
end

# {http://www.strongmail.com/services/2009/03/02/schema}ProgramStatus
class ProgramStatus < ::String
  Active = new("Active")
  Archive_Completed = new("Archive_Completed")
  Archive_Failed = new("Archive_Failed")
  Archive_Marked = new("Archive_Marked")
  Archived = new("Archived")
  Cancel_Failed = new("Cancel_Failed")
  Canceled = new("Canceled")
  Canceling = new("Canceling")
  Close_Failed = new("Close_Failed")
  Completed = new("Completed")
  Completing = new("Completing")
  Editing = new("Editing")
  Launch_Failed = new("Launch_Failed")
  Launching = new("Launching")
  Pause_Failed = new("Pause_Failed")
  Paused = new("Paused")
  Pausing = new("Pausing")
  Resume_Failed = new("Resume_Failed")
  Resuming = new("Resuming")
  Scheduled = new("Scheduled")
end

# {http://www.strongmail.com/services/2009/03/02/schema}ProgramNodeType
class ProgramNodeType < ::String
  CaseDecision = new("CaseDecision")
  ConditionalWait = new("ConditionalWait")
  EndEvent = new("EndEvent")
  ExportAction = new("ExportAction")
  IfDecision = new("IfDecision")
  OptInOutAction = new("OptInOutAction")
  OptimizerEnd = new("OptimizerEnd")
  OptimizerStart = new("OptimizerStart")
  SendAction = new("SendAction")
  SendSmsAction = new("SendSmsAction")
  SetDataAction = new("SetDataAction")
  SplitDecision = new("SplitDecision")
  StartEvent = new("StartEvent")
  StartSmsMoEvent = new("StartSmsMoEvent")
  StartTriggeredEvent = new("StartTriggeredEvent")
  TransferEvent = new("TransferEvent")
  WaitAction = new("WaitAction")
end

# {http://www.strongmail.com/services/2009/03/02/schema}ProgramOrderBy
class ProgramOrderBy < ::String
  MODIFIED_TIME = new("MODIFIED_TIME")
  NAME = new("NAME")
end

# {http://www.strongmail.com/services/2009/03/02/schema}OrganizationOrderBy
class OrganizationOrderBy < ::String
  MODIFIED_TIME = new("MODIFIED_TIME")
  NAME = new("NAME")
end

# {http://www.strongmail.com/services/2009/03/02/schema}UserOrderBy
class UserOrderBy < ::String
  EMAIL = new("EMAIL")
  FIRST_NAME = new("FIRST_NAME")
  LAST_NAME = new("LAST_NAME")
  LOGIN = new("LOGIN")
  MODIFIED_TIME = new("MODIFIED_TIME")
end

# {http://www.strongmail.com/services/2009/03/02/schema}RoleOrderBy
class RoleOrderBy < ::String
  MODIFIED_TIME = new("MODIFIED_TIME")
  NAME = new("NAME")
end

# {http://www.strongmail.com/services/2009/03/02/schema}AssignedRoleOrderBy
class AssignedRoleOrderBy < ::String
  MODIFIED_TIME = new("MODIFIED_TIME")
  ORGANIZATION_ID = new("ORGANIZATION_ID")
  ROLE_ID = new("ROLE_ID")
  USER_ID = new("USER_ID")
end

# {http://www.strongmail.com/services/2009/03/02/schema}SystemAddressType
class SystemAddressType < ::String
  BOUNCE = new("BOUNCE")
  FROM = new("FROM")
  REPLY = new("REPLY")
end

# {http://www.strongmail.com/services/2009/03/02/schema}DataSourceImportFrequency
class DataSourceImportFrequency < ::String
  DAILY = new("DAILY")
  HOURLY = new("HOURLY")
  WEEKLY = new("WEEKLY")
end

# {http://www.strongmail.com/services/2009/03/02/schema}DataSourceImportMode
class DataSourceImportMode < ::String
  APPEND = new("APPEND")
  MERGE = new("MERGE")
  REPLACE = new("REPLACE")
end

# {http://www.strongmail.com/services/2009/03/02/schema}SystemAddressOrderBy
class SystemAddressOrderBy < ::String
  EMAIL_ADDRESS = new("EMAIL_ADDRESS")
  FROM_NAME = new("FROM_NAME")
  MODIFIED_TIME = new("MODIFIED_TIME")
end

# {http://www.strongmail.com/services/2009/03/02/schema}CampaignOrderBy
class CampaignOrderBy < ::String
  MODIFIED_TIME = new("MODIFIED_TIME")
  NAME = new("NAME")
end

# {http://www.strongmail.com/services/2009/03/02/schema}MediaServerOrderBy
class MediaServerOrderBy < ::String
  MODIFIED_TIME = new("MODIFIED_TIME")
  NAME = new("NAME")
end

# {http://www.strongmail.com/services/2009/03/02/schema}WebAnalyticsOrderBy
class WebAnalyticsOrderBy < ::String
  MODIFIED_TIME = new("MODIFIED_TIME")
  NAME = new("NAME")
end

# {http://www.strongmail.com/services/2009/03/02/schema}MailingClassOrderBy
class MailingClassOrderBy < ::String
  MODIFIED_TIME = new("MODIFIED_TIME")
  NAME = new("NAME")
end

# {http://www.strongmail.com/services/2009/03/02/schema}Forward2FriendOfferTrackingOption
class Forward2FriendOfferTrackingOption < ::String
  ENCODED = new("ENCODED")
  NONE = new("NONE")
  NORMAL = new("NORMAL")
end

# {http://www.strongmail.com/services/2009/03/02/schema}StrongtoolOpenAs
class StrongtoolOpenAs < ::String
  NAV_BUTTON_AT_LOGIN_IN_TAB = new("NAV_BUTTON_AT_LOGIN_IN_TAB")
  NAV_BUTTON_IN_TAB = new("NAV_BUTTON_IN_TAB")
  NEW_BROWSER = new("NEW_BROWSER")
  NEW_TAB = new("NEW_TAB")
  OPEN_AT_LOGIN_IN_TAB = new("OPEN_AT_LOGIN_IN_TAB")
  POPUP_WINDOW = new("POPUP_WINDOW")
end

# {http://www.strongmail.com/services/2009/03/02/schema}StrongtoolOrderBy
class StrongtoolOrderBy < ::String
  MODIFIED_TIME = new("MODIFIED_TIME")
  NAME = new("NAME")
  OPEN_AS = new("OPEN_AS")
end

# {http://www.strongmail.com/services/2009/03/02/schema}DayOfWeek
class DayOfWeek < ::String
  FRIDAY = new("FRIDAY")
  MONDAY = new("MONDAY")
  SATURDAY = new("SATURDAY")
  SUNDAY = new("SUNDAY")
  THURSDAY = new("THURSDAY")
  TUESDAY = new("TUESDAY")
  WEDNESDAY = new("WEDNESDAY")
end

# {http://www.strongmail.com/services/2009/03/02/schema}FilterBooleanScalarOperator
class FilterBooleanScalarOperator < ::String
  EQUAL = new("EQUAL")
end

# {http://www.strongmail.com/services/2009/03/02/schema}FilterIdScalarOperator
class FilterIdScalarOperator < ::String
  EQUAL = new("EQUAL")
end

# {http://www.strongmail.com/services/2009/03/02/schema}FilterIntegerScalarOperator
class FilterIntegerScalarOperator < ::String
  EQUAL = new("EQUAL")
end

# {http://www.strongmail.com/services/2009/03/02/schema}FilterStringScalarOperator
class FilterStringScalarOperator < ::String
  EQUAL = new("EQUAL")
end

# {http://www.strongmail.com/services/2009/03/02/schema}FilterArrayOperator
class FilterArrayOperator < ::String
  IN = new("IN")
end

# {http://www.strongmail.com/services/2009/03/02/schema}ComparisonOperation
class ComparisonOperation < ::String
  CONTAINS = new("CONTAINS")
  DOES_NOT_CONTAIN = new("DOES_NOT_CONTAIN")
  EQUALS = new("EQUALS")
  GREATER_THAN = new("GREATER_THAN")
  GREATER_THAN_OR_EQUALS = new("GREATER_THAN_OR_EQUALS")
  LESS_THAN = new("LESS_THAN")
  LESS_THAN_OR_EQUALS = new("LESS_THAN_OR_EQUALS")
  NOT_EQUAL = new("NOT_EQUAL")
  NOT_NULL = new("NOT_NULL")
  NOT_ONE_OF = new("NOT_ONE_OF")
  NULL = new("NULL")
  ONE_OF = new("ONE_OF")
end

# {http://www.strongmail.com/services/2009/03/02/schema}LogicalOperation
class LogicalOperation < ::String
  AND = new("AND")
  OR = new("OR")
end

# {http://www.strongmail.com/services/2009/03/02/schema}CharSet
class CharSet < ::String
  ANSI_X3110 = new("ANSI_X3.110")
  ANSI_X31101983 = new("ANSI_X3.110-1983")
  ANSI_X34 = new("ANSI_X3.4")
  ANSI_X341968 = new("ANSI_X3.4-1968")
  ANSI_X341986 = new("ANSI_X3.4-1986")
  ARABIC = new("ARABIC")
  ARMSCII8 = new("ARMSCII-8")
  ASCII = new("ASCII")
  ASMO708 = new("ASMO-708")
  BALTIC = new("BALTIC")
  BIG5 = new("BIG5")
  BIGFIVE = new("BIG-FIVE")
  BS_4730 = new("BS_4730")
  CA = new("CA")
  CN = new("CN")
  CNGB = new("CN-GB")
  CP10007 = new("CP10007")
  CP1004 = new("CP1004")
  CP1046 = new("CP1046")
  CP1089 = new("CP1089")
  CP1124 = new("CP1124")
  CP1125 = new("CP1125")
  CP1129 = new("CP1129")
  CP1133 = new("CP1133")
  CP1161 = new("CP1161")
  CP1162 = new("CP1162")
  CP1163 = new("CP1163")
  CP1250 = new("CP1250")
  CP1251 = new("CP1251")
  CP1252 = new("CP1252")
  CP1253 = new("CP1253")
  CP1254 = new("CP1254")
  CP1255 = new("CP1255")
  CP1256 = new("CP1256")
  CP1257 = new("CP1257")
  CP1258 = new("CP1258")
  CP1361 = new("CP1361")
  CP367 = new("CP367")
  CP437 = new("CP437")
  CP737 = new("CP737")
  CP775 = new("CP775")
  CP813 = new("CP813")
  CP819 = new("CP819")
  CP850 = new("CP850")
  CP851 = new("CP851")
  CP852 = new("CP852")
  CP855 = new("CP855")
  CP856 = new("CP856")
  CP857 = new("CP857")
  CP860 = new("CP860")
  CP861 = new("CP861")
  CP862 = new("CP862")
  CP863 = new("CP863")
  CP864 = new("CP864")
  CP865 = new("CP865")
  CP866 = new("CP866")
  CP866NAV = new("CP866NAV")
  CP868 = new("CP868")
  CP869 = new("CP869")
  CP874 = new("CP874")
  CP891 = new("CP891")
  CP903 = new("CP903")
  CP904 = new("CP904")
  CP912 = new("CP912")
  CP915 = new("CP915")
  CP916 = new("CP916")
  CP920 = new("CP920")
  CP922 = new("CP922")
  CP932 = new("CP932")
  CP936 = new("CP936")
  CP949 = new("CP949")
  CP950 = new("CP950")
  CPAR = new("CP-AR")
  CPGR = new("CP-GR")
  CPHU = new("CP-HU")
  CPIBM861 = new("CPIBM861")
  CSA71 = new("CSA7-1")
  CSA72 = new("CSA7-2")
  CSASCII = new("CSASCII")
  CSA_T500 = new("CSA_T500")
  CSA_T5001983 = new("CSA_T500-1983")
  CSA_Z243419851 = new("CSA_Z243.4-1985-1")
  CSA_Z243419852 = new("CSA_Z243.4-1985-2")
  CSEUCPKDFMTJAPANESE = new("CSEUCPKDFMTJAPANESE")
  CSGB2312 = new("CSGB2312")
  CSIBM851 = new("CSIBM851")
  CSIBM855 = new("CSIBM855")
  CSIBM857 = new("CSIBM857")
  CSIBM860 = new("CSIBM860")
  CSIBM863 = new("CSIBM863")
  CSIBM864 = new("CSIBM864")
  CSIBM865 = new("CSIBM865")
  CSIBM866 = new("CSIBM866")
  CSIBM868 = new("CSIBM868")
  CSIBM869 = new("CSIBM869")
  CSIBM891 = new("CSIBM891")
  CSIBM903 = new("CSIBM903")
  CSIBM904 = new("CSIBM904")
  CSISO10367BOX = new("CSISO10367BOX")
  CSISO103T618BIT = new("CSISO103T618BIT")
  CSISO10SWEDISH = new("CSISO10SWEDISH")
  CSISO11SWEDISHFORNAMES = new("CSISO11SWEDISHFORNAMES")
  CSISO121CANADIAN1 = new("CSISO121CANADIAN1")
  CSISO122CANADIAN2 = new("CSISO122CANADIAN2")
  CSISO139CSN369103 = new("CSISO139CSN369103")
  CSISO141JUSIB1002 = new("CSISO141JUSIB1002")
  CSISO143IECP271 = new("CSISO143IECP271")
  CSISO14JISC6220RO = new("CSISO14JISC6220RO")
  CSISO151CUBA = new("CSISO151CUBA")
  CSISO153GOST1976874 = new("CSISO153GOST1976874")
  CSISO15ITALIAN = new("CSISO15ITALIAN")
  CSISO16PORTUGESE = new("CSISO16PORTUGESE")
  CSISO17SPANISH = new("CSISO17SPANISH")
  CSISO21GERMAN = new("CSISO21GERMAN")
  CSISO25FRENCH = new("CSISO25FRENCH")
  CSISO49INIS = new("CSISO49INIS")
  CSISO4UNITEDKINGDOM = new("CSISO4UNITEDKINGDOM")
  CSISO58GB1988 = new("CSISO58GB1988")
  CSISO60DANISHNORWEGIAN = new("CSISO60DANISHNORWEGIAN")
  CSISO60NORWEGIAN1 = new("CSISO60NORWEGIAN1")
  CSISO61NORWEGIAN2 = new("CSISO61NORWEGIAN2")
  CSISO646DANISH = new("CSISO646DANISH")
  CSISO69FRENCH = new("CSISO69FRENCH")
  CSISO84PORTUGUESE2 = new("CSISO84PORTUGUESE2")
  CSISO85SPANISH2 = new("CSISO85SPANISH2")
  CSISO86HUNGARIAN = new("CSISO86HUNGARIAN")
  CSISO90 = new("CSISO90")
  CSISO92JISC62991984B = new("CSISO92JISC62991984B")
  CSISO99NAPLPS = new("CSISO99NAPLPS")
  CSISOLATIN1 = new("CSISOLATIN1")
  CSISOLATIN2 = new("CSISOLATIN2")
  CSISOLATIN3 = new("CSISOLATIN3")
  CSISOLATIN4 = new("CSISOLATIN4")
  CSISOLATIN5 = new("CSISOLATIN5")
  CSISOLATIN6 = new("CSISOLATIN6")
  CSISOLATINARABIC = new("CSISOLATINARABIC")
  CSISOLATINCYRILLIC = new("CSISOLATINCYRILLIC")
  CSISOLATINHEBREW = new("CSISOLATINHEBREW")
  CSKSC5636 = new("CSKSC5636")
  CSMACINTOSH = new("CSMACINTOSH")
  CSN_369103 = new("CSN_369103")
  CSPC775BALTIC = new("CSPC775BALTIC")
  CSPC850MULTILINGUAL = new("CSPC850MULTILINGUAL")
  CSPC862LATINHEBREW = new("CSPC862LATINHEBREW")
  CSPC8CODEPAGE437 = new("CSPC8CODEPAGE437")
  CSPCP852 = new("CSPCP852")
  CUBA = new("CUBA")
  CWI = new("CWI")
  CWI2 = new("CWI-2")
  CYRILLIC = new("CYRILLIC")
  C_1046 = new("1046")
  C_437 = new("437")
  C_850 = new("850")
  C_851 = new("851")
  C_852 = new("852")
  C_855 = new("855")
  C_856 = new("856")
  C_857 = new("857")
  C_860 = new("860")
  C_861 = new("861")
  C_862 = new("862")
  C_863 = new("863")
  C_864 = new("864")
  C_865 = new("865")
  C_866 = new("866")
  C_866NAV = new("866NAV")
  C_869 = new("869")
  C_874 = new("874")
  C_8859_1 = new("8859_1")
  C_8859_2 = new("8859_2")
  C_8859_3 = new("8859_3")
  C_8859_4 = new("8859_4")
  C_8859_5 = new("8859_5")
  C_8859_6 = new("8859_6")
  C_8859_7 = new("8859_7")
  C_8859_8 = new("8859_8")
  C_8859_9 = new("8859_9")
  C_904 = new("904")
  DE = new("DE")
  DEC = new("DEC")
  DECMCS = new("DEC-MCS")
  DIN_66003 = new("DIN_66003")
  DK = new("DK")
  DS_2089 = new("DS_2089")
  ECMA114 = new("ECMA-114")
  ECMA118 = new("ECMA-118")
  ECMA128 = new("ECMA-128")
  ECMACYRILLIC = new("ECMA-CYRILLIC")
  ELOT_928 = new("ELOT_928")
  ES = new("ES")
  ES2 = new("ES2")
  EUCCN = new("EUC-CN")
  EUCJISX0213 = new("EUC-JISX0213")
  EUCJP = new("EUC-JP")
  EUCJPMS = new("EUC-JP-MS")
  EUCKR = new("EUC-KR")
  EUCTW = new("EUC-TW")
  FI = new("FI")
  FR = new("FR")
  GB = new("GB")
  GB13000 = new("GB13000")
  GB18030 = new("GB18030")
  GB2312 = new("GB2312")
  GBK = new("GBK")
  GB_198880 = new("GB_1988-80")
  GEORGIANACADEMY = new("GEORGIAN-ACADEMY")
  GEORGIANPS = new("GEORGIAN-PS")
  GOST_19768 = new("GOST_19768")
  GOST_1976874 = new("GOST_19768-74")
  GREEK = new("GREEK")
  GREEK8 = new("GREEK8")
  HEBREW = new("HEBREW")
  HPROMAN8 = new("HP-ROMAN8")
  HU = new("HU")
  IBM1004 = new("IBM1004")
  IBM1046 = new("IBM-1046")
  IBM1089 = new("IBM1089")
  IBM1124 = new("IBM-1124")
  IBM1129 = new("IBM-1129")
  IBM1133 = new("IBM-1133")
  IBM1161 = new("IBM-1161")
  IBM1162 = new("IBM-1162")
  IBM1163 = new("IBM-1163")
  IBM367 = new("IBM367")
  IBM437 = new("IBM437")
  IBM775 = new("IBM775")
  IBM813 = new("IBM813")
  IBM819 = new("IBM819")
  IBM848 = new("IBM848")
  IBM850 = new("IBM850")
  IBM851 = new("IBM851")
  IBM852 = new("IBM852")
  IBM855 = new("IBM855")
  IBM856 = new("IBM-856")
  IBM857 = new("IBM857")
  IBM860 = new("IBM860")
  IBM861 = new("IBM861")
  IBM862 = new("IBM862")
  IBM863 = new("IBM863")
  IBM864 = new("IBM864")
  IBM865 = new("IBM865")
  IBM866 = new("IBM866")
  IBM866NAV = new("IBM866NAV")
  IBM868 = new("IBM868")
  IBM869 = new("IBM869")
  IBM874 = new("IBM874")
  IBM891 = new("IBM891")
  IBM903 = new("IBM903")
  IBM904 = new("IBM904")
  IBM912 = new("IBM912")
  IBM915 = new("IBM915")
  IBM916 = new("IBM916")
  IBM920 = new("IBM920")
  IBM922 = new("IBM-922")
  IBM932 = new("IBM-932")
  IBM943 = new("IBM-943")
  IEC_P271 = new("IEC_P27-1")
  INIS = new("INIS")
  ISIRI3342 = new("ISIRI-3342")
  ISO10646UTF8 = new("ISO-10646/UTF-8/")
  ISO2022CN = new("ISO-2022-CN")
  ISO2022CNEXT = new("ISO-2022-CN-EXT")
  ISO2022JP = new("ISO-2022-JP")
  ISO2022JP2 = new("ISO-2022-JP-2")
  ISO2022JP3 = new("ISO-2022-JP-3")
  ISO646CA = new("ISO646-CA")
  ISO646CA2 = new("ISO646-CA2")
  ISO646CN = new("ISO646-CN")
  ISO646CU = new("ISO646-CU")
  ISO646DE = new("ISO646-DE")
  ISO646DK = new("ISO646-DK")
  ISO646ES = new("ISO646-ES")
  ISO646ES2 = new("ISO646-ES2")
  ISO646FI = new("ISO646-FI")
  ISO646FR = new("ISO646-FR")
  ISO646FR1 = new("ISO646-FR1")
  ISO646GB = new("ISO646-GB")
  ISO646HU = new("ISO646-HU")
  ISO646IT = new("ISO646-IT")
  ISO646JP = new("ISO646-JP")
  ISO646JPOCRB = new("ISO646-JP-OCR-B")
  ISO646KR = new("ISO646-KR")
  ISO646NO = new("ISO646-NO")
  ISO646NO2 = new("ISO646-NO2")
  ISO646PT = new("ISO646-PT")
  ISO646PT2 = new("ISO646-PT2")
  ISO646SE = new("ISO646-SE")
  ISO646SE2 = new("ISO646-SE2")
  ISO646US = new("ISO646-US")
  ISO646YU = new("ISO646-YU")
  ISO6937 = new("ISO6937")
  ISO88591 = new("ISO-8859-1")
  ISO885910 = new("ISO-8859-10")
  ISO885911 = new("ISO-8859-11")
  ISO885913 = new("ISO-8859-13")
  ISO885914 = new("ISO-8859-14")
  ISO885915 = new("ISO-8859-15")
  ISO885916 = new("ISO-8859-16")
  ISO88592 = new("ISO-8859-2")
  ISO88593 = new("ISO-8859-3")
  ISO88594 = new("ISO-8859-4")
  ISO88595 = new("ISO-8859-5")
  ISO88596 = new("ISO-8859-6")
  ISO88597 = new("ISO-8859-7")
  ISO88598 = new("ISO-8859-8")
  ISO88599 = new("ISO-8859-9")
  ISOCELTIC = new("ISO-CELTIC")
  ISOIR10 = new("ISO-IR-10")
  ISOIR100 = new("ISO-IR-100")
  ISOIR101 = new("ISO-IR-101")
  ISOIR103 = new("ISO-IR-103")
  ISOIR109 = new("ISO-IR-109")
  ISOIR11 = new("ISO-IR-11")
  ISOIR110 = new("ISO-IR-110")
  ISOIR111 = new("ISO-IR-111")
  ISOIR121 = new("ISO-IR-121")
  ISOIR122 = new("ISO-IR-122")
  ISOIR126 = new("ISO-IR-126")
  ISOIR127 = new("ISO-IR-127")
  ISOIR138 = new("ISO-IR-138")
  ISOIR139 = new("ISO-IR-139")
  ISOIR14 = new("ISO-IR-14")
  ISOIR141 = new("ISO-IR-141")
  ISOIR143 = new("ISO-IR-143")
  ISOIR144 = new("ISO-IR-144")
  ISOIR148 = new("ISO-IR-148")
  ISOIR15 = new("ISO-IR-15")
  ISOIR151 = new("ISO-IR-151")
  ISOIR153 = new("ISO-IR-153")
  ISOIR155 = new("ISO-IR-155")
  ISOIR156 = new("ISO-IR-156")
  ISOIR157 = new("ISO-IR-157")
  ISOIR16 = new("ISO-IR-16")
  ISOIR166 = new("ISO-IR-166")
  ISOIR17 = new("ISO-IR-17")
  ISOIR179 = new("ISO-IR-179")
  ISOIR19 = new("ISO-IR-19")
  ISOIR193 = new("ISO-IR-193")
  ISOIR197 = new("ISO-IR-197")
  ISOIR199 = new("ISO-IR-199")
  ISOIR203 = new("ISO-IR-203")
  ISOIR209 = new("ISO-IR-209")
  ISOIR21 = new("ISO-IR-21")
  ISOIR226 = new("ISO-IR-226")
  ISOIR25 = new("ISO-IR-25")
  ISOIR27 = new("ISO-IR-27")
  ISOIR4 = new("ISO-IR-4")
  ISOIR49 = new("ISO-IR-49")
  ISOIR57 = new("ISO-IR-57")
  ISOIR6 = new("ISO-IR-6")
  ISOIR60 = new("ISO-IR-60")
  ISOIR61 = new("ISO-IR-61")
  ISOIR69 = new("ISO-IR-69")
  ISOIR81 = new("ISO-IR-8-1")
  ISOIR84 = new("ISO-IR-84")
  ISOIR85 = new("ISO-IR-85")
  ISOIR86 = new("ISO-IR-86")
  ISOIR90 = new("ISO-IR-90")
  ISOIR91 = new("ISO-IR-9-1")
  ISOIR92 = new("ISO-IR-92")
  ISOIR99 = new("ISO-IR-99")
  ISO_10367BOX = new("ISO_10367-BOX")
  ISO_6937 = new("ISO_6937")
  ISO_69372 = new("ISO_6937-2")
  IT = new("IT")
  JIS_C62201969RO = new("JIS_C6220-1969-RO")
  JIS_C62291984B = new("JIS_C6229-1984-B")
  JOHAB = new("JOHAB")
  JP = new("JP")
  JPOCRB = new("JP-OCR-B")
  JS = new("JS")
  JUS_IB1002 = new("JUS_I.B1.002")
  KOI8 = new("KOI-8")
  KSC5636 = new("KSC5636")
  L1 = new("L1")
  L10 = new("L10")
  L2 = new("L2")
  L3 = new("L3")
  L4 = new("L4")
  L5 = new("L5")
  L6 = new("L6")
  L7 = new("L7")
  L8 = new("L8")
  LATIN1 = new("LATIN1")
  LATIN10 = new("LATIN10")
  LATIN2 = new("LATIN2")
  LATIN3 = new("LATIN3")
  LATIN4 = new("LATIN4")
  LATIN5 = new("LATIN5")
  LATIN6 = new("LATIN6")
  LATIN7 = new("LATIN7")
  LATIN8 = new("LATIN8")
  LATIN9 = new("LATIN-9")
  LATINGREEK = new("LATIN-GREEK")
  LATINGREEK1 = new("LATIN-GREEK-1")
  MAC = new("MAC")
  MACCYRILLIC = new("MAC-CYRILLIC")
  MACINTOSH = new("MACINTOSH")
  MACIS = new("MAC-IS")
  MACSAMI = new("MAC-SAMI")
  MACUK = new("MAC-UK")
  MS932 = new("MS932")
  MS936 = new("MS936")
  MSANSI = new("MS-ANSI")
  MSARAB = new("MS-ARAB")
  MSCP1361 = new("MSCP1361")
  MSCP949 = new("MSCP949")
  MSCYRL = new("MS-CYRL")
  MSEE = new("MS-EE")
  MSGREEK = new("MS-GREEK")
  MSHEBR = new("MS-HEBR")
  MSMACCYRILLIC = new("MS-MAC-CYRILLIC")
  MSTURK = new("MS-TURK")
  MSZ_77953 = new("MSZ_7795.3")
  MS_KANJI = new("MS_KANJI")
  NAPLPS = new("NAPLPS")
  NATSDANO = new("NATS-DANO")
  NATSSEFI = new("NATS-SEFI")
  NC_NC0010 = new("NC_NC00-10")
  NF_Z_62010 = new("NF_Z_62-010")
  NF_Z_62010_1973 = new("NF_Z_62-010_1973")
  NF_Z_62010_1973_2 = new("NF_Z_62-010_(1973)")
  NO = new("NO")
  NO2 = new("NO2")
  NS_45511 = new("NS_4551-1")
  NS_45512 = new("NS_4551-2")
  OS2LATIN1 = new("OS2LATIN1")
  OSF00010001 = new("OSF00010001")
  OSF00010002 = new("OSF00010002")
  OSF00010003 = new("OSF00010003")
  OSF00010004 = new("OSF00010004")
  OSF00010005 = new("OSF00010005")
  OSF00010006 = new("OSF00010006")
  OSF00010007 = new("OSF00010007")
  OSF00010008 = new("OSF00010008")
  OSF00010009 = new("OSF00010009")
  OSF0001000A = new("OSF0001000A")
  OSF00010020 = new("OSF00010020")
  OSF00030010 = new("OSF00030010")
  OSF0004000A = new("OSF0004000A")
  OSF0005000A = new("OSF0005000A")
  OSF05010001 = new("OSF05010001")
  OSF10010001 = new("OSF10010001")
  OSF100201B5 = new("OSF100201B5")
  OSF10020352 = new("OSF10020352")
  OSF10020354 = new("OSF10020354")
  OSF10020357 = new("OSF10020357")
  OSF10020359 = new("OSF10020359")
  OSF1002035D = new("OSF1002035D")
  OSF1002035E = new("OSF1002035E")
  OSF1002035F = new("OSF1002035F")
  OSF10020360 = new("OSF10020360")
  OSF10020364 = new("OSF10020364")
  OSF10020365 = new("OSF10020365")
  OSF1002037B = new("OSF1002037B")
  OSF10020387 = new("OSF10020387")
  OSF10020388 = new("OSF10020388")
  OSF100203B5 = new("OSF100203B5")
  PT = new("PT")
  PT2 = new("PT2")
  R8 = new("R8")
  ROMAN8 = new("ROMAN8")
  RUSCII = new("RUSCII")
  SE = new("SE")
  SE2 = new("SE2")
  SEN_850200_B = new("SEN_850200_B")
  SEN_850200_C = new("SEN_850200_C")
  SHIFTJIS = new("SHIFT-JIS")
  SJIS = new("SJIS")
  SJISOPEN = new("SJIS-OPEN")
  SJISWIN = new("SJIS-WIN")
  SS636127 = new("SS636127")
  ST_SEV_35888 = new("ST_SEV_358-88")
  T61 = new("T.61")
  T618BIT = new("T.61-8BIT")
  TCVN = new("TCVN")
  TCVN5712 = new("TCVN-5712")
  TIS620 = new("TIS-620")
  TS5881 = new("TS-5881")
  TSCII = new("TSCII")
  UHC = new("UHC")
  UJIS = new("UJIS")
  UK = new("UK")
  US = new("US")
  USASCII = new("US-ASCII")
  UTF7 = new("UTF-7")
  UTF8 = new("UTF-8")
  VISCII = new("VISCII")
  WINBALTRIM = new("WINBALTRIM")
  WINDOWS1250 = new("WINDOWS-1250")
  WINDOWS1251 = new("WINDOWS-1251")
  WINDOWS1252 = new("WINDOWS-1252")
  WINDOWS1253 = new("WINDOWS-1253")
  WINDOWS1254 = new("WINDOWS-1254")
  WINDOWS1255 = new("WINDOWS-1255")
  WINDOWS1256 = new("WINDOWS-1256")
  WINDOWS1257 = new("WINDOWS-1257")
  WINDOWS1258 = new("WINDOWS-1258")
  WINDOWS31J = new("WINDOWS-31J")
  WINDOWS850 = new("WINDOWS-850")
  WINDOWS874 = new("WINDOWS-874")
  WINDOWS936 = new("WINDOWS-936")
  WINSAMI2 = new("WIN-SAMI-2")
  WS2 = new("WS2")
  YU = new("YU")
end

# {http://www.strongmail.com/services/2009/03/02/schema}Encoding
class MSEncoding < ::String
  BASE64 = new("BASE64")
  EIGHT_BIT = new("EIGHT_BIT")
  QUOTED_PRINTABLE = new("QUOTED_PRINTABLE")
  SEVEN_BIT = new("SEVEN_BIT")
end

# {http://www.strongmail.com/services/2009/03/02/schema}FaultCode
class FaultCode < ::String
  BAD_HANDLE = new("BAD_HANDLE")
  CONCURRENT_MODIFICATION = new("CONCURRENT_MODIFICATION")
  DUPLICATE_NAME = new("DUPLICATE_NAME")
  INVALID_OBJECT = new("INVALID_OBJECT")
  INVALID_VERSION = new("INVALID_VERSION")
  MISMATCHED_MAILING_TYPE = new("MISMATCHED_MAILING_TYPE")
  MISMATCHED_ORGANIZATION_ID = new("MISMATCHED_ORGANIZATION_ID")
  MISMATCHED_USER_ID = new("MISMATCHED_USER_ID")
  MISSING_OBJECT_ID = new("MISSING_OBJECT_ID")
  NO_PERMISSION = new("NO_PERMISSION")
  OBJECT_NOT_FOUND = new("OBJECT_NOT_FOUND")
  STALE_OBJECT = new("STALE_OBJECT")
  UNEXPECTED_ERROR = new("UNEXPECTED_ERROR")
  UNRECOGNIZED_OBJECT_TYPE = new("UNRECOGNIZED_OBJECT_TYPE")
end
