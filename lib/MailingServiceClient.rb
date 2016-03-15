#!/usr/bin/env ruby
require 'MailingServiceDriver.rb'

endpoint_url = ARGV.shift
obj = MailingService.new(endpoint_url)

# run ruby with -d to see SOAP wiredumps.
obj.wiredump_dev = STDERR if $DEBUG

# SYNOPSIS
#   addRecords(addRecords)
#
# ARGS
#   addRecords      AddRecordsRequest - {http://www.strongmail.com/services/2009/03/02/schema}AddRecordsRequest
#
# RETURNS
#   addRecordsResponse AddRecordsResponse - {http://www.strongmail.com/services/2009/03/02/schema}AddRecordsResponse
#
# RAISES
#   objectNotFoundFault ObjectNotFoundFaultDetail - {http://www.strongmail.com/services/2009/03/02/schema}ObjectNotFoundFaultDetail
#   authorizationFault AuthorizationFaultDetail - {http://www.strongmail.com/services/2009/03/02/schema}AuthorizationFaultDetail
#   unrecognizedObjectTypeFault UnrecognizedObjectTypeFaultDetail - {http://www.strongmail.com/services/2009/03/02/schema}UnrecognizedObjectTypeFaultDetail
#   unexpectedFault UnexpectedFaultDetail - {http://www.strongmail.com/services/2009/03/02/schema}UnexpectedFaultDetail
#   invalidObjectFault InvalidObjectFaultDetail - {http://www.strongmail.com/services/2009/03/02/schema}InvalidObjectFaultDetail
#   concurrentModificationFault ConcurrentModificationFaultDetail - {http://www.strongmail.com/services/2009/03/02/schema}ConcurrentModificationFaultDetail
#
addRecords = nil
puts obj.addRecords(addRecords)

# SYNOPSIS
#   getProgramNodes(getProgramNodes)
#
# ARGS
#   getProgramNodes GetProgramNodesRequest - {http://www.strongmail.com/services/2009/03/02/schema}GetProgramNodesRequest
#
# RETURNS
#   getProgramNodesResponse GetProgramNodesResponse - {http://www.strongmail.com/services/2009/03/02/schema}GetProgramNodesResponse
#
# RAISES
#   objectNotFoundFault ObjectNotFoundFaultDetail - {http://www.strongmail.com/services/2009/03/02/schema}ObjectNotFoundFaultDetail
#   authorizationFault AuthorizationFaultDetail - {http://www.strongmail.com/services/2009/03/02/schema}AuthorizationFaultDetail
#   unexpectedFault UnexpectedFaultDetail - {http://www.strongmail.com/services/2009/03/02/schema}UnexpectedFaultDetail
#
getProgramNodes = nil
puts obj.getProgramNodes(getProgramNodes)

# SYNOPSIS
#   archive(archive)
#
# ARGS
#   archive         ArchiveRequest - {http://www.strongmail.com/services/2009/03/02/schema}ArchiveRequest
#
# RETURNS
#   archiveResponse ArchiveResponse - {http://www.strongmail.com/services/2009/03/02/schema}ArchiveResponse
#
# RAISES
#   objectNotFoundFault ObjectNotFoundFaultDetail - {http://www.strongmail.com/services/2009/03/02/schema}ObjectNotFoundFaultDetail
#   authorizationFault AuthorizationFaultDetail - {http://www.strongmail.com/services/2009/03/02/schema}AuthorizationFaultDetail
#   unexpectedFault UnexpectedFaultDetail - {http://www.strongmail.com/services/2009/03/02/schema}UnexpectedFaultDetail
#
archive = nil
puts obj.archive(archive)

# SYNOPSIS
#   cancel(cancel)
#
# ARGS
#   cancel          CancelRequest - {http://www.strongmail.com/services/2009/03/02/schema}CancelRequest
#
# RETURNS
#   cancelResponse  CancelResponse - {http://www.strongmail.com/services/2009/03/02/schema}CancelResponse
#
# RAISES
#   objectNotFoundFault ObjectNotFoundFaultDetail - {http://www.strongmail.com/services/2009/03/02/schema}ObjectNotFoundFaultDetail
#   authorizationFault AuthorizationFaultDetail - {http://www.strongmail.com/services/2009/03/02/schema}AuthorizationFaultDetail
#   unexpectedFault UnexpectedFaultDetail - {http://www.strongmail.com/services/2009/03/02/schema}UnexpectedFaultDetail
#
cancel = nil
puts obj.cancel(cancel)

