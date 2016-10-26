# SwaggerClient::Activity

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **String** | The type of the activity [message|contactRelationUpdate|converationUpdate|typing] | [optional] 
**id** | **String** | Id for the activity | [optional] 
**timestamp** | **DateTime** | Time when message was sent | [optional] 
**service_url** | **String** | Service endpoint | [optional] 
**channel_id** | **String** | ChannelId the activity was on | [optional] 
**from** | [**ChannelAccount**](ChannelAccount.md) | Sender address | [optional] 
**conversation** | [**ConversationAccount**](ConversationAccount.md) | Conversation | [optional] 
**recipient** | [**ChannelAccount**](ChannelAccount.md) | (Outbound to bot only) Bot&#39;s address that received the message | [optional] 
**text_format** | **String** | Format of text fields [plain|markdown] Default:markdown | [optional] 
**attachment_layout** | **String** | AttachmentLayout - hint for how to deal with multiple attachments Values: [list|carousel] Default:list | [optional] 
**members_added** | [**Array&lt;ChannelAccount&gt;**](ChannelAccount.md) | Array of address added | [optional] 
**members_removed** | [**Array&lt;ChannelAccount&gt;**](ChannelAccount.md) | Array of addresses removed | [optional] 
**topic_name** | **String** | Conversations new topic name | [optional] 
**history_disclosed** | **BOOLEAN** | the previous history of the channel was disclosed | [optional] 
**locale** | **String** | The language code of the Text field | [optional] 
**text** | **String** | Content for the message | [optional] 
**summary** | **String** | Text to display if you can&#39;t render cards | [optional] 
**attachments** | [**Array&lt;Attachment&gt;**](Attachment.md) | Attachments | [optional] 
**entities** | [**Array&lt;Entity&gt;**](Entity.md) | Collection of Entity objects, each of which contains metadata about this activity. Each Entity object is typed. | [optional] 
**channel_data** | **Object** | Channel specific payload | [optional] 
**action** | **String** | ContactAdded/Removed action | [optional] 
**reply_to_id** | **String** | the original id this message is a response to | [optional] 


