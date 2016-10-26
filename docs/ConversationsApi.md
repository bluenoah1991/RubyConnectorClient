# SwaggerClient::ConversationsApi

All URIs are relative to *https://api.botframework.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**conversations_create_conversation**](ConversationsApi.md#conversations_create_conversation) | **POST** /v3/conversations | CreateConversation
[**conversations_get_activity_members**](ConversationsApi.md#conversations_get_activity_members) | **GET** /v3/conversations/{conversationId}/activities/{activityId}/members | GetActivityMembers
[**conversations_get_conversation_members**](ConversationsApi.md#conversations_get_conversation_members) | **GET** /v3/conversations/{conversationId}/members | GetConversationMembers
[**conversations_reply_to_activity**](ConversationsApi.md#conversations_reply_to_activity) | **POST** /v3/conversations/{conversationId}/activities/{activityId} | 
[**conversations_send_to_conversation**](ConversationsApi.md#conversations_send_to_conversation) | **POST** /v3/conversations/{conversationId}/activities | SendToConversation
[**conversations_upload_attachment**](ConversationsApi.md#conversations_upload_attachment) | **POST** /v3/conversations/{conversationId}/attachments | UploadAttachment


# **conversations_create_conversation**
> ResourceResponse conversations_create_conversation(parameters)

CreateConversation

Create a new Conversation.    POST to this method with a  * Bot being the bot creating the conversation  * IsGroup set to true if this is not a direct message (default is false)  * Members array contining the members you want to have be in the conversation.    The return value is a ResourceResponse which contains a conversation id which is suitable for use  in the message payload and REST API uris.    Most channels only support the semantics of bots initiating a direct message conversation.  An example of how to do that would be:    ```  var resource = await connector.conversations.CreateConversation(new ConversationParameters(){ Bot = bot, members = new ChannelAccount[] { new ChannelAccount(\"user1\") } );  await connect.Conversations.SendToConversationAsync(resource.Id, new Activity() ... ) ;    ```

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::ConversationsApi.new

parameters = SwaggerClient::ConversationParameters.new # ConversationParameters | Parameters to create the conversation from


begin
  #CreateConversation
  result = api_instance.conversations_create_conversation(parameters)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ConversationsApi->conversations_create_conversation: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **parameters** | [**ConversationParameters**](ConversationParameters.md)| Parameters to create the conversation from | 

### Return type

[**ResourceResponse**](ResourceResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: application/json, text/json, application/xml, text/xml



# **conversations_get_activity_members**
> Array&lt;ChannelAccount&gt; conversations_get_activity_members(conversation_id, activity_id)

GetActivityMembers

Call this method to enumerate the members of an activity.     This REST API takes a ConversationId and a ActivityId, returning an array of ChannelAccount[] objects   which are the members of the particular activity in the conversation.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::ConversationsApi.new

conversation_id = "conversation_id_example" # String | Conversation ID

activity_id = "activity_id_example" # String | Activity ID


begin
  #GetActivityMembers
  result = api_instance.conversations_get_activity_members(conversation_id, activity_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ConversationsApi->conversations_get_activity_members: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **conversation_id** | **String**| Conversation ID | 
 **activity_id** | **String**| Activity ID | 

### Return type

[**Array&lt;ChannelAccount&gt;**](ChannelAccount.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml



# **conversations_get_conversation_members**
> Array&lt;ChannelAccount&gt; conversations_get_conversation_members(conversation_id)

GetConversationMembers

Call this method to enumerate the members of a converstion.     This REST API takes a ConversationId and returns an array of ChannelAccount[] objects   which are the members of the conversation.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::ConversationsApi.new

conversation_id = "conversation_id_example" # String | Conversation ID


begin
  #GetConversationMembers
  result = api_instance.conversations_get_conversation_members(conversation_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ConversationsApi->conversations_get_conversation_members: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **conversation_id** | **String**| Conversation ID | 

### Return type

[**Array&lt;ChannelAccount&gt;**](ChannelAccount.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml



# **conversations_reply_to_activity**
> conversations_reply_to_activity(conversation_id, activity_id, activity)



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::ConversationsApi.new

conversation_id = "conversation_id_example" # String | 

activity_id = "activity_id_example" # String | 

activity = SwaggerClient::Activity.new # Activity | 


begin
  api_instance.conversations_reply_to_activity(conversation_id, activity_id, activity)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ConversationsApi->conversations_reply_to_activity: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **conversation_id** | **String**|  | 
 **activity_id** | **String**|  | 
 **activity** | [**Activity**](Activity.md)|  | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: application/json, text/json, application/xml, text/xml



# **conversations_send_to_conversation**
> conversations_send_to_conversation(activity, conversation_id)

SendToConversation

This method allows you to send a message to a conversation without refering to an activity.   This is useful to send an initial message to a conversation, or to add a message to the end of the conversation.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::ConversationsApi.new

activity = SwaggerClient::Activity.new # Activity | Activity to send

conversation_id = "conversation_id_example" # String | Conversation ID


begin
  #SendToConversation
  api_instance.conversations_send_to_conversation(activity, conversation_id)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ConversationsApi->conversations_send_to_conversation: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **activity** | [**Activity**](Activity.md)| Activity to send | 
 **conversation_id** | **String**| Conversation ID | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: application/json, text/json, application/xml, text/xml



# **conversations_upload_attachment**
> ResourceResponse conversations_upload_attachment(conversation_id, attachment_upload)

UploadAttachment

This method allows you to upload an attachment directly into a channels blob storage.    This is useful because it allows you to store data in a compliant store when dealing with enterprises.    The response is a ResourceResponse which contains an AttachmentId which is suitable for using with the attachments api.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::ConversationsApi.new

conversation_id = "conversation_id_example" # String | Conversation ID

attachment_upload = SwaggerClient::AttachmentData.new # AttachmentData | Attachment data


begin
  #UploadAttachment
  result = api_instance.conversations_upload_attachment(conversation_id, attachment_upload)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ConversationsApi->conversations_upload_attachment: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **conversation_id** | **String**| Conversation ID | 
 **attachment_upload** | [**AttachmentData**](AttachmentData.md)| Attachment data | 

### Return type

[**ResourceResponse**](ResourceResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: application/json, text/json