# SYNOPSIS
#   cancelRefreshRecords(cancelRefreshRecords)
#
# ARGS
#   cancelRefreshRecords CancelRefreshRecordsRequest - {http://www.strongmail.com/services/2009/03/02/schema}CancelRefreshRecordsRequest
#
# RETURNS
#   cancelRefreshRecordsResponse CancelRefreshRecordsResponse - {http://www.strongmail.com/services/2009/03/02/schema}CancelRefreshRecordsResponse
#
# RAISES
#   objectNotFoundFault ObjectNotFoundFaultDetail - {http://www.strongmail.com/services/2009/03/02/schema}ObjectNotFoundFaultDetail
#   authorizationFault AuthorizationFaultDetail - {http://www.strongmail.com/services/2009/03/02/schema}AuthorizationFaultDetail
#   unexpectedFault UnexpectedFaultDetail - {http://www.strongmail.com/services/2009/03/02/schema}UnexpectedFaultDetail
#
cancelRefreshRecords = nil
puts obj.cancelRefreshRecords(cancelRefreshRecords)

# SYNOPSIS
#   close(close)
#
# ARGS
#   close           CloseRequest - {http://www.strongmail.com/services/2009/03/02/schema}CloseRequest
#
# RETURNS
#   closeResponse   CloseResponse - {http://www.strongmail.com/services/2009/03/02/schema}CloseResponse
#
# RAISES
#   objectNotFoundFault ObjectNotFoundFaultDetail - {http://www.strongmail.com/services/2009/03/02/schema}ObjectNotFoundFaultDetail
#   authorizationFault AuthorizationFaultDetail - {http://www.strongmail.com/services/2009/03/02/schema}AuthorizationFaultDetail
#   unexpectedFault UnexpectedFaultDetail - {http://www.strongmail.com/services/2009/03/02/schema}UnexpectedFaultDetail
#
close = nil
puts obj.close(close)

# SYNOPSIS
#   copy(copy)
#
# ARGS
#   copy            CopyRequest - {http://www.strongmail.com/services/2009/03/02/schema}CopyRequest
#
# RETURNS
#   copyResponse    CopyResponse - {http://www.strongmail.com/services/2009/03/02/schema}CopyResponse
#
# RAISES
#   objectNotFoundFault ObjectNotFoundFaultDetail - {http://www.strongmail.com/services/2009/03/02/schema}ObjectNotFoundFaultDetail
#   authorizationFault AuthorizationFaultDetail - {http://www.strongmail.com/services/2009/03/02/schema}AuthorizationFaultDetail
#   unrecognizedObjectTypeFault UnrecognizedObjectTypeFaultDetail - {http://www.strongmail.com/services/2009/03/02/schema}UnrecognizedObjectTypeFaultDetail
#   unexpectedFault UnexpectedFaultDetail - {http://www.strongmail.com/services/2009/03/02/schema}UnexpectedFaultDetail
#   invalidObjectFault InvalidObjectFaultDetail - {http://www.strongmail.com/services/2009/03/02/schema}InvalidObjectFaultDetail
#
copy = nil
puts obj.copy(copy)

# SYNOPSIS
#   create(create)
#
# ARGS
#   create          CreateRequest - {http://www.strongmail.com/services/2009/03/02/schema}CreateRequest
#
# RETURNS
#   createResponse  BatchCreateResponse - {http://www.strongmail.com/services/2009/03/02/schema}BatchCreateResponse
#
create = nil
puts obj.create(create)

# SYNOPSIS
#   dedupeRecords(dedupeRecords)
#
# ARGS
#   dedupeRecords   DedupeRecordsRequest - {http://www.strongmail.com/services/2009/03/02/schema}DedupeRecordsRequest
#
# RETURNS
#   dedupeRecordsResponse DedupeRecordsResponse - {http://www.strongmail.com/services/2009/03/02/schema}DedupeRecordsResponse
#
# RAISES
#   objectNotFoundFault ObjectNotFoundFaultDetail - {http://www.strongmail.com/services/2009/03/02/schema}ObjectNotFoundFaultDetail
#   authorizationFault AuthorizationFaultDetail - {http://www.strongmail.com/services/2009/03/02/schema}AuthorizationFaultDetail
#   unrecognizedObjectTypeFault UnrecognizedObjectTypeFaultDetail - {http://www.strongmail.com/services/2009/03/02/schema}UnrecognizedObjectTypeFaultDetail
#   unexpectedFault UnexpectedFaultDetail - {http://www.strongmail.com/services/2009/03/02/schema}UnexpectedFaultDetail
#   concurrentModificationFault ConcurrentModificationFaultDetail - {http://www.strongmail.com/services/2009/03/02/schema}ConcurrentModificationFaultDetail
#
dedupeRecords = nil
puts obj.dedupeRecords(dedupeRecords)

# SYNOPSIS
#   delete(delete)
#
# ARGS
#   delete          DeleteRequest - {http://www.strongmail.com/services/2009/03/02/schema}DeleteRequest
#
# RETURNS
#   deleteResponse  BatchDeleteResponse - {http://www.strongmail.com/services/2009/03/02/schema}BatchDeleteResponse
#
delete = nil
puts obj.delete(delete)

