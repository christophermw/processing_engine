require 'MailingService.rb'
require 'soap/mapping'

module MailingServiceMappingRegistry
  EncodedRegistry = ::SOAP::Mapping::EncodedRegistry.new
  LiteralRegistry = ::SOAP::Mapping::LiteralRegistry.new
  NsSchema = "http://www.strongmail.com/services/2009/03/02/schema"

  EncodedRegistry.register(
    :class => GetSingleSignOnURLRequest,
    :schema_type => XSD::QName.new(NsSchema, "GetSingleSignOnURLRequest"),
    :schema_element => []
  )

  EncodedRegistry.register(
    :class => GetSingleSignOnURLResponse,
    :schema_type => XSD::QName.new(NsSchema, "GetSingleSignOnURLResponse"),
    :schema_basetype => XSD::QName.new(NsSchema, "Response"),
    :schema_element => [
      ["url", "SOAP::SOAPString"]
    ]
  )

  EncodedRegistry.register(
    :class => InternalDataSourceId,
    :schema_type => XSD::QName.new(NsSchema, "InternalDataSourceId"),
    :schema_basetype => XSD::QName.new(NsSchema, "DataSourceId"),
    :schema_element => [
      ["id", "SOAP::SOAPString"]
    ]
  )

  EncodedRegistry.register(
    :class => ExternalDataSourceId,
    :schema_type => XSD::QName.new(NsSchema, "ExternalDataSourceId"),
    :schema_basetype => XSD::QName.new(NsSchema, "DataSourceId"),
    :schema_element => [
      ["id", "SOAP::SOAPString"]
    ]
  )

  EncodedRegistry.register(
    :class => InternalDataSourceExtnId,
    :schema_type => XSD::QName.new(NsSchema, "InternalDataSourceExtnId"),
    :schema_basetype => XSD::QName.new(NsSchema, "DataSourceId"),
    :schema_element => [
      ["id", "SOAP::SOAPString"]
    ]
  )

  EncodedRegistry.register(
    :class => ExtensionId,
    :schema_type => XSD::QName.new(NsSchema, "ExtensionId"),
    :schema_basetype => XSD::QName.new(NsSchema, "DataSourceId"),
    :schema_element => [
      ["id", "SOAP::SOAPString"]
    ]
  )

  EncodedRegistry.register(
    :class => CatalogId,
    :schema_type => XSD::QName.new(NsSchema, "CatalogId"),
    :schema_basetype => XSD::QName.new(NsSchema, "ExtensionId"),
    :schema_element => [
      ["id", "SOAP::SOAPString"]
    ]
  )

  EncodedRegistry.register(
    :class => InternalDataSource,
    :schema_type => XSD::QName.new(NsSchema, "InternalDataSource"),
    :schema_basetype => XSD::QName.new(NsSchema, "DataSource"),
    :schema_element => [
      ["modifiedTime", "SOAP::SOAPDateTime", [0, 1]],
      ["objectId", "ObjectId", [0, 1]],
      ["version", "SOAP::SOAPInt", [0, 1]],
      ["campaignId", "CampaignId", [0, 1]],
      ["createdTime", "SOAP::SOAPDateTime", [0, 1]],
      ["description", "SOAP::SOAPString", [0, 1]],
      ["field", "DataSourceField[]", [0, nil]],
      ["name", "SOAP::SOAPString"],
      ["operationStatus", "DataSourceOperationStatus", [0, 1]],
      ["organizationId", "OrganizationId", [0, 1]],
      ["ownerId", "UserId", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Extension,
    :schema_type => XSD::QName.new(NsSchema, "Extension"),
    :schema_basetype => XSD::QName.new(NsSchema, "DataSource"),
    :schema_element => [
      ["modifiedTime", "SOAP::SOAPDateTime", [0, 1]],
      ["objectId", "ObjectId", [0, 1]],
      ["version", "SOAP::SOAPInt", [0, 1]],
      ["campaignId", "CampaignId", [0, 1]],
      ["createdTime", "SOAP::SOAPDateTime", [0, 1]],
      ["description", "SOAP::SOAPString", [0, 1]],
      ["field", "DataSourceField[]", [0, nil]],
      ["name", "SOAP::SOAPString"],
      ["operationStatus", "DataSourceOperationStatus", [0, 1]],
      ["organizationId", "OrganizationId", [0, 1]],
      ["ownerId", "UserId", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Catalog,
    :schema_type => XSD::QName.new(NsSchema, "Catalog"),
    :schema_basetype => XSD::QName.new(NsSchema, "Extension"),
    :schema_element => [
      ["modifiedTime", "SOAP::SOAPDateTime", [0, 1]],
      ["objectId", "ObjectId", [0, 1]],
      ["version", "SOAP::SOAPInt", [0, 1]],
      ["campaignId", "CampaignId", [0, 1]],
      ["createdTime", "SOAP::SOAPDateTime", [0, 1]],
      ["description", "SOAP::SOAPString", [0, 1]],
      ["field", "DataSourceField[]", [0, nil]],
      ["name", "SOAP::SOAPString"],
      ["operationStatus", "DataSourceOperationStatus", [0, 1]],
      ["organizationId", "OrganizationId", [0, 1]],
      ["ownerId", "UserId", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => InternalDataSourceExtn,
    :schema_type => XSD::QName.new(NsSchema, "InternalDataSourceExtn"),
    :schema_basetype => XSD::QName.new(NsSchema, "DataSource"),
    :schema_element => [
      ["modifiedTime", "SOAP::SOAPDateTime", [0, 1]],
      ["objectId", "ObjectId", [0, 1]],
      ["version", "SOAP::SOAPInt", [0, 1]],
      ["campaignId", "CampaignId", [0, 1]],
      ["createdTime", "SOAP::SOAPDateTime", [0, 1]],
      ["description", "SOAP::SOAPString", [0, 1]],
      ["field", "DataSourceField[]", [0, nil]],
      ["name", "SOAP::SOAPString"],
      ["operationStatus", "DataSourceOperationStatus", [0, 1]],
      ["organizationId", "OrganizationId", [0, 1]],
      ["ownerId", "UserId", [0, 1]],
      ["importFrequency", "DataSourceImportFrequency", [0, 1]],
      ["startTime", "SOAP::SOAPString", [0, 1]],
      ["hourlyInterval", "SOAP::SOAPLong", [0, 1]],
      ["weeklyDays", "DayOfWeek[]", [0, nil]],
      ["importMode", "DataSourceImportMode", [0, 1]],
      ["useFTP", "SOAP::SOAPBoolean"]
    ]
  )

  EncodedRegistry.register(
    :class => ExternalDataSource,
    :schema_type => XSD::QName.new(NsSchema, "ExternalDataSource"),
    :schema_basetype => XSD::QName.new(NsSchema, "DataSource"),
    :schema_element => [
      ["modifiedTime", "SOAP::SOAPDateTime", [0, 1]],
      ["objectId", "ObjectId", [0, 1]],
      ["version", "SOAP::SOAPInt", [0, 1]],
      ["campaignId", "CampaignId", [0, 1]],
      ["createdTime", "SOAP::SOAPDateTime", [0, 1]],
      ["description", "SOAP::SOAPString", [0, 1]],
      ["field", "DataSourceField[]", [0, nil]],
      ["name", "SOAP::SOAPString"],
      ["operationStatus", "DataSourceOperationStatus", [0, 1]],
      ["organizationId", "OrganizationId", [0, 1]],
      ["ownerId", "UserId", [0, 1]],
      ["connectionInfo", "ExternalDataSource::ConnectionInfo"],
      ["enableLocalCopy", "SOAP::SOAPBoolean"],
      [ :choice,
        ["tableName", "SOAP::SOAPString"],
        [
          ["allowRefreshAtLaunchTime", "SOAP::SOAPBoolean"],
          [ :choice,
            ["hourlyRefresh", "ExternalDataSource::HourlyRefresh"],
            ["dailyRefresh", "ExternalDataSource::DailyRefresh"],
            ["weeklyRefresh", "ExternalDataSource::WeeklyRefresh"]
          ],
          ["writebackTable", "SOAP::SOAPString", [0, 1]],
          [ :choice,
            ["advancedQuery", "SOAP::SOAPString"],
            ["sourceTableName", "SOAP::SOAPString"]
          ]
        ]
      ]
    ]
  )

  EncodedRegistry.register(
    :class => ExternalDataSource::ConnectionInfo,
    :schema_name => XSD::QName.new(NsSchema, "connectionInfo"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["databaseName", "SOAP::SOAPString"],
      ["databaseType", "DatabaseType"],
      ["hostname", "SOAP::SOAPString"],
      ["password", "SOAP::SOAPString", [0, 1]],
      ["port", "SOAP::SOAPString"],
      ["username", "SOAP::SOAPString"]
    ]
  )

  EncodedRegistry.register(
    :class => ExternalDataSource::HourlyRefresh,
    :schema_name => XSD::QName.new(NsSchema, "hourlyRefresh"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["interval", nil]
    ]
  )

  EncodedRegistry.register(
    :class => ExternalDataSource::DailyRefresh,
    :schema_name => XSD::QName.new(NsSchema, "dailyRefresh"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["startTime", "SOAP::SOAPTime"]
    ]
  )

  EncodedRegistry.register(
    :class => ExternalDataSource::WeeklyRefresh,
    :schema_name => XSD::QName.new(NsSchema, "weeklyRefresh"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["startTime", "SOAP::SOAPTime"],
      ["day", "DayOfWeek[]", [1, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => DataSourceField,
    :schema_type => XSD::QName.new(NsSchema, "DataSourceField"),
    :schema_element => [
      ["dataType", "DataSourceDataType"],
      ["fieldType", "DataSourceFieldType"],
      ["name", "SOAP::SOAPString"],
      ["isPrimaryKey", "SOAP::SOAPBoolean"],
      ["writebackEnabled", "SOAP::SOAPBoolean"]
    ]
  )

  EncodedRegistry.register(
    :class => DataSourceRecord,
    :schema_type => XSD::QName.new(NsSchema, "DataSourceRecord"),
    :schema_element => [
      ["field", "NameValuePair[]", [1, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => DataSourceFilter,
    :schema_type => XSD::QName.new(NsSchema, "DataSourceFilter"),
    :schema_basetype => XSD::QName.new(NsSchema, "BaseFilter"),
    :schema_element => [
      ["isAscending", "SOAP::SOAPBoolean", [0, 1]],
      ["pageNumber", "SOAP::SOAPInt", [0, 1]],
      ["recordsPerPage", "SOAP::SOAPInt", [0, 1]],
      ["maxRecordsPerPage", "SOAP::SOAPInt", [0, 1]],
      ["campaignIdCondition", "ScalarIdFilterCondition", [0, 1]],
      ["nameCondition", "ScalarStringFilterCondition", [0, 1]],
      ["typeCondition", "ScalarStringFilterCondition"],
      ["userIdCondition", "ScalarIdFilterCondition", [0, 1]],
      ["orderBy", "DataSourceOrderBy[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AddDataSourceRecordsRequest,
    :schema_type => XSD::QName.new(NsSchema, "AddDataSourceRecordsRequest"),
    :schema_basetype => XSD::QName.new(NsSchema, "AddRecordsRequest"),
    :schema_element => [
      ["dataSourceId", "DataSourceId"],
      ["containsFieldNames", "SOAP::SOAPBoolean", [0, 1]],
      ["fieldDelimiter", "SOAP::SOAPString", [0, 1]],
      [ :choice,
        ["dataSourceRecord", "DataSourceRecord[]", [1, nil]],
        ["ftpFileName", "SOAP::SOAPString"],
        ["dataSourceRecordsAttachment", "SOAP::SOAPBase64"]
      ]
    ]
  )

  EncodedRegistry.register(
    :class => UpsertDataSourceRecordsRequest,
    :schema_type => XSD::QName.new(NsSchema, "UpsertDataSourceRecordsRequest"),
    :schema_basetype => XSD::QName.new(NsSchema, "UpsertRecordsRequest"),
    :schema_element => [
      ["dataSourceId", "DataSourceId"],
      ["dataSourceRecord", "DataSourceRecord[]", [1, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => ImportFtpFileRequest,
    :schema_type => XSD::QName.new(NsSchema, "ImportFtpFileRequest"),
    :schema_element => [
      ["dataSourceId", "DataSourceId"],
      ["containsFieldNames", "SOAP::SOAPBoolean", [0, 1]],
      ["fieldDelimiter", "SOAP::SOAPString", [0, 1]],
      ["ftpFileName", "SOAP::SOAPString"],
      ["importMode", "ImportType"]
    ]
  )

  EncodedRegistry.register(
    :class => GetDataSourceRecordsRequest,
    :schema_type => XSD::QName.new(NsSchema, "GetDataSourceRecordsRequest"),
    :schema_basetype => XSD::QName.new(NsSchema, "GetRecordsRequest"),
    :schema_element => [
      ["dataSourceId", "DataSourceId"],
      ["matchFields", "NameValuePair[]", [1, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => GetDataSourceRecordsResponse,
    :schema_type => XSD::QName.new(NsSchema, "GetDataSourceRecordsResponse"),
    :schema_basetype => XSD::QName.new(NsSchema, "GetRecordsResponse"),
    :schema_element => [
      ["dataSourceRecord", "DataSourceRecord[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => RemoveDataSourceRecordsRequest,
    :schema_type => XSD::QName.new(NsSchema, "RemoveDataSourceRecordsRequest"),
    :schema_basetype => XSD::QName.new(NsSchema, "RemoveRecordsRequest"),
    :schema_element => [
      ["dataSourceId", "DataSourceId"],
      ["matchFieldName", "SOAP::SOAPString"],
      [ :choice,
        ["record", "SOAP::SOAPString[]", [1, nil]],
        ["recordsAttachment", "SOAP::SOAPBase64"]
      ]
    ]
  )

  EncodedRegistry.register(
    :class => ExportDataSourceRecordsRequest,
    :schema_type => XSD::QName.new(NsSchema, "ExportDataSourceRecordsRequest"),
    :schema_basetype => XSD::QName.new(NsSchema, "ExportRecordsRequest"),
    :schema_element => [
      ["dataSourceId", "DataSourceId"],
      ["useMalformedRecords", "SOAP::SOAPBoolean"],
      ["fieldDelimiter", "SOAP::SOAPString"],
      ["rowDelimiter", "SOAP::SOAPString"]
    ]
  )

  EncodedRegistry.register(
    :class => CopyDataSourceRequest,
    :schema_type => XSD::QName.new(NsSchema, "CopyDataSourceRequest"),
    :schema_basetype => XSD::QName.new(NsSchema, "CopyRequest"),
    :schema_element => [
      ["newName", "SOAP::SOAPString"],
      [ :choice,
        ["fromId", "InternalDataSourceId"],
        ["fromExtnId", "ExtensionId"]
      ]
    ]
  )

  EncodedRegistry.register(
    :class => DedupeDataSourceRecordsRequest,
    :schema_type => XSD::QName.new(NsSchema, "DedupeDataSourceRecordsRequest"),
    :schema_basetype => XSD::QName.new(NsSchema, "DedupeRecordsRequest"),
    :schema_element => [
      ["matchField", "SOAP::SOAPString[]", [1, nil]],
      ["dataSourceId", "DataSourceId"],
      ["option", "DataSourceDedupeOption"]
    ]
  )

  EncodedRegistry.register(
    :class => DedupeRecordsResponse,
    :schema_type => XSD::QName.new(NsSchema, "DedupeRecordsResponse"),
    :schema_basetype => XSD::QName.new(NsSchema, "Response"),
    :schema_element => [
      ["success", "SOAP::SOAPBoolean"]
    ]
  )

  EncodedRegistry.register(
    :class => GetDataSourceStatisticsRequest,
    :schema_type => XSD::QName.new(NsSchema, "GetDataSourceStatisticsRequest"),
    :schema_basetype => XSD::QName.new(NsSchema, "GetStatisticsRequest"),
    :schema_element => [
      ["dataSourceId", "DataSourceId"]
    ]
  )

  EncodedRegistry.register(
    :class => GetDataSourceStatisticsResponse,
    :schema_type => XSD::QName.new(NsSchema, "GetDataSourceStatisticsResponse"),
    :schema_basetype => XSD::QName.new(NsSchema, "GetStatisticsResponse"),
    :schema_element => [
      ["totalInvalidRecords", "SOAP::SOAPInt", [0, 1]],
      ["totalMalformedRecords", "SOAP::SOAPInt", [0, 1]],
      ["totalRecords", "SOAP::SOAPInt", [0, 1]],
      ["totalUnsubscribedRecords", "SOAP::SOAPInt", [0, 1]],
      ["lastRefresh", "SOAP::SOAPDateTime", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => RefreshRecordsRequest,
    :schema_type => XSD::QName.new(NsSchema, "RefreshRecordsRequest"),
    :schema_element => [
      ["dataSourceId", "ExternalDataSourceId"]
    ]
  )

  EncodedRegistry.register(
    :class => RefreshRecordsResponse,
    :schema_type => XSD::QName.new(NsSchema, "RefreshRecordsResponse"),
    :schema_basetype => XSD::QName.new(NsSchema, "Response"),
    :schema_element => [
      ["success", "SOAP::SOAPBoolean"]
    ]
  )

  EncodedRegistry.register(
    :class => CancelRefreshRecordsRequest,
    :schema_type => XSD::QName.new(NsSchema, "CancelRefreshRecordsRequest"),
    :schema_element => [
      ["dataSourceId", "ExternalDataSourceId"]
    ]
  )

  EncodedRegistry.register(
    :class => CancelRefreshRecordsResponse,
    :schema_type => XSD::QName.new(NsSchema, "CancelRefreshRecordsResponse"),
    :schema_basetype => XSD::QName.new(NsSchema, "Response"),
    :schema_element => [
      ["success", "SOAP::SOAPBoolean"]
    ]
  )

  EncodedRegistry.register(
    :class => RecurringImportResult,
    :schema_type => XSD::QName.new(NsSchema, "RecurringImportResult"),
    :schema_element => [
      ["importType", "RecurringImportType"],
      ["importFrom", "SOAP::SOAPString"],
      ["status", "RecurringImportStatus"],
      ["startTime", "SOAP::SOAPDateTime"],
      ["endTime", "SOAP::SOAPDateTime", [0, 1]],
      ["recordsAdded", "SOAP::SOAPInteger"],
      ["recordsUpdated", "SOAP::SOAPInteger"],
      ["recordsMalformed", "SOAP::SOAPInteger"],
      ["errorMessage", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => RecurringImportId,
    :schema_type => XSD::QName.new(NsSchema, "RecurringImportId"),
    :schema_basetype => XSD::QName.new(NsSchema, "ObjectId"),
    :schema_element => [
      ["id", "SOAP::SOAPString"]
    ]
  )

  EncodedRegistry.register(
    :class => FtpImportId,
    :schema_type => XSD::QName.new(NsSchema, "FtpImportId"),
    :schema_basetype => XSD::QName.new(NsSchema, "RecurringImportId"),
    :schema_element => [
      ["id", "SOAP::SOAPString"]
    ]
  )

  EncodedRegistry.register(
    :class => DatabaseImportId,
    :schema_type => XSD::QName.new(NsSchema, "DatabaseImportId"),
    :schema_basetype => XSD::QName.new(NsSchema, "RecurringImportId"),
    :schema_element => [
      ["id", "SOAP::SOAPString"]
    ]
  )

  EncodedRegistry.register(
    :class => DatabaseImport,
    :schema_type => XSD::QName.new(NsSchema, "DatabaseImport"),
    :schema_basetype => XSD::QName.new(NsSchema, "RecurringImport"),
    :schema_element => [
      ["modifiedTime", "SOAP::SOAPDateTime", [0, 1]],
      ["objectId", "ObjectId", [0, 1]],
      ["version", "SOAP::SOAPInt", [0, 1]],
      ["name", "SOAP::SOAPString"],
      ["importTo", "InternalDataSourceId"],
      ["importResult", "RecurringImportResult[]", [0, 10]],
      ["importFrom", "ExternalDataSourceId"]
    ]
  )

  EncodedRegistry.register(
    :class => FtpImport,
    :schema_type => XSD::QName.new(NsSchema, "FtpImport"),
    :schema_basetype => XSD::QName.new(NsSchema, "RecurringImport"),
    :schema_element => [
      ["modifiedTime", "SOAP::SOAPDateTime", [0, 1]],
      ["objectId", "ObjectId", [0, 1]],
      ["version", "SOAP::SOAPInt", [0, 1]],
      ["name", "SOAP::SOAPString"],
      ["importTo", "InternalDataSourceId"],
      ["importResult", "RecurringImportResult[]", [0, 10]],
      ["fileNamePrefix", "SOAP::SOAPString"],
      ["fileNameSuffix", "SOAP::SOAPString"]
    ]
  )

  EncodedRegistry.register(
    :class => StartRecurringImportRequest,
    :schema_type => XSD::QName.new(NsSchema, "StartRecurringImportRequest"),
    :schema_element => [
      ["importId", "RecurringImportId"],
      ["fullRefresh", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => StartRecurringImportResponse,
    :schema_type => XSD::QName.new(NsSchema, "StartRecurringImportResponse"),
    :schema_basetype => XSD::QName.new(NsSchema, "Response"),
    :schema_element => [
      ["success", "SOAP::SOAPBoolean"]
    ]
  )

  EncodedRegistry.register(
    :class => GetRecurringImportStatusRequest,
    :schema_type => XSD::QName.new(NsSchema, "GetRecurringImportStatusRequest"),
    :schema_element => [
      [ :choice,
        ["internalDataSourceId", "InternalDataSourceId"],
        ["extensionId", "ExtensionId"]
      ]
    ]
  )

  EncodedRegistry.register(
    :class => GetRecurringImportStatusResponse,
    :schema_type => XSD::QName.new(NsSchema, "GetRecurringImportStatusResponse"),
    :schema_basetype => XSD::QName.new(NsSchema, "Response"),
    :schema_element => [
      ["importResult", "RecurringImportResult[]", [0, 10]]
    ]
  )

  EncodedRegistry.register(
    :class => FindRecurringImportRequest,
    :schema_type => XSD::QName.new(NsSchema, "FindRecurringImportRequest"),
    :schema_element => [
      [ :choice,
        ["internalDataSourceId", "InternalDataSourceId"],
        ["extensionId", "ExtensionId"]
      ]
    ]
  )

  EncodedRegistry.register(
    :class => FindRecurringImportResponse,
    :schema_type => XSD::QName.new(NsSchema, "FindRecurringImportResponse"),
    :schema_basetype => XSD::QName.new(NsSchema, "Response"),
    :schema_element => [
      ["importId", "RecurringImportId[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => GetRecurringImportRequest,
    :schema_type => XSD::QName.new(NsSchema, "GetRecurringImportRequest"),
    :schema_element => [
      ["importId", "RecurringImportId"]
    ]
  )

  EncodedRegistry.register(
    :class => GetRecurringImportResponse,
    :schema_type => XSD::QName.new(NsSchema, "GetRecurringImportResponse"),
    :schema_basetype => XSD::QName.new(NsSchema, "Response"),
    :schema_element => [
      ["importDetails", "RecurringImport"]
    ]
  )

  EncodedRegistry.register(
    :class => TargetId,
    :schema_type => XSD::QName.new(NsSchema, "TargetId"),
    :schema_basetype => XSD::QName.new(NsSchema, "ObjectId"),
    :schema_element => [
      ["id", "SOAP::SOAPString"]
    ]
  )

  EncodedRegistry.register(
    :class => Target,
    :schema_type => XSD::QName.new(NsSchema, "Target"),
    :schema_basetype => XSD::QName.new(NsSchema, "BaseObject"),
    :schema_element => [
      ["modifiedTime", "SOAP::SOAPDateTime", [0, 1]],
      ["objectId", "ObjectId", [0, 1]],
      ["version", "SOAP::SOAPInt", [0, 1]],
      ["advancedQuery", "SOAP::SOAPString", [0, 1]],
      ["bounceFieldName", "SOAP::SOAPString", [0, 1]],
      ["campaignId", "CampaignId", [0, 1]],
      ["dataSourceId", "DataSourceId"],
      ["emailAddressFieldName", "SOAP::SOAPString", [0, 1]],
      ["excludeBounce", "SOAP::SOAPBoolean"],
      ["excludeUnsubscribe", "SOAP::SOAPBoolean"],
      ["smsAddressFieldName", "SOAP::SOAPString", [0, 1]],
      ["totalRecords", "SOAP::SOAPInt", [0, 1]],
      ["type", "TargetType"],
      ["retargetingDataSourceId", "DataSourceId", [0, 1]],
      ["unsubscribeFieldName", "SOAP::SOAPString", [0, 1]],
      ["createdTime", "SOAP::SOAPDateTime", [0, 1]],
      ["description", "SOAP::SOAPString", [0, 1]],
      ["name", "SOAP::SOAPString"],
      ["organizationId", "OrganizationId", [0, 1]],
      ["ownerId", "UserId", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => TargetFilter,
    :schema_type => XSD::QName.new(NsSchema, "TargetFilter"),
    :schema_basetype => XSD::QName.new(NsSchema, "BaseFilter"),
    :schema_element => [
      ["isAscending", "SOAP::SOAPBoolean", [0, 1]],
      ["pageNumber", "SOAP::SOAPInt", [0, 1]],
      ["recordsPerPage", "SOAP::SOAPInt", [0, 1]],
      ["maxRecordsPerPage", "SOAP::SOAPInt", [0, 1]],
      ["campaignIdCondition", "ScalarIdFilterCondition", [0, 1]],
      ["dataSourceIdCondition", "ScalarIdFilterCondition", [0, 1]],
      ["nameCondition", "ScalarStringFilterCondition", [0, 1]],
      ["typeCondition", "ScalarStringFilterCondition", [0, 1]],
      ["userIdCondition", "ScalarIdFilterCondition", [0, 1]],
      ["orderBy", "TargetOrderBy[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => CopyTargetRequest,
    :schema_type => XSD::QName.new(NsSchema, "CopyTargetRequest"),
    :schema_basetype => XSD::QName.new(NsSchema, "CopyRequest"),
    :schema_element => [
      ["newName", "SOAP::SOAPString"],
      ["fromId", "TargetId"]
    ]
  )

  EncodedRegistry.register(
    :class => ExportTargetRecordsRequest,
    :schema_type => XSD::QName.new(NsSchema, "ExportTargetRecordsRequest"),
    :schema_basetype => XSD::QName.new(NsSchema, "ExportRecordsRequest"),
    :schema_element => [
      ["targetId", "TargetId"],
      ["fieldDelimiter", "SOAP::SOAPString"],
      ["rowDelimiter", "SOAP::SOAPString"]
    ]
  )

  EncodedRegistry.register(
    :class => SuppressionListId,
    :schema_type => XSD::QName.new(NsSchema, "SuppressionListId"),
    :schema_basetype => XSD::QName.new(NsSchema, "ObjectId"),
    :schema_element => [
      ["id", "SOAP::SOAPString"]
    ]
  )

  EncodedRegistry.register(
    :class => SuppressionList,
    :schema_type => XSD::QName.new(NsSchema, "SuppressionList"),
    :schema_basetype => XSD::QName.new(NsSchema, "BaseObject"),
    :schema_element => [
      ["modifiedTime", "SOAP::SOAPDateTime", [0, 1]],
      ["objectId", "ObjectId", [0, 1]],
      ["version", "SOAP::SOAPInt", [0, 1]],
      ["campaignId", "CampaignId", [0, 1]],
      ["includeByDefaultOnMailings", "SOAP::SOAPBoolean"],
      ["totalRecords", "SOAP::SOAPInt", [0, 1]],
      ["createdTime", "SOAP::SOAPDateTime", [0, 1]],
      ["description", "SOAP::SOAPString", [0, 1]],
      ["name", "SOAP::SOAPString"],
      ["organizationId", "OrganizationId", [0, 1]],
      ["ownerId", "UserId", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => SuppressionFilter,
    :schema_type => XSD::QName.new(NsSchema, "SuppressionFilter"),
    :schema_basetype => XSD::QName.new(NsSchema, "BaseFilter"),
    :schema_element => [
      ["isAscending", "SOAP::SOAPBoolean", [0, 1]],
      ["pageNumber", "SOAP::SOAPInt", [0, 1]],
      ["recordsPerPage", "SOAP::SOAPInt", [0, 1]],
      ["maxRecordsPerPage", "SOAP::SOAPInt", [0, 1]],
      ["campaignIdCondition", "ScalarIdFilterCondition", [0, 1]],
      ["nameCondition", "ScalarStringFilterCondition", [0, 1]],
      ["userIdCondition", "ScalarIdFilterCondition", [0, 1]],
      ["orderBy", "SuppressionListOrderBy[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AddSuppressionListRecordsRequest,
    :schema_type => XSD::QName.new(NsSchema, "AddSuppressionListRecordsRequest"),
    :schema_basetype => XSD::QName.new(NsSchema, "AddRecordsRequest"),
    :schema_element => [
      ["suppressionListId", "SuppressionListId"],
      [ :choice,
        ["addressMatch", "SOAP::SOAPString[]", [1, nil]],
        ["addressMatchesAttachment", "SOAP::SOAPBase64"]
      ]
    ]
  )

  EncodedRegistry.register(
    :class => CopySuppressionListRequest,
    :schema_type => XSD::QName.new(NsSchema, "CopySuppressionListRequest"),
    :schema_basetype => XSD::QName.new(NsSchema, "CopyRequest"),
    :schema_element => [
      ["newName", "SOAP::SOAPString"],
      ["fromId", "SuppressionListId"]
    ]
  )

  EncodedRegistry.register(
    :class => ExportSuppressionListRecordsRequest,
    :schema_type => XSD::QName.new(NsSchema, "ExportSuppressionListRecordsRequest"),
    :schema_basetype => XSD::QName.new(NsSchema, "ExportRecordsRequest"),
    :schema_element => [
      ["suppressionListId", "SuppressionListId"]
    ]
  )

  EncodedRegistry.register(
    :class => RemoveSuppressionListRecordsRequest,
    :schema_type => XSD::QName.new(NsSchema, "RemoveSuppressionListRecordsRequest"),
    :schema_basetype => XSD::QName.new(NsSchema, "RemoveRecordsRequest"),
    :schema_element => [
      ["suppressionListId", "SuppressionListId"],
      [ :choice,
        ["addressMatch", "SOAP::SOAPString[]", [1, nil]],
        ["addressMatchesAttachment", "SOAP::SOAPBase64"]
      ]
    ]
  )

  EncodedRegistry.register(
    :class => SeedListId,
    :schema_type => XSD::QName.new(NsSchema, "SeedListId"),
    :schema_basetype => XSD::QName.new(NsSchema, "ObjectId"),
    :schema_element => [
      ["id", "SOAP::SOAPString"]
    ]
  )

  EncodedRegistry.register(
    :class => SeedList,
    :schema_type => XSD::QName.new(NsSchema, "SeedList"),
    :schema_basetype => XSD::QName.new(NsSchema, "BaseObject"),
    :schema_element => [
      ["modifiedTime", "SOAP::SOAPDateTime", [0, 1]],
      ["objectId", "ObjectId", [0, 1]],
      ["version", "SOAP::SOAPInt", [0, 1]],
      ["campaignId", "CampaignId", [0, 1]],
      ["isTestList", "SOAP::SOAPBoolean"],
      ["totalRecords", "SOAP::SOAPInt", [0, 1]],
      ["createdTime", "SOAP::SOAPDateTime", [0, 1]],
      ["description", "SOAP::SOAPString", [0, 1]],
      ["name", "SOAP::SOAPString"],
      ["organizationId", "OrganizationId", [0, 1]],
      ["ownerId", "UserId", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => SeedFilter,
    :schema_type => XSD::QName.new(NsSchema, "SeedFilter"),
    :schema_basetype => XSD::QName.new(NsSchema, "BaseFilter"),
    :schema_element => [
      ["isAscending", "SOAP::SOAPBoolean", [0, 1]],
      ["pageNumber", "SOAP::SOAPInt", [0, 1]],
      ["recordsPerPage", "SOAP::SOAPInt", [0, 1]],
      ["maxRecordsPerPage", "SOAP::SOAPInt", [0, 1]],
      ["campaignIdCondition", "ScalarIdFilterCondition", [0, 1]],
      ["nameCondition", "ScalarStringFilterCondition", [0, 1]],
      ["userIdCondition", "ScalarIdFilterCondition", [0, 1]],
      ["orderBy", "SeedListOrderBy[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AddSeedListRecordsRequest,
    :schema_type => XSD::QName.new(NsSchema, "AddSeedListRecordsRequest"),
    :schema_basetype => XSD::QName.new(NsSchema, "AddRecordsRequest"),
    :schema_element => [
      ["seedListId", "SeedListId"],
      [ :choice,
        ["address", "SOAP::SOAPString[]", [1, nil]],
        ["addressesAttachment", "SOAP::SOAPBase64"]
      ]
    ]
  )

  EncodedRegistry.register(
    :class => CopySeedListRequest,
    :schema_type => XSD::QName.new(NsSchema, "CopySeedListRequest"),
    :schema_basetype => XSD::QName.new(NsSchema, "CopyRequest"),
    :schema_element => [
      ["newName", "SOAP::SOAPString"],
      ["fromId", "SeedListId"]
    ]
  )

  EncodedRegistry.register(
    :class => ExportSeedListRecordsRequest,
    :schema_type => XSD::QName.new(NsSchema, "ExportSeedListRecordsRequest"),
    :schema_basetype => XSD::QName.new(NsSchema, "ExportRecordsRequest"),
    :schema_element => [
      ["seedListId", "SeedListId"]
    ]
  )

  EncodedRegistry.register(
    :class => RemoveSeedListRecordsRequest,
    :schema_type => XSD::QName.new(NsSchema, "RemoveSeedListRecordsRequest"),
    :schema_basetype => XSD::QName.new(NsSchema, "RemoveRecordsRequest"),
    :schema_element => [
      ["seedListId", "SeedListId"],
      [ :choice,
        ["address", "SOAP::SOAPString[]", [1, nil]],
        ["addressesAttachment", "SOAP::SOAPBase64"]
      ]
    ]
  )

  EncodedRegistry.register(
    :class => TemplateId,
    :schema_type => XSD::QName.new(NsSchema, "TemplateId"),
    :schema_basetype => XSD::QName.new(NsSchema, "ObjectId"),
    :schema_element => [
      ["id", "SOAP::SOAPString"]
    ]
  )

  EncodedRegistry.register(
    :class => Template,
    :schema_type => XSD::QName.new(NsSchema, "Template"),
    :schema_basetype => XSD::QName.new(NsSchema, "BaseObject"),
    :schema_element => [
      ["modifiedTime", "SOAP::SOAPDateTime", [0, 1]],
      ["objectId", "ObjectId", [0, 1]],
      ["version", "SOAP::SOAPInt", [0, 1]],
      ["attachmentId", "AttachmentId[]", [0, nil]],
      ["createdTime", "SOAP::SOAPDateTime", [0, 1]],
      ["description", "SOAP::SOAPString", [0, 1]],
      ["bodyEncoding", "Encoding"],
      ["bounceAddressId", "SystemAddressId", [0, 1]],
      ["campaignId", "CampaignId", [0, 1]],
      ["contentBlockId", "ContentBlockId[]", [0, nil]],
      ["fromAddressId", "SystemAddressId", [0, 1]],
      ["fromName", "SOAP::SOAPString", [0, 1]],
      ["headerEncoding", "Encoding"],
      ["header", "SOAP::SOAPString[]", [0, nil]],
      ["isApproved", "SOAP::SOAPBoolean"],
      ["messagePart", "MessagePart[]", [1, nil]],
      ["assetExpiryInterval", "AssetExpiryInterval", [0, 1]],
      [ :choice,
        ["outputBodyCharSet", "CharSet"],
        ["outputBodyCharSetToken", nil]
      ],
      [ :choice,
        ["outputHeaderCharSet", "CharSet"],
        ["outputHeaderCharSetToken", nil]
      ],
      ["name", "SOAP::SOAPString"],
      ["organizationId", "OrganizationId", [0, 1]],
      ["ownerId", "UserId", [0, 1]],
      ["replyAddressId", "SystemAddressId", [0, 1]],
      ["subject", "SOAP::SOAPString", [0, 1]],
      ["forward2FriendOffer", "SOAP::SOAPString", [0, 1]],
      ["forward2FriendOfferTrackingOption", "Forward2FriendOfferTrackingOption", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => TrackingTagProperties,
    :schema_type => XSD::QName.new(NsSchema, "TrackingTagProperties"),
    :schema_element => [
      ["title", "SOAP::SOAPString"],
      ["description", "SOAP::SOAPString", [0, 1]],
      ["offerUrl", "SOAP::SOAPString"],
      ["imageUrl", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => NamedLink,
    :schema_type => XSD::QName.new(NsSchema, "NamedLink"),
    :schema_element => [
      ["name", "SOAP::SOAPString", [0, 1]],
      ["url", "SOAP::SOAPString"],
      ["linkId", "SOAP::SOAPString", [0, 1]],
      ["trackingTag", "TrackingTag"],
      ["trackingTagProperties", "TrackingTagProperties", [0, 1]],
      ["webAnalytics", "WebAnalytics", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => MessagePart,
    :schema_type => XSD::QName.new(NsSchema, "MessagePart"),
    :schema_element => [
      ["content", "SOAP::SOAPString"],
      ["format", "MessageFormat"],
      ["mediaServerFolderName", "SOAP::SOAPString", [0, 1]],
      ["mediaServerId", "MediaServerId", [0, 1]],
      ["isXsl", "SOAP::SOAPBoolean"],
      ["openTag", "OpenTag", [0, 1]],
      ["namedLinks", "NamedLink[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => TemplateFilter,
    :schema_type => XSD::QName.new(NsSchema, "TemplateFilter"),
    :schema_basetype => XSD::QName.new(NsSchema, "BaseFilter"),
    :schema_element => [
      ["isAscending", "SOAP::SOAPBoolean", [0, 1]],
      ["pageNumber", "SOAP::SOAPInt", [0, 1]],
      ["recordsPerPage", "SOAP::SOAPInt", [0, 1]],
      ["maxRecordsPerPage", "SOAP::SOAPInt", [0, 1]],
      ["approvalCondition", "ScalarBooleanFilterCondition", [0, 1]],
      ["campaignIdCondition", "ScalarIdFilterCondition", [0, 1]],
      ["nameCondition", "ScalarStringFilterCondition", [0, 1]],
      ["userIdCondition", "ScalarIdFilterCondition", [0, 1]],
      ["orderBy", "TemplateOrderBy[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => CopyTemplateRequest,
    :schema_type => XSD::QName.new(NsSchema, "CopyTemplateRequest"),
    :schema_basetype => XSD::QName.new(NsSchema, "CopyRequest"),
    :schema_element => [
      ["newName", "SOAP::SOAPString"],
      ["fromId", "TemplateId"],
      ["newOrganizationId", "OrganizationId", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ImportMessagePartRequest,
    :schema_type => XSD::QName.new(NsSchema, "ImportMessagePartRequest"),
    :schema_element => [
      ["templateId", "TemplateId"],
      ["mediaServerId", "MediaServerId"],
      ["isXsl", "SOAP::SOAPBoolean"],
      ["folderName", "SOAP::SOAPString", [0, 1]],
      ["zipFile", "SOAP::SOAPBase64"]
    ]
  )

  EncodedRegistry.register(
    :class => ImportMessagePartResponse,
    :schema_type => XSD::QName.new(NsSchema, "ImportMessagePartResponse"),
    :schema_basetype => XSD::QName.new(NsSchema, "Response"),
    :schema_element => [
      ["success", "SOAP::SOAPBoolean"]
    ]
  )

  EncodedRegistry.register(
    :class => TestTemplateRequest,
    :schema_type => XSD::QName.new(NsSchema, "TestTemplateRequest"),
    :schema_basetype => XSD::QName.new(NsSchema, "TestRequest"),
    :schema_element => [
      ["address", "SOAP::SOAPString[]", [0, nil]],
      ["format", "MessageFormat[]", [1, nil]],
      ["subjectPrefix", "SOAP::SOAPString", [0, 1]],
      ["testListId", "SeedListId", [0, 1]],
      ["tokenValue", "NameValuePair[]", [0, nil]],
      ["useMultiPart", "SOAP::SOAPBoolean"],
      ["templateId", "TemplateId"],
      ["mailingClassId", "MailingClassId", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ValidateXslRequest,
    :schema_type => XSD::QName.new(NsSchema, "ValidateXslRequest"),
    :schema_element => [
      ["templateId", "TemplateId"],
      ["messageFormat", "MessageFormat"]
    ]
  )

  EncodedRegistry.register(
    :class => ValidateXslResponse,
    :schema_type => XSD::QName.new(NsSchema, "ValidateXslResponse"),
    :schema_basetype => XSD::QName.new(NsSchema, "Response"),
    :schema_element => [
      ["valid", "SOAP::SOAPBoolean"]
    ]
  )

  EncodedRegistry.register(
    :class => FetchLinkResponse,
    :schema_type => XSD::QName.new(NsSchema, "FetchLinkResponse"),
    :schema_basetype => XSD::QName.new(NsSchema, "Response"),
    :schema_element => [
      ["namedLink", "NamedLink", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => FetchLinksResponse,
    :schema_type => XSD::QName.new(NsSchema, "FetchLinksResponse"),
    :schema_basetype => XSD::QName.new(NsSchema, "BatchResponse"),
    :schema_element => [
      ["success", "SOAP::SOAPBoolean[]", [0, nil]],
      ["fault", "FaultDetail[]", [0, nil]],
      ["fetchLinkResponse", "FetchLinkResponse[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => FetchLinksTemplateRequest,
    :schema_type => XSD::QName.new(NsSchema, "FetchLinksTemplateRequest"),
    :schema_basetype => XSD::QName.new(NsSchema, "FetchLinksRequest"),
    :schema_element => [
      ["template", "Template"],
      ["messageFormat", "MessageFormat"]
    ]
  )

  EncodedRegistry.register(
    :class => ContentBlockId,
    :schema_type => XSD::QName.new(NsSchema, "ContentBlockId"),
    :schema_basetype => XSD::QName.new(NsSchema, "ObjectId"),
    :schema_element => [
      ["id", "SOAP::SOAPString"]
    ]
  )

  EncodedRegistry.register(
    :class => ContentBlock,
    :schema_type => XSD::QName.new(NsSchema, "ContentBlock"),
    :schema_basetype => XSD::QName.new(NsSchema, "BaseObject"),
    :schema_element => [
      ["modifiedTime", "SOAP::SOAPDateTime", [0, 1]],
      ["objectId", "ObjectId", [0, 1]],
      ["version", "SOAP::SOAPInt", [0, 1]],
      ["campaignId", "CampaignId", [0, 1]],
      ["content", "SOAP::SOAPString"],
      ["createdTime", "SOAP::SOAPDateTime", [0, 1]],
      ["description", "SOAP::SOAPString", [0, 1]],
      ["name", "SOAP::SOAPString"],
      ["organizationId", "OrganizationId", [0, 1]],
      ["ownerId", "UserId", [0, 1]],
      ["size", "SOAP::SOAPInt", [0, 1]],
      ["namedLinks", "NamedLink[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => ContentBlockToken,
    :schema_type => XSD::QName.new(NsSchema, "ContentBlockToken"),
    :schema_element => [
      ["contentBlockId", "ContentBlockId"],
      ["token", "SOAP::SOAPString"]
    ]
  )

  EncodedRegistry.register(
    :class => ContentBlockFilter,
    :schema_type => XSD::QName.new(NsSchema, "ContentBlockFilter"),
    :schema_basetype => XSD::QName.new(NsSchema, "BaseFilter"),
    :schema_element => [
      ["isAscending", "SOAP::SOAPBoolean", [0, 1]],
      ["pageNumber", "SOAP::SOAPInt", [0, 1]],
      ["recordsPerPage", "SOAP::SOAPInt", [0, 1]],
      ["maxRecordsPerPage", "SOAP::SOAPInt", [0, 1]],
      ["campaignIdCondition", "ScalarIdFilterCondition", [0, 1]],
      ["nameCondition", "ScalarStringFilterCondition", [0, 1]],
      ["userIdCondition", "ScalarIdFilterCondition", [0, 1]],
      ["orderBy", "ContentBlockOrderBy[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => CopyContentBlockRequest,
    :schema_type => XSD::QName.new(NsSchema, "CopyContentBlockRequest"),
    :schema_basetype => XSD::QName.new(NsSchema, "CopyRequest"),
    :schema_element => [
      ["newName", "SOAP::SOAPString"],
      ["fromId", "ContentBlockId"],
      ["newOrganizationId", "OrganizationId", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => FetchLinksContentBlockRequest,
    :schema_type => XSD::QName.new(NsSchema, "FetchLinksContentBlockRequest"),
    :schema_basetype => XSD::QName.new(NsSchema, "FetchLinksRequest"),
    :schema_element => [
      ["contentBlock", "ContentBlock"]
    ]
  )

  EncodedRegistry.register(
    :class => AttachmentId,
    :schema_type => XSD::QName.new(NsSchema, "AttachmentId"),
    :schema_basetype => XSD::QName.new(NsSchema, "ObjectId"),
    :schema_element => [
      ["id", "SOAP::SOAPString"]
    ]
  )

  EncodedRegistry.register(
    :class => Attachment,
    :schema_type => XSD::QName.new(NsSchema, "Attachment"),
    :schema_basetype => XSD::QName.new(NsSchema, "BaseObject"),
    :schema_element => [
      ["modifiedTime", "SOAP::SOAPDateTime", [0, 1]],
      ["objectId", "ObjectId", [0, 1]],
      ["version", "SOAP::SOAPInt", [0, 1]],
      ["campaignId", "CampaignId", [0, 1]],
      ["createdTime", "SOAP::SOAPDateTime", [0, 1]],
      ["description", "SOAP::SOAPString", [0, 1]],
      [ :choice,
        [
          ["content", "SOAP::SOAPBase64"],
          ["fileName", "SOAP::SOAPString"]
        ],
        ["fileReference", "SOAP::SOAPString"]
      ],
      ["name", "SOAP::SOAPString"],
      ["organizationId", "OrganizationId", [0, 1]],
      ["ownerId", "UserId", [0, 1]],
      ["size", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AttachmentFilter,
    :schema_type => XSD::QName.new(NsSchema, "AttachmentFilter"),
    :schema_basetype => XSD::QName.new(NsSchema, "BaseFilter"),
    :schema_element => [
      ["isAscending", "SOAP::SOAPBoolean", [0, 1]],
      ["pageNumber", "SOAP::SOAPInt", [0, 1]],
      ["recordsPerPage", "SOAP::SOAPInt", [0, 1]],
      ["maxRecordsPerPage", "SOAP::SOAPInt", [0, 1]],
      ["campaignIdCondition", "ScalarIdFilterCondition", [0, 1]],
      ["nameCondition", "ScalarStringFilterCondition", [0, 1]],
      ["userIdCondition", "ScalarIdFilterCondition", [0, 1]],
      ["orderBy", "AttachmentOrderBy[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => ImportAttachmentContentRequest,
    :schema_type => XSD::QName.new(NsSchema, "ImportAttachmentContentRequest"),
    :schema_basetype => XSD::QName.new(NsSchema, "ImportContentRequest"),
    :schema_element => [
      ["content", "SOAP::SOAPBase64"],
      ["attachmentId", "AttachmentId"],
      ["fileName", "SOAP::SOAPString"]
    ]
  )

  EncodedRegistry.register(
    :class => RuleId,
    :schema_type => XSD::QName.new(NsSchema, "RuleId"),
    :schema_basetype => XSD::QName.new(NsSchema, "ObjectId"),
    :schema_element => [
      ["id", "SOAP::SOAPString"]
    ]
  )

  EncodedRegistry.register(
    :class => Rule,
    :schema_type => XSD::QName.new(NsSchema, "Rule"),
    :schema_basetype => XSD::QName.new(NsSchema, "BaseObject"),
    :schema_element => [
      ["modifiedTime", "SOAP::SOAPDateTime", [0, 1]],
      ["objectId", "ObjectId", [0, 1]],
      ["version", "SOAP::SOAPInt", [0, 1]],
      ["campaignId", "CampaignId", [0, 1]],
      ["targetId", "TargetId[]", [1, nil]],
      ["ifPart", "RuleIfPart"],
      ["thenPart", "RuleThenPart"],
      ["elsePart", "RuleElsePart", [0, 1]],
      ["createdTime", "SOAP::SOAPDateTime", [0, 1]],
      ["description", "SOAP::SOAPString", [0, 1]],
      ["name", "SOAP::SOAPString"],
      ["organizationId", "OrganizationId", [0, 1]],
      ["ownerId", "UserId", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ColumnRuleValue,
    :schema_type => XSD::QName.new(NsSchema, "ColumnRuleValue"),
    :schema_basetype => XSD::QName.new(NsSchema, "RuleValue"),
    :schema_element => [
      ["value", "SOAP::SOAPString"]
    ]
  )

  EncodedRegistry.register(
    :class => ContentBlockTokenRuleValue,
    :schema_type => XSD::QName.new(NsSchema, "ContentBlockTokenRuleValue"),
    :schema_basetype => XSD::QName.new(NsSchema, "RuleValue"),
    :schema_element => [
      ["value", "ContentBlockToken"]
    ]
  )

  EncodedRegistry.register(
    :class => TextRuleValue,
    :schema_type => XSD::QName.new(NsSchema, "TextRuleValue"),
    :schema_basetype => XSD::QName.new(NsSchema, "RuleValue"),
    :schema_element => [
      ["value", "SOAP::SOAPString"]
    ]
  )

  EncodedRegistry.register(
    :class => NestedRuleRuleValue,
    :schema_type => XSD::QName.new(NsSchema, "NestedRuleRuleValue"),
    :schema_basetype => XSD::QName.new(NsSchema, "RuleValue"),
    :schema_element => [
      ["value", "RuleId"]
    ]
  )

  EncodedRegistry.register(
    :class => RuleIfPartCondition,
    :schema_type => XSD::QName.new(NsSchema, "RuleIfPartCondition"),
    :schema_element => [
      ["column", "SOAP::SOAPString"],
      ["op", "ComparisonOperation"],
      ["value", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => RuleIfPart,
    :schema_type => XSD::QName.new(NsSchema, "RuleIfPart"),
    :schema_element => [
      ["condition1", "RuleIfPartCondition"],
      [
        ["logicalOperation", "LogicalOperation[]"],
        ["condition", "RuleIfPartCondition[]"]
      ]
    ]
  )

  EncodedRegistry.register(
    :class => RuleThenPart,
    :schema_type => XSD::QName.new(NsSchema, "RuleThenPart"),
    :schema_element => [ :choice,
      ["columnRuleValue", "ColumnRuleValue"],
      ["contentBlockTokenRuleValue", "ContentBlockTokenRuleValue"],
      ["textRuleValue", "TextRuleValue"]
    ]
  )

  EncodedRegistry.register(
    :class => RuleElsePart,
    :schema_type => XSD::QName.new(NsSchema, "RuleElsePart"),
    :schema_element => [ :choice,
      ["columnRuleValue", "ColumnRuleValue"],
      ["contentBlockTokenRuleValue", "ContentBlockTokenRuleValue"],
      ["nestedRuleRuleValue", "NestedRuleRuleValue"],
      ["textRuleValue", "TextRuleValue"]
    ]
  )

  EncodedRegistry.register(
    :class => RuleFilter,
    :schema_type => XSD::QName.new(NsSchema, "RuleFilter"),
    :schema_basetype => XSD::QName.new(NsSchema, "BaseFilter"),
    :schema_element => [
      ["isAscending", "SOAP::SOAPBoolean", [0, 1]],
      ["pageNumber", "SOAP::SOAPInt", [0, 1]],
      ["recordsPerPage", "SOAP::SOAPInt", [0, 1]],
      ["maxRecordsPerPage", "SOAP::SOAPInt", [0, 1]],
      ["campaignIdCondition", "ScalarIdFilterCondition", [0, 1]],
      ["nameCondition", "ScalarStringFilterCondition", [0, 1]],
      ["orderBy", "RuleOrderBy[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => CopyRuleRequest,
    :schema_type => XSD::QName.new(NsSchema, "CopyRuleRequest"),
    :schema_basetype => XSD::QName.new(NsSchema, "CopyRequest"),
    :schema_element => [
      ["newName", "SOAP::SOAPString"],
      ["fromId", "RuleId"]
    ]
  )

  EncodedRegistry.register(
    :class => MailingId,
    :schema_type => XSD::QName.new(NsSchema, "MailingId"),
    :schema_basetype => XSD::QName.new(NsSchema, "ObjectId"),
    :schema_element => [
      ["id", "SOAP::SOAPString"]
    ]
  )

  EncodedRegistry.register(
    :class => StandardMailingId,
    :schema_type => XSD::QName.new(NsSchema, "StandardMailingId"),
    :schema_basetype => XSD::QName.new(NsSchema, "MailingId"),
    :schema_element => [
      ["id", "SOAP::SOAPString"]
    ]
  )

  EncodedRegistry.register(
    :class => TransactionalMailingId,
    :schema_type => XSD::QName.new(NsSchema, "TransactionalMailingId"),
    :schema_basetype => XSD::QName.new(NsSchema, "MailingId"),
    :schema_element => [
      ["id", "SOAP::SOAPString"]
    ]
  )

  EncodedRegistry.register(
    :class => StandardMailing,
    :schema_type => XSD::QName.new(NsSchema, "StandardMailing"),
    :schema_basetype => XSD::QName.new(NsSchema, "SchedulableMailing"),
    :schema_element => [
      ["modifiedTime", "SOAP::SOAPDateTime", [0, 1]],
      ["objectId", "ObjectId", [0, 1]],
      ["version", "SOAP::SOAPInt", [0, 1]],
      ["attachmentId", "AttachmentId[]", [0, nil]],
      ["bodyEncoding", "Encoding"],
      ["bounceAddressId", "SystemAddressId", [0, 1]],
      ["campaignId", "CampaignId", [0, 1]],
      ["isApproved", "SOAP::SOAPBoolean"],
      ["isCompliant", "SOAP::SOAPBoolean"],
      ["contentBlockId", "ContentBlockId[]", [0, nil]],
      ["fieldDelimiter", "SOAP::SOAPString", [0, 1]],
      ["format", "MessageFormat[]", [0, nil]],
      ["fromAddressId", "SystemAddressId", [0, 1]],
      ["fromName", "SOAP::SOAPString", [0, 1]],
      ["headerEncoding", "Encoding"],
      ["header", "SOAP::SOAPString[]", [0, nil]],
      ["lastGoodStatus", "MailingStatus", [0, 1]],
      ["mailingClassId", "MailingClassId", [0, 1]],
      ["name", "SOAP::SOAPString"],
      ["priority", "MailingPriority", [0, 1]],
      [ :choice,
        ["outputBodyCharSet", "CharSet"],
        ["outputBodyCharSetToken", nil]
      ],
      [ :choice,
        ["outputHeaderCharSet", "CharSet"],
        ["outputHeaderCharSetToken", nil]
      ],
      ["parentId", "MailingId", [0, 1]],
      ["plannedLaunchDate", "SOAP::SOAPDate", [0, 1]],
      ["replyAddressId", "SystemAddressId", [0, 1]],
      ["rowDelimiter", "SOAP::SOAPString", [0, 1]],
      ["serverErrorCode", "SOAP::SOAPInt", [0, 1]],
      ["serverErrorMessage", "SOAP::SOAPString", [0, 1]],
      ["status", "MailingStatus", [0, 1]],
      ["subject", "SOAP::SOAPString", [0, 1]],
      ["templateId", "TemplateId", [0, 1]],
      ["type", "MailingType", [0, 1]],
      ["createdTime", "SOAP::SOAPDateTime", [0, 1]],
      ["description", "SOAP::SOAPString", [0, 1]],
      ["organizationId", "OrganizationId", [0, 1]],
      ["ownerId", "UserId", [0, 1]],
      ["forward2FriendOffer", "SOAP::SOAPString", [0, 1]],
      ["forward2FriendOfferTrackingOption", "Forward2FriendOfferTrackingOption", [0, 1]],
      ["schedule", "StandardMailing::Schedule", [0, 1]],
      ["eliminateDuplicates", "SOAP::SOAPBoolean"],
      ["excludedTargetId", "TargetId[]", [0, nil]],
      ["includedTargetId", "TargetId[]", [0, nil]],
      ["seedListId", "SeedListId[]", [0, nil]],
      ["suppressionListId", "SuppressionListId[]", [0, nil]],
      ["assetExpiryInterval", "AssetExpiryInterval", [0, 1]],
      ["addDefaultSuppress", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => StandardMailing::Schedule::Recurrence::MinutelyRecurrence,
    :schema_name => XSD::QName.new(NsSchema, "minutelyRecurrence"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["interval", nil]
    ]
  )

  EncodedRegistry.register(
    :class => StandardMailing::Schedule::Recurrence::HourlyRecurrence,
    :schema_name => XSD::QName.new(NsSchema, "hourlyRecurrence"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["interval", nil]
    ]
  )

  EncodedRegistry.register(
    :class => StandardMailing::Schedule::Recurrence::DailyRecurrence,
    :schema_name => XSD::QName.new(NsSchema, "dailyRecurrence"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [ :choice,
      ["interval", nil],
      ["everyWeekDay", "SOAP::SOAPBoolean"]
    ]
  )

  EncodedRegistry.register(
    :class => StandardMailing::Schedule::Recurrence::WeeklyRecurrence,
    :schema_name => XSD::QName.new(NsSchema, "weeklyRecurrence"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["interval", nil],
      ["day", "DayOfWeek[]", [1, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => StandardMailing::Schedule::Recurrence::MonthlyByDateRecurrence,
    :schema_name => XSD::QName.new(NsSchema, "monthlyByDateRecurrence"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["interval", nil],
      ["dayOfMonth", "[]", [1, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => StandardMailing::Schedule::Recurrence::MonthlyByDayRecurrence,
    :schema_name => XSD::QName.new(NsSchema, "monthlyByDayRecurrence"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["interval", nil],
      ["weeklyOccurrence", "WeeklyOccurrence"],
      ["dailyOccurrence", "DailyOccurrence"]
    ]
  )

  EncodedRegistry.register(
    :class => StandardMailing::Schedule::Recurrence::YearlyByDateRecurrence,
    :schema_name => XSD::QName.new(NsSchema, "yearlyByDateRecurrence"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["month", nil],
      ["day", nil]
    ]
  )

  EncodedRegistry.register(
    :class => StandardMailing::Schedule::Recurrence::YearlyByDayRecurrence,
    :schema_name => XSD::QName.new(NsSchema, "yearlyByDayRecurrence"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["month", nil],
      ["weeklyOccurrence", "WeeklyOccurrence"],
      ["dailyOccurrence", "DailyOccurrence"]
    ]
  )

  EncodedRegistry.register(
    :class => StandardMailing::Schedule::Recurrence,
    :schema_name => XSD::QName.new(NsSchema, "recurrence"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      [ :choice,
        ["endDate", "SOAP::SOAPDate"],
        ["endAfterXMailings", "SOAP::SOAPInt"]
      ],
      [ :choice,
        ["minutelyRecurrence", "StandardMailing::Schedule::Recurrence::MinutelyRecurrence"],
        ["hourlyRecurrence", "StandardMailing::Schedule::Recurrence::HourlyRecurrence"],
        ["dailyRecurrence", "StandardMailing::Schedule::Recurrence::DailyRecurrence"],
        ["weeklyRecurrence", "StandardMailing::Schedule::Recurrence::WeeklyRecurrence"],
        ["monthlyByDateRecurrence", "StandardMailing::Schedule::Recurrence::MonthlyByDateRecurrence"],
        ["monthlyByDayRecurrence", "StandardMailing::Schedule::Recurrence::MonthlyByDayRecurrence"],
        ["yearlyByDateRecurrence", "StandardMailing::Schedule::Recurrence::YearlyByDateRecurrence"],
        ["yearlyByDayRecurrence", "StandardMailing::Schedule::Recurrence::YearlyByDayRecurrence"]
      ],
      ["nextScheduledDateTime", "SOAP::SOAPDateTime", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => StandardMailing::Schedule,
    :schema_name => XSD::QName.new(NsSchema, "schedule"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["startDateTime", "SOAP::SOAPDateTime"],
      ["recurrence", "StandardMailing::Schedule::Recurrence", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => TransactionalMailing,
    :schema_type => XSD::QName.new(NsSchema, "TransactionalMailing"),
    :schema_basetype => XSD::QName.new(NsSchema, "Mailing"),
    :schema_element => [
      ["modifiedTime", "SOAP::SOAPDateTime", [0, 1]],
      ["objectId", "ObjectId", [0, 1]],
      ["version", "SOAP::SOAPInt", [0, 1]],
      ["attachmentId", "AttachmentId[]", [0, nil]],
      ["bodyEncoding", "Encoding"],
      ["bounceAddressId", "SystemAddressId", [0, 1]],
      ["campaignId", "CampaignId", [0, 1]],
      ["isApproved", "SOAP::SOAPBoolean"],
      ["isCompliant", "SOAP::SOAPBoolean"],
      ["contentBlockId", "ContentBlockId[]", [0, nil]],
      ["fieldDelimiter", "SOAP::SOAPString", [0, 1]],
      ["format", "MessageFormat[]", [0, nil]],
      ["fromAddressId", "SystemAddressId", [0, 1]],
      ["fromName", "SOAP::SOAPString", [0, 1]],
      ["headerEncoding", "Encoding"],
      ["header", "SOAP::SOAPString[]", [0, nil]],
      ["lastGoodStatus", "MailingStatus", [0, 1]],
      ["mailingClassId", "MailingClassId", [0, 1]],
      ["name", "SOAP::SOAPString"],
      ["priority", "MailingPriority", [0, 1]],
      [ :choice,
        ["outputBodyCharSet", "CharSet"],
        ["outputBodyCharSetToken", nil]
      ],
      [ :choice,
        ["outputHeaderCharSet", "CharSet"],
        ["outputHeaderCharSetToken", nil]
      ],
      ["parentId", "MailingId", [0, 1]],
      ["plannedLaunchDate", "SOAP::SOAPDate", [0, 1]],
      ["replyAddressId", "SystemAddressId", [0, 1]],
      ["rowDelimiter", "SOAP::SOAPString", [0, 1]],
      ["serverErrorCode", "SOAP::SOAPInt", [0, 1]],
      ["serverErrorMessage", "SOAP::SOAPString", [0, 1]],
      ["status", "MailingStatus", [0, 1]],
      ["subject", "SOAP::SOAPString", [0, 1]],
      ["templateId", "TemplateId", [0, 1]],
      ["type", "MailingType", [0, 1]],
      ["createdTime", "SOAP::SOAPDateTime", [0, 1]],
      ["description", "SOAP::SOAPString", [0, 1]],
      ["organizationId", "OrganizationId", [0, 1]],
      ["ownerId", "UserId", [0, 1]],
      ["forward2FriendOffer", "SOAP::SOAPString", [0, 1]],
      ["forward2FriendOfferTrackingOption", "Forward2FriendOfferTrackingOption", [0, 1]],
      ["formatFieldName", "SOAP::SOAPString", [0, 1]],
      ["mailingConfig", "SOAP::SOAPString", [0, 1]],
      ["messageType", "MessageType"],
      ["recordStructure", "SOAP::SOAPString[]", [0, nil]],
      ["senderNumber", "SOAP::SOAPString", [0, 1]],
      ["targetId", "TargetId", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => MailingFilter,
    :schema_type => XSD::QName.new(NsSchema, "MailingFilter"),
    :schema_basetype => XSD::QName.new(NsSchema, "BaseFilter"),
    :schema_element => [
      ["isAscending", "SOAP::SOAPBoolean", [0, 1]],
      ["pageNumber", "SOAP::SOAPInt", [0, 1]],
      ["recordsPerPage", "SOAP::SOAPInt", [0, 1]],
      ["maxRecordsPerPage", "SOAP::SOAPInt", [0, 1]],
      ["campaignIdCondition", "ScalarIdFilterCondition", [0, 1]],
      ["nameCondition", "ScalarStringFilterCondition", [0, 1]],
      ["userIdCondition", "ScalarIdFilterCondition", [0, 1]],
      ["typeCondition", "ArrayStringFilterCondition", [0, 1]],
      ["statusCondition", "ArrayStringFilterCondition", [0, 1]],
      ["orderBy", "MailingOrderBy[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => CopyMailingRequest,
    :schema_type => XSD::QName.new(NsSchema, "CopyMailingRequest"),
    :schema_basetype => XSD::QName.new(NsSchema, "CopyRequest"),
    :schema_element => [
      ["newName", "SOAP::SOAPString"],
      ["fromId", "MailingId"]
    ]
  )

  EncodedRegistry.register(
    :class => CancelRequest,
    :schema_type => XSD::QName.new(NsSchema, "CancelRequest"),
    :schema_element => [
      ["mailingId", "MailingId"]
    ]
  )

  EncodedRegistry.register(
    :class => CancelResponse,
    :schema_type => XSD::QName.new(NsSchema, "CancelResponse"),
    :schema_basetype => XSD::QName.new(NsSchema, "Response"),
    :schema_element => [
      ["success", "SOAP::SOAPBoolean"]
    ]
  )

  EncodedRegistry.register(
    :class => CloseRequest,
    :schema_type => XSD::QName.new(NsSchema, "CloseRequest"),
    :schema_element => [
      ["mailingId", "TransactionalMailingId"]
    ]
  )

  EncodedRegistry.register(
    :class => CloseResponse,
    :schema_type => XSD::QName.new(NsSchema, "CloseResponse"),
    :schema_basetype => XSD::QName.new(NsSchema, "Response"),
    :schema_element => [
      ["success", "SOAP::SOAPBoolean"]
    ]
  )

  EncodedRegistry.register(
    :class => ArchiveRequest,
    :schema_type => XSD::QName.new(NsSchema, "ArchiveRequest"),
    :schema_element => [
      ["mailingId", "MailingId"]
    ]
  )

  EncodedRegistry.register(
    :class => ArchiveResponse,
    :schema_type => XSD::QName.new(NsSchema, "ArchiveResponse"),
    :schema_basetype => XSD::QName.new(NsSchema, "Response"),
    :schema_element => [
      ["success", "SOAP::SOAPBoolean"]
    ]
  )

  EncodedRegistry.register(
    :class => GetMailingStatisticsRequest,
    :schema_type => XSD::QName.new(NsSchema, "GetMailingStatisticsRequest"),
    :schema_basetype => XSD::QName.new(NsSchema, "GetStatisticsRequest"),
    :schema_element => [
      ["mailingId", "MailingId"]
    ]
  )

  EncodedRegistry.register(
    :class => GetMailingStatisticsResponse,
    :schema_type => XSD::QName.new(NsSchema, "GetMailingStatisticsResponse"),
    :schema_basetype => XSD::QName.new(NsSchema, "GetStatisticsResponse"),
    :schema_element => [
      ["launchSerial", "SOAP::SOAPString", [0, 1]],
      ["elapsedTime", "SOAP::SOAPDuration", [0, 1]],
      ["launchTime", "SOAP::SOAPDateTime", [0, 1]],
      ["completionTime", "SOAP::SOAPDateTime", [0, 1]],
      ["deferred", "SOAP::SOAPInt", [0, 1]],
      ["delivered", "SOAP::SOAPInt", [0, 1]],
      ["failed", "SOAP::SOAPInt", [0, 1]],
      ["invalid", "SOAP::SOAPInt", [0, 1]],
      ["sent", "SOAP::SOAPInt", [0, 1]],
      ["targeted", "SOAP::SOAPInt", [0, 1]],
      ["totalClicks", "SOAP::SOAPInt", [0, 1]],
      ["totalComplaints", "SOAP::SOAPInt", [0, 1]],
      ["totalOpens", "SOAP::SOAPInt", [0, 1]],
      ["totalUnsubscribes", "SOAP::SOAPInt", [0, 1]],
      ["uniqueClicks", "SOAP::SOAPInt", [0, 1]],
      ["uniqueComplaints", "SOAP::SOAPInt", [0, 1]],
      ["uniqueOpens", "SOAP::SOAPInt", [0, 1]],
      ["uniqueUnsubscribes", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => LaunchRequest,
    :schema_type => XSD::QName.new(NsSchema, "LaunchRequest"),
    :schema_element => [
      ["mailingId", "StandardMailingId"]
    ]
  )

  EncodedRegistry.register(
    :class => LaunchResponse,
    :schema_type => XSD::QName.new(NsSchema, "LaunchResponse"),
    :schema_basetype => XSD::QName.new(NsSchema, "Response"),
    :schema_element => [
      ["success", "SOAP::SOAPBoolean"]
    ]
  )

  EncodedRegistry.register(
    :class => LoadRequest,
    :schema_type => XSD::QName.new(NsSchema, "LoadRequest"),
    :schema_element => [
      ["mailingId", "TransactionalMailingId"]
    ]
  )

  EncodedRegistry.register(
    :class => LoadResponse,
    :schema_type => XSD::QName.new(NsSchema, "LoadResponse"),
    :schema_basetype => XSD::QName.new(NsSchema, "Response"),
    :schema_element => [
      ["success", "SOAP::SOAPBoolean"]
    ]
  )

  EncodedRegistry.register(
    :class => PauseRequest,
    :schema_type => XSD::QName.new(NsSchema, "PauseRequest"),
    :schema_element => [
      ["mailingId", "MailingId"]
    ]
  )

  EncodedRegistry.register(
    :class => PauseResponse,
    :schema_type => XSD::QName.new(NsSchema, "PauseResponse"),
    :schema_basetype => XSD::QName.new(NsSchema, "Response"),
    :schema_element => [
      ["success", "SOAP::SOAPBoolean"]
    ]
  )

  EncodedRegistry.register(
    :class => ResumeRequest,
    :schema_type => XSD::QName.new(NsSchema, "ResumeRequest"),
    :schema_element => [
      ["mailingId", "MailingId"]
    ]
  )

  EncodedRegistry.register(
    :class => ResumeResponse,
    :schema_type => XSD::QName.new(NsSchema, "ResumeResponse"),
    :schema_basetype => XSD::QName.new(NsSchema, "Response"),
    :schema_element => [
      ["success", "SOAP::SOAPBoolean"]
    ]
  )

  EncodedRegistry.register(
    :class => ScheduleRequest,
    :schema_type => XSD::QName.new(NsSchema, "ScheduleRequest"),
    :schema_element => [
      ["mailingId", "StandardMailingId"]
    ]
  )

  EncodedRegistry.register(
    :class => ScheduleResponse,
    :schema_type => XSD::QName.new(NsSchema, "ScheduleResponse"),
    :schema_basetype => XSD::QName.new(NsSchema, "Response"),
    :schema_element => [
      ["success", "SOAP::SOAPBoolean"]
    ]
  )

  EncodedRegistry.register(
    :class => SendRecord,
    :schema_type => XSD::QName.new(NsSchema, "SendRecord"),
    :schema_element => [
      ["field", "NameValuePair[]", [1, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => SendRequest,
    :schema_type => XSD::QName.new(NsSchema, "SendRequest"),
    :schema_element => [
      ["mailingId", "TransactionalMailingId"],
      [ :choice,
        ["sendData", "SOAP::SOAPString"],
        ["sendRecord", "SendRecord[]", [1, nil]]
      ]
    ]
  )

  EncodedRegistry.register(
    :class => SendResponse,
    :schema_type => XSD::QName.new(NsSchema, "SendResponse"),
    :schema_basetype => XSD::QName.new(NsSchema, "Response"),
    :schema_element => [
      ["success", "SOAP::SOAPBoolean"]
    ]
  )

  EncodedRegistry.register(
    :class => GetTxnMailingHandleRequest,
    :schema_type => XSD::QName.new(NsSchema, "GetTxnMailingHandleRequest"),
    :schema_element => [
      [ :choice,
        ["mailingId", "TransactionalMailingId"],
        ["mailingName", "SOAP::SOAPString"]
      ]
    ]
  )

  EncodedRegistry.register(
    :class => GetTxnMailingHandleResponse,
    :schema_type => XSD::QName.new(NsSchema, "GetTxnMailingHandleResponse"),
    :schema_basetype => XSD::QName.new(NsSchema, "Response"),
    :schema_element => [
      ["handle", "SOAP::SOAPString"]
    ]
  )

  EncodedRegistry.register(
    :class => TxnSendRequest,
    :schema_type => XSD::QName.new(NsSchema, "TxnSendRequest"),
    :schema_element => [
      ["handle", "SOAP::SOAPString"],
      ["sendRecord", "SendRecord[]", [1, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => TxnSendResponse,
    :schema_type => XSD::QName.new(NsSchema, "TxnSendResponse"),
    :schema_basetype => XSD::QName.new(NsSchema, "Response"),
    :schema_element => [
      ["success", "SOAP::SOAPBoolean"]
    ]
  )

  EncodedRegistry.register(
    :class => GetTxnEasInfoRequest,
    :schema_type => XSD::QName.new(NsSchema, "GetTxnEasInfoRequest"),
    :schema_element => [
      ["mailingId", "TransactionalMailingId"]
    ]
  )

  EncodedRegistry.register(
    :class => GetTxnEasInfoResponse,
    :schema_type => XSD::QName.new(NsSchema, "GetTxnEasInfoResponse"),
    :schema_basetype => XSD::QName.new(NsSchema, "Response"),
    :schema_element => [
      ["hostname", "SOAP::SOAPString"],
      ["mailingName", "SOAP::SOAPString"],
      ["mailingHandle", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => GetAllEasByMailingIdRequest,
    :schema_type => XSD::QName.new(NsSchema, "GetAllEasByMailingIdRequest"),
    :schema_element => [
      ["mailingId", "MailingId"]
    ]
  )

  EncodedRegistry.register(
    :class => GetAllEasListByMailingIdResponse,
    :schema_type => XSD::QName.new(NsSchema, "GetAllEasListByMailingIdResponse"),
    :schema_basetype => XSD::QName.new(NsSchema, "Response"),
    :schema_element => [
      ["getAllEasByMailingIdResponse", ["GetAllEasByMailingIdResponse[]", XSD::QName.new(NsSchema, "GetAllEasByMailingIdResponse")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => GetAllEasByMailingIdResponse,
    :schema_type => XSD::QName.new(NsSchema, "GetAllEasByMailingIdResponse"),
    :schema_basetype => XSD::QName.new(NsSchema, "Response"),
    :schema_element => [
      ["hostip", "SOAP::SOAPString"],
      ["mailingConfigName", "SOAP::SOAPString"],
      ["serialNumber", "SOAP::SOAPString", [0, 1]],
      ["easId", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => TestMailingRequest,
    :schema_type => XSD::QName.new(NsSchema, "TestMailingRequest"),
    :schema_basetype => XSD::QName.new(NsSchema, "TestRequest"),
    :schema_element => [
      ["address", "SOAP::SOAPString[]", [0, nil]],
      ["format", "MessageFormat[]", [1, nil]],
      ["subjectPrefix", "SOAP::SOAPString", [0, 1]],
      ["testListId", "SeedListId", [0, 1]],
      ["tokenValue", "NameValuePair[]", [0, nil]],
      ["useMultiPart", "SOAP::SOAPBoolean"],
      ["mailingId", "StandardMailingId"]
    ]
  )

  EncodedRegistry.register(
    :class => ProgramId,
    :schema_type => XSD::QName.new(NsSchema, "ProgramId"),
    :schema_basetype => XSD::QName.new(NsSchema, "ObjectId"),
    :schema_element => [
      ["id", "SOAP::SOAPString"]
    ]
  )

  EncodedRegistry.register(
    :class => ProgramNodeId,
    :schema_type => XSD::QName.new(NsSchema, "ProgramNodeId"),
    :schema_basetype => XSD::QName.new(NsSchema, "ObjectId"),
    :schema_element => [
      ["id", "SOAP::SOAPString"]
    ]
  )

  EncodedRegistry.register(
    :class => ProgramContactRecord,
    :schema_type => XSD::QName.new(NsSchema, "ProgramContactRecord"),
    :schema_element => [
      ["programDataSourcePk", "SOAP::SOAPString"],
      ["contactId", "SOAP::SOAPString"]
    ]
  )

  EncodedRegistry.register(
    :class => AddProgramContactRecordsRequest,
    :schema_type => XSD::QName.new(NsSchema, "AddProgramContactRecordsRequest"),
    :schema_basetype => XSD::QName.new(NsSchema, "AddRecordsRequest"),
    :schema_element => [
      ["programId", "ProgramId"],
      ["programContactRecord", "ProgramContactRecord[]", [1, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AddProgramContactRecordsResponse,
    :schema_type => XSD::QName.new(NsSchema, "AddProgramContactRecordsResponse"),
    :schema_basetype => XSD::QName.new(NsSchema, "AddRecordsResponse"),
    :schema_element => [
      ["success", "SOAP::SOAPBoolean"],
      ["successCount", "SOAP::SOAPInt"],
      ["failureRecord", "ProgramContactRecord[]", [0, nil]],
      ["duplicateRecord", "ProgramContactRecord[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => Program,
    :schema_type => XSD::QName.new(NsSchema, "Program"),
    :schema_basetype => XSD::QName.new(NsSchema, "BaseObject"),
    :schema_element => [
      ["modifiedTime", "SOAP::SOAPDateTime", [0, 1]],
      ["objectId", "ObjectId", [0, 1]],
      ["version", "SOAP::SOAPInt", [0, 1]],
      ["organizationId", "OrganizationId"],
      ["name", "SOAP::SOAPString"],
      ["description", "SOAP::SOAPString"],
      ["startDate", "SOAP::SOAPDateTime", [0, 1]],
      ["endDate", "SOAP::SOAPDateTime", [0, 1]],
      ["status", "ProgramStatus"],
      ["dataSourceId", "DataSourceId", [0, 1]],
      ["emailColumnName", "SOAP::SOAPString", [0, 1]],
      ["bounceColumnName", "SOAP::SOAPString", [0, 1]],
      ["unsubColumnName", "SOAP::SOAPString", [0, 1]],
      ["smsColumnName", "SOAP::SOAPString", [0, 1]],
      ["smsBounceColumnName", "SOAP::SOAPString", [0, 1]],
      ["smsUnsubColumnName", "SOAP::SOAPString", [0, 1]],
      ["smsShortCode", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ProgramNode,
    :schema_type => XSD::QName.new(NsSchema, "ProgramNode"),
    :schema_basetype => XSD::QName.new(NsSchema, "BaseObject"),
    :schema_element => [
      ["modifiedTime", "SOAP::SOAPDateTime", [0, 1]],
      ["objectId", "ObjectId", [0, 1]],
      ["version", "SOAP::SOAPInt", [0, 1]],
      ["name", "SOAP::SOAPString"],
      ["description", "SOAP::SOAPString", [0, 1]],
      ["programNodeType", "ProgramNodeType"],
      ["mailingId", "MailingId", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ProgramFilter,
    :schema_type => XSD::QName.new(NsSchema, "ProgramFilter"),
    :schema_basetype => XSD::QName.new(NsSchema, "BaseFilter"),
    :schema_element => [
      ["isAscending", "SOAP::SOAPBoolean", [0, 1]],
      ["pageNumber", "SOAP::SOAPInt", [0, 1]],
      ["recordsPerPage", "SOAP::SOAPInt", [0, 1]],
      ["maxRecordsPerPage", "SOAP::SOAPInt", [0, 1]],
      ["campaignIdCondition", "ScalarIdFilterCondition", [0, 1]],
      ["nameCondition", "ScalarStringFilterCondition", [0, 1]],
      ["userIdCondition", "ScalarIdFilterCondition", [0, 1]],
      ["statusCondition", "ArrayStringFilterCondition", [0, 1]],
      ["orderBy", "ProgramOrderBy[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => GetProgramNodesRequest,
    :schema_type => XSD::QName.new(NsSchema, "GetProgramNodesRequest"),
    :schema_element => [
      ["programId", "ProgramId"]
    ]
  )

  EncodedRegistry.register(
    :class => GetProgramNodesResponse,
    :schema_type => XSD::QName.new(NsSchema, "GetProgramNodesResponse"),
    :schema_basetype => XSD::QName.new(NsSchema, "Response"),
    :schema_element => [
      ["programNodes", "ProgramNode[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => OrganizationId,
    :schema_type => XSD::QName.new(NsSchema, "OrganizationId"),
    :schema_basetype => XSD::QName.new(NsSchema, "ObjectId"),
    :schema_element => [
      ["id", "SOAP::SOAPString"]
    ]
  )

  EncodedRegistry.register(
    :class => Organization,
    :schema_type => XSD::QName.new(NsSchema, "Organization"),
    :schema_basetype => XSD::QName.new(NsSchema, "BaseObject"),
    :schema_element => [
      ["modifiedTime", "SOAP::SOAPDateTime", [0, 1]],
      ["objectId", "ObjectId", [0, 1]],
      ["version", "SOAP::SOAPInt", [0, 1]],
      ["description", "SOAP::SOAPString", [0, 1]],
      ["logo", "SOAP::SOAPBase64", [0, 1]],
      ["name", "SOAP::SOAPString"],
      ["parentId", "OrganizationId", [0, 1]],
      ["viewInBrowserExceptionURL", "SOAP::SOAPString", [0, 1]],
      ["forward2FriendExceptionURL", "SOAP::SOAPString", [0, 1]],
      ["socialNotesExceptionURL", "SOAP::SOAPString", [0, 1]],
      ["socialNotesWidget", "SOAP::SOAPString", [0, 1]],
      ["forward2FriendOffer", "SOAP::SOAPString", [0, 1]],
      ["forward2FriendOfferTrackingOption", "Forward2FriendOfferTrackingOption", [0, 1]],
      ["influencerSecretKey", "SOAP::SOAPString", [0, 1]],
      ["influencerClientUuid", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => OrganizationFilter,
    :schema_type => XSD::QName.new(NsSchema, "OrganizationFilter"),
    :schema_basetype => XSD::QName.new(NsSchema, "BaseFilter"),
    :schema_element => [
      ["isAscending", "SOAP::SOAPBoolean", [0, 1]],
      ["pageNumber", "SOAP::SOAPInt", [0, 1]],
      ["recordsPerPage", "SOAP::SOAPInt", [0, 1]],
      ["maxRecordsPerPage", "SOAP::SOAPInt", [0, 1]],
      ["nameCondition", "ScalarStringFilterCondition", [0, 1]],
      ["parentIdCondition", "ScalarIdFilterCondition", [0, 1]],
      ["orderBy", "OrganizationOrderBy[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => UserId,
    :schema_type => XSD::QName.new(NsSchema, "UserId"),
    :schema_basetype => XSD::QName.new(NsSchema, "ObjectId"),
    :schema_element => [
      ["id", "SOAP::SOAPString"]
    ]
  )

  EncodedRegistry.register(
    :class => User,
    :schema_type => XSD::QName.new(NsSchema, "User"),
    :schema_basetype => XSD::QName.new(NsSchema, "BaseObject"),
    :schema_element => [
      ["modifiedTime", "SOAP::SOAPDateTime", [0, 1]],
      ["objectId", "ObjectId", [0, 1]],
      ["version", "SOAP::SOAPInt", [0, 1]],
      ["access", "User::Access[]", [0, nil]],
      ["description", "SOAP::SOAPString", [0, 1]],
      ["email", "SOAP::SOAPString", [0, 1]],
      ["firstName", "SOAP::SOAPString"],
      ["isAdmin", "SOAP::SOAPBoolean", [0, 1]],
      ["isSuperUser", "SOAP::SOAPBoolean", [0, 1]],
      ["lastName", "SOAP::SOAPString"],
      ["login", "SOAP::SOAPString", [0, 1]],
      ["organizationId", "OrganizationId", [0, 1]],
      ["password", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => User::Access,
    :schema_name => XSD::QName.new(NsSchema, "access"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["organizationId", "OrganizationId"],
      ["roleId", "RoleId"]
    ]
  )

  EncodedRegistry.register(
    :class => UserFilter,
    :schema_type => XSD::QName.new(NsSchema, "UserFilter"),
    :schema_basetype => XSD::QName.new(NsSchema, "BaseFilter"),
    :schema_element => [
      ["isAscending", "SOAP::SOAPBoolean", [0, 1]],
      ["pageNumber", "SOAP::SOAPInt", [0, 1]],
      ["recordsPerPage", "SOAP::SOAPInt", [0, 1]],
      ["maxRecordsPerPage", "SOAP::SOAPInt", [0, 1]],
      ["isAdminCondition", "ScalarBooleanFilterCondition", [0, 1]],
      ["loginNameCondition", "ScalarStringFilterCondition", [0, 1]],
      ["orderBy", "UserOrderBy[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => RolePermissions,
    :schema_type => XSD::QName.new(NsSchema, "RolePermissions"),
    :schema_element => [
      ["create", "SOAP::SOAPBoolean"],
      ["update", "SOAP::SOAPBoolean"],
      ["delete", "SOAP::SOAPBoolean"],
      ["view", "SOAP::SOAPBoolean"],
      ["approve", "SOAP::SOAPBoolean", [0, 1]],
      ["advanced", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Permissions,
    :schema_type => XSD::QName.new(NsSchema, "Permissions"),
    :schema_element => [
      ["internalDataSources", "RolePermissions", [0, 1]],
      ["externalDataSources", "RolePermissions", [0, 1]],
      ["targets", "RolePermissions", [0, 1]],
      ["suppressionLists", "RolePermissions", [0, 1]],
      ["seedLists", "RolePermissions", [0, 1]],
      ["messageTemplates", "RolePermissions", [0, 1]],
      ["attachments", "RolePermissions", [0, 1]],
      ["contentBlocks", "RolePermissions", [0, 1]],
      ["mailings", "RolePermissions", [0, 1]],
      ["txMailings", "RolePermissions", [0, 1]],
      ["reports", "RolePermissions", [0, 1]],
      ["bounceAddresses", "RolePermissions", [0, 1]],
      ["fromAddresses", "RolePermissions", [0, 1]],
      ["replyAddresses", "RolePermissions", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => RoleId,
    :schema_type => XSD::QName.new(NsSchema, "RoleId"),
    :schema_basetype => XSD::QName.new(NsSchema, "ObjectId"),
    :schema_element => [
      ["id", "SOAP::SOAPString"]
    ]
  )

  EncodedRegistry.register(
    :class => Role,
    :schema_type => XSD::QName.new(NsSchema, "Role"),
    :schema_basetype => XSD::QName.new(NsSchema, "BaseObject"),
    :schema_element => [
      ["modifiedTime", "SOAP::SOAPDateTime", [0, 1]],
      ["objectId", "ObjectId", [0, 1]],
      ["version", "SOAP::SOAPInt", [0, 1]],
      ["description", "SOAP::SOAPString", [0, 1]],
      ["name", "SOAP::SOAPString"],
      ["organizationId", "OrganizationId", [0, 1]],
      ["permissions", "Permissions", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => RoleFilter,
    :schema_type => XSD::QName.new(NsSchema, "RoleFilter"),
    :schema_basetype => XSD::QName.new(NsSchema, "BaseFilter"),
    :schema_element => [
      ["isAscending", "SOAP::SOAPBoolean", [0, 1]],
      ["pageNumber", "SOAP::SOAPInt", [0, 1]],
      ["recordsPerPage", "SOAP::SOAPInt", [0, 1]],
      ["maxRecordsPerPage", "SOAP::SOAPInt", [0, 1]],
      ["orderBy", "RoleOrderBy[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AssignedRoleId,
    :schema_type => XSD::QName.new(NsSchema, "AssignedRoleId"),
    :schema_basetype => XSD::QName.new(NsSchema, "ObjectId"),
    :schema_element => [
      ["id", "SOAP::SOAPString"]
    ]
  )

  EncodedRegistry.register(
    :class => AssignedRole,
    :schema_type => XSD::QName.new(NsSchema, "AssignedRole"),
    :schema_basetype => XSD::QName.new(NsSchema, "BaseObject"),
    :schema_element => [
      ["modifiedTime", "SOAP::SOAPDateTime", [0, 1]],
      ["objectId", "ObjectId", [0, 1]],
      ["version", "SOAP::SOAPInt", [0, 1]],
      ["roleId", "RoleId"],
      ["organizationId", "OrganizationId"],
      ["userId", "UserId"]
    ]
  )

  EncodedRegistry.register(
    :class => AssignedRoleFilter,
    :schema_type => XSD::QName.new(NsSchema, "AssignedRoleFilter"),
    :schema_basetype => XSD::QName.new(NsSchema, "BaseFilter"),
    :schema_element => [
      ["isAscending", "SOAP::SOAPBoolean", [0, 1]],
      ["pageNumber", "SOAP::SOAPInt", [0, 1]],
      ["recordsPerPage", "SOAP::SOAPInt", [0, 1]],
      ["maxRecordsPerPage", "SOAP::SOAPInt", [0, 1]],
      ["roleIdCondition", "ScalarIdFilterCondition", [0, 1]],
      ["organizationIdCondition", "ScalarIdFilterCondition", [0, 1]],
      ["userIdCondition", "ScalarIdFilterCondition", [0, 1]],
      ["orderBy", "AssignedRoleOrderBy[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => SystemAddressId,
    :schema_type => XSD::QName.new(NsSchema, "SystemAddressId"),
    :schema_basetype => XSD::QName.new(NsSchema, "ObjectId"),
    :schema_element => [
      ["id", "SOAP::SOAPString"]
    ]
  )

  EncodedRegistry.register(
    :class => SystemAddress,
    :schema_type => XSD::QName.new(NsSchema, "SystemAddress"),
    :schema_basetype => XSD::QName.new(NsSchema, "BaseObject"),
    :schema_element => [
      ["modifiedTime", "SOAP::SOAPDateTime", [0, 1]],
      ["objectId", "ObjectId", [0, 1]],
      ["version", "SOAP::SOAPInt", [0, 1]],
      ["createdTime", "SOAP::SOAPDateTime", [0, 1]],
      ["description", "SOAP::SOAPString", [0, 1]],
      ["emailAddress", "SOAP::SOAPString"],
      [ :choice,
        ["isBounce", "SOAP::SOAPBoolean"],
        [
          ["fromName", "SOAP::SOAPString", [0, 1]],
          ["isFrom", "SOAP::SOAPBoolean"]
        ],
        ["isReply", "SOAP::SOAPBoolean"]
      ],
      ["organizationId", "OrganizationId", [0, 1]],
      ["ownerId", "UserId", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => SystemAddressFilter,
    :schema_type => XSD::QName.new(NsSchema, "SystemAddressFilter"),
    :schema_basetype => XSD::QName.new(NsSchema, "BaseFilter"),
    :schema_element => [
      ["isAscending", "SOAP::SOAPBoolean", [0, 1]],
      ["pageNumber", "SOAP::SOAPInt", [0, 1]],
      ["recordsPerPage", "SOAP::SOAPInt", [0, 1]],
      ["maxRecordsPerPage", "SOAP::SOAPInt", [0, 1]],
      ["typeCondition", "ScalarStringFilterCondition"],
      ["userIdCondition", "ScalarIdFilterCondition", [0, 1]],
      ["orderBy", "SystemAddressOrderBy[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => CampaignId,
    :schema_type => XSD::QName.new(NsSchema, "CampaignId"),
    :schema_basetype => XSD::QName.new(NsSchema, "ObjectId"),
    :schema_element => [
      ["id", "SOAP::SOAPString"]
    ]
  )

  EncodedRegistry.register(
    :class => Campaign,
    :schema_type => XSD::QName.new(NsSchema, "Campaign"),
    :schema_basetype => XSD::QName.new(NsSchema, "BaseObject"),
    :schema_element => [
      ["modifiedTime", "SOAP::SOAPDateTime", [0, 1]],
      ["objectId", "ObjectId", [0, 1]],
      ["version", "SOAP::SOAPInt", [0, 1]],
      ["createdTime", "SOAP::SOAPDateTime", [0, 1]],
      ["description", "SOAP::SOAPString", [0, 1]],
      ["name", "SOAP::SOAPString"],
      ["organizationId", "OrganizationId", [0, 1]],
      ["ownerId", "UserId", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => CampaignFilter,
    :schema_type => XSD::QName.new(NsSchema, "CampaignFilter"),
    :schema_basetype => XSD::QName.new(NsSchema, "BaseFilter"),
    :schema_element => [
      ["isAscending", "SOAP::SOAPBoolean", [0, 1]],
      ["pageNumber", "SOAP::SOAPInt", [0, 1]],
      ["recordsPerPage", "SOAP::SOAPInt", [0, 1]],
      ["maxRecordsPerPage", "SOAP::SOAPInt", [0, 1]],
      ["nameCondition", "ScalarStringFilterCondition", [0, 1]],
      ["userIdCondition", "ScalarIdFilterCondition", [0, 1]],
      ["orderBy", "CampaignOrderBy[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => MediaServerId,
    :schema_type => XSD::QName.new(NsSchema, "MediaServerId"),
    :schema_basetype => XSD::QName.new(NsSchema, "ObjectId"),
    :schema_element => [
      ["id", "SOAP::SOAPString"]
    ]
  )

  EncodedRegistry.register(
    :class => MediaServer,
    :schema_type => XSD::QName.new(NsSchema, "MediaServer"),
    :schema_basetype => XSD::QName.new(NsSchema, "BaseObject"),
    :schema_element => [
      ["modifiedTime", "SOAP::SOAPDateTime", [0, 1]],
      ["objectId", "ObjectId", [0, 1]],
      ["version", "SOAP::SOAPInt", [0, 1]],
      ["createdTime", "SOAP::SOAPDateTime", [0, 1]],
      ["defaultUrl", "SOAP::SOAPAnyURI", [0, 1]],
      ["description", "SOAP::SOAPString", [0, 1]],
      ["isWritable", "SOAP::SOAPBoolean"],
      ["name", "SOAP::SOAPString"],
      ["organizationId", "OrganizationId", [0, 1]],
      ["ownerId", "UserId", [0, 1]],
      ["server", "MediaServer::Server[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => MediaServer::Server,
    :schema_name => XSD::QName.new(NsSchema, "server"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["defaultImagePath", "SOAP::SOAPString"],
      ["host", "SOAP::SOAPString"],
      ["login", "SOAP::SOAPString"],
      ["password", "SOAP::SOAPString", [0, 1]],
      ["sshPort", "SOAP::SOAPInt"]
    ]
  )

  EncodedRegistry.register(
    :class => MediaServerFilter,
    :schema_type => XSD::QName.new(NsSchema, "MediaServerFilter"),
    :schema_basetype => XSD::QName.new(NsSchema, "BaseFilter"),
    :schema_element => [
      ["isAscending", "SOAP::SOAPBoolean", [0, 1]],
      ["pageNumber", "SOAP::SOAPInt", [0, 1]],
      ["recordsPerPage", "SOAP::SOAPInt", [0, 1]],
      ["maxRecordsPerPage", "SOAP::SOAPInt", [0, 1]],
      ["nameCondition", "ScalarStringFilterCondition", [0, 1]],
      ["urlCondition", "ScalarStringFilterCondition", [0, 1]],
      ["userIdCondition", "ScalarIdFilterCondition", [0, 1]],
      ["writableCondition", "ScalarBooleanFilterCondition", [0, 1]],
      ["orderBy", "MediaServerOrderBy[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => WebAnalyticsId,
    :schema_type => XSD::QName.new(NsSchema, "WebAnalyticsId"),
    :schema_basetype => XSD::QName.new(NsSchema, "ObjectId"),
    :schema_element => [
      ["id", "SOAP::SOAPString"]
    ]
  )

  EncodedRegistry.register(
    :class => WebAnalytics,
    :schema_type => XSD::QName.new(NsSchema, "WebAnalytics"),
    :schema_basetype => XSD::QName.new(NsSchema, "BaseObject"),
    :schema_element => [
      ["modifiedTime", "SOAP::SOAPDateTime", [0, 1]],
      ["objectId", "ObjectId", [0, 1]],
      ["version", "SOAP::SOAPInt", [0, 1]],
      ["createdTime", "SOAP::SOAPDateTime", [0, 1]],
      ["description", "SOAP::SOAPString", [0, 1]],
      ["name", "SOAP::SOAPString"],
      ["organizationId", "OrganizationId", [0, 1]],
      ["ownerId", "UserId", [0, 1]],
      ["parameter", "NameValuePair[]", [1, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => WebAnalyticsFilter,
    :schema_type => XSD::QName.new(NsSchema, "WebAnalyticsFilter"),
    :schema_basetype => XSD::QName.new(NsSchema, "BaseFilter"),
    :schema_element => [
      ["isAscending", "SOAP::SOAPBoolean", [0, 1]],
      ["pageNumber", "SOAP::SOAPInt", [0, 1]],
      ["recordsPerPage", "SOAP::SOAPInt", [0, 1]],
      ["maxRecordsPerPage", "SOAP::SOAPInt", [0, 1]],
      ["nameCondition", "ScalarStringFilterCondition", [0, 1]],
      ["userIdCondition", "ScalarIdFilterCondition", [0, 1]],
      ["orderBy", "WebAnalyticsOrderBy[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => MailingClassId,
    :schema_type => XSD::QName.new(NsSchema, "MailingClassId"),
    :schema_basetype => XSD::QName.new(NsSchema, "ObjectId"),
    :schema_element => [
      ["id", "SOAP::SOAPString"]
    ]
  )

  EncodedRegistry.register(
    :class => MailingClass,
    :schema_type => XSD::QName.new(NsSchema, "MailingClass"),
    :schema_basetype => XSD::QName.new(NsSchema, "BaseObject"),
    :schema_element => [
      ["modifiedTime", "SOAP::SOAPDateTime", [0, 1]],
      ["objectId", "ObjectId", [0, 1]],
      ["version", "SOAP::SOAPInt", [0, 1]],
      ["createdTime", "SOAP::SOAPDateTime", [0, 1]],
      ["description", "SOAP::SOAPString", [0, 1]],
      ["name", "SOAP::SOAPString"],
      ["organizationId", "OrganizationId[]", [1, nil]],
      ["ownerId", "UserId", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => MailingClassFilter,
    :schema_type => XSD::QName.new(NsSchema, "MailingClassFilter"),
    :schema_basetype => XSD::QName.new(NsSchema, "BaseFilter"),
    :schema_element => [
      ["isAscending", "SOAP::SOAPBoolean", [0, 1]],
      ["pageNumber", "SOAP::SOAPInt", [0, 1]],
      ["recordsPerPage", "SOAP::SOAPInt", [0, 1]],
      ["maxRecordsPerPage", "SOAP::SOAPInt", [0, 1]],
      ["nameCondition", "ScalarStringFilterCondition", [0, 1]],
      ["userIdCondition", "ScalarIdFilterCondition", [0, 1]],
      ["orderBy", "MailingClassOrderBy[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => StrongtoolId,
    :schema_type => XSD::QName.new(NsSchema, "StrongtoolId"),
    :schema_basetype => XSD::QName.new(NsSchema, "ObjectId"),
    :schema_element => [
      ["id", "SOAP::SOAPString"]
    ]
  )

  EncodedRegistry.register(
    :class => Strongtool,
    :schema_type => XSD::QName.new(NsSchema, "Strongtool"),
    :schema_basetype => XSD::QName.new(NsSchema, "BaseObject"),
    :schema_element => [
      ["modifiedTime", "SOAP::SOAPDateTime", [0, 1]],
      ["objectId", "ObjectId", [0, 1]],
      ["version", "SOAP::SOAPInt", [0, 1]],
      ["name", "SOAP::SOAPString"],
      ["description", "SOAP::SOAPString", [0, 1]],
      ["url", "SOAP::SOAPString"],
      ["openAs", "StrongtoolOpenAs"],
      ["organizationId", "OrganizationId", [0, 1]],
      ["ownerId", "UserId", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => StrongtoolFilter,
    :schema_type => XSD::QName.new(NsSchema, "StrongtoolFilter"),
    :schema_basetype => XSD::QName.new(NsSchema, "BaseFilter"),
    :schema_element => [
      ["isAscending", "SOAP::SOAPBoolean", [0, 1]],
      ["pageNumber", "SOAP::SOAPInt", [0, 1]],
      ["recordsPerPage", "SOAP::SOAPInt", [0, 1]],
      ["maxRecordsPerPage", "SOAP::SOAPInt", [0, 1]],
      ["nameCondition", "ScalarStringFilterCondition", [0, 1]],
      ["openAsCondition", "ScalarStringFilterCondition", [0, 1]],
      ["orderBy", "StrongtoolOrderBy[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => OrganizationToken,
    :schema_type => XSD::QName.new(NsSchema, "OrganizationToken"),
    :schema_element => [
      ["organizationName", "SOAP::SOAPString"],
      ["subOrganizationId", "OrganizationId", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => IsSSO,
    :schema_type => XSD::QName.new(NsSchema, "IsSSO"),
    :schema_element => []
  )

  EncodedRegistry.register(
    :class => ObjectId,
    :schema_type => XSD::QName.new(NsSchema, "ObjectId"),
    :schema_element => [
      ["id", "SOAP::SOAPString"]
    ]
  )

  EncodedRegistry.register(
    :class => NameValuePair,
    :schema_type => XSD::QName.new(NsSchema, "NameValuePair"),
    :schema_element => [
      ["name", "SOAP::SOAPString"],
      ["value", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ScalarBooleanFilterCondition,
    :schema_type => XSD::QName.new(NsSchema, "ScalarBooleanFilterCondition"),
    :schema_basetype => XSD::QName.new(NsSchema, "BooleanFilterCondition"),
    :schema_element => [
      ["value", "SOAP::SOAPBoolean"],
      ["operator", "FilterBooleanScalarOperator"]
    ]
  )

  EncodedRegistry.register(
    :class => ScalarIntegerFilterCondition,
    :schema_type => XSD::QName.new(NsSchema, "ScalarIntegerFilterCondition"),
    :schema_basetype => XSD::QName.new(NsSchema, "IntegerFilterCondition"),
    :schema_element => [
      ["value", "SOAP::SOAPInt"],
      ["operator", "FilterIntegerScalarOperator"]
    ]
  )

  EncodedRegistry.register(
    :class => ArrayIntegerFilterCondition,
    :schema_type => XSD::QName.new(NsSchema, "ArrayIntegerFilterCondition"),
    :schema_basetype => XSD::QName.new(NsSchema, "IntegerFilterCondition"),
    :schema_element => [
      ["value", "SOAP::SOAPInt[]", [0, nil]],
      ["operator", "FilterArrayOperator"]
    ]
  )

  EncodedRegistry.register(
    :class => ScalarIdFilterCondition,
    :schema_type => XSD::QName.new(NsSchema, "ScalarIdFilterCondition"),
    :schema_basetype => XSD::QName.new(NsSchema, "IdFilterCondition"),
    :schema_element => [
      ["value", "ObjectId"],
      ["operator", "FilterIdScalarOperator"]
    ]
  )

  EncodedRegistry.register(
    :class => ArrayIdFilterCondition,
    :schema_type => XSD::QName.new(NsSchema, "ArrayIdFilterCondition"),
    :schema_basetype => XSD::QName.new(NsSchema, "IdFilterCondition"),
    :schema_element => [
      ["value", "ObjectId[]", [0, nil]],
      ["operator", "FilterArrayOperator"]
    ]
  )

  EncodedRegistry.register(
    :class => ScalarStringFilterCondition,
    :schema_type => XSD::QName.new(NsSchema, "ScalarStringFilterCondition"),
    :schema_basetype => XSD::QName.new(NsSchema, "StringFilterCondition"),
    :schema_element => [
      ["value", "SOAP::SOAPString"],
      ["operator", "FilterStringScalarOperator"]
    ]
  )

  EncodedRegistry.register(
    :class => ArrayStringFilterCondition,
    :schema_type => XSD::QName.new(NsSchema, "ArrayStringFilterCondition"),
    :schema_basetype => XSD::QName.new(NsSchema, "StringFilterCondition"),
    :schema_element => [
      ["value", "SOAP::SOAPString[]", [0, nil]],
      ["operator", "FilterArrayOperator"]
    ]
  )

  EncodedRegistry.register(
    :class => AddRecordsResponse,
    :schema_type => XSD::QName.new(NsSchema, "AddRecordsResponse"),
    :schema_basetype => XSD::QName.new(NsSchema, "Response"),
    :schema_element => [
      ["success", "SOAP::SOAPBoolean"]
    ]
  )

  EncodedRegistry.register(
    :class => UpsertRecordsResponse,
    :schema_type => XSD::QName.new(NsSchema, "UpsertRecordsResponse"),
    :schema_basetype => XSD::QName.new(NsSchema, "Response"),
    :schema_element => [
      ["success", "SOAP::SOAPBoolean"]
    ]
  )

  EncodedRegistry.register(
    :class => ImportFtpFileResponse,
    :schema_type => XSD::QName.new(NsSchema, "ImportFtpFileResponse"),
    :schema_basetype => XSD::QName.new(NsSchema, "Response"),
    :schema_element => [
      ["success", "SOAP::SOAPBoolean"]
    ]
  )

  EncodedRegistry.register(
    :class => CopyResponse,
    :schema_type => XSD::QName.new(NsSchema, "CopyResponse"),
    :schema_basetype => XSD::QName.new(NsSchema, "Response"),
    :schema_element => [
      ["objectId", "ObjectId"]
    ]
  )

  EncodedRegistry.register(
    :class => CreateRequest,
    :schema_type => XSD::QName.new(NsSchema, "CreateRequest"),
    :schema_element => [
      ["baseObject", "BaseObject[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => BatchCreateResponse,
    :schema_type => XSD::QName.new(NsSchema, "BatchCreateResponse"),
    :schema_basetype => XSD::QName.new(NsSchema, "BatchResponse"),
    :schema_element => [
      ["success", "SOAP::SOAPBoolean[]", [0, nil]],
      ["fault", "FaultDetail[]", [0, nil]],
      ["createResponse", "CreateResponse[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => CreateResponse,
    :schema_type => XSD::QName.new(NsSchema, "CreateResponse"),
    :schema_basetype => XSD::QName.new(NsSchema, "Response"),
    :schema_element => [
      ["objectId", "ObjectId"]
    ]
  )

  EncodedRegistry.register(
    :class => ExportRecordsResponse,
    :schema_type => XSD::QName.new(NsSchema, "ExportRecordsResponse"),
    :schema_basetype => XSD::QName.new(NsSchema, "Response"),
    :schema_element => [
      ["data", "SOAP::SOAPBase64", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => DeleteRequest,
    :schema_type => XSD::QName.new(NsSchema, "DeleteRequest"),
    :schema_element => [
      ["objectId", "ObjectId[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => BatchDeleteResponse,
    :schema_type => XSD::QName.new(NsSchema, "BatchDeleteResponse"),
    :schema_basetype => XSD::QName.new(NsSchema, "BatchResponse"),
    :schema_element => [
      ["success", "SOAP::SOAPBoolean[]", [0, nil]],
      ["fault", "FaultDetail[]", [0, nil]],
      ["deleteResponse", "DeleteResponse[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => DeleteResponse,
    :schema_type => XSD::QName.new(NsSchema, "DeleteResponse"),
    :schema_basetype => XSD::QName.new(NsSchema, "Response"),
    :schema_element => [
      ["success", "SOAP::SOAPBoolean"]
    ]
  )

  EncodedRegistry.register(
    :class => GetRequest,
    :schema_type => XSD::QName.new(NsSchema, "GetRequest"),
    :schema_element => [
      ["objectId", "ObjectId[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => BatchGetResponse,
    :schema_type => XSD::QName.new(NsSchema, "BatchGetResponse"),
    :schema_basetype => XSD::QName.new(NsSchema, "BatchResponse"),
    :schema_element => [
      ["success", "SOAP::SOAPBoolean[]", [0, nil]],
      ["fault", "FaultDetail[]", [0, nil]],
      ["getResponse", "GetResponse[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => GetResponse,
    :schema_type => XSD::QName.new(NsSchema, "GetResponse"),
    :schema_basetype => XSD::QName.new(NsSchema, "Response"),
    :schema_element => [
      ["baseObject", "BaseObject", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => BatchUpdateResponse,
    :schema_type => XSD::QName.new(NsSchema, "BatchUpdateResponse"),
    :schema_basetype => XSD::QName.new(NsSchema, "BatchResponse"),
    :schema_element => [
      ["success", "SOAP::SOAPBoolean[]", [0, nil]],
      ["fault", "FaultDetail[]", [0, nil]],
      ["updateResponse", "UpdateResponse[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => GetStatisticsResponse,
    :schema_type => XSD::QName.new(NsSchema, "GetStatisticsResponse"),
    :schema_basetype => XSD::QName.new(NsSchema, "Response"),
    :schema_element => []
  )

  EncodedRegistry.register(
    :class => ImportContentRequest,
    :schema_type => XSD::QName.new(NsSchema, "ImportContentRequest"),
    :schema_element => [
      ["content", "SOAP::SOAPBase64"]
    ]
  )

  EncodedRegistry.register(
    :class => ImportContentResponse,
    :schema_type => XSD::QName.new(NsSchema, "ImportContentResponse"),
    :schema_basetype => XSD::QName.new(NsSchema, "Response"),
    :schema_element => [
      ["success", "SOAP::SOAPBoolean"]
    ]
  )

  EncodedRegistry.register(
    :class => ListRequest,
    :schema_type => XSD::QName.new(NsSchema, "ListRequest"),
    :schema_element => [
      ["filter", "BaseFilter", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ListResponse,
    :schema_type => XSD::QName.new(NsSchema, "ListResponse"),
    :schema_basetype => XSD::QName.new(NsSchema, "Response"),
    :schema_element => [
      ["objectId", "ObjectId[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => RemoveRecordsResponse,
    :schema_type => XSD::QName.new(NsSchema, "RemoveRecordsResponse"),
    :schema_basetype => XSD::QName.new(NsSchema, "Response"),
    :schema_element => [
      ["recordsRemoved", "SOAP::SOAPInt"]
    ]
  )

  EncodedRegistry.register(
    :class => TestRequest,
    :schema_type => XSD::QName.new(NsSchema, "TestRequest"),
    :schema_element => [
      ["address", "SOAP::SOAPString[]", [0, nil]],
      ["format", "MessageFormat[]", [1, nil]],
      ["subjectPrefix", "SOAP::SOAPString", [0, 1]],
      ["testListId", "SeedListId", [0, 1]],
      ["tokenValue", "NameValuePair[]", [0, nil]],
      ["useMultiPart", "SOAP::SOAPBoolean"]
    ]
  )

  EncodedRegistry.register(
    :class => TestResponse,
    :schema_type => XSD::QName.new(NsSchema, "TestResponse"),
    :schema_basetype => XSD::QName.new(NsSchema, "Response"),
    :schema_element => [
      ["success", "SOAP::SOAPBoolean"]
    ]
  )

  EncodedRegistry.register(
    :class => UpdateRequest,
    :schema_type => XSD::QName.new(NsSchema, "UpdateRequest"),
    :schema_element => [
      ["baseObject", "BaseObject[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => UpdateResponse,
    :schema_type => XSD::QName.new(NsSchema, "UpdateResponse"),
    :schema_basetype => XSD::QName.new(NsSchema, "Response"),
    :schema_element => [
      ["success", "SOAP::SOAPBoolean"]
    ]
  )

  EncodedRegistry.register(
    :class => FaultDetail,
    :schema_type => XSD::QName.new(NsSchema, "FaultDetail"),
    :schema_element => [
      ["faultCode", "FaultCode"],
      ["faultMessage", nil]
    ]
  )

  EncodedRegistry.register(
    :class => AuthorizationFaultDetail,
    :schema_type => XSD::QName.new(NsSchema, "AuthorizationFaultDetail"),
    :schema_basetype => XSD::QName.new(NsSchema, "FaultDetail"),
    :schema_element => [
      ["faultCode", "FaultCode"],
      ["faultMessage", nil]
    ]
  )

  EncodedRegistry.register(
    :class => ConcurrentModificationFaultDetail,
    :schema_type => XSD::QName.new(NsSchema, "ConcurrentModificationFaultDetail"),
    :schema_basetype => XSD::QName.new(NsSchema, "FaultDetail"),
    :schema_element => [
      ["faultCode", "FaultCode"],
      ["faultMessage", nil]
    ]
  )

  EncodedRegistry.register(
    :class => InvalidObjectFaultDetail,
    :schema_type => XSD::QName.new(NsSchema, "InvalidObjectFaultDetail"),
    :schema_basetype => XSD::QName.new(NsSchema, "FaultDetail"),
    :schema_element => [
      ["faultCode", "FaultCode"],
      ["faultMessage", nil]
    ]
  )

  EncodedRegistry.register(
    :class => ObjectNotFoundFaultDetail,
    :schema_type => XSD::QName.new(NsSchema, "ObjectNotFoundFaultDetail"),
    :schema_basetype => XSD::QName.new(NsSchema, "FaultDetail"),
    :schema_element => [
      ["faultCode", "FaultCode"],
      ["faultMessage", nil]
    ]
  )

  EncodedRegistry.register(
    :class => StaleObjectFaultDetail,
    :schema_type => XSD::QName.new(NsSchema, "StaleObjectFaultDetail"),
    :schema_basetype => XSD::QName.new(NsSchema, "FaultDetail"),
    :schema_element => [
      ["faultCode", "FaultCode"],
      ["faultMessage", nil]
    ]
  )

  EncodedRegistry.register(
    :class => UnexpectedFaultDetail,
    :schema_type => XSD::QName.new(NsSchema, "UnexpectedFaultDetail"),
    :schema_basetype => XSD::QName.new(NsSchema, "FaultDetail"),
    :schema_element => [
      ["faultCode", "FaultCode"],
      ["faultMessage", nil]
    ]
  )

  EncodedRegistry.register(
    :class => UnrecognizedObjectTypeFaultDetail,
    :schema_type => XSD::QName.new(NsSchema, "UnrecognizedObjectTypeFaultDetail"),
    :schema_basetype => XSD::QName.new(NsSchema, "FaultDetail"),
    :schema_element => [
      ["faultCode", "FaultCode"],
      ["faultMessage", nil]
    ]
  )

  EncodedRegistry.register(
    :class => BadHandleFaultDetail,
    :schema_type => XSD::QName.new(NsSchema, "BadHandleFaultDetail"),
    :schema_basetype => XSD::QName.new(NsSchema, "FaultDetail"),
    :schema_element => [
      ["faultCode", "FaultCode"],
      ["faultMessage", nil]
    ]
  )

  EncodedRegistry.register(
    :class => DataSourceType,
    :schema_type => XSD::QName.new(NsSchema, "DataSourceType")
  )

  EncodedRegistry.register(
    :class => DatabaseType,
    :schema_type => XSD::QName.new(NsSchema, "DatabaseType")
  )

  EncodedRegistry.register(
    :class => DataSourceFieldType,
    :schema_type => XSD::QName.new(NsSchema, "DataSourceFieldType")
  )

  EncodedRegistry.register(
    :class => DataSourceDataType,
    :schema_type => XSD::QName.new(NsSchema, "DataSourceDataType")
  )

  EncodedRegistry.register(
    :class => DataSourceOperationStatus,
    :schema_type => XSD::QName.new(NsSchema, "DataSourceOperationStatus")
  )

  EncodedRegistry.register(
    :class => DataSourceDedupeOption,
    :schema_type => XSD::QName.new(NsSchema, "DataSourceDedupeOption")
  )

  EncodedRegistry.register(
    :class => DataSourceOrderBy,
    :schema_type => XSD::QName.new(NsSchema, "DataSourceOrderBy")
  )

  EncodedRegistry.register(
    :class => ImportType,
    :schema_type => XSD::QName.new(NsSchema, "ImportType")
  )

  EncodedRegistry.register(
    :class => RecurringImportStatus,
    :schema_type => XSD::QName.new(NsSchema, "RecurringImportStatus")
  )

  EncodedRegistry.register(
    :class => RecurringImportType,
    :schema_type => XSD::QName.new(NsSchema, "RecurringImportType")
  )

  EncodedRegistry.register(
    :class => TargetType,
    :schema_type => XSD::QName.new(NsSchema, "TargetType")
  )

  EncodedRegistry.register(
    :class => TargetOrderBy,
    :schema_type => XSD::QName.new(NsSchema, "TargetOrderBy")
  )

  EncodedRegistry.register(
    :class => SuppressionListOrderBy,
    :schema_type => XSD::QName.new(NsSchema, "SuppressionListOrderBy")
  )

  EncodedRegistry.register(
    :class => SeedListOrderBy,
    :schema_type => XSD::QName.new(NsSchema, "SeedListOrderBy")
  )

  EncodedRegistry.register(
    :class => TrackingTag,
    :schema_type => XSD::QName.new(NsSchema, "TrackingTag")
  )

  EncodedRegistry.register(
    :class => OpenTag,
    :schema_type => XSD::QName.new(NsSchema, "OpenTag")
  )

  EncodedRegistry.register(
    :class => MessageFormat,
    :schema_type => XSD::QName.new(NsSchema, "MessageFormat")
  )

  EncodedRegistry.register(
    :class => MessageType,
    :schema_type => XSD::QName.new(NsSchema, "MessageType")
  )

  EncodedRegistry.register(
    :class => TemplateOrderBy,
    :schema_type => XSD::QName.new(NsSchema, "TemplateOrderBy")
  )

  EncodedRegistry.register(
    :class => ContentBlockOrderBy,
    :schema_type => XSD::QName.new(NsSchema, "ContentBlockOrderBy")
  )

  EncodedRegistry.register(
    :class => AttachmentOrderBy,
    :schema_type => XSD::QName.new(NsSchema, "AttachmentOrderBy")
  )

  EncodedRegistry.register(
    :class => RuleOrderBy,
    :schema_type => XSD::QName.new(NsSchema, "RuleOrderBy")
  )

  EncodedRegistry.register(
    :class => MailingStatus,
    :schema_type => XSD::QName.new(NsSchema, "MailingStatus")
  )

  EncodedRegistry.register(
    :class => MailingType,
    :schema_type => XSD::QName.new(NsSchema, "MailingType")
  )

  EncodedRegistry.register(
    :class => MailingPriority,
    :schema_type => XSD::QName.new(NsSchema, "MailingPriority")
  )

  EncodedRegistry.register(
    :class => DailyOccurrence,
    :schema_type => XSD::QName.new(NsSchema, "DailyOccurrence")
  )

  EncodedRegistry.register(
    :class => WeeklyOccurrence,
    :schema_type => XSD::QName.new(NsSchema, "WeeklyOccurrence")
  )

  EncodedRegistry.register(
    :class => MailingOrderBy,
    :schema_type => XSD::QName.new(NsSchema, "MailingOrderBy")
  )

  EncodedRegistry.register(
    :class => AssetExpiryInterval,
    :schema_type => XSD::QName.new(NsSchema, "AssetExpiryInterval")
  )

  EncodedRegistry.register(
    :class => ProgramStatus,
    :schema_type => XSD::QName.new(NsSchema, "ProgramStatus")
  )

  EncodedRegistry.register(
    :class => ProgramNodeType,
    :schema_type => XSD::QName.new(NsSchema, "ProgramNodeType")
  )

  EncodedRegistry.register(
    :class => ProgramOrderBy,
    :schema_type => XSD::QName.new(NsSchema, "ProgramOrderBy")
  )

  EncodedRegistry.register(
    :class => OrganizationOrderBy,
    :schema_type => XSD::QName.new(NsSchema, "OrganizationOrderBy")
  )

  EncodedRegistry.register(
    :class => UserOrderBy,
    :schema_type => XSD::QName.new(NsSchema, "UserOrderBy")
  )

  EncodedRegistry.register(
    :class => RoleOrderBy,
    :schema_type => XSD::QName.new(NsSchema, "RoleOrderBy")
  )

  EncodedRegistry.register(
    :class => AssignedRoleOrderBy,
    :schema_type => XSD::QName.new(NsSchema, "AssignedRoleOrderBy")
  )

  EncodedRegistry.register(
    :class => SystemAddressType,
    :schema_type => XSD::QName.new(NsSchema, "SystemAddressType")
  )

  EncodedRegistry.register(
    :class => DataSourceImportFrequency,
    :schema_type => XSD::QName.new(NsSchema, "DataSourceImportFrequency")
  )

  EncodedRegistry.register(
    :class => DataSourceImportMode,
    :schema_type => XSD::QName.new(NsSchema, "DataSourceImportMode")
  )

  EncodedRegistry.register(
    :class => SystemAddressOrderBy,
    :schema_type => XSD::QName.new(NsSchema, "SystemAddressOrderBy")
  )

  EncodedRegistry.register(
    :class => CampaignOrderBy,
    :schema_type => XSD::QName.new(NsSchema, "CampaignOrderBy")
  )

  EncodedRegistry.register(
    :class => MediaServerOrderBy,
    :schema_type => XSD::QName.new(NsSchema, "MediaServerOrderBy")
  )

  EncodedRegistry.register(
    :class => WebAnalyticsOrderBy,
    :schema_type => XSD::QName.new(NsSchema, "WebAnalyticsOrderBy")
  )

  EncodedRegistry.register(
    :class => MailingClassOrderBy,
    :schema_type => XSD::QName.new(NsSchema, "MailingClassOrderBy")
  )

  EncodedRegistry.register(
    :class => Forward2FriendOfferTrackingOption,
    :schema_type => XSD::QName.new(NsSchema, "Forward2FriendOfferTrackingOption")
  )

  EncodedRegistry.register(
    :class => StrongtoolOpenAs,
    :schema_type => XSD::QName.new(NsSchema, "StrongtoolOpenAs")
  )

  EncodedRegistry.register(
    :class => StrongtoolOrderBy,
    :schema_type => XSD::QName.new(NsSchema, "StrongtoolOrderBy")
  )

  EncodedRegistry.register(
    :class => DayOfWeek,
    :schema_type => XSD::QName.new(NsSchema, "DayOfWeek")
  )

  EncodedRegistry.register(
    :class => FilterBooleanScalarOperator,
    :schema_type => XSD::QName.new(NsSchema, "FilterBooleanScalarOperator")
  )

  EncodedRegistry.register(
    :class => FilterIdScalarOperator,
    :schema_type => XSD::QName.new(NsSchema, "FilterIdScalarOperator")
  )

  EncodedRegistry.register(
    :class => FilterIntegerScalarOperator,
    :schema_type => XSD::QName.new(NsSchema, "FilterIntegerScalarOperator")
  )

  EncodedRegistry.register(
    :class => FilterStringScalarOperator,
    :schema_type => XSD::QName.new(NsSchema, "FilterStringScalarOperator")
  )

  EncodedRegistry.register(
    :class => FilterArrayOperator,
    :schema_type => XSD::QName.new(NsSchema, "FilterArrayOperator")
  )

  EncodedRegistry.register(
    :class => ComparisonOperation,
    :schema_type => XSD::QName.new(NsSchema, "ComparisonOperation")
  )

  EncodedRegistry.register(
    :class => LogicalOperation,
    :schema_type => XSD::QName.new(NsSchema, "LogicalOperation")
  )

  EncodedRegistry.register(
    :class => CharSet,
    :schema_type => XSD::QName.new(NsSchema, "CharSet")
  )

  EncodedRegistry.register(
    :class => MSEncoding,
    :schema_type => XSD::QName.new(NsSchema, "Encoding")
  )

  EncodedRegistry.register(
    :class => FaultCode,
    :schema_type => XSD::QName.new(NsSchema, "FaultCode")
  )

  LiteralRegistry.register(
    :class => GetSingleSignOnURLRequest,
    :schema_type => XSD::QName.new(NsSchema, "GetSingleSignOnURLRequest"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => GetSingleSignOnURLResponse,
    :schema_type => XSD::QName.new(NsSchema, "GetSingleSignOnURLResponse"),
    :schema_basetype => XSD::QName.new(NsSchema, "Response"),
    :schema_element => [
      ["url", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => InternalDataSourceId,
    :schema_type => XSD::QName.new(NsSchema, "InternalDataSourceId"),
    :schema_basetype => XSD::QName.new(NsSchema, "DataSourceId"),
    :schema_element => [
      ["id", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => ExternalDataSourceId,
    :schema_type => XSD::QName.new(NsSchema, "ExternalDataSourceId"),
    :schema_basetype => XSD::QName.new(NsSchema, "DataSourceId"),
    :schema_element => [
      ["id", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => InternalDataSourceExtnId,
    :schema_type => XSD::QName.new(NsSchema, "InternalDataSourceExtnId"),
    :schema_basetype => XSD::QName.new(NsSchema, "DataSourceId"),
    :schema_element => [
      ["id", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => ExtensionId,
    :schema_type => XSD::QName.new(NsSchema, "ExtensionId"),
    :schema_basetype => XSD::QName.new(NsSchema, "DataSourceId"),
    :schema_element => [
      ["id", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => CatalogId,
    :schema_type => XSD::QName.new(NsSchema, "CatalogId"),
    :schema_basetype => XSD::QName.new(NsSchema, "ExtensionId"),
    :schema_element => [
      ["id", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => InternalDataSource,
    :schema_type => XSD::QName.new(NsSchema, "InternalDataSource"),
    :schema_basetype => XSD::QName.new(NsSchema, "DataSource"),
    :schema_element => [
      ["modifiedTime", "SOAP::SOAPDateTime", [0, 1]],
      ["objectId", "ObjectId", [0, 1]],
      ["version", "SOAP::SOAPInt", [0, 1]],
      ["campaignId", "CampaignId", [0, 1]],
      ["createdTime", "SOAP::SOAPDateTime", [0, 1]],
      ["description", "SOAP::SOAPString", [0, 1]],
      ["field", "DataSourceField[]", [0, nil]],
      ["name", "SOAP::SOAPString"],
      ["operationStatus", "DataSourceOperationStatus", [0, 1]],
      ["organizationId", "OrganizationId", [0, 1]],
      ["ownerId", "UserId", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Extension,
    :schema_type => XSD::QName.new(NsSchema, "Extension"),
    :schema_basetype => XSD::QName.new(NsSchema, "DataSource"),
    :schema_element => [
      ["modifiedTime", "SOAP::SOAPDateTime", [0, 1]],
      ["objectId", "ObjectId", [0, 1]],
      ["version", "SOAP::SOAPInt", [0, 1]],
      ["campaignId", "CampaignId", [0, 1]],
      ["createdTime", "SOAP::SOAPDateTime", [0, 1]],
      ["description", "SOAP::SOAPString", [0, 1]],
      ["field", "DataSourceField[]", [0, nil]],
      ["name", "SOAP::SOAPString"],
      ["operationStatus", "DataSourceOperationStatus", [0, 1]],
      ["organizationId", "OrganizationId", [0, 1]],
      ["ownerId", "UserId", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Catalog,
    :schema_type => XSD::QName.new(NsSchema, "Catalog"),
    :schema_basetype => XSD::QName.new(NsSchema, "Extension"),
    :schema_element => [
      ["modifiedTime", "SOAP::SOAPDateTime", [0, 1]],
      ["objectId", "ObjectId", [0, 1]],
      ["version", "SOAP::SOAPInt", [0, 1]],
      ["campaignId", "CampaignId", [0, 1]],
      ["createdTime", "SOAP::SOAPDateTime", [0, 1]],
      ["description", "SOAP::SOAPString", [0, 1]],
      ["field", "DataSourceField[]", [0, nil]],
      ["name", "SOAP::SOAPString"],
      ["operationStatus", "DataSourceOperationStatus", [0, 1]],
      ["organizationId", "OrganizationId", [0, 1]],
      ["ownerId", "UserId", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => InternalDataSourceExtn,
    :schema_type => XSD::QName.new(NsSchema, "InternalDataSourceExtn"),
    :schema_basetype => XSD::QName.new(NsSchema, "DataSource"),
    :schema_element => [
      ["modifiedTime", "SOAP::SOAPDateTime", [0, 1]],
      ["objectId", "ObjectId", [0, 1]],
      ["version", "SOAP::SOAPInt", [0, 1]],
      ["campaignId", "CampaignId", [0, 1]],
      ["createdTime", "SOAP::SOAPDateTime", [0, 1]],
      ["description", "SOAP::SOAPString", [0, 1]],
      ["field", "DataSourceField[]", [0, nil]],
      ["name", "SOAP::SOAPString"],
      ["operationStatus", "DataSourceOperationStatus", [0, 1]],
      ["organizationId", "OrganizationId", [0, 1]],
      ["ownerId", "UserId", [0, 1]],
      ["importFrequency", "DataSourceImportFrequency", [0, 1]],
      ["startTime", "SOAP::SOAPString", [0, 1]],
      ["hourlyInterval", "SOAP::SOAPLong", [0, 1]],
      ["weeklyDays", "DayOfWeek[]", [0, nil]],
      ["importMode", "DataSourceImportMode", [0, 1]],
      ["useFTP", "SOAP::SOAPBoolean"]
    ]
  )

  LiteralRegistry.register(
    :class => ExternalDataSource,
    :schema_type => XSD::QName.new(NsSchema, "ExternalDataSource"),
    :schema_basetype => XSD::QName.new(NsSchema, "DataSource"),
    :schema_element => [
      ["modifiedTime", "SOAP::SOAPDateTime", [0, 1]],
      ["objectId", "ObjectId", [0, 1]],
      ["version", "SOAP::SOAPInt", [0, 1]],
      ["campaignId", "CampaignId", [0, 1]],
      ["createdTime", "SOAP::SOAPDateTime", [0, 1]],
      ["description", "SOAP::SOAPString", [0, 1]],
      ["field", "DataSourceField[]", [0, nil]],
      ["name", "SOAP::SOAPString"],
      ["operationStatus", "DataSourceOperationStatus", [0, 1]],
      ["organizationId", "OrganizationId", [0, 1]],
      ["ownerId", "UserId", [0, 1]],
      ["connectionInfo", "ExternalDataSource::ConnectionInfo"],
      ["enableLocalCopy", "SOAP::SOAPBoolean"],
      [ :choice,
        ["tableName", "SOAP::SOAPString"],
        [
          ["allowRefreshAtLaunchTime", "SOAP::SOAPBoolean"],
          [ :choice,
            ["hourlyRefresh", "ExternalDataSource::HourlyRefresh"],
            ["dailyRefresh", "ExternalDataSource::DailyRefresh"],
            ["weeklyRefresh", "ExternalDataSource::WeeklyRefresh"]
          ],
          ["writebackTable", "SOAP::SOAPString", [0, 1]],
          [ :choice,
            ["advancedQuery", "SOAP::SOAPString"],
            ["sourceTableName", "SOAP::SOAPString"]
          ]
        ]
      ]
    ]
  )

  LiteralRegistry.register(
    :class => ExternalDataSource::ConnectionInfo,
    :schema_name => XSD::QName.new(NsSchema, "connectionInfo"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["databaseName", "SOAP::SOAPString"],
      ["databaseType", "DatabaseType"],
      ["hostname", "SOAP::SOAPString"],
      ["password", "SOAP::SOAPString", [0, 1]],
      ["port", "SOAP::SOAPString"],
      ["username", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => ExternalDataSource::HourlyRefresh,
    :schema_name => XSD::QName.new(NsSchema, "hourlyRefresh"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["interval", nil]
    ]
  )

  LiteralRegistry.register(
    :class => ExternalDataSource::DailyRefresh,
    :schema_name => XSD::QName.new(NsSchema, "dailyRefresh"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["startTime", "SOAP::SOAPTime"]
    ]
  )

  LiteralRegistry.register(
    :class => ExternalDataSource::WeeklyRefresh,
    :schema_name => XSD::QName.new(NsSchema, "weeklyRefresh"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["startTime", "SOAP::SOAPTime"],
      ["day", "DayOfWeek[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => DataSourceField,
    :schema_type => XSD::QName.new(NsSchema, "DataSourceField"),
    :schema_element => [
      ["dataType", "DataSourceDataType"],
      ["fieldType", "DataSourceFieldType"],
      ["name", "SOAP::SOAPString"],
      ["isPrimaryKey", "SOAP::SOAPBoolean"],
      ["writebackEnabled", "SOAP::SOAPBoolean"]
    ]
  )

  LiteralRegistry.register(
    :class => DataSourceRecord,
    :schema_type => XSD::QName.new(NsSchema, "DataSourceRecord"),
    :schema_element => [
      ["field", "NameValuePair[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => DataSourceFilter,
    :schema_type => XSD::QName.new(NsSchema, "DataSourceFilter"),
    :schema_basetype => XSD::QName.new(NsSchema, "BaseFilter"),
    :schema_element => [
      ["isAscending", "SOAP::SOAPBoolean", [0, 1]],
      ["pageNumber", "SOAP::SOAPInt", [0, 1]],
      ["recordsPerPage", "SOAP::SOAPInt", [0, 1]],
      ["maxRecordsPerPage", "SOAP::SOAPInt", [0, 1]],
      ["campaignIdCondition", "ScalarIdFilterCondition", [0, 1]],
      ["nameCondition", "ScalarStringFilterCondition", [0, 1]],
      ["typeCondition", "ScalarStringFilterCondition"],
      ["userIdCondition", "ScalarIdFilterCondition", [0, 1]],
      ["orderBy", "DataSourceOrderBy[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AddDataSourceRecordsRequest,
    :schema_type => XSD::QName.new(NsSchema, "AddDataSourceRecordsRequest"),
    :schema_basetype => XSD::QName.new(NsSchema, "AddRecordsRequest"),
    :schema_element => [
      ["dataSourceId", "DataSourceId"],
      ["containsFieldNames", "SOAP::SOAPBoolean", [0, 1]],
      ["fieldDelimiter", "SOAP::SOAPString", [0, 1]],
      [ :choice,
        ["dataSourceRecord", "DataSourceRecord[]", [1, nil]],
        ["ftpFileName", "SOAP::SOAPString"],
        ["dataSourceRecordsAttachment", "SOAP::SOAPBase64"]
      ]
    ]
  )

  LiteralRegistry.register(
    :class => UpsertDataSourceRecordsRequest,
    :schema_type => XSD::QName.new(NsSchema, "UpsertDataSourceRecordsRequest"),
    :schema_basetype => XSD::QName.new(NsSchema, "UpsertRecordsRequest"),
    :schema_element => [
      ["dataSourceId", "DataSourceId"],
      ["dataSourceRecord", "DataSourceRecord[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => ImportFtpFileRequest,
    :schema_type => XSD::QName.new(NsSchema, "ImportFtpFileRequest"),
    :schema_element => [
      ["dataSourceId", "DataSourceId"],
      ["containsFieldNames", "SOAP::SOAPBoolean", [0, 1]],
      ["fieldDelimiter", "SOAP::SOAPString", [0, 1]],
      ["ftpFileName", "SOAP::SOAPString"],
      ["importMode", "ImportType"]
    ]
  )

  LiteralRegistry.register(
    :class => GetDataSourceRecordsRequest,
    :schema_type => XSD::QName.new(NsSchema, "GetDataSourceRecordsRequest"),
    :schema_basetype => XSD::QName.new(NsSchema, "GetRecordsRequest"),
    :schema_element => [
      ["dataSourceId", "DataSourceId"],
      ["matchFields", "NameValuePair[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => GetDataSourceRecordsResponse,
    :schema_type => XSD::QName.new(NsSchema, "GetDataSourceRecordsResponse"),
    :schema_basetype => XSD::QName.new(NsSchema, "GetRecordsResponse"),
    :schema_element => [
      ["dataSourceRecord", "DataSourceRecord[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => RemoveDataSourceRecordsRequest,
    :schema_type => XSD::QName.new(NsSchema, "RemoveDataSourceRecordsRequest"),
    :schema_basetype => XSD::QName.new(NsSchema, "RemoveRecordsRequest"),
    :schema_element => [
      ["dataSourceId", "DataSourceId"],
      ["matchFieldName", "SOAP::SOAPString"],
      [ :choice,
        ["record", "SOAP::SOAPString[]", [1, nil]],
        ["recordsAttachment", "SOAP::SOAPBase64"]
      ]
    ]
  )

  LiteralRegistry.register(
    :class => ExportDataSourceRecordsRequest,
    :schema_type => XSD::QName.new(NsSchema, "ExportDataSourceRecordsRequest"),
    :schema_basetype => XSD::QName.new(NsSchema, "ExportRecordsRequest"),
    :schema_element => [
      ["dataSourceId", "DataSourceId"],
      ["useMalformedRecords", "SOAP::SOAPBoolean"],
      ["fieldDelimiter", "SOAP::SOAPString"],
      ["rowDelimiter", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => CopyDataSourceRequest,
    :schema_type => XSD::QName.new(NsSchema, "CopyDataSourceRequest"),
    :schema_basetype => XSD::QName.new(NsSchema, "CopyRequest"),
    :schema_element => [
      ["newName", "SOAP::SOAPString"],
      [ :choice,
        ["fromId", "InternalDataSourceId"],
        ["fromExtnId", "ExtensionId"]
      ]
    ]
  )

  LiteralRegistry.register(
    :class => DedupeDataSourceRecordsRequest,
    :schema_type => XSD::QName.new(NsSchema, "DedupeDataSourceRecordsRequest"),
    :schema_basetype => XSD::QName.new(NsSchema, "DedupeRecordsRequest"),
    :schema_element => [
      ["matchField", "SOAP::SOAPString[]", [1, nil]],
      ["dataSourceId", "DataSourceId"],
      ["option", "DataSourceDedupeOption"]
    ]
  )

  LiteralRegistry.register(
    :class => DedupeRecordsResponse,
    :schema_type => XSD::QName.new(NsSchema, "DedupeRecordsResponse"),
    :schema_basetype => XSD::QName.new(NsSchema, "Response"),
    :schema_element => [
      ["success", "SOAP::SOAPBoolean"]
    ]
  )

  LiteralRegistry.register(
    :class => GetDataSourceStatisticsRequest,
    :schema_type => XSD::QName.new(NsSchema, "GetDataSourceStatisticsRequest"),
    :schema_basetype => XSD::QName.new(NsSchema, "GetStatisticsRequest"),
    :schema_element => [
      ["dataSourceId", "DataSourceId"]
    ]
  )

  LiteralRegistry.register(
    :class => GetDataSourceStatisticsResponse,
    :schema_type => XSD::QName.new(NsSchema, "GetDataSourceStatisticsResponse"),
    :schema_basetype => XSD::QName.new(NsSchema, "GetStatisticsResponse"),
    :schema_element => [
      ["totalInvalidRecords", "SOAP::SOAPInt", [0, 1]],
      ["totalMalformedRecords", "SOAP::SOAPInt", [0, 1]],
      ["totalRecords", "SOAP::SOAPInt", [0, 1]],
      ["totalUnsubscribedRecords", "SOAP::SOAPInt", [0, 1]],
      ["lastRefresh", "SOAP::SOAPDateTime", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => RefreshRecordsRequest,
    :schema_type => XSD::QName.new(NsSchema, "RefreshRecordsRequest"),
    :schema_element => [
      ["dataSourceId", "ExternalDataSourceId"]
    ]
  )

  LiteralRegistry.register(
    :class => RefreshRecordsResponse,
    :schema_type => XSD::QName.new(NsSchema, "RefreshRecordsResponse"),
    :schema_basetype => XSD::QName.new(NsSchema, "Response"),
    :schema_element => [
      ["success", "SOAP::SOAPBoolean"]
    ]
  )

  LiteralRegistry.register(
    :class => CancelRefreshRecordsRequest,
    :schema_type => XSD::QName.new(NsSchema, "CancelRefreshRecordsRequest"),
    :schema_element => [
      ["dataSourceId", "ExternalDataSourceId"]
    ]
  )

  LiteralRegistry.register(
    :class => CancelRefreshRecordsResponse,
    :schema_type => XSD::QName.new(NsSchema, "CancelRefreshRecordsResponse"),
    :schema_basetype => XSD::QName.new(NsSchema, "Response"),
    :schema_element => [
      ["success", "SOAP::SOAPBoolean"]
    ]
  )

  LiteralRegistry.register(
    :class => RecurringImportResult,
    :schema_type => XSD::QName.new(NsSchema, "RecurringImportResult"),
    :schema_element => [
      ["importType", "RecurringImportType"],
      ["importFrom", "SOAP::SOAPString"],
      ["status", "RecurringImportStatus"],
      ["startTime", "SOAP::SOAPDateTime"],
      ["endTime", "SOAP::SOAPDateTime", [0, 1]],
      ["recordsAdded", "SOAP::SOAPInteger"],
      ["recordsUpdated", "SOAP::SOAPInteger"],
      ["recordsMalformed", "SOAP::SOAPInteger"],
      ["errorMessage", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => RecurringImportId,
    :schema_type => XSD::QName.new(NsSchema, "RecurringImportId"),
    :schema_basetype => XSD::QName.new(NsSchema, "ObjectId"),
    :schema_element => [
      ["id", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => FtpImportId,
    :schema_type => XSD::QName.new(NsSchema, "FtpImportId"),
    :schema_basetype => XSD::QName.new(NsSchema, "RecurringImportId"),
    :schema_element => [
      ["id", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => DatabaseImportId,
    :schema_type => XSD::QName.new(NsSchema, "DatabaseImportId"),
    :schema_basetype => XSD::QName.new(NsSchema, "RecurringImportId"),
    :schema_element => [
      ["id", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => DatabaseImport,
    :schema_type => XSD::QName.new(NsSchema, "DatabaseImport"),
    :schema_basetype => XSD::QName.new(NsSchema, "RecurringImport"),
    :schema_element => [
      ["modifiedTime", "SOAP::SOAPDateTime", [0, 1]],
      ["objectId", "ObjectId", [0, 1]],
      ["version", "SOAP::SOAPInt", [0, 1]],
      ["name", "SOAP::SOAPString"],
      ["importTo", "InternalDataSourceId"],
      ["importResult", "RecurringImportResult[]", [0, 10]],
      ["importFrom", "ExternalDataSourceId"]
    ]
  )

  LiteralRegistry.register(
    :class => FtpImport,
    :schema_type => XSD::QName.new(NsSchema, "FtpImport"),
    :schema_basetype => XSD::QName.new(NsSchema, "RecurringImport"),
    :schema_element => [
      ["modifiedTime", "SOAP::SOAPDateTime", [0, 1]],
      ["objectId", "ObjectId", [0, 1]],
      ["version", "SOAP::SOAPInt", [0, 1]],
      ["name", "SOAP::SOAPString"],
      ["importTo", "InternalDataSourceId"],
      ["importResult", "RecurringImportResult[]", [0, 10]],
      ["fileNamePrefix", "SOAP::SOAPString"],
      ["fileNameSuffix", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => StartRecurringImportRequest,
    :schema_type => XSD::QName.new(NsSchema, "StartRecurringImportRequest"),
    :schema_element => [
      ["importId", "RecurringImportId"],
      ["fullRefresh", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => StartRecurringImportResponse,
    :schema_type => XSD::QName.new(NsSchema, "StartRecurringImportResponse"),
    :schema_basetype => XSD::QName.new(NsSchema, "Response"),
    :schema_element => [
      ["success", "SOAP::SOAPBoolean"]
    ]
  )

  LiteralRegistry.register(
    :class => GetRecurringImportStatusRequest,
    :schema_type => XSD::QName.new(NsSchema, "GetRecurringImportStatusRequest"),
    :schema_element => [
      [ :choice,
        ["internalDataSourceId", "InternalDataSourceId"],
        ["extensionId", "ExtensionId"]
      ]
    ]
  )

  LiteralRegistry.register(
    :class => GetRecurringImportStatusResponse,
    :schema_type => XSD::QName.new(NsSchema, "GetRecurringImportStatusResponse"),
    :schema_basetype => XSD::QName.new(NsSchema, "Response"),
    :schema_element => [
      ["importResult", "RecurringImportResult[]", [0, 10]]
    ]
  )

  LiteralRegistry.register(
    :class => FindRecurringImportRequest,
    :schema_type => XSD::QName.new(NsSchema, "FindRecurringImportRequest"),
    :schema_element => [
      [ :choice,
        ["internalDataSourceId", "InternalDataSourceId"],
        ["extensionId", "ExtensionId"]
      ]
    ]
  )

  LiteralRegistry.register(
    :class => FindRecurringImportResponse,
    :schema_type => XSD::QName.new(NsSchema, "FindRecurringImportResponse"),
    :schema_basetype => XSD::QName.new(NsSchema, "Response"),
    :schema_element => [
      ["importId", "RecurringImportId[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => GetRecurringImportRequest,
    :schema_type => XSD::QName.new(NsSchema, "GetRecurringImportRequest"),
    :schema_element => [
      ["importId", "RecurringImportId"]
    ]
  )

  LiteralRegistry.register(
    :class => GetRecurringImportResponse,
    :schema_type => XSD::QName.new(NsSchema, "GetRecurringImportResponse"),
    :schema_basetype => XSD::QName.new(NsSchema, "Response"),
    :schema_element => [
      ["importDetails", "RecurringImport"]
    ]
  )

  LiteralRegistry.register(
    :class => TargetId,
    :schema_type => XSD::QName.new(NsSchema, "TargetId"),
    :schema_basetype => XSD::QName.new(NsSchema, "ObjectId"),
    :schema_element => [
      ["id", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => Target,
    :schema_type => XSD::QName.new(NsSchema, "Target"),
    :schema_basetype => XSD::QName.new(NsSchema, "BaseObject"),
    :schema_element => [
      ["modifiedTime", "SOAP::SOAPDateTime", [0, 1]],
      ["objectId", "ObjectId", [0, 1]],
      ["version", "SOAP::SOAPInt", [0, 1]],
      ["advancedQuery", "SOAP::SOAPString", [0, 1]],
      ["bounceFieldName", "SOAP::SOAPString", [0, 1]],
      ["campaignId", "CampaignId", [0, 1]],
      ["dataSourceId", "DataSourceId"],
      ["emailAddressFieldName", "SOAP::SOAPString", [0, 1]],
      ["excludeBounce", "SOAP::SOAPBoolean"],
      ["excludeUnsubscribe", "SOAP::SOAPBoolean"],
      ["smsAddressFieldName", "SOAP::SOAPString", [0, 1]],
      ["totalRecords", "SOAP::SOAPInt", [0, 1]],
      ["type", "TargetType"],
      ["retargetingDataSourceId", "DataSourceId", [0, 1]],
      ["unsubscribeFieldName", "SOAP::SOAPString", [0, 1]],
      ["createdTime", "SOAP::SOAPDateTime", [0, 1]],
      ["description", "SOAP::SOAPString", [0, 1]],
      ["name", "SOAP::SOAPString"],
      ["organizationId", "OrganizationId", [0, 1]],
      ["ownerId", "UserId", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => TargetFilter,
    :schema_type => XSD::QName.new(NsSchema, "TargetFilter"),
    :schema_basetype => XSD::QName.new(NsSchema, "BaseFilter"),
    :schema_element => [
      ["isAscending", "SOAP::SOAPBoolean", [0, 1]],
      ["pageNumber", "SOAP::SOAPInt", [0, 1]],
      ["recordsPerPage", "SOAP::SOAPInt", [0, 1]],
      ["maxRecordsPerPage", "SOAP::SOAPInt", [0, 1]],
      ["campaignIdCondition", "ScalarIdFilterCondition", [0, 1]],
      ["dataSourceIdCondition", "ScalarIdFilterCondition", [0, 1]],
      ["nameCondition", "ScalarStringFilterCondition", [0, 1]],
      ["typeCondition", "ScalarStringFilterCondition", [0, 1]],
      ["userIdCondition", "ScalarIdFilterCondition", [0, 1]],
      ["orderBy", "TargetOrderBy[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => CopyTargetRequest,
    :schema_type => XSD::QName.new(NsSchema, "CopyTargetRequest"),
    :schema_basetype => XSD::QName.new(NsSchema, "CopyRequest"),
    :schema_element => [
      ["newName", "SOAP::SOAPString"],
      ["fromId", "TargetId"]
    ]
  )

  LiteralRegistry.register(
    :class => ExportTargetRecordsRequest,
    :schema_type => XSD::QName.new(NsSchema, "ExportTargetRecordsRequest"),
    :schema_basetype => XSD::QName.new(NsSchema, "ExportRecordsRequest"),
    :schema_element => [
      ["targetId", "TargetId"],
      ["fieldDelimiter", "SOAP::SOAPString"],
      ["rowDelimiter", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => SuppressionListId,
    :schema_type => XSD::QName.new(NsSchema, "SuppressionListId"),
    :schema_basetype => XSD::QName.new(NsSchema, "ObjectId"),
    :schema_element => [
      ["id", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => SuppressionList,
    :schema_type => XSD::QName.new(NsSchema, "SuppressionList"),
    :schema_basetype => XSD::QName.new(NsSchema, "BaseObject"),
    :schema_element => [
      ["modifiedTime", "SOAP::SOAPDateTime", [0, 1]],
      ["objectId", "ObjectId", [0, 1]],
      ["version", "SOAP::SOAPInt", [0, 1]],
      ["campaignId", "CampaignId", [0, 1]],
      ["includeByDefaultOnMailings", "SOAP::SOAPBoolean"],
      ["totalRecords", "SOAP::SOAPInt", [0, 1]],
      ["createdTime", "SOAP::SOAPDateTime", [0, 1]],
      ["description", "SOAP::SOAPString", [0, 1]],
      ["name", "SOAP::SOAPString"],
      ["organizationId", "OrganizationId", [0, 1]],
      ["ownerId", "UserId", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => SuppressionFilter,
    :schema_type => XSD::QName.new(NsSchema, "SuppressionFilter"),
    :schema_basetype => XSD::QName.new(NsSchema, "BaseFilter"),
    :schema_element => [
      ["isAscending", "SOAP::SOAPBoolean", [0, 1]],
      ["pageNumber", "SOAP::SOAPInt", [0, 1]],
      ["recordsPerPage", "SOAP::SOAPInt", [0, 1]],
      ["maxRecordsPerPage", "SOAP::SOAPInt", [0, 1]],
      ["campaignIdCondition", "ScalarIdFilterCondition", [0, 1]],
      ["nameCondition", "ScalarStringFilterCondition", [0, 1]],
      ["userIdCondition", "ScalarIdFilterCondition", [0, 1]],
      ["orderBy", "SuppressionListOrderBy[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AddSuppressionListRecordsRequest,
    :schema_type => XSD::QName.new(NsSchema, "AddSuppressionListRecordsRequest"),
    :schema_basetype => XSD::QName.new(NsSchema, "AddRecordsRequest"),
    :schema_element => [
      ["suppressionListId", "SuppressionListId"],
      [ :choice,
        ["addressMatch", "SOAP::SOAPString[]", [1, nil]],
        ["addressMatchesAttachment", "SOAP::SOAPBase64"]
      ]
    ]
  )

  LiteralRegistry.register(
    :class => CopySuppressionListRequest,
    :schema_type => XSD::QName.new(NsSchema, "CopySuppressionListRequest"),
    :schema_basetype => XSD::QName.new(NsSchema, "CopyRequest"),
    :schema_element => [
      ["newName", "SOAP::SOAPString"],
      ["fromId", "SuppressionListId"]
    ]
  )

  LiteralRegistry.register(
    :class => ExportSuppressionListRecordsRequest,
    :schema_type => XSD::QName.new(NsSchema, "ExportSuppressionListRecordsRequest"),
    :schema_basetype => XSD::QName.new(NsSchema, "ExportRecordsRequest"),
    :schema_element => [
      ["suppressionListId", "SuppressionListId"]
    ]
  )

  LiteralRegistry.register(
    :class => RemoveSuppressionListRecordsRequest,
    :schema_type => XSD::QName.new(NsSchema, "RemoveSuppressionListRecordsRequest"),
    :schema_basetype => XSD::QName.new(NsSchema, "RemoveRecordsRequest"),
    :schema_element => [
      ["suppressionListId", "SuppressionListId"],
      [ :choice,
        ["addressMatch", "SOAP::SOAPString[]", [1, nil]],
        ["addressMatchesAttachment", "SOAP::SOAPBase64"]
      ]
    ]
  )

  LiteralRegistry.register(
    :class => SeedListId,
    :schema_type => XSD::QName.new(NsSchema, "SeedListId"),
    :schema_basetype => XSD::QName.new(NsSchema, "ObjectId"),
    :schema_element => [
      ["id", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => SeedList,
    :schema_type => XSD::QName.new(NsSchema, "SeedList"),
    :schema_basetype => XSD::QName.new(NsSchema, "BaseObject"),
    :schema_element => [
      ["modifiedTime", "SOAP::SOAPDateTime", [0, 1]],
      ["objectId", "ObjectId", [0, 1]],
      ["version", "SOAP::SOAPInt", [0, 1]],
      ["campaignId", "CampaignId", [0, 1]],
      ["isTestList", "SOAP::SOAPBoolean"],
      ["totalRecords", "SOAP::SOAPInt", [0, 1]],
      ["createdTime", "SOAP::SOAPDateTime", [0, 1]],
      ["description", "SOAP::SOAPString", [0, 1]],
      ["name", "SOAP::SOAPString"],
      ["organizationId", "OrganizationId", [0, 1]],
      ["ownerId", "UserId", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => SeedFilter,
    :schema_type => XSD::QName.new(NsSchema, "SeedFilter"),
    :schema_basetype => XSD::QName.new(NsSchema, "BaseFilter"),
    :schema_element => [
      ["isAscending", "SOAP::SOAPBoolean", [0, 1]],
      ["pageNumber", "SOAP::SOAPInt", [0, 1]],
      ["recordsPerPage", "SOAP::SOAPInt", [0, 1]],
      ["maxRecordsPerPage", "SOAP::SOAPInt", [0, 1]],
      ["campaignIdCondition", "ScalarIdFilterCondition", [0, 1]],
      ["nameCondition", "ScalarStringFilterCondition", [0, 1]],
      ["userIdCondition", "ScalarIdFilterCondition", [0, 1]],
      ["orderBy", "SeedListOrderBy[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AddSeedListRecordsRequest,
    :schema_type => XSD::QName.new(NsSchema, "AddSeedListRecordsRequest"),
    :schema_basetype => XSD::QName.new(NsSchema, "AddRecordsRequest"),
    :schema_element => [
      ["seedListId", "SeedListId"],
      [ :choice,
        ["address", "SOAP::SOAPString[]", [1, nil]],
        ["addressesAttachment", "SOAP::SOAPBase64"]
      ]
    ]
  )

  LiteralRegistry.register(
    :class => CopySeedListRequest,
    :schema_type => XSD::QName.new(NsSchema, "CopySeedListRequest"),
    :schema_basetype => XSD::QName.new(NsSchema, "CopyRequest"),
    :schema_element => [
      ["newName", "SOAP::SOAPString"],
      ["fromId", "SeedListId"]
    ]
  )

  LiteralRegistry.register(
    :class => ExportSeedListRecordsRequest,
    :schema_type => XSD::QName.new(NsSchema, "ExportSeedListRecordsRequest"),
    :schema_basetype => XSD::QName.new(NsSchema, "ExportRecordsRequest"),
    :schema_element => [
      ["seedListId", "SeedListId"]
    ]
  )

  LiteralRegistry.register(
    :class => RemoveSeedListRecordsRequest,
    :schema_type => XSD::QName.new(NsSchema, "RemoveSeedListRecordsRequest"),
    :schema_basetype => XSD::QName.new(NsSchema, "RemoveRecordsRequest"),
    :schema_element => [
      ["seedListId", "SeedListId"],
      [ :choice,
        ["address", "SOAP::SOAPString[]", [1, nil]],
        ["addressesAttachment", "SOAP::SOAPBase64"]
      ]
    ]
  )

  LiteralRegistry.register(
    :class => TemplateId,
    :schema_type => XSD::QName.new(NsSchema, "TemplateId"),
    :schema_basetype => XSD::QName.new(NsSchema, "ObjectId"),
    :schema_element => [
      ["id", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => Template,
    :schema_type => XSD::QName.new(NsSchema, "Template"),
    :schema_basetype => XSD::QName.new(NsSchema, "BaseObject"),
    :schema_element => [
      ["modifiedTime", "SOAP::SOAPDateTime", [0, 1]],
      ["objectId", "ObjectId", [0, 1]],
      ["version", "SOAP::SOAPInt", [0, 1]],
      ["attachmentId", "AttachmentId[]", [0, nil]],
      ["createdTime", "SOAP::SOAPDateTime", [0, 1]],
      ["description", "SOAP::SOAPString", [0, 1]],
      ["bodyEncoding", "Encoding"],
      ["bounceAddressId", "SystemAddressId", [0, 1]],
      ["campaignId", "CampaignId", [0, 1]],
      ["contentBlockId", "ContentBlockId[]", [0, nil]],
      ["fromAddressId", "SystemAddressId", [0, 1]],
      ["fromName", "SOAP::SOAPString", [0, 1]],
      ["headerEncoding", "Encoding"],
      ["header", "SOAP::SOAPString[]", [0, nil]],
      ["isApproved", "SOAP::SOAPBoolean"],
      ["messagePart", "MessagePart[]", [1, nil]],
      ["assetExpiryInterval", "AssetExpiryInterval", [0, 1]],
      [ :choice,
        ["outputBodyCharSet", "CharSet"],
        ["outputBodyCharSetToken", nil]
      ],
      [ :choice,
        ["outputHeaderCharSet", "CharSet"],
        ["outputHeaderCharSetToken", nil]
      ],
      ["name", "SOAP::SOAPString"],
      ["organizationId", "OrganizationId", [0, 1]],
      ["ownerId", "UserId", [0, 1]],
      ["replyAddressId", "SystemAddressId", [0, 1]],
      ["subject", "SOAP::SOAPString", [0, 1]],
      ["forward2FriendOffer", "SOAP::SOAPString", [0, 1]],
      ["forward2FriendOfferTrackingOption", "Forward2FriendOfferTrackingOption", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => TrackingTagProperties,
    :schema_type => XSD::QName.new(NsSchema, "TrackingTagProperties"),
    :schema_element => [
      ["title", "SOAP::SOAPString"],
      ["description", "SOAP::SOAPString", [0, 1]],
      ["offerUrl", "SOAP::SOAPString"],
      ["imageUrl", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => NamedLink,
    :schema_type => XSD::QName.new(NsSchema, "NamedLink"),
    :schema_element => [
      ["name", "SOAP::SOAPString", [0, 1]],
      ["url", "SOAP::SOAPString"],
      ["linkId", "SOAP::SOAPString", [0, 1]],
      ["trackingTag", "TrackingTag"],
      ["trackingTagProperties", "TrackingTagProperties", [0, 1]],
      ["webAnalytics", "WebAnalytics", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => MessagePart,
    :schema_type => XSD::QName.new(NsSchema, "MessagePart"),
    :schema_element => [
      ["content", "SOAP::SOAPString"],
      ["format", "MessageFormat"],
      ["mediaServerFolderName", "SOAP::SOAPString", [0, 1]],
      ["mediaServerId", "MediaServerId", [0, 1]],
      ["isXsl", "SOAP::SOAPBoolean"],
      ["openTag", "OpenTag", [0, 1]],
      ["namedLinks", "NamedLink[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => TemplateFilter,
    :schema_type => XSD::QName.new(NsSchema, "TemplateFilter"),
    :schema_basetype => XSD::QName.new(NsSchema, "BaseFilter"),
    :schema_element => [
      ["isAscending", "SOAP::SOAPBoolean", [0, 1]],
      ["pageNumber", "SOAP::SOAPInt", [0, 1]],
      ["recordsPerPage", "SOAP::SOAPInt", [0, 1]],
      ["maxRecordsPerPage", "SOAP::SOAPInt", [0, 1]],
      ["approvalCondition", "ScalarBooleanFilterCondition", [0, 1]],
      ["campaignIdCondition", "ScalarIdFilterCondition", [0, 1]],
      ["nameCondition", "ScalarStringFilterCondition", [0, 1]],
      ["userIdCondition", "ScalarIdFilterCondition", [0, 1]],
      ["orderBy", "TemplateOrderBy[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => CopyTemplateRequest,
    :schema_type => XSD::QName.new(NsSchema, "CopyTemplateRequest"),
    :schema_basetype => XSD::QName.new(NsSchema, "CopyRequest"),
    :schema_element => [
      ["newName", "SOAP::SOAPString"],
      ["fromId", "TemplateId"],
      ["newOrganizationId", "OrganizationId", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ImportMessagePartRequest,
    :schema_type => XSD::QName.new(NsSchema, "ImportMessagePartRequest"),
    :schema_element => [
      ["templateId", "TemplateId"],
      ["mediaServerId", "MediaServerId"],
      ["isXsl", "SOAP::SOAPBoolean"],
      ["folderName", "SOAP::SOAPString", [0, 1]],
      ["zipFile", "SOAP::SOAPBase64"]
    ]
  )

  LiteralRegistry.register(
    :class => ImportMessagePartResponse,
    :schema_type => XSD::QName.new(NsSchema, "ImportMessagePartResponse"),
    :schema_basetype => XSD::QName.new(NsSchema, "Response"),
    :schema_element => [
      ["success", "SOAP::SOAPBoolean"]
    ]
  )

  LiteralRegistry.register(
    :class => TestTemplateRequest,
    :schema_type => XSD::QName.new(NsSchema, "TestTemplateRequest"),
    :schema_basetype => XSD::QName.new(NsSchema, "TestRequest"),
    :schema_element => [
      ["address", "SOAP::SOAPString[]", [0, nil]],
      ["format", "MessageFormat[]", [1, nil]],
      ["subjectPrefix", "SOAP::SOAPString", [0, 1]],
      ["testListId", "SeedListId", [0, 1]],
      ["tokenValue", "NameValuePair[]", [0, nil]],
      ["useMultiPart", "SOAP::SOAPBoolean"],
      ["templateId", "TemplateId"],
      ["mailingClassId", "MailingClassId", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ValidateXslRequest,
    :schema_type => XSD::QName.new(NsSchema, "ValidateXslRequest"),
    :schema_element => [
      ["templateId", "TemplateId"],
      ["messageFormat", "MessageFormat"]
    ]
  )

  LiteralRegistry.register(
    :class => ValidateXslResponse,
    :schema_type => XSD::QName.new(NsSchema, "ValidateXslResponse"),
    :schema_basetype => XSD::QName.new(NsSchema, "Response"),
    :schema_element => [
      ["valid", "SOAP::SOAPBoolean"]
    ]
  )

  LiteralRegistry.register(
    :class => FetchLinkResponse,
    :schema_type => XSD::QName.new(NsSchema, "FetchLinkResponse"),
    :schema_basetype => XSD::QName.new(NsSchema, "Response"),
    :schema_element => [
      ["namedLink", "NamedLink", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => FetchLinksResponse,
    :schema_type => XSD::QName.new(NsSchema, "FetchLinksResponse"),
    :schema_basetype => XSD::QName.new(NsSchema, "BatchResponse"),
    :schema_element => [
      ["success", "SOAP::SOAPBoolean[]", [0, nil]],
      ["fault", "FaultDetail[]", [0, nil]],
      ["fetchLinkResponse", "FetchLinkResponse[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => FetchLinksTemplateRequest,
    :schema_type => XSD::QName.new(NsSchema, "FetchLinksTemplateRequest"),
    :schema_basetype => XSD::QName.new(NsSchema, "FetchLinksRequest"),
    :schema_element => [
      ["template", "Template"],
      ["messageFormat", "MessageFormat"]
    ]
  )

  LiteralRegistry.register(
    :class => ContentBlockId,
    :schema_type => XSD::QName.new(NsSchema, "ContentBlockId"),
    :schema_basetype => XSD::QName.new(NsSchema, "ObjectId"),
    :schema_element => [
      ["id", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => ContentBlock,
    :schema_type => XSD::QName.new(NsSchema, "ContentBlock"),
    :schema_basetype => XSD::QName.new(NsSchema, "BaseObject"),
    :schema_element => [
      ["modifiedTime", "SOAP::SOAPDateTime", [0, 1]],
      ["objectId", "ObjectId", [0, 1]],
      ["version", "SOAP::SOAPInt", [0, 1]],
      ["campaignId", "CampaignId", [0, 1]],
      ["content", "SOAP::SOAPString"],
      ["createdTime", "SOAP::SOAPDateTime", [0, 1]],
      ["description", "SOAP::SOAPString", [0, 1]],
      ["name", "SOAP::SOAPString"],
      ["organizationId", "OrganizationId", [0, 1]],
      ["ownerId", "UserId", [0, 1]],
      ["size", "SOAP::SOAPInt", [0, 1]],
      ["namedLinks", "NamedLink[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => ContentBlockToken,
    :schema_type => XSD::QName.new(NsSchema, "ContentBlockToken"),
    :schema_element => [
      ["contentBlockId", "ContentBlockId"],
      ["token", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => ContentBlockFilter,
    :schema_type => XSD::QName.new(NsSchema, "ContentBlockFilter"),
    :schema_basetype => XSD::QName.new(NsSchema, "BaseFilter"),
    :schema_element => [
      ["isAscending", "SOAP::SOAPBoolean", [0, 1]],
      ["pageNumber", "SOAP::SOAPInt", [0, 1]],
      ["recordsPerPage", "SOAP::SOAPInt", [0, 1]],
      ["maxRecordsPerPage", "SOAP::SOAPInt", [0, 1]],
      ["campaignIdCondition", "ScalarIdFilterCondition", [0, 1]],
      ["nameCondition", "ScalarStringFilterCondition", [0, 1]],
      ["userIdCondition", "ScalarIdFilterCondition", [0, 1]],
      ["orderBy", "ContentBlockOrderBy[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => CopyContentBlockRequest,
    :schema_type => XSD::QName.new(NsSchema, "CopyContentBlockRequest"),
    :schema_basetype => XSD::QName.new(NsSchema, "CopyRequest"),
    :schema_element => [
      ["newName", "SOAP::SOAPString"],
      ["fromId", "ContentBlockId"],
      ["newOrganizationId", "OrganizationId", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => FetchLinksContentBlockRequest,
    :schema_type => XSD::QName.new(NsSchema, "FetchLinksContentBlockRequest"),
    :schema_basetype => XSD::QName.new(NsSchema, "FetchLinksRequest"),
    :schema_element => [
      ["contentBlock", "ContentBlock"]
    ]
  )

  LiteralRegistry.register(
    :class => AttachmentId,
    :schema_type => XSD::QName.new(NsSchema, "AttachmentId"),
    :schema_basetype => XSD::QName.new(NsSchema, "ObjectId"),
    :schema_element => [
      ["id", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => Attachment,
    :schema_type => XSD::QName.new(NsSchema, "Attachment"),
    :schema_basetype => XSD::QName.new(NsSchema, "BaseObject"),
    :schema_element => [
      ["modifiedTime", "SOAP::SOAPDateTime", [0, 1]],
      ["objectId", "ObjectId", [0, 1]],
      ["version", "SOAP::SOAPInt", [0, 1]],
      ["campaignId", "CampaignId", [0, 1]],
      ["createdTime", "SOAP::SOAPDateTime", [0, 1]],
      ["description", "SOAP::SOAPString", [0, 1]],
      [ :choice,
        [
          ["content", "SOAP::SOAPBase64"],
          ["fileName", "SOAP::SOAPString"]
        ],
        ["fileReference", "SOAP::SOAPString"]
      ],
      ["name", "SOAP::SOAPString"],
      ["organizationId", "OrganizationId", [0, 1]],
      ["ownerId", "UserId", [0, 1]],
      ["size", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AttachmentFilter,
    :schema_type => XSD::QName.new(NsSchema, "AttachmentFilter"),
    :schema_basetype => XSD::QName.new(NsSchema, "BaseFilter"),
    :schema_element => [
      ["isAscending", "SOAP::SOAPBoolean", [0, 1]],
      ["pageNumber", "SOAP::SOAPInt", [0, 1]],
      ["recordsPerPage", "SOAP::SOAPInt", [0, 1]],
      ["maxRecordsPerPage", "SOAP::SOAPInt", [0, 1]],
      ["campaignIdCondition", "ScalarIdFilterCondition", [0, 1]],
      ["nameCondition", "ScalarStringFilterCondition", [0, 1]],
      ["userIdCondition", "ScalarIdFilterCondition", [0, 1]],
      ["orderBy", "AttachmentOrderBy[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => ImportAttachmentContentRequest,
    :schema_type => XSD::QName.new(NsSchema, "ImportAttachmentContentRequest"),
    :schema_basetype => XSD::QName.new(NsSchema, "ImportContentRequest"),
    :schema_element => [
      ["content", "SOAP::SOAPBase64"],
      ["attachmentId", "AttachmentId"],
      ["fileName", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => RuleId,
    :schema_type => XSD::QName.new(NsSchema, "RuleId"),
    :schema_basetype => XSD::QName.new(NsSchema, "ObjectId"),
    :schema_element => [
      ["id", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => Rule,
    :schema_type => XSD::QName.new(NsSchema, "Rule"),
    :schema_basetype => XSD::QName.new(NsSchema, "BaseObject"),
    :schema_element => [
      ["modifiedTime", "SOAP::SOAPDateTime", [0, 1]],
      ["objectId", "ObjectId", [0, 1]],
      ["version", "SOAP::SOAPInt", [0, 1]],
      ["campaignId", "CampaignId", [0, 1]],
      ["targetId", "TargetId[]", [1, nil]],
      ["ifPart", "RuleIfPart"],
      ["thenPart", "RuleThenPart"],
      ["elsePart", "RuleElsePart", [0, 1]],
      ["createdTime", "SOAP::SOAPDateTime", [0, 1]],
      ["description", "SOAP::SOAPString", [0, 1]],
      ["name", "SOAP::SOAPString"],
      ["organizationId", "OrganizationId", [0, 1]],
      ["ownerId", "UserId", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ColumnRuleValue,
    :schema_type => XSD::QName.new(NsSchema, "ColumnRuleValue"),
    :schema_basetype => XSD::QName.new(NsSchema, "RuleValue"),
    :schema_element => [
      ["value", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => ContentBlockTokenRuleValue,
    :schema_type => XSD::QName.new(NsSchema, "ContentBlockTokenRuleValue"),
    :schema_basetype => XSD::QName.new(NsSchema, "RuleValue"),
    :schema_element => [
      ["value", "ContentBlockToken"]
    ]
  )

  LiteralRegistry.register(
    :class => TextRuleValue,
    :schema_type => XSD::QName.new(NsSchema, "TextRuleValue"),
    :schema_basetype => XSD::QName.new(NsSchema, "RuleValue"),
    :schema_element => [
      ["value", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => NestedRuleRuleValue,
    :schema_type => XSD::QName.new(NsSchema, "NestedRuleRuleValue"),
    :schema_basetype => XSD::QName.new(NsSchema, "RuleValue"),
    :schema_element => [
      ["value", "RuleId"]
    ]
  )

  LiteralRegistry.register(
    :class => RuleIfPartCondition,
    :schema_type => XSD::QName.new(NsSchema, "RuleIfPartCondition"),
    :schema_element => [
      ["column", "SOAP::SOAPString"],
      ["op", "ComparisonOperation"],
      ["value", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => RuleIfPart,
    :schema_type => XSD::QName.new(NsSchema, "RuleIfPart"),
    :schema_element => [
      ["condition1", "RuleIfPartCondition"],
      [
        ["logicalOperation", "LogicalOperation[]"],
        ["condition", "RuleIfPartCondition[]"]
      ]
    ]
  )

  LiteralRegistry.register(
    :class => RuleThenPart,
    :schema_type => XSD::QName.new(NsSchema, "RuleThenPart"),
    :schema_element => [ :choice,
      ["columnRuleValue", "ColumnRuleValue"],
      ["contentBlockTokenRuleValue", "ContentBlockTokenRuleValue"],
      ["textRuleValue", "TextRuleValue"]
    ]
  )

  LiteralRegistry.register(
    :class => RuleElsePart,
    :schema_type => XSD::QName.new(NsSchema, "RuleElsePart"),
    :schema_element => [ :choice,
      ["columnRuleValue", "ColumnRuleValue"],
      ["contentBlockTokenRuleValue", "ContentBlockTokenRuleValue"],
      ["nestedRuleRuleValue", "NestedRuleRuleValue"],
      ["textRuleValue", "TextRuleValue"]
    ]
  )

  LiteralRegistry.register(
    :class => RuleFilter,
    :schema_type => XSD::QName.new(NsSchema, "RuleFilter"),
    :schema_basetype => XSD::QName.new(NsSchema, "BaseFilter"),
    :schema_element => [
      ["isAscending", "SOAP::SOAPBoolean", [0, 1]],
      ["pageNumber", "SOAP::SOAPInt", [0, 1]],
      ["recordsPerPage", "SOAP::SOAPInt", [0, 1]],
      ["maxRecordsPerPage", "SOAP::SOAPInt", [0, 1]],
      ["campaignIdCondition", "ScalarIdFilterCondition", [0, 1]],
      ["nameCondition", "ScalarStringFilterCondition", [0, 1]],
      ["orderBy", "RuleOrderBy[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => CopyRuleRequest,
    :schema_type => XSD::QName.new(NsSchema, "CopyRuleRequest"),
    :schema_basetype => XSD::QName.new(NsSchema, "CopyRequest"),
    :schema_element => [
      ["newName", "SOAP::SOAPString"],
      ["fromId", "RuleId"]
    ]
  )

  LiteralRegistry.register(
    :class => MailingId,
    :schema_type => XSD::QName.new(NsSchema, "MailingId"),
    :schema_basetype => XSD::QName.new(NsSchema, "ObjectId"),
    :schema_element => [
      ["id", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => StandardMailingId,
    :schema_type => XSD::QName.new(NsSchema, "StandardMailingId"),
    :schema_basetype => XSD::QName.new(NsSchema, "MailingId"),
    :schema_element => [
      ["id", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => TransactionalMailingId,
    :schema_type => XSD::QName.new(NsSchema, "TransactionalMailingId"),
    :schema_basetype => XSD::QName.new(NsSchema, "MailingId"),
    :schema_element => [
      ["id", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => StandardMailing,
    :schema_type => XSD::QName.new(NsSchema, "StandardMailing"),
    :schema_basetype => XSD::QName.new(NsSchema, "SchedulableMailing"),
    :schema_element => [
      ["modifiedTime", "SOAP::SOAPDateTime", [0, 1]],
      ["objectId", "ObjectId", [0, 1]],
      ["version", "SOAP::SOAPInt", [0, 1]],
      ["attachmentId", "AttachmentId[]", [0, nil]],
      ["bodyEncoding", "Encoding"],
      ["bounceAddressId", "SystemAddressId", [0, 1]],
      ["campaignId", "CampaignId", [0, 1]],
      ["isApproved", "SOAP::SOAPBoolean"],
      ["isCompliant", "SOAP::SOAPBoolean"],
      ["contentBlockId", "ContentBlockId[]", [0, nil]],
      ["fieldDelimiter", "SOAP::SOAPString", [0, 1]],
      ["format", "MessageFormat[]", [0, nil]],
      ["fromAddressId", "SystemAddressId", [0, 1]],
      ["fromName", "SOAP::SOAPString", [0, 1]],
      ["headerEncoding", "Encoding"],
      ["header", "SOAP::SOAPString[]", [0, nil]],
      ["lastGoodStatus", "MailingStatus", [0, 1]],
      ["mailingClassId", "MailingClassId", [0, 1]],
      ["name", "SOAP::SOAPString"],
      ["priority", "MailingPriority", [0, 1]],
      [ :choice,
        ["outputBodyCharSet", "CharSet"],
        ["outputBodyCharSetToken", nil]
      ],
      [ :choice,
        ["outputHeaderCharSet", "CharSet"],
        ["outputHeaderCharSetToken", nil]
      ],
      ["parentId", "MailingId", [0, 1]],
      ["plannedLaunchDate", "SOAP::SOAPDate", [0, 1]],
      ["replyAddressId", "SystemAddressId", [0, 1]],
      ["rowDelimiter", "SOAP::SOAPString", [0, 1]],
      ["serverErrorCode", "SOAP::SOAPInt", [0, 1]],
      ["serverErrorMessage", "SOAP::SOAPString", [0, 1]],
      ["status", "MailingStatus", [0, 1]],
      ["subject", "SOAP::SOAPString", [0, 1]],
      ["templateId", "TemplateId", [0, 1]],
      ["type", "MailingType", [0, 1]],
      ["createdTime", "SOAP::SOAPDateTime", [0, 1]],
      ["description", "SOAP::SOAPString", [0, 1]],
      ["organizationId", "OrganizationId", [0, 1]],
      ["ownerId", "UserId", [0, 1]],
      ["forward2FriendOffer", "SOAP::SOAPString", [0, 1]],
      ["forward2FriendOfferTrackingOption", "Forward2FriendOfferTrackingOption", [0, 1]],
      ["schedule", "StandardMailing::Schedule", [0, 1]],
      ["eliminateDuplicates", "SOAP::SOAPBoolean"],
      ["excludedTargetId", "TargetId[]", [0, nil]],
      ["includedTargetId", "TargetId[]", [0, nil]],
      ["seedListId", "SeedListId[]", [0, nil]],
      ["suppressionListId", "SuppressionListId[]", [0, nil]],
      ["assetExpiryInterval", "AssetExpiryInterval", [0, 1]],
      ["addDefaultSuppress", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => StandardMailing::Schedule::Recurrence::MinutelyRecurrence,
    :schema_name => XSD::QName.new(NsSchema, "minutelyRecurrence"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["interval", nil]
    ]
  )

  LiteralRegistry.register(
    :class => StandardMailing::Schedule::Recurrence::HourlyRecurrence,
    :schema_name => XSD::QName.new(NsSchema, "hourlyRecurrence"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["interval", nil]
    ]
  )

  LiteralRegistry.register(
    :class => StandardMailing::Schedule::Recurrence::DailyRecurrence,
    :schema_name => XSD::QName.new(NsSchema, "dailyRecurrence"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [ :choice,
      ["interval", nil],
      ["everyWeekDay", "SOAP::SOAPBoolean"]
    ]
  )

  LiteralRegistry.register(
    :class => StandardMailing::Schedule::Recurrence::WeeklyRecurrence,
    :schema_name => XSD::QName.new(NsSchema, "weeklyRecurrence"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["interval", nil],
      ["day", "DayOfWeek[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => StandardMailing::Schedule::Recurrence::MonthlyByDateRecurrence,
    :schema_name => XSD::QName.new(NsSchema, "monthlyByDateRecurrence"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["interval", nil],
      ["dayOfMonth", "[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => StandardMailing::Schedule::Recurrence::MonthlyByDayRecurrence,
    :schema_name => XSD::QName.new(NsSchema, "monthlyByDayRecurrence"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["interval", nil],
      ["weeklyOccurrence", "WeeklyOccurrence"],
      ["dailyOccurrence", "DailyOccurrence"]
    ]
  )

  LiteralRegistry.register(
    :class => StandardMailing::Schedule::Recurrence::YearlyByDateRecurrence,
    :schema_name => XSD::QName.new(NsSchema, "yearlyByDateRecurrence"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["month", nil],
      ["day", nil]
    ]
  )

  LiteralRegistry.register(
    :class => StandardMailing::Schedule::Recurrence::YearlyByDayRecurrence,
    :schema_name => XSD::QName.new(NsSchema, "yearlyByDayRecurrence"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["month", nil],
      ["weeklyOccurrence", "WeeklyOccurrence"],
      ["dailyOccurrence", "DailyOccurrence"]
    ]
  )

  LiteralRegistry.register(
    :class => StandardMailing::Schedule::Recurrence,
    :schema_name => XSD::QName.new(NsSchema, "recurrence"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      [ :choice,
        ["endDate", "SOAP::SOAPDate"],
        ["endAfterXMailings", "SOAP::SOAPInt"]
      ],
      [ :choice,
        ["minutelyRecurrence", "StandardMailing::Schedule::Recurrence::MinutelyRecurrence"],
        ["hourlyRecurrence", "StandardMailing::Schedule::Recurrence::HourlyRecurrence"],
        ["dailyRecurrence", "StandardMailing::Schedule::Recurrence::DailyRecurrence"],
        ["weeklyRecurrence", "StandardMailing::Schedule::Recurrence::WeeklyRecurrence"],
        ["monthlyByDateRecurrence", "StandardMailing::Schedule::Recurrence::MonthlyByDateRecurrence"],
        ["monthlyByDayRecurrence", "StandardMailing::Schedule::Recurrence::MonthlyByDayRecurrence"],
        ["yearlyByDateRecurrence", "StandardMailing::Schedule::Recurrence::YearlyByDateRecurrence"],
        ["yearlyByDayRecurrence", "StandardMailing::Schedule::Recurrence::YearlyByDayRecurrence"]
      ],
      ["nextScheduledDateTime", "SOAP::SOAPDateTime", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => StandardMailing::Schedule,
    :schema_name => XSD::QName.new(NsSchema, "schedule"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["startDateTime", "SOAP::SOAPDateTime"],
      ["recurrence", "StandardMailing::Schedule::Recurrence", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => TransactionalMailing,
    :schema_type => XSD::QName.new(NsSchema, "TransactionalMailing"),
    :schema_basetype => XSD::QName.new(NsSchema, "Mailing"),
    :schema_element => [
      ["modifiedTime", "SOAP::SOAPDateTime", [0, 1]],
      ["objectId", "ObjectId", [0, 1]],
      ["version", "SOAP::SOAPInt", [0, 1]],
      ["attachmentId", "AttachmentId[]", [0, nil]],
      ["bodyEncoding", "Encoding"],
      ["bounceAddressId", "SystemAddressId", [0, 1]],
      ["campaignId", "CampaignId", [0, 1]],
      ["isApproved", "SOAP::SOAPBoolean"],
      ["isCompliant", "SOAP::SOAPBoolean"],
      ["contentBlockId", "ContentBlockId[]", [0, nil]],
      ["fieldDelimiter", "SOAP::SOAPString", [0, 1]],
      ["format", "MessageFormat[]", [0, nil]],
      ["fromAddressId", "SystemAddressId", [0, 1]],
      ["fromName", "SOAP::SOAPString", [0, 1]],
      ["headerEncoding", "Encoding"],
      ["header", "SOAP::SOAPString[]", [0, nil]],
      ["lastGoodStatus", "MailingStatus", [0, 1]],
      ["mailingClassId", "MailingClassId", [0, 1]],
      ["name", "SOAP::SOAPString"],
      ["priority", "MailingPriority", [0, 1]],
      [ :choice,
        ["outputBodyCharSet", "CharSet"],
        ["outputBodyCharSetToken", nil]
      ],
      [ :choice,
        ["outputHeaderCharSet", "CharSet"],
        ["outputHeaderCharSetToken", nil]
      ],
      ["parentId", "MailingId", [0, 1]],
      ["plannedLaunchDate", "SOAP::SOAPDate", [0, 1]],
      ["replyAddressId", "SystemAddressId", [0, 1]],
      ["rowDelimiter", "SOAP::SOAPString", [0, 1]],
      ["serverErrorCode", "SOAP::SOAPInt", [0, 1]],
      ["serverErrorMessage", "SOAP::SOAPString", [0, 1]],
      ["status", "MailingStatus", [0, 1]],
      ["subject", "SOAP::SOAPString", [0, 1]],
      ["templateId", "TemplateId", [0, 1]],
      ["type", "MailingType", [0, 1]],
      ["createdTime", "SOAP::SOAPDateTime", [0, 1]],
      ["description", "SOAP::SOAPString", [0, 1]],
      ["organizationId", "OrganizationId", [0, 1]],
      ["ownerId", "UserId", [0, 1]],
      ["forward2FriendOffer", "SOAP::SOAPString", [0, 1]],
      ["forward2FriendOfferTrackingOption", "Forward2FriendOfferTrackingOption", [0, 1]],
      ["formatFieldName", "SOAP::SOAPString", [0, 1]],
      ["mailingConfig", "SOAP::SOAPString", [0, 1]],
      ["messageType", "MessageType"],
      ["recordStructure", "SOAP::SOAPString[]", [0, nil]],
      ["senderNumber", "SOAP::SOAPString", [0, 1]],
      ["targetId", "TargetId", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => MailingFilter,
    :schema_type => XSD::QName.new(NsSchema, "MailingFilter"),
    :schema_basetype => XSD::QName.new(NsSchema, "BaseFilter"),
    :schema_element => [
      ["isAscending", "SOAP::SOAPBoolean", [0, 1]],
      ["pageNumber", "SOAP::SOAPInt", [0, 1]],
      ["recordsPerPage", "SOAP::SOAPInt", [0, 1]],
      ["maxRecordsPerPage", "SOAP::SOAPInt", [0, 1]],
      ["campaignIdCondition", "ScalarIdFilterCondition", [0, 1]],
      ["nameCondition", "ScalarStringFilterCondition", [0, 1]],
      ["userIdCondition", "ScalarIdFilterCondition", [0, 1]],
      ["typeCondition", "ArrayStringFilterCondition", [0, 1]],
      ["statusCondition", "ArrayStringFilterCondition", [0, 1]],
      ["orderBy", "MailingOrderBy[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => CopyMailingRequest,
    :schema_type => XSD::QName.new(NsSchema, "CopyMailingRequest"),
    :schema_basetype => XSD::QName.new(NsSchema, "CopyRequest"),
    :schema_element => [
      ["newName", "SOAP::SOAPString"],
      ["fromId", "MailingId"]
    ]
  )

  LiteralRegistry.register(
    :class => CancelRequest,
    :schema_type => XSD::QName.new(NsSchema, "CancelRequest"),
    :schema_element => [
      ["mailingId", "MailingId"]
    ]
  )

  LiteralRegistry.register(
    :class => CancelResponse,
    :schema_type => XSD::QName.new(NsSchema, "CancelResponse"),
    :schema_basetype => XSD::QName.new(NsSchema, "Response"),
    :schema_element => [
      ["success", "SOAP::SOAPBoolean"]
    ]
  )

  LiteralRegistry.register(
    :class => CloseRequest,
    :schema_type => XSD::QName.new(NsSchema, "CloseRequest"),
    :schema_element => [
      ["mailingId", "TransactionalMailingId"]
    ]
  )

  LiteralRegistry.register(
    :class => CloseResponse,
    :schema_type => XSD::QName.new(NsSchema, "CloseResponse"),
    :schema_basetype => XSD::QName.new(NsSchema, "Response"),
    :schema_element => [
      ["success", "SOAP::SOAPBoolean"]
    ]
  )

  LiteralRegistry.register(
    :class => ArchiveRequest,
    :schema_type => XSD::QName.new(NsSchema, "ArchiveRequest"),
    :schema_element => [
      ["mailingId", "MailingId"]
    ]
  )

  LiteralRegistry.register(
    :class => ArchiveResponse,
    :schema_type => XSD::QName.new(NsSchema, "ArchiveResponse"),
    :schema_basetype => XSD::QName.new(NsSchema, "Response"),
    :schema_element => [
      ["success", "SOAP::SOAPBoolean"]
    ]
  )

  LiteralRegistry.register(
    :class => GetMailingStatisticsRequest,
    :schema_type => XSD::QName.new(NsSchema, "GetMailingStatisticsRequest"),
    :schema_basetype => XSD::QName.new(NsSchema, "GetStatisticsRequest"),
    :schema_element => [
      ["mailingId", "MailingId"]
    ]
  )

  LiteralRegistry.register(
    :class => GetMailingStatisticsResponse,
    :schema_type => XSD::QName.new(NsSchema, "GetMailingStatisticsResponse"),
    :schema_basetype => XSD::QName.new(NsSchema, "GetStatisticsResponse"),
    :schema_element => [
      ["launchSerial", "SOAP::SOAPString", [0, 1]],
      ["elapsedTime", "SOAP::SOAPDuration", [0, 1]],
      ["launchTime", "SOAP::SOAPDateTime", [0, 1]],
      ["completionTime", "SOAP::SOAPDateTime", [0, 1]],
      ["deferred", "SOAP::SOAPInt", [0, 1]],
      ["delivered", "SOAP::SOAPInt", [0, 1]],
      ["failed", "SOAP::SOAPInt", [0, 1]],
      ["invalid", "SOAP::SOAPInt", [0, 1]],
      ["sent", "SOAP::SOAPInt", [0, 1]],
      ["targeted", "SOAP::SOAPInt", [0, 1]],
      ["totalClicks", "SOAP::SOAPInt", [0, 1]],
      ["totalComplaints", "SOAP::SOAPInt", [0, 1]],
      ["totalOpens", "SOAP::SOAPInt", [0, 1]],
      ["totalUnsubscribes", "SOAP::SOAPInt", [0, 1]],
      ["uniqueClicks", "SOAP::SOAPInt", [0, 1]],
      ["uniqueComplaints", "SOAP::SOAPInt", [0, 1]],
      ["uniqueOpens", "SOAP::SOAPInt", [0, 1]],
      ["uniqueUnsubscribes", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => LaunchRequest,
    :schema_type => XSD::QName.new(NsSchema, "LaunchRequest"),
    :schema_element => [
      ["mailingId", "StandardMailingId"]
    ]
  )

  LiteralRegistry.register(
    :class => LaunchResponse,
    :schema_type => XSD::QName.new(NsSchema, "LaunchResponse"),
    :schema_basetype => XSD::QName.new(NsSchema, "Response"),
    :schema_element => [
      ["success", "SOAP::SOAPBoolean"]
    ]
  )

  LiteralRegistry.register(
    :class => LoadRequest,
    :schema_type => XSD::QName.new(NsSchema, "LoadRequest"),
    :schema_element => [
      ["mailingId", "TransactionalMailingId"]
    ]
  )

  LiteralRegistry.register(
    :class => LoadResponse,
    :schema_type => XSD::QName.new(NsSchema, "LoadResponse"),
    :schema_basetype => XSD::QName.new(NsSchema, "Response"),
    :schema_element => [
      ["success", "SOAP::SOAPBoolean"]
    ]
  )

  LiteralRegistry.register(
    :class => PauseRequest,
    :schema_type => XSD::QName.new(NsSchema, "PauseRequest"),
    :schema_element => [
      ["mailingId", "MailingId"]
    ]
  )

  LiteralRegistry.register(
    :class => PauseResponse,
    :schema_type => XSD::QName.new(NsSchema, "PauseResponse"),
    :schema_basetype => XSD::QName.new(NsSchema, "Response"),
    :schema_element => [
      ["success", "SOAP::SOAPBoolean"]
    ]
  )

  LiteralRegistry.register(
    :class => ResumeRequest,
    :schema_type => XSD::QName.new(NsSchema, "ResumeRequest"),
    :schema_element => [
      ["mailingId", "MailingId"]
    ]
  )

  LiteralRegistry.register(
    :class => ResumeResponse,
    :schema_type => XSD::QName.new(NsSchema, "ResumeResponse"),
    :schema_basetype => XSD::QName.new(NsSchema, "Response"),
    :schema_element => [
      ["success", "SOAP::SOAPBoolean"]
    ]
  )

  LiteralRegistry.register(
    :class => ScheduleRequest,
    :schema_type => XSD::QName.new(NsSchema, "ScheduleRequest"),
    :schema_element => [
      ["mailingId", "StandardMailingId"]
    ]
  )

  LiteralRegistry.register(
    :class => ScheduleResponse,
    :schema_type => XSD::QName.new(NsSchema, "ScheduleResponse"),
    :schema_basetype => XSD::QName.new(NsSchema, "Response"),
    :schema_element => [
      ["success", "SOAP::SOAPBoolean"]
    ]
  )

  LiteralRegistry.register(
    :class => SendRecord,
    :schema_type => XSD::QName.new(NsSchema, "SendRecord"),
    :schema_element => [
      ["field", "NameValuePair[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => SendRequest,
    :schema_type => XSD::QName.new(NsSchema, "SendRequest"),
    :schema_element => [
      ["mailingId", "TransactionalMailingId"],
      [ :choice,
        ["sendData", "SOAP::SOAPString"],
        ["sendRecord", "SendRecord[]", [1, nil]]
      ]
    ]
  )

  LiteralRegistry.register(
    :class => SendResponse,
    :schema_type => XSD::QName.new(NsSchema, "SendResponse"),
    :schema_basetype => XSD::QName.new(NsSchema, "Response"),
    :schema_element => [
      ["success", "SOAP::SOAPBoolean"]
    ]
  )

  LiteralRegistry.register(
    :class => GetTxnMailingHandleRequest,
    :schema_type => XSD::QName.new(NsSchema, "GetTxnMailingHandleRequest"),
    :schema_element => [
      [ :choice,
        ["mailingId", "TransactionalMailingId"],
        ["mailingName", "SOAP::SOAPString"]
      ]
    ]
  )

  LiteralRegistry.register(
    :class => GetTxnMailingHandleResponse,
    :schema_type => XSD::QName.new(NsSchema, "GetTxnMailingHandleResponse"),
    :schema_basetype => XSD::QName.new(NsSchema, "Response"),
    :schema_element => [
      ["handle", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => TxnSendRequest,
    :schema_type => XSD::QName.new(NsSchema, "TxnSendRequest"),
    :schema_element => [
      ["handle", "SOAP::SOAPString"],
      ["sendRecord", "SendRecord[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => TxnSendResponse,
    :schema_type => XSD::QName.new(NsSchema, "TxnSendResponse"),
    :schema_basetype => XSD::QName.new(NsSchema, "Response"),
    :schema_element => [
      ["success", "SOAP::SOAPBoolean"]
    ]
  )

  LiteralRegistry.register(
    :class => GetTxnEasInfoRequest,
    :schema_type => XSD::QName.new(NsSchema, "GetTxnEasInfoRequest"),
    :schema_element => [
      ["mailingId", "TransactionalMailingId"]
    ]
  )

  LiteralRegistry.register(
    :class => GetTxnEasInfoResponse,
    :schema_type => XSD::QName.new(NsSchema, "GetTxnEasInfoResponse"),
    :schema_basetype => XSD::QName.new(NsSchema, "Response"),
    :schema_element => [
      ["hostname", "SOAP::SOAPString"],
      ["mailingName", "SOAP::SOAPString"],
      ["mailingHandle", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GetAllEasByMailingIdRequest,
    :schema_type => XSD::QName.new(NsSchema, "GetAllEasByMailingIdRequest"),
    :schema_element => [
      ["mailingId", "MailingId"]
    ]
  )

  LiteralRegistry.register(
    :class => GetAllEasListByMailingIdResponse,
    :schema_type => XSD::QName.new(NsSchema, "GetAllEasListByMailingIdResponse"),
    :schema_basetype => XSD::QName.new(NsSchema, "Response"),
    :schema_element => [
      ["getAllEasByMailingIdResponse", ["GetAllEasByMailingIdResponse[]", XSD::QName.new(NsSchema, "GetAllEasByMailingIdResponse")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => GetAllEasByMailingIdResponse,
    :schema_type => XSD::QName.new(NsSchema, "GetAllEasByMailingIdResponse"),
    :schema_basetype => XSD::QName.new(NsSchema, "Response"),
    :schema_element => [
      ["hostip", "SOAP::SOAPString"],
      ["mailingConfigName", "SOAP::SOAPString"],
      ["serialNumber", "SOAP::SOAPString", [0, 1]],
      ["easId", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => TestMailingRequest,
    :schema_type => XSD::QName.new(NsSchema, "TestMailingRequest"),
    :schema_basetype => XSD::QName.new(NsSchema, "TestRequest"),
    :schema_element => [
      ["address", "SOAP::SOAPString[]", [0, nil]],
      ["format", "MessageFormat[]", [1, nil]],
      ["subjectPrefix", "SOAP::SOAPString", [0, 1]],
      ["testListId", "SeedListId", [0, 1]],
      ["tokenValue", "NameValuePair[]", [0, nil]],
      ["useMultiPart", "SOAP::SOAPBoolean"],
      ["mailingId", "StandardMailingId"]
    ]
  )

  LiteralRegistry.register(
    :class => ProgramId,
    :schema_type => XSD::QName.new(NsSchema, "ProgramId"),
    :schema_basetype => XSD::QName.new(NsSchema, "ObjectId"),
    :schema_element => [
      ["id", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => ProgramNodeId,
    :schema_type => XSD::QName.new(NsSchema, "ProgramNodeId"),
    :schema_basetype => XSD::QName.new(NsSchema, "ObjectId"),
    :schema_element => [
      ["id", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => ProgramContactRecord,
    :schema_type => XSD::QName.new(NsSchema, "ProgramContactRecord"),
    :schema_element => [
      ["programDataSourcePk", "SOAP::SOAPString"],
      ["contactId", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => AddProgramContactRecordsRequest,
    :schema_type => XSD::QName.new(NsSchema, "AddProgramContactRecordsRequest"),
    :schema_basetype => XSD::QName.new(NsSchema, "AddRecordsRequest"),
    :schema_element => [
      ["programId", "ProgramId"],
      ["programContactRecord", "ProgramContactRecord[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AddProgramContactRecordsResponse,
    :schema_type => XSD::QName.new(NsSchema, "AddProgramContactRecordsResponse"),
    :schema_basetype => XSD::QName.new(NsSchema, "AddRecordsResponse"),
    :schema_element => [
      ["success", "SOAP::SOAPBoolean"],
      ["successCount", "SOAP::SOAPInt"],
      ["failureRecord", "ProgramContactRecord[]", [0, nil]],
      ["duplicateRecord", "ProgramContactRecord[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => Program,
    :schema_type => XSD::QName.new(NsSchema, "Program"),
    :schema_basetype => XSD::QName.new(NsSchema, "BaseObject"),
    :schema_element => [
      ["modifiedTime", "SOAP::SOAPDateTime", [0, 1]],
      ["objectId", "ObjectId", [0, 1]],
      ["version", "SOAP::SOAPInt", [0, 1]],
      ["organizationId", "OrganizationId"],
      ["name", "SOAP::SOAPString"],
      ["description", "SOAP::SOAPString"],
      ["startDate", "SOAP::SOAPDateTime", [0, 1]],
      ["endDate", "SOAP::SOAPDateTime", [0, 1]],
      ["status", "ProgramStatus"],
      ["dataSourceId", "DataSourceId", [0, 1]],
      ["emailColumnName", "SOAP::SOAPString", [0, 1]],
      ["bounceColumnName", "SOAP::SOAPString", [0, 1]],
      ["unsubColumnName", "SOAP::SOAPString", [0, 1]],
      ["smsColumnName", "SOAP::SOAPString", [0, 1]],
      ["smsBounceColumnName", "SOAP::SOAPString", [0, 1]],
      ["smsUnsubColumnName", "SOAP::SOAPString", [0, 1]],
      ["smsShortCode", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ProgramNode,
    :schema_type => XSD::QName.new(NsSchema, "ProgramNode"),
    :schema_basetype => XSD::QName.new(NsSchema, "BaseObject"),
    :schema_element => [
      ["modifiedTime", "SOAP::SOAPDateTime", [0, 1]],
      ["objectId", "ObjectId", [0, 1]],
      ["version", "SOAP::SOAPInt", [0, 1]],
      ["name", "SOAP::SOAPString"],
      ["description", "SOAP::SOAPString", [0, 1]],
      ["programNodeType", "ProgramNodeType"],
      ["mailingId", "MailingId", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ProgramFilter,
    :schema_type => XSD::QName.new(NsSchema, "ProgramFilter"),
    :schema_basetype => XSD::QName.new(NsSchema, "BaseFilter"),
    :schema_element => [
      ["isAscending", "SOAP::SOAPBoolean", [0, 1]],
      ["pageNumber", "SOAP::SOAPInt", [0, 1]],
      ["recordsPerPage", "SOAP::SOAPInt", [0, 1]],
      ["maxRecordsPerPage", "SOAP::SOAPInt", [0, 1]],
      ["campaignIdCondition", "ScalarIdFilterCondition", [0, 1]],
      ["nameCondition", "ScalarStringFilterCondition", [0, 1]],
      ["userIdCondition", "ScalarIdFilterCondition", [0, 1]],
      ["statusCondition", "ArrayStringFilterCondition", [0, 1]],
      ["orderBy", "ProgramOrderBy[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => GetProgramNodesRequest,
    :schema_type => XSD::QName.new(NsSchema, "GetProgramNodesRequest"),
    :schema_element => [
      ["programId", "ProgramId"]
    ]
  )

  LiteralRegistry.register(
    :class => GetProgramNodesResponse,
    :schema_type => XSD::QName.new(NsSchema, "GetProgramNodesResponse"),
    :schema_basetype => XSD::QName.new(NsSchema, "Response"),
    :schema_element => [
      ["programNodes", "ProgramNode[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => OrganizationId,
    :schema_type => XSD::QName.new(NsSchema, "OrganizationId"),
    :schema_basetype => XSD::QName.new(NsSchema, "ObjectId"),
    :schema_element => [
      ["id", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => Organization,
    :schema_type => XSD::QName.new(NsSchema, "Organization"),
    :schema_basetype => XSD::QName.new(NsSchema, "BaseObject"),
    :schema_element => [
      ["modifiedTime", "SOAP::SOAPDateTime", [0, 1]],
      ["objectId", "ObjectId", [0, 1]],
      ["version", "SOAP::SOAPInt", [0, 1]],
      ["description", "SOAP::SOAPString", [0, 1]],
      ["logo", "SOAP::SOAPBase64", [0, 1]],
      ["name", "SOAP::SOAPString"],
      ["parentId", "OrganizationId", [0, 1]],
      ["viewInBrowserExceptionURL", "SOAP::SOAPString", [0, 1]],
      ["forward2FriendExceptionURL", "SOAP::SOAPString", [0, 1]],
      ["socialNotesExceptionURL", "SOAP::SOAPString", [0, 1]],
      ["socialNotesWidget", "SOAP::SOAPString", [0, 1]],
      ["forward2FriendOffer", "SOAP::SOAPString", [0, 1]],
      ["forward2FriendOfferTrackingOption", "Forward2FriendOfferTrackingOption", [0, 1]],
      ["influencerSecretKey", "SOAP::SOAPString", [0, 1]],
      ["influencerClientUuid", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => OrganizationFilter,
    :schema_type => XSD::QName.new(NsSchema, "OrganizationFilter"),
    :schema_basetype => XSD::QName.new(NsSchema, "BaseFilter"),
    :schema_element => [
      ["isAscending", "SOAP::SOAPBoolean", [0, 1]],
      ["pageNumber", "SOAP::SOAPInt", [0, 1]],
      ["recordsPerPage", "SOAP::SOAPInt", [0, 1]],
      ["maxRecordsPerPage", "SOAP::SOAPInt", [0, 1]],
      ["nameCondition", "ScalarStringFilterCondition", [0, 1]],
      ["parentIdCondition", "ScalarIdFilterCondition", [0, 1]],
      ["orderBy", "OrganizationOrderBy[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => UserId,
    :schema_type => XSD::QName.new(NsSchema, "UserId"),
    :schema_basetype => XSD::QName.new(NsSchema, "ObjectId"),
    :schema_element => [
      ["id", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => User,
    :schema_type => XSD::QName.new(NsSchema, "User"),
    :schema_basetype => XSD::QName.new(NsSchema, "BaseObject"),
    :schema_element => [
      ["modifiedTime", "SOAP::SOAPDateTime", [0, 1]],
      ["objectId", "ObjectId", [0, 1]],
      ["version", "SOAP::SOAPInt", [0, 1]],
      ["access", "User::Access[]", [0, nil]],
      ["description", "SOAP::SOAPString", [0, 1]],
      ["email", "SOAP::SOAPString", [0, 1]],
      ["firstName", "SOAP::SOAPString"],
      ["isAdmin", "SOAP::SOAPBoolean", [0, 1]],
      ["isSuperUser", "SOAP::SOAPBoolean", [0, 1]],
      ["lastName", "SOAP::SOAPString"],
      ["login", "SOAP::SOAPString", [0, 1]],
      ["organizationId", "OrganizationId", [0, 1]],
      ["password", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => User::Access,
    :schema_name => XSD::QName.new(NsSchema, "access"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["organizationId", "OrganizationId"],
      ["roleId", "RoleId"]
    ]
  )

  LiteralRegistry.register(
    :class => UserFilter,
    :schema_type => XSD::QName.new(NsSchema, "UserFilter"),
    :schema_basetype => XSD::QName.new(NsSchema, "BaseFilter"),
    :schema_element => [
      ["isAscending", "SOAP::SOAPBoolean", [0, 1]],
      ["pageNumber", "SOAP::SOAPInt", [0, 1]],
      ["recordsPerPage", "SOAP::SOAPInt", [0, 1]],
      ["maxRecordsPerPage", "SOAP::SOAPInt", [0, 1]],
      ["isAdminCondition", "ScalarBooleanFilterCondition", [0, 1]],
      ["loginNameCondition", "ScalarStringFilterCondition", [0, 1]],
      ["orderBy", "UserOrderBy[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => RolePermissions,
    :schema_type => XSD::QName.new(NsSchema, "RolePermissions"),
    :schema_element => [
      ["create", "SOAP::SOAPBoolean"],
      ["update", "SOAP::SOAPBoolean"],
      ["delete", "SOAP::SOAPBoolean"],
      ["view", "SOAP::SOAPBoolean"],
      ["approve", "SOAP::SOAPBoolean", [0, 1]],
      ["advanced", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Permissions,
    :schema_type => XSD::QName.new(NsSchema, "Permissions"),
    :schema_element => [
      ["internalDataSources", "RolePermissions", [0, 1]],
      ["externalDataSources", "RolePermissions", [0, 1]],
      ["targets", "RolePermissions", [0, 1]],
      ["suppressionLists", "RolePermissions", [0, 1]],
      ["seedLists", "RolePermissions", [0, 1]],
      ["messageTemplates", "RolePermissions", [0, 1]],
      ["attachments", "RolePermissions", [0, 1]],
      ["contentBlocks", "RolePermissions", [0, 1]],
      ["mailings", "RolePermissions", [0, 1]],
      ["txMailings", "RolePermissions", [0, 1]],
      ["reports", "RolePermissions", [0, 1]],
      ["bounceAddresses", "RolePermissions", [0, 1]],
      ["fromAddresses", "RolePermissions", [0, 1]],
      ["replyAddresses", "RolePermissions", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => RoleId,
    :schema_type => XSD::QName.new(NsSchema, "RoleId"),
    :schema_basetype => XSD::QName.new(NsSchema, "ObjectId"),
    :schema_element => [
      ["id", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => Role,
    :schema_type => XSD::QName.new(NsSchema, "Role"),
    :schema_basetype => XSD::QName.new(NsSchema, "BaseObject"),
    :schema_element => [
      ["modifiedTime", "SOAP::SOAPDateTime", [0, 1]],
      ["objectId", "ObjectId", [0, 1]],
      ["version", "SOAP::SOAPInt", [0, 1]],
      ["description", "SOAP::SOAPString", [0, 1]],
      ["name", "SOAP::SOAPString"],
      ["organizationId", "OrganizationId", [0, 1]],
      ["permissions", "Permissions", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => RoleFilter,
    :schema_type => XSD::QName.new(NsSchema, "RoleFilter"),
    :schema_basetype => XSD::QName.new(NsSchema, "BaseFilter"),
    :schema_element => [
      ["isAscending", "SOAP::SOAPBoolean", [0, 1]],
      ["pageNumber", "SOAP::SOAPInt", [0, 1]],
      ["recordsPerPage", "SOAP::SOAPInt", [0, 1]],
      ["maxRecordsPerPage", "SOAP::SOAPInt", [0, 1]],
      ["orderBy", "RoleOrderBy[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AssignedRoleId,
    :schema_type => XSD::QName.new(NsSchema, "AssignedRoleId"),
    :schema_basetype => XSD::QName.new(NsSchema, "ObjectId"),
    :schema_element => [
      ["id", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => AssignedRole,
    :schema_type => XSD::QName.new(NsSchema, "AssignedRole"),
    :schema_basetype => XSD::QName.new(NsSchema, "BaseObject"),
    :schema_element => [
      ["modifiedTime", "SOAP::SOAPDateTime", [0, 1]],
      ["objectId", "ObjectId", [0, 1]],
      ["version", "SOAP::SOAPInt", [0, 1]],
      ["roleId", "RoleId"],
      ["organizationId", "OrganizationId"],
      ["userId", "UserId"]
    ]
  )

  LiteralRegistry.register(
    :class => AssignedRoleFilter,
    :schema_type => XSD::QName.new(NsSchema, "AssignedRoleFilter"),
    :schema_basetype => XSD::QName.new(NsSchema, "BaseFilter"),
    :schema_element => [
      ["isAscending", "SOAP::SOAPBoolean", [0, 1]],
      ["pageNumber", "SOAP::SOAPInt", [0, 1]],
      ["recordsPerPage", "SOAP::SOAPInt", [0, 1]],
      ["maxRecordsPerPage", "SOAP::SOAPInt", [0, 1]],
      ["roleIdCondition", "ScalarIdFilterCondition", [0, 1]],
      ["organizationIdCondition", "ScalarIdFilterCondition", [0, 1]],
      ["userIdCondition", "ScalarIdFilterCondition", [0, 1]],
      ["orderBy", "AssignedRoleOrderBy[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => SystemAddressId,
    :schema_type => XSD::QName.new(NsSchema, "SystemAddressId"),
    :schema_basetype => XSD::QName.new(NsSchema, "ObjectId"),
    :schema_element => [
      ["id", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => SystemAddress,
    :schema_type => XSD::QName.new(NsSchema, "SystemAddress"),
    :schema_basetype => XSD::QName.new(NsSchema, "BaseObject"),
    :schema_element => [
      ["modifiedTime", "SOAP::SOAPDateTime", [0, 1]],
      ["objectId", "ObjectId", [0, 1]],
      ["version", "SOAP::SOAPInt", [0, 1]],
      ["createdTime", "SOAP::SOAPDateTime", [0, 1]],
      ["description", "SOAP::SOAPString", [0, 1]],
      ["emailAddress", "SOAP::SOAPString"],
      [ :choice,
        ["isBounce", "SOAP::SOAPBoolean"],
        [
          ["fromName", "SOAP::SOAPString", [0, 1]],
          ["isFrom", "SOAP::SOAPBoolean"]
        ],
        ["isReply", "SOAP::SOAPBoolean"]
      ],
      ["organizationId", "OrganizationId", [0, 1]],
      ["ownerId", "UserId", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => SystemAddressFilter,
    :schema_type => XSD::QName.new(NsSchema, "SystemAddressFilter"),
    :schema_basetype => XSD::QName.new(NsSchema, "BaseFilter"),
    :schema_element => [
      ["isAscending", "SOAP::SOAPBoolean", [0, 1]],
      ["pageNumber", "SOAP::SOAPInt", [0, 1]],
      ["recordsPerPage", "SOAP::SOAPInt", [0, 1]],
      ["maxRecordsPerPage", "SOAP::SOAPInt", [0, 1]],
      ["typeCondition", "ScalarStringFilterCondition"],
      ["userIdCondition", "ScalarIdFilterCondition", [0, 1]],
      ["orderBy", "SystemAddressOrderBy[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => CampaignId,
    :schema_type => XSD::QName.new(NsSchema, "CampaignId"),
    :schema_basetype => XSD::QName.new(NsSchema, "ObjectId"),
    :schema_element => [
      ["id", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => Campaign,
    :schema_type => XSD::QName.new(NsSchema, "Campaign"),
    :schema_basetype => XSD::QName.new(NsSchema, "BaseObject"),
    :schema_element => [
      ["modifiedTime", "SOAP::SOAPDateTime", [0, 1]],
      ["objectId", "ObjectId", [0, 1]],
      ["version", "SOAP::SOAPInt", [0, 1]],
      ["createdTime", "SOAP::SOAPDateTime", [0, 1]],
      ["description", "SOAP::SOAPString", [0, 1]],
      ["name", "SOAP::SOAPString"],
      ["organizationId", "OrganizationId", [0, 1]],
      ["ownerId", "UserId", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => CampaignFilter,
    :schema_type => XSD::QName.new(NsSchema, "CampaignFilter"),
    :schema_basetype => XSD::QName.new(NsSchema, "BaseFilter"),
    :schema_element => [
      ["isAscending", "SOAP::SOAPBoolean", [0, 1]],
      ["pageNumber", "SOAP::SOAPInt", [0, 1]],
      ["recordsPerPage", "SOAP::SOAPInt", [0, 1]],
      ["maxRecordsPerPage", "SOAP::SOAPInt", [0, 1]],
      ["nameCondition", "ScalarStringFilterCondition", [0, 1]],
      ["userIdCondition", "ScalarIdFilterCondition", [0, 1]],
      ["orderBy", "CampaignOrderBy[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => MediaServerId,
    :schema_type => XSD::QName.new(NsSchema, "MediaServerId"),
    :schema_basetype => XSD::QName.new(NsSchema, "ObjectId"),
    :schema_element => [
      ["id", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => MediaServer,
    :schema_type => XSD::QName.new(NsSchema, "MediaServer"),
    :schema_basetype => XSD::QName.new(NsSchema, "BaseObject"),
    :schema_element => [
      ["modifiedTime", "SOAP::SOAPDateTime", [0, 1]],
      ["objectId", "ObjectId", [0, 1]],
      ["version", "SOAP::SOAPInt", [0, 1]],
      ["createdTime", "SOAP::SOAPDateTime", [0, 1]],
      ["defaultUrl", "SOAP::SOAPAnyURI", [0, 1]],
      ["description", "SOAP::SOAPString", [0, 1]],
      ["isWritable", "SOAP::SOAPBoolean"],
      ["name", "SOAP::SOAPString"],
      ["organizationId", "OrganizationId", [0, 1]],
      ["ownerId", "UserId", [0, 1]],
      ["server", "MediaServer::Server[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => MediaServer::Server,
    :schema_name => XSD::QName.new(NsSchema, "server"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["defaultImagePath", "SOAP::SOAPString"],
      ["host", "SOAP::SOAPString"],
      ["login", "SOAP::SOAPString"],
      ["password", "SOAP::SOAPString", [0, 1]],
      ["sshPort", "SOAP::SOAPInt"]
    ]
  )

  LiteralRegistry.register(
    :class => MediaServerFilter,
    :schema_type => XSD::QName.new(NsSchema, "MediaServerFilter"),
    :schema_basetype => XSD::QName.new(NsSchema, "BaseFilter"),
    :schema_element => [
      ["isAscending", "SOAP::SOAPBoolean", [0, 1]],
      ["pageNumber", "SOAP::SOAPInt", [0, 1]],
      ["recordsPerPage", "SOAP::SOAPInt", [0, 1]],
      ["maxRecordsPerPage", "SOAP::SOAPInt", [0, 1]],
      ["nameCondition", "ScalarStringFilterCondition", [0, 1]],
      ["urlCondition", "ScalarStringFilterCondition", [0, 1]],
      ["userIdCondition", "ScalarIdFilterCondition", [0, 1]],
      ["writableCondition", "ScalarBooleanFilterCondition", [0, 1]],
      ["orderBy", "MediaServerOrderBy[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => WebAnalyticsId,
    :schema_type => XSD::QName.new(NsSchema, "WebAnalyticsId"),
    :schema_basetype => XSD::QName.new(NsSchema, "ObjectId"),
    :schema_element => [
      ["id", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => WebAnalytics,
    :schema_type => XSD::QName.new(NsSchema, "WebAnalytics"),
    :schema_basetype => XSD::QName.new(NsSchema, "BaseObject"),
    :schema_element => [
      ["modifiedTime", "SOAP::SOAPDateTime", [0, 1]],
      ["objectId", "ObjectId", [0, 1]],
      ["version", "SOAP::SOAPInt", [0, 1]],
      ["createdTime", "SOAP::SOAPDateTime", [0, 1]],
      ["description", "SOAP::SOAPString", [0, 1]],
      ["name", "SOAP::SOAPString"],
      ["organizationId", "OrganizationId", [0, 1]],
      ["ownerId", "UserId", [0, 1]],
      ["parameter", "NameValuePair[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => WebAnalyticsFilter,
    :schema_type => XSD::QName.new(NsSchema, "WebAnalyticsFilter"),
    :schema_basetype => XSD::QName.new(NsSchema, "BaseFilter"),
    :schema_element => [
      ["isAscending", "SOAP::SOAPBoolean", [0, 1]],
      ["pageNumber", "SOAP::SOAPInt", [0, 1]],
      ["recordsPerPage", "SOAP::SOAPInt", [0, 1]],
      ["maxRecordsPerPage", "SOAP::SOAPInt", [0, 1]],
      ["nameCondition", "ScalarStringFilterCondition", [0, 1]],
      ["userIdCondition", "ScalarIdFilterCondition", [0, 1]],
      ["orderBy", "WebAnalyticsOrderBy[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => MailingClassId,
    :schema_type => XSD::QName.new(NsSchema, "MailingClassId"),
    :schema_basetype => XSD::QName.new(NsSchema, "ObjectId"),
    :schema_element => [
      ["id", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => MailingClass,
    :schema_type => XSD::QName.new(NsSchema, "MailingClass"),
    :schema_basetype => XSD::QName.new(NsSchema, "BaseObject"),
    :schema_element => [
      ["modifiedTime", "SOAP::SOAPDateTime", [0, 1]],
      ["objectId", "ObjectId", [0, 1]],
      ["version", "SOAP::SOAPInt", [0, 1]],
      ["createdTime", "SOAP::SOAPDateTime", [0, 1]],
      ["description", "SOAP::SOAPString", [0, 1]],
      ["name", "SOAP::SOAPString"],
      ["organizationId", "OrganizationId[]", [1, nil]],
      ["ownerId", "UserId", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => MailingClassFilter,
    :schema_type => XSD::QName.new(NsSchema, "MailingClassFilter"),
    :schema_basetype => XSD::QName.new(NsSchema, "BaseFilter"),
    :schema_element => [
      ["isAscending", "SOAP::SOAPBoolean", [0, 1]],
      ["pageNumber", "SOAP::SOAPInt", [0, 1]],
      ["recordsPerPage", "SOAP::SOAPInt", [0, 1]],
      ["maxRecordsPerPage", "SOAP::SOAPInt", [0, 1]],
      ["nameCondition", "ScalarStringFilterCondition", [0, 1]],
      ["userIdCondition", "ScalarIdFilterCondition", [0, 1]],
      ["orderBy", "MailingClassOrderBy[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => StrongtoolId,
    :schema_type => XSD::QName.new(NsSchema, "StrongtoolId"),
    :schema_basetype => XSD::QName.new(NsSchema, "ObjectId"),
    :schema_element => [
      ["id", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => Strongtool,
    :schema_type => XSD::QName.new(NsSchema, "Strongtool"),
    :schema_basetype => XSD::QName.new(NsSchema, "BaseObject"),
    :schema_element => [
      ["modifiedTime", "SOAP::SOAPDateTime", [0, 1]],
      ["objectId", "ObjectId", [0, 1]],
      ["version", "SOAP::SOAPInt", [0, 1]],
      ["name", "SOAP::SOAPString"],
      ["description", "SOAP::SOAPString", [0, 1]],
      ["url", "SOAP::SOAPString"],
      ["openAs", "StrongtoolOpenAs"],
      ["organizationId", "OrganizationId", [0, 1]],
      ["ownerId", "UserId", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => StrongtoolFilter,
    :schema_type => XSD::QName.new(NsSchema, "StrongtoolFilter"),
    :schema_basetype => XSD::QName.new(NsSchema, "BaseFilter"),
    :schema_element => [
      ["isAscending", "SOAP::SOAPBoolean", [0, 1]],
      ["pageNumber", "SOAP::SOAPInt", [0, 1]],
      ["recordsPerPage", "SOAP::SOAPInt", [0, 1]],
      ["maxRecordsPerPage", "SOAP::SOAPInt", [0, 1]],
      ["nameCondition", "ScalarStringFilterCondition", [0, 1]],
      ["openAsCondition", "ScalarStringFilterCondition", [0, 1]],
      ["orderBy", "StrongtoolOrderBy[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => OrganizationToken,
    :schema_type => XSD::QName.new(NsSchema, "OrganizationToken"),
    :schema_element => [
      ["organizationName", "SOAP::SOAPString"],
      ["subOrganizationId", "OrganizationId", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => IsSSO,
    :schema_type => XSD::QName.new(NsSchema, "IsSSO"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => ObjectId,
    :schema_type => XSD::QName.new(NsSchema, "ObjectId"),
    :schema_element => [
      ["id", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => NameValuePair,
    :schema_type => XSD::QName.new(NsSchema, "NameValuePair"),
    :schema_element => [
      ["name", "SOAP::SOAPString"],
      ["value", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ScalarBooleanFilterCondition,
    :schema_type => XSD::QName.new(NsSchema, "ScalarBooleanFilterCondition"),
    :schema_basetype => XSD::QName.new(NsSchema, "BooleanFilterCondition"),
    :schema_element => [
      ["value", "SOAP::SOAPBoolean"],
      ["operator", "FilterBooleanScalarOperator"]
    ]
  )

  LiteralRegistry.register(
    :class => ScalarIntegerFilterCondition,
    :schema_type => XSD::QName.new(NsSchema, "ScalarIntegerFilterCondition"),
    :schema_basetype => XSD::QName.new(NsSchema, "IntegerFilterCondition"),
    :schema_element => [
      ["value", "SOAP::SOAPInt"],
      ["operator", "FilterIntegerScalarOperator"]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayIntegerFilterCondition,
    :schema_type => XSD::QName.new(NsSchema, "ArrayIntegerFilterCondition"),
    :schema_basetype => XSD::QName.new(NsSchema, "IntegerFilterCondition"),
    :schema_element => [
      ["value", "SOAP::SOAPInt[]", [0, nil]],
      ["operator", "FilterArrayOperator"]
    ]
  )

  LiteralRegistry.register(
    :class => ScalarIdFilterCondition,
    :schema_type => XSD::QName.new(NsSchema, "ScalarIdFilterCondition"),
    :schema_basetype => XSD::QName.new(NsSchema, "IdFilterCondition"),
    :schema_element => [
      ["value", "ObjectId"],
      ["operator", "FilterIdScalarOperator"]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayIdFilterCondition,
    :schema_type => XSD::QName.new(NsSchema, "ArrayIdFilterCondition"),
    :schema_basetype => XSD::QName.new(NsSchema, "IdFilterCondition"),
    :schema_element => [
      ["value", "ObjectId[]", [0, nil]],
      ["operator", "FilterArrayOperator"]
    ]
  )

  LiteralRegistry.register(
    :class => ScalarStringFilterCondition,
    :schema_type => XSD::QName.new(NsSchema, "ScalarStringFilterCondition"),
    :schema_basetype => XSD::QName.new(NsSchema, "StringFilterCondition"),
    :schema_element => [
      ["value", "SOAP::SOAPString"],
      ["operator", "FilterStringScalarOperator"]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayStringFilterCondition,
    :schema_type => XSD::QName.new(NsSchema, "ArrayStringFilterCondition"),
    :schema_basetype => XSD::QName.new(NsSchema, "StringFilterCondition"),
    :schema_element => [
      ["value", "SOAP::SOAPString[]", [0, nil]],
      ["operator", "FilterArrayOperator"]
    ]
  )

  LiteralRegistry.register(
    :class => AddRecordsResponse,
    :schema_type => XSD::QName.new(NsSchema, "AddRecordsResponse"),
    :schema_basetype => XSD::QName.new(NsSchema, "Response"),
    :schema_element => [
      ["success", "SOAP::SOAPBoolean"]
    ]
  )

  LiteralRegistry.register(
    :class => UpsertRecordsResponse,
    :schema_type => XSD::QName.new(NsSchema, "UpsertRecordsResponse"),
    :schema_basetype => XSD::QName.new(NsSchema, "Response"),
    :schema_element => [
      ["success", "SOAP::SOAPBoolean"]
    ]
  )

  LiteralRegistry.register(
    :class => ImportFtpFileResponse,
    :schema_type => XSD::QName.new(NsSchema, "ImportFtpFileResponse"),
    :schema_basetype => XSD::QName.new(NsSchema, "Response"),
    :schema_element => [
      ["success", "SOAP::SOAPBoolean"]
    ]
  )

  LiteralRegistry.register(
    :class => CopyResponse,
    :schema_type => XSD::QName.new(NsSchema, "CopyResponse"),
    :schema_basetype => XSD::QName.new(NsSchema, "Response"),
    :schema_element => [
      ["objectId", "ObjectId"]
    ]
  )

  LiteralRegistry.register(
    :class => CreateRequest,
    :schema_type => XSD::QName.new(NsSchema, "CreateRequest"),
    :schema_element => [
      ["baseObject", "BaseObject[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => BatchCreateResponse,
    :schema_type => XSD::QName.new(NsSchema, "BatchCreateResponse"),
    :schema_basetype => XSD::QName.new(NsSchema, "BatchResponse"),
    :schema_element => [
      ["success", "SOAP::SOAPBoolean[]", [0, nil]],
      ["fault", "FaultDetail[]", [0, nil]],
      ["createResponse", "CreateResponse[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => CreateResponse,
    :schema_type => XSD::QName.new(NsSchema, "CreateResponse"),
    :schema_basetype => XSD::QName.new(NsSchema, "Response"),
    :schema_element => [
      ["objectId", "ObjectId"]
    ]
  )

  LiteralRegistry.register(
    :class => ExportRecordsResponse,
    :schema_type => XSD::QName.new(NsSchema, "ExportRecordsResponse"),
    :schema_basetype => XSD::QName.new(NsSchema, "Response"),
    :schema_element => [
      ["data", "SOAP::SOAPBase64", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => DeleteRequest,
    :schema_type => XSD::QName.new(NsSchema, "DeleteRequest"),
    :schema_element => [
      ["objectId", "ObjectId[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => BatchDeleteResponse,
    :schema_type => XSD::QName.new(NsSchema, "BatchDeleteResponse"),
    :schema_basetype => XSD::QName.new(NsSchema, "BatchResponse"),
    :schema_element => [
      ["success", "SOAP::SOAPBoolean[]", [0, nil]],
      ["fault", "FaultDetail[]", [0, nil]],
      ["deleteResponse", "DeleteResponse[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => DeleteResponse,
    :schema_type => XSD::QName.new(NsSchema, "DeleteResponse"),
    :schema_basetype => XSD::QName.new(NsSchema, "Response"),
    :schema_element => [
      ["success", "SOAP::SOAPBoolean"]
    ]
  )

  LiteralRegistry.register(
    :class => GetRequest,
    :schema_type => XSD::QName.new(NsSchema, "GetRequest"),
    :schema_element => [
      ["objectId", "ObjectId[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => BatchGetResponse,
    :schema_type => XSD::QName.new(NsSchema, "BatchGetResponse"),
    :schema_basetype => XSD::QName.new(NsSchema, "BatchResponse"),
    :schema_element => [
      ["success", "SOAP::SOAPBoolean[]", [0, nil]],
      ["fault", "FaultDetail[]", [0, nil]],
      ["getResponse", "GetResponse[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => GetResponse,
    :schema_type => XSD::QName.new(NsSchema, "GetResponse"),
    :schema_basetype => XSD::QName.new(NsSchema, "Response"),
    :schema_element => [
      ["baseObject", "BaseObject", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => BatchUpdateResponse,
    :schema_type => XSD::QName.new(NsSchema, "BatchUpdateResponse"),
    :schema_basetype => XSD::QName.new(NsSchema, "BatchResponse"),
    :schema_element => [
      ["success", "SOAP::SOAPBoolean[]", [0, nil]],
      ["fault", "FaultDetail[]", [0, nil]],
      ["updateResponse", "UpdateResponse[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => GetStatisticsResponse,
    :schema_type => XSD::QName.new(NsSchema, "GetStatisticsResponse"),
    :schema_basetype => XSD::QName.new(NsSchema, "Response"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => ImportContentRequest,
    :schema_type => XSD::QName.new(NsSchema, "ImportContentRequest"),
    :schema_element => [
      ["content", "SOAP::SOAPBase64"]
    ]
  )

  LiteralRegistry.register(
    :class => ImportContentResponse,
    :schema_type => XSD::QName.new(NsSchema, "ImportContentResponse"),
    :schema_basetype => XSD::QName.new(NsSchema, "Response"),
    :schema_element => [
      ["success", "SOAP::SOAPBoolean"]
    ]
  )

  LiteralRegistry.register(
    :class => ListRequest,
    :schema_type => XSD::QName.new(NsSchema, "ListRequest"),
    :schema_element => [
      ["filter", "BaseFilter", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ListResponse,
    :schema_type => XSD::QName.new(NsSchema, "ListResponse"),
    :schema_basetype => XSD::QName.new(NsSchema, "Response"),
    :schema_element => [
      ["objectId", "ObjectId[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => RemoveRecordsResponse,
    :schema_type => XSD::QName.new(NsSchema, "RemoveRecordsResponse"),
    :schema_basetype => XSD::QName.new(NsSchema, "Response"),
    :schema_element => [
      ["recordsRemoved", "SOAP::SOAPInt"]
    ]
  )

  LiteralRegistry.register(
    :class => TestRequest,
    :schema_type => XSD::QName.new(NsSchema, "TestRequest"),
    :schema_element => [
      ["address", "SOAP::SOAPString[]", [0, nil]],
      ["format", "MessageFormat[]", [1, nil]],
      ["subjectPrefix", "SOAP::SOAPString", [0, 1]],
      ["testListId", "SeedListId", [0, 1]],
      ["tokenValue", "NameValuePair[]", [0, nil]],
      ["useMultiPart", "SOAP::SOAPBoolean"]
    ]
  )

  LiteralRegistry.register(
    :class => TestResponse,
    :schema_type => XSD::QName.new(NsSchema, "TestResponse"),
    :schema_basetype => XSD::QName.new(NsSchema, "Response"),
    :schema_element => [
      ["success", "SOAP::SOAPBoolean"]
    ]
  )

  LiteralRegistry.register(
    :class => UpdateRequest,
    :schema_type => XSD::QName.new(NsSchema, "UpdateRequest"),
    :schema_element => [
      ["baseObject", "BaseObject[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => UpdateResponse,
    :schema_type => XSD::QName.new(NsSchema, "UpdateResponse"),
    :schema_basetype => XSD::QName.new(NsSchema, "Response"),
    :schema_element => [
      ["success", "SOAP::SOAPBoolean"]
    ]
  )

  LiteralRegistry.register(
    :class => FaultDetail,
    :schema_type => XSD::QName.new(NsSchema, "FaultDetail"),
    :schema_element => [
      ["faultCode", "FaultCode"],
      ["faultMessage", nil]
    ]
  )

  LiteralRegistry.register(
    :class => AuthorizationFaultDetail,
    :schema_type => XSD::QName.new(NsSchema, "AuthorizationFaultDetail"),
    :schema_basetype => XSD::QName.new(NsSchema, "FaultDetail"),
    :schema_element => [
      ["faultCode", "FaultCode"],
      ["faultMessage", nil]
    ]
  )

  LiteralRegistry.register(
    :class => ConcurrentModificationFaultDetail,
    :schema_type => XSD::QName.new(NsSchema, "ConcurrentModificationFaultDetail"),
    :schema_basetype => XSD::QName.new(NsSchema, "FaultDetail"),
    :schema_element => [
      ["faultCode", "FaultCode"],
      ["faultMessage", nil]
    ]
  )

  LiteralRegistry.register(
    :class => InvalidObjectFaultDetail,
    :schema_type => XSD::QName.new(NsSchema, "InvalidObjectFaultDetail"),
    :schema_basetype => XSD::QName.new(NsSchema, "FaultDetail"),
    :schema_element => [
      ["faultCode", "FaultCode"],
      ["faultMessage", nil]
    ]
  )

  LiteralRegistry.register(
    :class => ObjectNotFoundFaultDetail,
    :schema_type => XSD::QName.new(NsSchema, "ObjectNotFoundFaultDetail"),
    :schema_basetype => XSD::QName.new(NsSchema, "FaultDetail"),
    :schema_element => [
      ["faultCode", "FaultCode"],
      ["faultMessage", nil]
    ]
  )

  LiteralRegistry.register(
    :class => StaleObjectFaultDetail,
    :schema_type => XSD::QName.new(NsSchema, "StaleObjectFaultDetail"),
    :schema_basetype => XSD::QName.new(NsSchema, "FaultDetail"),
    :schema_element => [
      ["faultCode", "FaultCode"],
      ["faultMessage", nil]
    ]
  )

  LiteralRegistry.register(
    :class => UnexpectedFaultDetail,
    :schema_type => XSD::QName.new(NsSchema, "UnexpectedFaultDetail"),
    :schema_basetype => XSD::QName.new(NsSchema, "FaultDetail"),
    :schema_element => [
      ["faultCode", "FaultCode"],
      ["faultMessage", nil]
    ]
  )

  LiteralRegistry.register(
    :class => UnrecognizedObjectTypeFaultDetail,
    :schema_type => XSD::QName.new(NsSchema, "UnrecognizedObjectTypeFaultDetail"),
    :schema_basetype => XSD::QName.new(NsSchema, "FaultDetail"),
    :schema_element => [
      ["faultCode", "FaultCode"],
      ["faultMessage", nil]
    ]
  )

  LiteralRegistry.register(
    :class => BadHandleFaultDetail,
    :schema_type => XSD::QName.new(NsSchema, "BadHandleFaultDetail"),
    :schema_basetype => XSD::QName.new(NsSchema, "FaultDetail"),
    :schema_element => [
      ["faultCode", "FaultCode"],
      ["faultMessage", nil]
    ]
  )

  LiteralRegistry.register(
    :class => DataSourceType,
    :schema_type => XSD::QName.new(NsSchema, "DataSourceType")
  )

  LiteralRegistry.register(
    :class => DatabaseType,
    :schema_type => XSD::QName.new(NsSchema, "DatabaseType")
  )

  LiteralRegistry.register(
    :class => DataSourceFieldType,
    :schema_type => XSD::QName.new(NsSchema, "DataSourceFieldType")
  )

  LiteralRegistry.register(
    :class => DataSourceDataType,
    :schema_type => XSD::QName.new(NsSchema, "DataSourceDataType")
  )

  LiteralRegistry.register(
    :class => DataSourceOperationStatus,
    :schema_type => XSD::QName.new(NsSchema, "DataSourceOperationStatus")
  )

  LiteralRegistry.register(
    :class => DataSourceDedupeOption,
    :schema_type => XSD::QName.new(NsSchema, "DataSourceDedupeOption")
  )

  LiteralRegistry.register(
    :class => DataSourceOrderBy,
    :schema_type => XSD::QName.new(NsSchema, "DataSourceOrderBy")
  )

  LiteralRegistry.register(
    :class => ImportType,
    :schema_type => XSD::QName.new(NsSchema, "ImportType")
  )

  LiteralRegistry.register(
    :class => RecurringImportStatus,
    :schema_type => XSD::QName.new(NsSchema, "RecurringImportStatus")
  )

  LiteralRegistry.register(
    :class => RecurringImportType,
    :schema_type => XSD::QName.new(NsSchema, "RecurringImportType")
  )

  LiteralRegistry.register(
    :class => TargetType,
    :schema_type => XSD::QName.new(NsSchema, "TargetType")
  )

  LiteralRegistry.register(
    :class => TargetOrderBy,
    :schema_type => XSD::QName.new(NsSchema, "TargetOrderBy")
  )

  LiteralRegistry.register(
    :class => SuppressionListOrderBy,
    :schema_type => XSD::QName.new(NsSchema, "SuppressionListOrderBy")
  )

  LiteralRegistry.register(
    :class => SeedListOrderBy,
    :schema_type => XSD::QName.new(NsSchema, "SeedListOrderBy")
  )

  LiteralRegistry.register(
    :class => TrackingTag,
    :schema_type => XSD::QName.new(NsSchema, "TrackingTag")
  )

  LiteralRegistry.register(
    :class => OpenTag,
    :schema_type => XSD::QName.new(NsSchema, "OpenTag")
  )

  LiteralRegistry.register(
    :class => MessageFormat,
    :schema_type => XSD::QName.new(NsSchema, "MessageFormat")
  )

  LiteralRegistry.register(
    :class => MessageType,
    :schema_type => XSD::QName.new(NsSchema, "MessageType")
  )

  LiteralRegistry.register(
    :class => TemplateOrderBy,
    :schema_type => XSD::QName.new(NsSchema, "TemplateOrderBy")
  )

  LiteralRegistry.register(
    :class => ContentBlockOrderBy,
    :schema_type => XSD::QName.new(NsSchema, "ContentBlockOrderBy")
  )

  LiteralRegistry.register(
    :class => AttachmentOrderBy,
    :schema_type => XSD::QName.new(NsSchema, "AttachmentOrderBy")
  )

  LiteralRegistry.register(
    :class => RuleOrderBy,
    :schema_type => XSD::QName.new(NsSchema, "RuleOrderBy")
  )

  LiteralRegistry.register(
    :class => MailingStatus,
    :schema_type => XSD::QName.new(NsSchema, "MailingStatus")
  )

  LiteralRegistry.register(
    :class => MailingType,
    :schema_type => XSD::QName.new(NsSchema, "MailingType")
  )

  LiteralRegistry.register(
    :class => MailingPriority,
    :schema_type => XSD::QName.new(NsSchema, "MailingPriority")
  )

  LiteralRegistry.register(
    :class => DailyOccurrence,
    :schema_type => XSD::QName.new(NsSchema, "DailyOccurrence")
  )

  LiteralRegistry.register(
    :class => WeeklyOccurrence,
    :schema_type => XSD::QName.new(NsSchema, "WeeklyOccurrence")
  )

  LiteralRegistry.register(
    :class => MailingOrderBy,
    :schema_type => XSD::QName.new(NsSchema, "MailingOrderBy")
  )

  LiteralRegistry.register(
    :class => AssetExpiryInterval,
    :schema_type => XSD::QName.new(NsSchema, "AssetExpiryInterval")
  )

  LiteralRegistry.register(
    :class => ProgramStatus,
    :schema_type => XSD::QName.new(NsSchema, "ProgramStatus")
  )

  LiteralRegistry.register(
    :class => ProgramNodeType,
    :schema_type => XSD::QName.new(NsSchema, "ProgramNodeType")
  )

  LiteralRegistry.register(
    :class => ProgramOrderBy,
    :schema_type => XSD::QName.new(NsSchema, "ProgramOrderBy")
  )

  LiteralRegistry.register(
    :class => OrganizationOrderBy,
    :schema_type => XSD::QName.new(NsSchema, "OrganizationOrderBy")
  )

  LiteralRegistry.register(
    :class => UserOrderBy,
    :schema_type => XSD::QName.new(NsSchema, "UserOrderBy")
  )

  LiteralRegistry.register(
    :class => RoleOrderBy,
    :schema_type => XSD::QName.new(NsSchema, "RoleOrderBy")
  )

  LiteralRegistry.register(
    :class => AssignedRoleOrderBy,
    :schema_type => XSD::QName.new(NsSchema, "AssignedRoleOrderBy")
  )

  LiteralRegistry.register(
    :class => SystemAddressType,
    :schema_type => XSD::QName.new(NsSchema, "SystemAddressType")
  )

  LiteralRegistry.register(
    :class => DataSourceImportFrequency,
    :schema_type => XSD::QName.new(NsSchema, "DataSourceImportFrequency")
  )

  LiteralRegistry.register(
    :class => DataSourceImportMode,
    :schema_type => XSD::QName.new(NsSchema, "DataSourceImportMode")
  )

  LiteralRegistry.register(
    :class => SystemAddressOrderBy,
    :schema_type => XSD::QName.new(NsSchema, "SystemAddressOrderBy")
  )

  LiteralRegistry.register(
    :class => CampaignOrderBy,
    :schema_type => XSD::QName.new(NsSchema, "CampaignOrderBy")
  )

  LiteralRegistry.register(
    :class => MediaServerOrderBy,
    :schema_type => XSD::QName.new(NsSchema, "MediaServerOrderBy")
  )

  LiteralRegistry.register(
    :class => WebAnalyticsOrderBy,
    :schema_type => XSD::QName.new(NsSchema, "WebAnalyticsOrderBy")
  )

  LiteralRegistry.register(
    :class => MailingClassOrderBy,
    :schema_type => XSD::QName.new(NsSchema, "MailingClassOrderBy")
  )

  LiteralRegistry.register(
    :class => Forward2FriendOfferTrackingOption,
    :schema_type => XSD::QName.new(NsSchema, "Forward2FriendOfferTrackingOption")
  )

  LiteralRegistry.register(
    :class => StrongtoolOpenAs,
    :schema_type => XSD::QName.new(NsSchema, "StrongtoolOpenAs")
  )

  LiteralRegistry.register(
    :class => StrongtoolOrderBy,
    :schema_type => XSD::QName.new(NsSchema, "StrongtoolOrderBy")
  )

  LiteralRegistry.register(
    :class => DayOfWeek,
    :schema_type => XSD::QName.new(NsSchema, "DayOfWeek")
  )

  LiteralRegistry.register(
    :class => FilterBooleanScalarOperator,
    :schema_type => XSD::QName.new(NsSchema, "FilterBooleanScalarOperator")
  )

  LiteralRegistry.register(
    :class => FilterIdScalarOperator,
    :schema_type => XSD::QName.new(NsSchema, "FilterIdScalarOperator")
  )

  LiteralRegistry.register(
    :class => FilterIntegerScalarOperator,
    :schema_type => XSD::QName.new(NsSchema, "FilterIntegerScalarOperator")
  )

  LiteralRegistry.register(
    :class => FilterStringScalarOperator,
    :schema_type => XSD::QName.new(NsSchema, "FilterStringScalarOperator")
  )

  LiteralRegistry.register(
    :class => FilterArrayOperator,
    :schema_type => XSD::QName.new(NsSchema, "FilterArrayOperator")
  )

  LiteralRegistry.register(
    :class => ComparisonOperation,
    :schema_type => XSD::QName.new(NsSchema, "ComparisonOperation")
  )

  LiteralRegistry.register(
    :class => LogicalOperation,
    :schema_type => XSD::QName.new(NsSchema, "LogicalOperation")
  )

  LiteralRegistry.register(
    :class => CharSet,
    :schema_type => XSD::QName.new(NsSchema, "CharSet")
  )

  LiteralRegistry.register(
    :class => MSEncoding,
    :schema_type => XSD::QName.new(NsSchema, "Encoding")
  )

  LiteralRegistry.register(
    :class => FaultCode,
    :schema_type => XSD::QName.new(NsSchema, "FaultCode")
  )

  LiteralRegistry.register(
    :class => AddRecordsRequest,
    :schema_name => XSD::QName.new(NsSchema, "addRecords"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => AddRecordsResponse,
    :schema_name => XSD::QName.new(NsSchema, "addRecordsResponse"),
    :schema_element => [
      ["success", "SOAP::SOAPBoolean"]
    ]
  )

  LiteralRegistry.register(
    :class => UpsertRecordsRequest,
    :schema_name => XSD::QName.new(NsSchema, "upsertRecords"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => UpsertRecordsResponse,
    :schema_name => XSD::QName.new(NsSchema, "upsertRecordsResponse"),
    :schema_element => [
      ["success", "SOAP::SOAPBoolean"]
    ]
  )

  LiteralRegistry.register(
    :class => ImportFtpFileRequest,
    :schema_name => XSD::QName.new(NsSchema, "importFtpFile"),
    :schema_element => [
      ["dataSourceId", "DataSourceId"],
      ["containsFieldNames", "SOAP::SOAPBoolean", [0, 1]],
      ["fieldDelimiter", "SOAP::SOAPString", [0, 1]],
      ["ftpFileName", "SOAP::SOAPString"],
      ["importMode", "ImportType"]
    ]
  )

  LiteralRegistry.register(
    :class => ImportFtpFileResponse,
    :schema_name => XSD::QName.new(NsSchema, "importFtpFileResponse"),
    :schema_element => [
      ["success", "SOAP::SOAPBoolean"]
    ]
  )

  LiteralRegistry.register(
    :class => GetRecordsRequest,
    :schema_name => XSD::QName.new(NsSchema, "getRecords"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => GetRecordsResponse,
    :schema_name => XSD::QName.new(NsSchema, "getRecordsResponse"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => CancelRequest,
    :schema_name => XSD::QName.new(NsSchema, "cancel"),
    :schema_element => [
      ["mailingId", "MailingId"]
    ]
  )

  LiteralRegistry.register(
    :class => CancelResponse,
    :schema_name => XSD::QName.new(NsSchema, "cancelResponse"),
    :schema_element => [
      ["success", "SOAP::SOAPBoolean"]
    ]
  )

  LiteralRegistry.register(
    :class => CancelRefreshRecordsRequest,
    :schema_name => XSD::QName.new(NsSchema, "cancelRefreshRecords"),
    :schema_element => [
      ["dataSourceId", "ExternalDataSourceId"]
    ]
  )

  LiteralRegistry.register(
    :class => CancelRefreshRecordsResponse,
    :schema_name => XSD::QName.new(NsSchema, "cancelRefreshRecordsResponse"),
    :schema_element => [
      ["success", "SOAP::SOAPBoolean"]
    ]
  )

  LiteralRegistry.register(
    :class => CloseRequest,
    :schema_name => XSD::QName.new(NsSchema, "close"),
    :schema_element => [
      ["mailingId", "TransactionalMailingId"]
    ]
  )

  LiteralRegistry.register(
    :class => CloseResponse,
    :schema_name => XSD::QName.new(NsSchema, "closeResponse"),
    :schema_element => [
      ["success", "SOAP::SOAPBoolean"]
    ]
  )

  LiteralRegistry.register(
    :class => ArchiveRequest,
    :schema_name => XSD::QName.new(NsSchema, "archive"),
    :schema_element => [
      ["mailingId", "MailingId"]
    ]
  )

  LiteralRegistry.register(
    :class => ArchiveResponse,
    :schema_name => XSD::QName.new(NsSchema, "archiveResponse"),
    :schema_element => [
      ["success", "SOAP::SOAPBoolean"]
    ]
  )

  LiteralRegistry.register(
    :class => CopyRequest,
    :schema_name => XSD::QName.new(NsSchema, "copy"),
    :schema_element => [
      ["newName", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => CopyResponse,
    :schema_name => XSD::QName.new(NsSchema, "copyResponse"),
    :schema_element => [
      ["objectId", "ObjectId"]
    ]
  )

  LiteralRegistry.register(
    :class => CreateRequest,
    :schema_name => XSD::QName.new(NsSchema, "create"),
    :schema_element => [
      ["baseObject", "BaseObject[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => BatchCreateResponse,
    :schema_name => XSD::QName.new(NsSchema, "createResponse"),
    :schema_element => [
      ["success", "SOAP::SOAPBoolean[]", [0, nil]],
      ["fault", "FaultDetail[]", [0, nil]],
      ["createResponse", "CreateResponse[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => DedupeRecordsRequest,
    :schema_name => XSD::QName.new(NsSchema, "dedupeRecords"),
    :schema_element => [
      ["matchField", "SOAP::SOAPString[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => DedupeRecordsResponse,
    :schema_name => XSD::QName.new(NsSchema, "dedupeRecordsResponse"),
    :schema_element => [
      ["success", "SOAP::SOAPBoolean"]
    ]
  )

  LiteralRegistry.register(
    :class => DeleteRequest,
    :schema_name => XSD::QName.new(NsSchema, "delete"),
    :schema_element => [
      ["objectId", "ObjectId[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => BatchDeleteResponse,
    :schema_name => XSD::QName.new(NsSchema, "deleteResponse"),
    :schema_element => [
      ["success", "SOAP::SOAPBoolean[]", [0, nil]],
      ["fault", "FaultDetail[]", [0, nil]],
      ["deleteResponse", "DeleteResponse[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => ExportRecordsRequest,
    :schema_name => XSD::QName.new(NsSchema, "exportRecords"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => ExportRecordsResponse,
    :schema_name => XSD::QName.new(NsSchema, "exportRecordsResponse"),
    :schema_element => [
      ["data", "SOAP::SOAPBase64", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GetRequest,
    :schema_name => XSD::QName.new(NsSchema, "get"),
    :schema_element => [
      ["objectId", "ObjectId[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => BatchGetResponse,
    :schema_name => XSD::QName.new(NsSchema, "getResponse"),
    :schema_element => [
      ["success", "SOAP::SOAPBoolean[]", [0, nil]],
      ["fault", "FaultDetail[]", [0, nil]],
      ["getResponse", "GetResponse[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => GetStatisticsRequest,
    :schema_name => XSD::QName.new(NsSchema, "getStatistics"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => GetStatisticsResponse,
    :schema_name => XSD::QName.new(NsSchema, "getStatisticsResponse"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => ImportContentRequest,
    :schema_name => XSD::QName.new(NsSchema, "importContent"),
    :schema_element => [
      ["content", "SOAP::SOAPBase64"]
    ]
  )

  LiteralRegistry.register(
    :class => ImportContentResponse,
    :schema_name => XSD::QName.new(NsSchema, "importContentResponse"),
    :schema_element => [
      ["success", "SOAP::SOAPBoolean"]
    ]
  )

  LiteralRegistry.register(
    :class => ImportMessagePartRequest,
    :schema_name => XSD::QName.new(NsSchema, "importMessagePart"),
    :schema_element => [
      ["templateId", "TemplateId"],
      ["mediaServerId", "MediaServerId"],
      ["isXsl", "SOAP::SOAPBoolean"],
      ["folderName", "SOAP::SOAPString", [0, 1]],
      ["zipFile", "SOAP::SOAPBase64"]
    ]
  )

  LiteralRegistry.register(
    :class => ImportMessagePartResponse,
    :schema_name => XSD::QName.new(NsSchema, "importMessagePartResponse"),
    :schema_element => [
      ["success", "SOAP::SOAPBoolean"]
    ]
  )

  LiteralRegistry.register(
    :class => LaunchRequest,
    :schema_name => XSD::QName.new(NsSchema, "launch"),
    :schema_element => [
      ["mailingId", "StandardMailingId"]
    ]
  )

  LiteralRegistry.register(
    :class => LaunchResponse,
    :schema_name => XSD::QName.new(NsSchema, "launchResponse"),
    :schema_element => [
      ["success", "SOAP::SOAPBoolean"]
    ]
  )

  LiteralRegistry.register(
    :class => ListRequest,
    :schema_name => XSD::QName.new(NsSchema, "list"),
    :schema_element => [
      ["filter", "BaseFilter", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ListResponse,
    :schema_name => XSD::QName.new(NsSchema, "listResponse"),
    :schema_element => [
      ["objectId", "ObjectId[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => LoadRequest,
    :schema_name => XSD::QName.new(NsSchema, "load"),
    :schema_element => [
      ["mailingId", "TransactionalMailingId"]
    ]
  )

  LiteralRegistry.register(
    :class => LoadResponse,
    :schema_name => XSD::QName.new(NsSchema, "loadResponse"),
    :schema_element => [
      ["success", "SOAP::SOAPBoolean"]
    ]
  )

  LiteralRegistry.register(
    :class => PauseRequest,
    :schema_name => XSD::QName.new(NsSchema, "pause"),
    :schema_element => [
      ["mailingId", "MailingId"]
    ]
  )

  LiteralRegistry.register(
    :class => PauseResponse,
    :schema_name => XSD::QName.new(NsSchema, "pauseResponse"),
    :schema_element => [
      ["success", "SOAP::SOAPBoolean"]
    ]
  )

  LiteralRegistry.register(
    :class => RefreshRecordsRequest,
    :schema_name => XSD::QName.new(NsSchema, "refreshRecords"),
    :schema_element => [
      ["dataSourceId", "ExternalDataSourceId"]
    ]
  )

  LiteralRegistry.register(
    :class => RefreshRecordsResponse,
    :schema_name => XSD::QName.new(NsSchema, "refreshRecordsResponse"),
    :schema_element => [
      ["success", "SOAP::SOAPBoolean"]
    ]
  )

  LiteralRegistry.register(
    :class => RemoveRecordsRequest,
    :schema_name => XSD::QName.new(NsSchema, "removeRecords"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => RemoveRecordsResponse,
    :schema_name => XSD::QName.new(NsSchema, "removeRecordsResponse"),
    :schema_element => [
      ["recordsRemoved", "SOAP::SOAPInt"]
    ]
  )

  LiteralRegistry.register(
    :class => ResumeRequest,
    :schema_name => XSD::QName.new(NsSchema, "resume"),
    :schema_element => [
      ["mailingId", "MailingId"]
    ]
  )

  LiteralRegistry.register(
    :class => ResumeResponse,
    :schema_name => XSD::QName.new(NsSchema, "resumeResponse"),
    :schema_element => [
      ["success", "SOAP::SOAPBoolean"]
    ]
  )

  LiteralRegistry.register(
    :class => ScheduleRequest,
    :schema_name => XSD::QName.new(NsSchema, "schedule"),
    :schema_element => [
      ["mailingId", "StandardMailingId"]
    ]
  )

  LiteralRegistry.register(
    :class => ScheduleResponse,
    :schema_name => XSD::QName.new(NsSchema, "scheduleResponse"),
    :schema_element => [
      ["success", "SOAP::SOAPBoolean"]
    ]
  )

  LiteralRegistry.register(
    :class => SendRequest,
    :schema_name => XSD::QName.new(NsSchema, "send"),
    :schema_element => [
      ["mailingId", "TransactionalMailingId"],
      [ :choice,
        ["sendData", "SOAP::SOAPString"],
        ["sendRecord", "SendRecord[]", [1, nil]]
      ]
    ]
  )

  LiteralRegistry.register(
    :class => SendResponse,
    :schema_name => XSD::QName.new(NsSchema, "sendResponse"),
    :schema_element => [
      ["success", "SOAP::SOAPBoolean"]
    ]
  )

  LiteralRegistry.register(
    :class => GetTxnMailingHandleRequest,
    :schema_name => XSD::QName.new(NsSchema, "getTxnMailingHandle"),
    :schema_element => [
      [ :choice,
        ["mailingId", "TransactionalMailingId"],
        ["mailingName", "SOAP::SOAPString"]
      ]
    ]
  )

  LiteralRegistry.register(
    :class => GetTxnMailingHandleResponse,
    :schema_name => XSD::QName.new(NsSchema, "getTxnMailingHandleResponse"),
    :schema_element => [
      ["handle", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => GetAllEasByMailingIdRequest,
    :schema_name => XSD::QName.new(NsSchema, "GetAllEasByMailingId"),
    :schema_element => [
      ["mailingId", "MailingId"]
    ]
  )

  LiteralRegistry.register(
    :class => GetAllEasListByMailingIdResponse,
    :schema_name => XSD::QName.new(NsSchema, "GetAllEasListByMailingIdResponse"),
    :schema_element => [
      ["getAllEasByMailingIdResponse", ["GetAllEasByMailingIdResponse[]", XSD::QName.new(NsSchema, "GetAllEasByMailingIdResponse")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => GetTxnEasInfoRequest,
    :schema_name => XSD::QName.new(NsSchema, "getTxnEasInfo"),
    :schema_element => [
      ["mailingId", "TransactionalMailingId"]
    ]
  )

  LiteralRegistry.register(
    :class => GetTxnEasInfoResponse,
    :schema_name => XSD::QName.new(NsSchema, "getTxnEasInfoResponse"),
    :schema_element => [
      ["hostname", "SOAP::SOAPString"],
      ["mailingName", "SOAP::SOAPString"],
      ["mailingHandle", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => TxnSendRequest,
    :schema_name => XSD::QName.new(NsSchema, "txnSend"),
    :schema_element => [
      ["handle", "SOAP::SOAPString"],
      ["sendRecord", "SendRecord[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => TxnSendResponse,
    :schema_name => XSD::QName.new(NsSchema, "txnSendResponse"),
    :schema_element => [
      ["success", "SOAP::SOAPBoolean"]
    ]
  )

  LiteralRegistry.register(
    :class => TestRequest,
    :schema_name => XSD::QName.new(NsSchema, "test"),
    :schema_element => [
      ["address", "SOAP::SOAPString[]", [0, nil]],
      ["format", "MessageFormat[]", [1, nil]],
      ["subjectPrefix", "SOAP::SOAPString", [0, 1]],
      ["testListId", "SeedListId", [0, 1]],
      ["tokenValue", "NameValuePair[]", [0, nil]],
      ["useMultiPart", "SOAP::SOAPBoolean"]
    ]
  )

  LiteralRegistry.register(
    :class => TestResponse,
    :schema_name => XSD::QName.new(NsSchema, "testResponse"),
    :schema_element => [
      ["success", "SOAP::SOAPBoolean"]
    ]
  )

  LiteralRegistry.register(
    :class => UpdateRequest,
    :schema_name => XSD::QName.new(NsSchema, "update"),
    :schema_element => [
      ["baseObject", "BaseObject[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => BatchUpdateResponse,
    :schema_name => XSD::QName.new(NsSchema, "updateResponse"),
    :schema_element => [
      ["success", "SOAP::SOAPBoolean[]", [0, nil]],
      ["fault", "FaultDetail[]", [0, nil]],
      ["updateResponse", "UpdateResponse[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => ValidateXslRequest,
    :schema_name => XSD::QName.new(NsSchema, "validateXsl"),
    :schema_element => [
      ["templateId", "TemplateId"],
      ["messageFormat", "MessageFormat"]
    ]
  )

  LiteralRegistry.register(
    :class => ValidateXslResponse,
    :schema_name => XSD::QName.new(NsSchema, "validateXslResponse"),
    :schema_element => [
      ["valid", "SOAP::SOAPBoolean"]
    ]
  )

  LiteralRegistry.register(
    :class => FetchLinksRequest,
    :schema_name => XSD::QName.new(NsSchema, "fetchLinks"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => FetchLinksResponse,
    :schema_name => XSD::QName.new(NsSchema, "fetchLinksResponse"),
    :schema_element => [
      ["success", "SOAP::SOAPBoolean[]", [0, nil]],
      ["fault", "FaultDetail[]", [0, nil]],
      ["fetchLinkResponse", "FetchLinkResponse[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => GetSingleSignOnURLRequest,
    :schema_name => XSD::QName.new(NsSchema, "getSingleSignOnURL"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => GetSingleSignOnURLResponse,
    :schema_name => XSD::QName.new(NsSchema, "getSingleSignOnURLResponse"),
    :schema_element => [
      ["url", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => StartRecurringImportRequest,
    :schema_name => XSD::QName.new(NsSchema, "startImport"),
    :schema_element => [
      ["importId", "RecurringImportId"],
      ["fullRefresh", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => StartRecurringImportResponse,
    :schema_name => XSD::QName.new(NsSchema, "startImportResponse"),
    :schema_element => [
      ["success", "SOAP::SOAPBoolean"]
    ]
  )

  LiteralRegistry.register(
    :class => GetRecurringImportStatusRequest,
    :schema_name => XSD::QName.new(NsSchema, "getImportStatus"),
    :schema_element => [
      [ :choice,
        ["internalDataSourceId", "InternalDataSourceId"],
        ["extensionId", "ExtensionId"]
      ]
    ]
  )

  LiteralRegistry.register(
    :class => GetRecurringImportStatusResponse,
    :schema_name => XSD::QName.new(NsSchema, "getImportStatusResponse"),
    :schema_element => [
      ["importResult", "RecurringImportResult[]", [0, 10]]
    ]
  )

  LiteralRegistry.register(
    :class => FindRecurringImportRequest,
    :schema_name => XSD::QName.new(NsSchema, "findImport"),
    :schema_element => [
      [ :choice,
        ["internalDataSourceId", "InternalDataSourceId"],
        ["extensionId", "ExtensionId"]
      ]
    ]
  )

  LiteralRegistry.register(
    :class => FindRecurringImportResponse,
    :schema_name => XSD::QName.new(NsSchema, "findImportResponse"),
    :schema_element => [
      ["importId", "RecurringImportId[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => GetRecurringImportRequest,
    :schema_name => XSD::QName.new(NsSchema, "getImportDetails"),
    :schema_element => [
      ["importId", "RecurringImportId"]
    ]
  )

  LiteralRegistry.register(
    :class => GetRecurringImportResponse,
    :schema_name => XSD::QName.new(NsSchema, "getImportDetailsResponse"),
    :schema_element => [
      ["importDetails", "RecurringImport"]
    ]
  )

  LiteralRegistry.register(
    :class => AuthorizationFaultDetail,
    :schema_name => XSD::QName.new(NsSchema, "authorizationFault"),
    :schema_element => [
      ["faultCode", "FaultCode"],
      ["faultMessage", nil]
    ]
  )

  LiteralRegistry.register(
    :class => ConcurrentModificationFaultDetail,
    :schema_name => XSD::QName.new(NsSchema, "concurrentModificationFault"),
    :schema_element => [
      ["faultCode", "FaultCode"],
      ["faultMessage", nil]
    ]
  )

  LiteralRegistry.register(
    :class => InvalidObjectFaultDetail,
    :schema_name => XSD::QName.new(NsSchema, "invalidObjectFault"),
    :schema_element => [
      ["faultCode", "FaultCode"],
      ["faultMessage", nil]
    ]
  )

  LiteralRegistry.register(
    :class => ObjectNotFoundFaultDetail,
    :schema_name => XSD::QName.new(NsSchema, "objectNotFoundFault"),
    :schema_element => [
      ["faultCode", "FaultCode"],
      ["faultMessage", nil]
    ]
  )

  LiteralRegistry.register(
    :class => StaleObjectFaultDetail,
    :schema_name => XSD::QName.new(NsSchema, "staleObjectFault"),
    :schema_element => [
      ["faultCode", "FaultCode"],
      ["faultMessage", nil]
    ]
  )

  LiteralRegistry.register(
    :class => UnexpectedFaultDetail,
    :schema_name => XSD::QName.new(NsSchema, "unexpectedFault"),
    :schema_element => [
      ["faultCode", "FaultCode"],
      ["faultMessage", nil]
    ]
  )

  LiteralRegistry.register(
    :class => UnrecognizedObjectTypeFaultDetail,
    :schema_name => XSD::QName.new(NsSchema, "unrecognizedObjectTypeFault"),
    :schema_element => [
      ["faultCode", "FaultCode"],
      ["faultMessage", nil]
    ]
  )

  LiteralRegistry.register(
    :class => BadHandleFaultDetail,
    :schema_name => XSD::QName.new(NsSchema, "badHandleFault"),
    :schema_element => [
      ["faultCode", "FaultCode"],
      ["faultMessage", nil]
    ]
  )

  LiteralRegistry.register(
    :class => GetProgramNodesRequest,
    :schema_name => XSD::QName.new(NsSchema, "getProgramNodes"),
    :schema_element => [
      ["programId", "ProgramId"]
    ]
  )

  LiteralRegistry.register(
    :class => GetProgramNodesResponse,
    :schema_name => XSD::QName.new(NsSchema, "getProgramNodesResponse"),
    :schema_element => [
      ["programNodes", "ProgramNode[]", [0, nil]]
    ]
  )
end