# SYNOPSIS
#   exportRecords(exportRecords)
#
# ARGS
#   exportRecords   ExportRecordsRequest - {http://www.strongmail.com/services/2009/03/02/schema}ExportRecordsRequest
#
# RETURNS
#   exportRecordsResponse ExportRecordsResponse - {http://www.strongmail.com/services/2009/03/02/schema}ExportRecordsResponse
#
# RAISES
#   objectNotFoundFault ObjectNotFoundFaultDetail - {http://www.strongmail.com/services/2009/03/02/schema}ObjectNotFoundFaultDetail
#   authorizationFault AuthorizationFaultDetail - {http://www.strongmail.com/services/2009/03/02/schema}AuthorizationFaultDetail
#   unrecognizedObjectTypeFault UnrecognizedObjectTypeFaultDetail - {http://www.strongmail.com/services/2009/03/02/schema}UnrecognizedObjectTypeFaultDetail
#   unexpectedFault UnexpectedFaultDetail - {http://www.strongmail.com/services/2009/03/02/schema}UnexpectedFaultDetail
#
exportRecords = nil
puts obj.exportRecords(exportRecords)

# SYNOPSIS
#   get(get)
#
# ARGS
#   get             GetRequest - {http://www.strongmail.com/services/2009/03/02/schema}GetRequest
#
# RETURNS
#   getResponse     BatchGetResponse - {http://www.strongmail.com/services/2009/03/02/schema}BatchGetResponse
#
get = nil
puts obj.get(get)

# SYNOPSIS
#   getStatistics(getStatistics)
#
# ARGS
#   getStatistics   GetStatisticsRequest - {http://www.strongmail.com/services/2009/03/02/schema}GetStatisticsRequest
#
# RETURNS
#   getStatisticsResponse GetStatisticsResponse - {http://www.strongmail.com/services/2009/03/02/schema}GetStatisticsResponse
#
# RAISES
#   objectNotFoundFault ObjectNotFoundFaultDetail - {http://www.strongmail.com/services/2009/03/02/schema}ObjectNotFoundFaultDetail
#   authorizationFault AuthorizationFaultDetail - {http://www.strongmail.com/services/2009/03/02/schema}AuthorizationFaultDetail
#   unrecognizedObjectTypeFault UnrecognizedObjectTypeFaultDetail - {http://www.strongmail.com/services/2009/03/02/schema}UnrecognizedObjectTypeFaultDetail
#   unexpectedFault UnexpectedFaultDetail - {http://www.strongmail.com/services/2009/03/02/schema}UnexpectedFaultDetail
#
getStatistics = nil
puts obj.getStatistics(getStatistics)

# SYNOPSIS
#   importContent(importContent)
#
# ARGS
#   importContent   ImportContentRequest - {http://www.strongmail.com/services/2009/03/02/schema}ImportContentRequest
#
# RETURNS
#   importContentResponse ImportContentResponse - {http://www.strongmail.com/services/2009/03/02/schema}ImportContentResponse
#
# RAISES
#   objectNotFoundFault ObjectNotFoundFaultDetail - {http://www.strongmail.com/services/2009/03/02/schema}ObjectNotFoundFaultDetail
#   authorizationFault AuthorizationFaultDetail - {http://www.strongmail.com/services/2009/03/02/schema}AuthorizationFaultDetail
#   unrecognizedObjectTypeFault UnrecognizedObjectTypeFaultDetail - {http://www.strongmail.com/services/2009/03/02/schema}UnrecognizedObjectTypeFaultDetail
#   unexpectedFault UnexpectedFaultDetail - {http://www.strongmail.com/services/2009/03/02/schema}UnexpectedFaultDetail
#
importContent = nil
puts obj.importContent(importContent)

# SYNOPSIS
#   importMessagePart(importMessagePart)
#
# ARGS
#   importMessagePart ImportMessagePartRequest - {http://www.strongmail.com/services/2009/03/02/schema}ImportMessagePartRequest
#
# RETURNS
#   importMessagePartResponse ImportMessagePartResponse - {http://www.strongmail.com/services/2009/03/02/schema}ImportMessagePartResponse
#
# RAISES
#   objectNotFoundFault ObjectNotFoundFaultDetail - {http://www.strongmail.com/services/2009/03/02/schema}ObjectNotFoundFaultDetail
#   authorizationFault AuthorizationFaultDetail - {http://www.strongmail.com/services/2009/03/02/schema}AuthorizationFaultDetail
#   unexpectedFault UnexpectedFaultDetail - {http://www.strongmail.com/services/2009/03/02/schema}UnexpectedFaultDetail
#
importMessagePart = nil
puts obj.importMessagePart(importMessagePart)

# SYNOPSIS
#   launch(launch)
#
# ARGS
#   launch          LaunchRequest - {http://www.strongmail.com/services/2009/03/02/schema}LaunchRequest
#
# RETURNS
#   launchResponse  LaunchResponse - {http://www.strongmail.com/services/2009/03/02/schema}LaunchResponse
#
# RAISES
#   objectNotFoundFault ObjectNotFoundFaultDetail - {http://www.strongmail.com/services/2009/03/02/schema}ObjectNotFoundFaultDetail
#   authorizationFault AuthorizationFaultDetail - {http://www.strongmail.com/services/2009/03/02/schema}AuthorizationFaultDetail
#   unexpectedFault UnexpectedFaultDetail - {http://www.strongmail.com/services/2009/03/02/schema}UnexpectedFaultDetail
#
launch = nil
puts obj.launch(launch)

# SYNOPSIS
#   list(list)
#
# ARGS
#   list            ListRequest - {http://www.strongmail.com/services/2009/03/02/schema}ListRequest
#
# RETURNS
#   listResponse    ListResponse - {http://www.strongmail.com/services/2009/03/02/schema}ListResponse
#
# RAISES
#   unrecognizedObjectTypeFault UnrecognizedObjectTypeFaultDetail - {http://www.strongmail.com/services/2009/03/02/schema}UnrecognizedObjectTypeFaultDetail
#   unexpectedFault UnexpectedFaultDetail - {http://www.strongmail.com/services/2009/03/02/schema}UnexpectedFaultDetail
#   invalidObjectFault InvalidObjectFaultDetail - {http://www.strongmail.com/services/2009/03/02/schema}InvalidObjectFaultDetail
#
list = nil
puts obj.list(list)

# SYNOPSIS
#   load(load)
#
# ARGS
#   load            LoadRequest - {http://www.strongmail.com/services/2009/03/02/schema}LoadRequest
#
# RETURNS
#   loadResponse    LoadResponse - {http://www.strongmail.com/services/2009/03/02/schema}LoadResponse
#
# RAISES
#   objectNotFoundFault ObjectNotFoundFaultDetail - {http://www.strongmail.com/services/2009/03/02/schema}ObjectNotFoundFaultDetail
#   authorizationFault AuthorizationFaultDetail - {http://www.strongmail.com/services/2009/03/02/schema}AuthorizationFaultDetail
#   unexpectedFault UnexpectedFaultDetail - {http://www.strongmail.com/services/2009/03/02/schema}UnexpectedFaultDetail
#
load = nil
puts obj.load(load)

# SYNOPSIS
#   pause(pause)
#
# ARGS
#   pause           PauseRequest - {http://www.strongmail.com/services/2009/03/02/schema}PauseRequest
#
# RETURNS
#   pauseResponse   PauseResponse - {http://www.strongmail.com/services/2009/03/02/schema}PauseResponse
#
# RAISES
#   objectNotFoundFault ObjectNotFoundFaultDetail - {http://www.strongmail.com/services/2009/03/02/schema}ObjectNotFoundFaultDetail
#   authorizationFault AuthorizationFaultDetail - {http://www.strongmail.com/services/2009/03/02/schema}AuthorizationFaultDetail
#   unexpectedFault UnexpectedFaultDetail - {http://www.strongmail.com/services/2009/03/02/schema}UnexpectedFaultDetail
#
pause = nil
puts obj.pause(pause)

# SYNOPSIS
#   refreshRecords(refreshRecords)
#
# ARGS
#   refreshRecords  RefreshRecordsRequest - {http://www.strongmail.com/services/2009/03/02/schema}RefreshRecordsRequest
#
# RETURNS
#   refreshRecordsResponse RefreshRecordsResponse - {http://www.strongmail.com/services/2009/03/02/schema}RefreshRecordsResponse
#
# RAISES
#   objectNotFoundFault ObjectNotFoundFaultDetail - {http://www.strongmail.com/services/2009/03/02/schema}ObjectNotFoundFaultDetail
#   authorizationFault AuthorizationFaultDetail - {http://www.strongmail.com/services/2009/03/02/schema}AuthorizationFaultDetail
#   unexpectedFault UnexpectedFaultDetail - {http://www.strongmail.com/services/2009/03/02/schema}UnexpectedFaultDetail
#   concurrentModificationFault ConcurrentModificationFaultDetail - {http://www.strongmail.com/services/2009/03/02/schema}ConcurrentModificationFaultDetail
#
refreshRecords = nil
puts obj.refreshRecords(refreshRecords)

# SYNOPSIS
#   removeRecords(removeRecords)
#
# ARGS
#   removeRecords   RemoveRecordsRequest - {http://www.strongmail.com/services/2009/03/02/schema}RemoveRecordsRequest
#
# RETURNS
#   removeRecordsResponse RemoveRecordsResponse - {http://www.strongmail.com/services/2009/03/02/schema}RemoveRecordsResponse
#
# RAISES
#   objectNotFoundFault ObjectNotFoundFaultDetail - {http://www.strongmail.com/services/2009/03/02/schema}ObjectNotFoundFaultDetail
#   authorizationFault AuthorizationFaultDetail - {http://www.strongmail.com/services/2009/03/02/schema}AuthorizationFaultDetail
#   unrecognizedObjectTypeFault UnrecognizedObjectTypeFaultDetail - {http://www.strongmail.com/services/2009/03/02/schema}UnrecognizedObjectTypeFaultDetail
#   unexpectedFault UnexpectedFaultDetail - {http://www.strongmail.com/services/2009/03/02/schema}UnexpectedFaultDetail
#   concurrentModificationFault ConcurrentModificationFaultDetail - {http://www.strongmail.com/services/2009/03/02/schema}ConcurrentModificationFaultDetail
#
removeRecords = nil
puts obj.removeRecords(removeRecords)

# SYNOPSIS
#   resume(resume)
#
# ARGS
#   resume          ResumeRequest - {http://www.strongmail.com/services/2009/03/02/schema}ResumeRequest
#
# RETURNS
#   resumeResponse  ResumeResponse - {http://www.strongmail.com/services/2009/03/02/schema}ResumeResponse
#
# RAISES
#   objectNotFoundFault ObjectNotFoundFaultDetail - {http://www.strongmail.com/services/2009/03/02/schema}ObjectNotFoundFaultDetail
#   authorizationFault AuthorizationFaultDetail - {http://www.strongmail.com/services/2009/03/02/schema}AuthorizationFaultDetail
#   unexpectedFault UnexpectedFaultDetail - {http://www.strongmail.com/services/2009/03/02/schema}UnexpectedFaultDetail
#
resume = nil
puts obj.resume(resume)

# SYNOPSIS
#   schedule(schedule)
#
# ARGS
#   schedule        ScheduleRequest - {http://www.strongmail.com/services/2009/03/02/schema}ScheduleRequest
#
# RETURNS
#   scheduleResponse ScheduleResponse - {http://www.strongmail.com/services/2009/03/02/schema}ScheduleResponse
#
# RAISES
#   objectNotFoundFault ObjectNotFoundFaultDetail - {http://www.strongmail.com/services/2009/03/02/schema}ObjectNotFoundFaultDetail
#   authorizationFault AuthorizationFaultDetail - {http://www.strongmail.com/services/2009/03/02/schema}AuthorizationFaultDetail
#   unexpectedFault UnexpectedFaultDetail - {http://www.strongmail.com/services/2009/03/02/schema}UnexpectedFaultDetail
#   invalidObjectFault InvalidObjectFaultDetail - {http://www.strongmail.com/services/2009/03/02/schema}InvalidObjectFaultDetail
#
schedule = nil
puts obj.schedule(schedule)

# SYNOPSIS
#   send(send)
#
# ARGS
#   send            SendRequest - {http://www.strongmail.com/services/2009/03/02/schema}SendRequest
#
# RETURNS
#   sendResponse    SendResponse - {http://www.strongmail.com/services/2009/03/02/schema}SendResponse
#
# RAISES
#   objectNotFoundFault ObjectNotFoundFaultDetail - {http://www.strongmail.com/services/2009/03/02/schema}ObjectNotFoundFaultDetail
#   authorizationFault AuthorizationFaultDetail - {http://www.strongmail.com/services/2009/03/02/schema}AuthorizationFaultDetail
#   unexpectedFault UnexpectedFaultDetail - {http://www.strongmail.com/services/2009/03/02/schema}UnexpectedFaultDetail
#
send = nil
puts obj.send(send)

# SYNOPSIS
#   getTxnMailingHandle(getTxnMailingHandle)
#
# ARGS
#   getTxnMailingHandle GetTxnMailingHandleRequest - {http://www.strongmail.com/services/2009/03/02/schema}GetTxnMailingHandleRequest
#
# RETURNS
#   getTxnMailingHandleResponse GetTxnMailingHandleResponse - {http://www.strongmail.com/services/2009/03/02/schema}GetTxnMailingHandleResponse
#
# RAISES
#   objectNotFoundFault ObjectNotFoundFaultDetail - {http://www.strongmail.com/services/2009/03/02/schema}ObjectNotFoundFaultDetail
#   authorizationFault AuthorizationFaultDetail - {http://www.strongmail.com/services/2009/03/02/schema}AuthorizationFaultDetail
#   unexpectedFault UnexpectedFaultDetail - {http://www.strongmail.com/services/2009/03/02/schema}UnexpectedFaultDetail
#   invalidObjectFault InvalidObjectFaultDetail - {http://www.strongmail.com/services/2009/03/02/schema}InvalidObjectFaultDetail
#
getTxnMailingHandle = nil
puts obj.getTxnMailingHandle(getTxnMailingHandle)

# SYNOPSIS
#   getTxnEasInfo(getTxnEasInfo)
#
# ARGS
#   getTxnEasInfo   GetTxnEasInfoRequest - {http://www.strongmail.com/services/2009/03/02/schema}GetTxnEasInfoRequest
#
# RETURNS
#   getTxnEasInfoResponse GetTxnEasInfoResponse - {http://www.strongmail.com/services/2009/03/02/schema}GetTxnEasInfoResponse
#
# RAISES
#   objectNotFoundFault ObjectNotFoundFaultDetail - {http://www.strongmail.com/services/2009/03/02/schema}ObjectNotFoundFaultDetail
#   authorizationFault AuthorizationFaultDetail - {http://www.strongmail.com/services/2009/03/02/schema}AuthorizationFaultDetail
#   unexpectedFault UnexpectedFaultDetail - {http://www.strongmail.com/services/2009/03/02/schema}UnexpectedFaultDetail
#   invalidObjectFault InvalidObjectFaultDetail - {http://www.strongmail.com/services/2009/03/02/schema}InvalidObjectFaultDetail
#
getTxnEasInfo = nil
puts obj.getTxnEasInfo(getTxnEasInfo)

# SYNOPSIS
#   txnSend(txnSend)
#
# ARGS
#   txnSend         TxnSendRequest - {http://www.strongmail.com/services/2009/03/02/schema}TxnSendRequest
#
# RETURNS
#   txnSendResponse TxnSendResponse - {http://www.strongmail.com/services/2009/03/02/schema}TxnSendResponse
#
# RAISES
#   objectNotFoundFault ObjectNotFoundFaultDetail - {http://www.strongmail.com/services/2009/03/02/schema}ObjectNotFoundFaultDetail
#   authorizationFault AuthorizationFaultDetail - {http://www.strongmail.com/services/2009/03/02/schema}AuthorizationFaultDetail
#   unexpectedFault UnexpectedFaultDetail - {http://www.strongmail.com/services/2009/03/02/schema}UnexpectedFaultDetail
#   badHandleFault  BadHandleFaultDetail - {http://www.strongmail.com/services/2009/03/02/schema}BadHandleFaultDetail
#
txnSend = nil
puts obj.txnSend(txnSend)

# SYNOPSIS
#   test(test)
#
# ARGS
#   test            TestRequest - {http://www.strongmail.com/services/2009/03/02/schema}TestRequest
#
# RETURNS
#   testResponse    TestResponse - {http://www.strongmail.com/services/2009/03/02/schema}TestResponse
#
# RAISES
#   objectNotFoundFault ObjectNotFoundFaultDetail - {http://www.strongmail.com/services/2009/03/02/schema}ObjectNotFoundFaultDetail
#   authorizationFault AuthorizationFaultDetail - {http://www.strongmail.com/services/2009/03/02/schema}AuthorizationFaultDetail
#   unexpectedFault UnexpectedFaultDetail - {http://www.strongmail.com/services/2009/03/02/schema}UnexpectedFaultDetail
#   unrecognizedObjectTypeFault UnrecognizedObjectTypeFaultDetail - {http://www.strongmail.com/services/2009/03/02/schema}UnrecognizedObjectTypeFaultDetail
#   invalidObjectFault InvalidObjectFaultDetail - {http://www.strongmail.com/services/2009/03/02/schema}InvalidObjectFaultDetail
#
test = nil
puts obj.test(test)

# SYNOPSIS
#   update(update)
#
# ARGS
#   update          UpdateRequest - {http://www.strongmail.com/services/2009/03/02/schema}UpdateRequest
#
# RETURNS
#   updateResponse  BatchUpdateResponse - {http://www.strongmail.com/services/2009/03/02/schema}BatchUpdateResponse
#
update = nil
puts obj.update(update)

# SYNOPSIS
#   upsertRecord(upsertRecords)
#
# ARGS
#   upsertRecords   UpsertRecordsRequest - {http://www.strongmail.com/services/2009/03/02/schema}UpsertRecordsRequest
#
# RETURNS
#   upsertRecordsResponse UpsertRecordsResponse - {http://www.strongmail.com/services/2009/03/02/schema}UpsertRecordsResponse
#
# RAISES
#   objectNotFoundFault ObjectNotFoundFaultDetail - {http://www.strongmail.com/services/2009/03/02/schema}ObjectNotFoundFaultDetail
#   authorizationFault AuthorizationFaultDetail - {http://www.strongmail.com/services/2009/03/02/schema}AuthorizationFaultDetail
#   unrecognizedObjectTypeFault UnrecognizedObjectTypeFaultDetail - {http://www.strongmail.com/services/2009/03/02/schema}UnrecognizedObjectTypeFaultDetail
#   unexpectedFault UnexpectedFaultDetail - {http://www.strongmail.com/services/2009/03/02/schema}UnexpectedFaultDetail
#   invalidObjectFault InvalidObjectFaultDetail - {http://www.strongmail.com/services/2009/03/02/schema}InvalidObjectFaultDetail
#   concurrentModificationFault ConcurrentModificationFaultDetail - {http://www.strongmail.com/services/2009/03/02/schema}ConcurrentModificationFaultDetail
#
upsertRecords = nil
puts obj.upsertRecord(upsertRecords)

# SYNOPSIS
#   importFtpFile(importFtpFile)
#
# ARGS
#   importFtpFile   ImportFtpFileRequest - {http://www.strongmail.com/services/2009/03/02/schema}ImportFtpFileRequest
#
# RETURNS
#   importFtpFileResponse ImportFtpFileResponse - {http://www.strongmail.com/services/2009/03/02/schema}ImportFtpFileResponse
#
# RAISES
#   objectNotFoundFault ObjectNotFoundFaultDetail - {http://www.strongmail.com/services/2009/03/02/schema}ObjectNotFoundFaultDetail
#   authorizationFault AuthorizationFaultDetail - {http://www.strongmail.com/services/2009/03/02/schema}AuthorizationFaultDetail
#   unrecognizedObjectTypeFault UnrecognizedObjectTypeFaultDetail - {http://www.strongmail.com/services/2009/03/02/schema}UnrecognizedObjectTypeFaultDetail
#   unexpectedFault UnexpectedFaultDetail - {http://www.strongmail.com/services/2009/03/02/schema}UnexpectedFaultDetail
#   invalidObjectFault InvalidObjectFaultDetail - {http://www.strongmail.com/services/2009/03/02/schema}InvalidObjectFaultDetail
#   concurrentModificationFault ConcurrentModificationFaultDetail - {http://www.strongmail.com/services/2009/03/02/schema}ConcurrentModificationFaultDetail
#
importFtpFile = nil
puts obj.importFtpFile(importFtpFile)

# SYNOPSIS
#   getRecords(getRecords)
#
# ARGS
#   getRecords      GetRecordsRequest - {http://www.strongmail.com/services/2009/03/02/schema}GetRecordsRequest
#
# RETURNS
#   getRecordsResponse GetRecordsResponse - {http://www.strongmail.com/services/2009/03/02/schema}GetRecordsResponse
#
# RAISES
#   objectNotFoundFault ObjectNotFoundFaultDetail - {http://www.strongmail.com/services/2009/03/02/schema}ObjectNotFoundFaultDetail
#   authorizationFault AuthorizationFaultDetail - {http://www.strongmail.com/services/2009/03/02/schema}AuthorizationFaultDetail
#   unrecognizedObjectTypeFault UnrecognizedObjectTypeFaultDetail - {http://www.strongmail.com/services/2009/03/02/schema}UnrecognizedObjectTypeFaultDetail
#   unexpectedFault UnexpectedFaultDetail - {http://www.strongmail.com/services/2009/03/02/schema}UnexpectedFaultDetail
#   invalidObjectFault InvalidObjectFaultDetail - {http://www.strongmail.com/services/2009/03/02/schema}InvalidObjectFaultDetail
#   concurrentModificationFault ConcurrentModificationFaultDetail - {http://www.strongmail.com/services/2009/03/02/schema}ConcurrentModificationFaultDetail
#
getRecords = nil
puts obj.getRecords(getRecords)

# SYNOPSIS
#   validateXsl(validateXsl)
#
# ARGS
#   validateXsl     ValidateXslRequest - {http://www.strongmail.com/services/2009/03/02/schema}ValidateXslRequest
#
# RETURNS
#   validateXslResponse ValidateXslResponse - {http://www.strongmail.com/services/2009/03/02/schema}ValidateXslResponse
#
# RAISES
#   objectNotFoundFault ObjectNotFoundFaultDetail - {http://www.strongmail.com/services/2009/03/02/schema}ObjectNotFoundFaultDetail
#   authorizationFault AuthorizationFaultDetail - {http://www.strongmail.com/services/2009/03/02/schema}AuthorizationFaultDetail
#   unexpectedFault UnexpectedFaultDetail - {http://www.strongmail.com/services/2009/03/02/schema}UnexpectedFaultDetail
#
validateXsl = nil
puts obj.validateXsl(validateXsl)

# SYNOPSIS
#   fetchLinks(fetchLinks)
#
# ARGS
#   fetchLinks      FetchLinksRequest - {http://www.strongmail.com/services/2009/03/02/schema}FetchLinksRequest
#
# RETURNS
#   fetchLinksResponse FetchLinksResponse - {http://www.strongmail.com/services/2009/03/02/schema}FetchLinksResponse
#
# RAISES
#   objectNotFoundFault ObjectNotFoundFaultDetail - {http://www.strongmail.com/services/2009/03/02/schema}ObjectNotFoundFaultDetail
#   authorizationFault AuthorizationFaultDetail - {http://www.strongmail.com/services/2009/03/02/schema}AuthorizationFaultDetail
#   unexpectedFault UnexpectedFaultDetail - {http://www.strongmail.com/services/2009/03/02/schema}UnexpectedFaultDetail
#
fetchLinks = nil
puts obj.fetchLinks(fetchLinks)

# SYNOPSIS
#   getSingleSignOnURL(getSingleSignOnURL)
#
# ARGS
#   getSingleSignOnURL GetSingleSignOnURLRequest - {http://www.strongmail.com/services/2009/03/02/schema}GetSingleSignOnURLRequest
#
# RETURNS
#   getSingleSignOnURLResponse GetSingleSignOnURLResponse - {http://www.strongmail.com/services/2009/03/02/schema}GetSingleSignOnURLResponse
#
# RAISES
#   authorizationFault AuthorizationFaultDetail - {http://www.strongmail.com/services/2009/03/02/schema}AuthorizationFaultDetail
#   unexpectedFault UnexpectedFaultDetail - {http://www.strongmail.com/services/2009/03/02/schema}UnexpectedFaultDetail
#
getSingleSignOnURL = nil
puts obj.getSingleSignOnURL(getSingleSignOnURL)

# SYNOPSIS
#   getAllEasByMailingId(getAllEasByMailingId)
#
# ARGS
#   getAllEasByMailingId GetAllEasByMailingIdRequest - {http://www.strongmail.com/services/2009/03/02/schema}GetAllEasByMailingIdRequest
#
# RETURNS
#   getAllEasListByMailingIdResponse GetAllEasListByMailingIdResponse - {http://www.strongmail.com/services/2009/03/02/schema}GetAllEasListByMailingIdResponse
#
# RAISES
#   unexpectedFault UnexpectedFaultDetail - {http://www.strongmail.com/services/2009/03/02/schema}UnexpectedFaultDetail
#
getAllEasByMailingId = nil
puts obj.getAllEasByMailingId(getAllEasByMailingId)

# SYNOPSIS
#   startImport(startImport)
#
# ARGS
#   startImport     StartRecurringImportRequest - {http://www.strongmail.com/services/2009/03/02/schema}StartRecurringImportRequest
#
# RETURNS
#   startImportResponse StartRecurringImportResponse - {http://www.strongmail.com/services/2009/03/02/schema}StartRecurringImportResponse
#
# RAISES
#   objectNotFoundFault ObjectNotFoundFaultDetail - {http://www.strongmail.com/services/2009/03/02/schema}ObjectNotFoundFaultDetail
#   authorizationFault AuthorizationFaultDetail - {http://www.strongmail.com/services/2009/03/02/schema}AuthorizationFaultDetail
#   unexpectedFault UnexpectedFaultDetail - {http://www.strongmail.com/services/2009/03/02/schema}UnexpectedFaultDetail
#
startImport = nil
puts obj.startImport(startImport)

# SYNOPSIS
#   getImportStatus(getImportStatus)
#
# ARGS
#   getImportStatus GetRecurringImportStatusRequest - {http://www.strongmail.com/services/2009/03/02/schema}GetRecurringImportStatusRequest
#
# RETURNS
#   getImportStatusResponse GetRecurringImportStatusResponse - {http://www.strongmail.com/services/2009/03/02/schema}GetRecurringImportStatusResponse
#
# RAISES
#   objectNotFoundFault ObjectNotFoundFaultDetail - {http://www.strongmail.com/services/2009/03/02/schema}ObjectNotFoundFaultDetail
#   authorizationFault AuthorizationFaultDetail - {http://www.strongmail.com/services/2009/03/02/schema}AuthorizationFaultDetail
#   unexpectedFault UnexpectedFaultDetail - {http://www.strongmail.com/services/2009/03/02/schema}UnexpectedFaultDetail
#
getImportStatus = nil
puts obj.getImportStatus(getImportStatus)

# SYNOPSIS
#   findImport(findImport)
#
# ARGS
#   findImport      FindRecurringImportRequest - {http://www.strongmail.com/services/2009/03/02/schema}FindRecurringImportRequest
#
# RETURNS
#   findImportResponse FindRecurringImportResponse - {http://www.strongmail.com/services/2009/03/02/schema}FindRecurringImportResponse
#
# RAISES
#   objectNotFoundFault ObjectNotFoundFaultDetail - {http://www.strongmail.com/services/2009/03/02/schema}ObjectNotFoundFaultDetail
#   authorizationFault AuthorizationFaultDetail - {http://www.strongmail.com/services/2009/03/02/schema}AuthorizationFaultDetail
#   unexpectedFault UnexpectedFaultDetail - {http://www.strongmail.com/services/2009/03/02/schema}UnexpectedFaultDetail
#
findImport = nil
puts obj.findImport(findImport)

# SYNOPSIS
#   getImportDetails(getImportDetails)
#
# ARGS
#   getImportDetails GetRecurringImportRequest - {http://www.strongmail.com/services/2009/03/02/schema}GetRecurringImportRequest
#
# RETURNS
#   getImportDetailsResponse GetRecurringImportResponse - {http://www.strongmail.com/services/2009/03/02/schema}GetRecurringImportResponse
#
# RAISES
#   objectNotFoundFault ObjectNotFoundFaultDetail - {http://www.strongmail.com/services/2009/03/02/schema}ObjectNotFoundFaultDetail
#   authorizationFault AuthorizationFaultDetail - {http://www.strongmail.com/services/2009/03/02/schema}AuthorizationFaultDetail
#   unexpectedFault UnexpectedFaultDetail - {http://www.strongmail.com/services/2009/03/02/schema}UnexpectedFaultDetail
#
getImportDetails = nil
puts obj.getImportDetails(getImportDetails)


