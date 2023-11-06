# LagoAPI::CreditNotesApi

All URIs are relative to *https://api.getlago.com/api/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_credit_note**](CreditNotesApi.md#create_credit_note) | **POST** /credit_notes | Create a credit note |
| [**download_credit_note**](CreditNotesApi.md#download_credit_note) | **POST** /credit_notes/{lago_id}/download | Download a credit note PDF |
| [**estimate_credit_note**](CreditNotesApi.md#estimate_credit_note) | **POST** /credit_notes/estimate | Estimate amounts for a new credit note |
| [**find_all_credit_notes**](CreditNotesApi.md#find_all_credit_notes) | **GET** /credit_notes | List all credit notes |
| [**find_credit_note**](CreditNotesApi.md#find_credit_note) | **GET** /credit_notes/{lago_id} | Retrieve a credit note |
| [**update_credit_note**](CreditNotesApi.md#update_credit_note) | **PUT** /credit_notes/{lago_id} | Update a credit note |
| [**void_credit_note**](CreditNotesApi.md#void_credit_note) | **PUT** /credit_notes/{lago_id}/void | Void a credit note |


## create_credit_note

> <CreditNote> create_credit_note(credit_note_create_input)

Create a credit note

This endpoint creates a new credit note.

### Examples

```ruby
require 'time'
require 'lago_ruby'
# setup authorization
LagoAPI.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = LagoAPI::CreditNotesApi.new
credit_note_create_input = LagoAPI::CreditNoteCreateInput.new({credit_note: LagoAPI::CreditNoteCreateInputCreditNote.new({invoice_id: '1a901a90-1a90-1a90-1a90-1a901a901a90', items: [{"fee_id": "1a901a90-1a90-1a90-1a90-1a901a901a90", "amount_cents": 10}, {"fee_id": "1a901a90-1a90-1a90-1a90-1a901a901a91", "amount_cents": 5}]})}) # CreditNoteCreateInput | Credit note payload

begin
  # Create a credit note
  result = api_instance.create_credit_note(credit_note_create_input)
  p result
rescue LagoAPI::ApiError => e
  puts "Error when calling CreditNotesApi->create_credit_note: #{e}"
end
```

#### Using the create_credit_note_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreditNote>, Integer, Hash)> create_credit_note_with_http_info(credit_note_create_input)

```ruby
begin
  # Create a credit note
  data, status_code, headers = api_instance.create_credit_note_with_http_info(credit_note_create_input)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreditNote>
rescue LagoAPI::ApiError => e
  puts "Error when calling CreditNotesApi->create_credit_note_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **credit_note_create_input** | [**CreditNoteCreateInput**](CreditNoteCreateInput.md) | Credit note payload |  |

### Return type

[**CreditNote**](CreditNote.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## download_credit_note

> <CreditNote> download_credit_note(lago_id)

Download a credit note PDF

This endpoint downloads the PDF of an existing credit note.

### Examples

```ruby
require 'time'
require 'lago_ruby'
# setup authorization
LagoAPI.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = LagoAPI::CreditNotesApi.new
lago_id = '1a901a90-1a90-1a90-1a90-1a901a901a90' # String | The credit note unique identifier, created by Lago.

begin
  # Download a credit note PDF
  result = api_instance.download_credit_note(lago_id)
  p result
rescue LagoAPI::ApiError => e
  puts "Error when calling CreditNotesApi->download_credit_note: #{e}"
end
```

#### Using the download_credit_note_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreditNote>, Integer, Hash)> download_credit_note_with_http_info(lago_id)

```ruby
begin
  # Download a credit note PDF
  data, status_code, headers = api_instance.download_credit_note_with_http_info(lago_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreditNote>
rescue LagoAPI::ApiError => e
  puts "Error when calling CreditNotesApi->download_credit_note_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **lago_id** | **String** | The credit note unique identifier, created by Lago. |  |

### Return type

[**CreditNote**](CreditNote.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## estimate_credit_note

> <CreditNoteEstimated> estimate_credit_note(opts)

Estimate amounts for a new credit note

This endpoint allows you to retrieve amounts for a new credit note creation.

### Examples

```ruby
require 'time'
require 'lago_ruby'
# setup authorization
LagoAPI.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = LagoAPI::CreditNotesApi.new
opts = {
  credit_note_estimate_input: LagoAPI::CreditNoteEstimateInput.new({credit_note: LagoAPI::CreditNoteEstimateInputCreditNote.new({invoice_id: '1a901a90-1a90-1a90-1a90-1a901a901a90', items: [{"fee_id": "1a901a90-1a90-1a90-1a90-1a901a901a90", "amount_cents": 10}, {"fee_id": "1a901a90-1a90-1a90-1a90-1a901a901a91", "amount_cents": 5}]})}) # CreditNoteEstimateInput | Credit note estimate payload
}

begin
  # Estimate amounts for a new credit note
  result = api_instance.estimate_credit_note(opts)
  p result
rescue LagoAPI::ApiError => e
  puts "Error when calling CreditNotesApi->estimate_credit_note: #{e}"
end
```

#### Using the estimate_credit_note_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreditNoteEstimated>, Integer, Hash)> estimate_credit_note_with_http_info(opts)

```ruby
begin
  # Estimate amounts for a new credit note
  data, status_code, headers = api_instance.estimate_credit_note_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreditNoteEstimated>
rescue LagoAPI::ApiError => e
  puts "Error when calling CreditNotesApi->estimate_credit_note_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **credit_note_estimate_input** | [**CreditNoteEstimateInput**](CreditNoteEstimateInput.md) | Credit note estimate payload | [optional] |

### Return type

[**CreditNoteEstimated**](CreditNoteEstimated.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## find_all_credit_notes

> <CreditNotes> find_all_credit_notes(opts)

List all credit notes

This endpoint list all existing credit notes.

### Examples

```ruby
require 'time'
require 'lago_ruby'
# setup authorization
LagoAPI.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = LagoAPI::CreditNotesApi.new
opts = {
  page: 1, # Integer | Page number.
  per_page: 20, # Integer | Number of records per page.
  external_customer_id: '5eb02857-a71e-4ea2-bcf9-57d3a41bc6ba' # String | Unique identifier assigned to the customer in your application.
}

begin
  # List all credit notes
  result = api_instance.find_all_credit_notes(opts)
  p result
rescue LagoAPI::ApiError => e
  puts "Error when calling CreditNotesApi->find_all_credit_notes: #{e}"
end
```

#### Using the find_all_credit_notes_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreditNotes>, Integer, Hash)> find_all_credit_notes_with_http_info(opts)

```ruby
begin
  # List all credit notes
  data, status_code, headers = api_instance.find_all_credit_notes_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreditNotes>
rescue LagoAPI::ApiError => e
  puts "Error when calling CreditNotesApi->find_all_credit_notes_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | **Integer** | Page number. | [optional] |
| **per_page** | **Integer** | Number of records per page. | [optional] |
| **external_customer_id** | **String** | Unique identifier assigned to the customer in your application. | [optional] |

### Return type

[**CreditNotes**](CreditNotes.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## find_credit_note

> <CreditNote> find_credit_note(lago_id)

Retrieve a credit note

This endpoint retrieves an existing credit note.

### Examples

```ruby
require 'time'
require 'lago_ruby'
# setup authorization
LagoAPI.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = LagoAPI::CreditNotesApi.new
lago_id = '12345' # String | The credit note unique identifier, created by Lago.

begin
  # Retrieve a credit note
  result = api_instance.find_credit_note(lago_id)
  p result
rescue LagoAPI::ApiError => e
  puts "Error when calling CreditNotesApi->find_credit_note: #{e}"
end
```

#### Using the find_credit_note_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreditNote>, Integer, Hash)> find_credit_note_with_http_info(lago_id)

```ruby
begin
  # Retrieve a credit note
  data, status_code, headers = api_instance.find_credit_note_with_http_info(lago_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreditNote>
rescue LagoAPI::ApiError => e
  puts "Error when calling CreditNotesApi->find_credit_note_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **lago_id** | **String** | The credit note unique identifier, created by Lago. |  |

### Return type

[**CreditNote**](CreditNote.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_credit_note

> <CreditNote> update_credit_note(lago_id, credit_note_update_input)

Update a credit note

This endpoint updates an existing credit note.

### Examples

```ruby
require 'time'
require 'lago_ruby'
# setup authorization
LagoAPI.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = LagoAPI::CreditNotesApi.new
lago_id = '12345' # String | The credit note unique identifier, created by Lago.
credit_note_update_input = LagoAPI::CreditNoteUpdateInput.new({credit_note: LagoAPI::CreditNoteUpdateInputCreditNote.new({refund_status: 'pending'})}) # CreditNoteUpdateInput | Credit note update payload

begin
  # Update a credit note
  result = api_instance.update_credit_note(lago_id, credit_note_update_input)
  p result
rescue LagoAPI::ApiError => e
  puts "Error when calling CreditNotesApi->update_credit_note: #{e}"
end
```

#### Using the update_credit_note_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreditNote>, Integer, Hash)> update_credit_note_with_http_info(lago_id, credit_note_update_input)

```ruby
begin
  # Update a credit note
  data, status_code, headers = api_instance.update_credit_note_with_http_info(lago_id, credit_note_update_input)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreditNote>
rescue LagoAPI::ApiError => e
  puts "Error when calling CreditNotesApi->update_credit_note_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **lago_id** | **String** | The credit note unique identifier, created by Lago. |  |
| **credit_note_update_input** | [**CreditNoteUpdateInput**](CreditNoteUpdateInput.md) | Credit note update payload |  |

### Return type

[**CreditNote**](CreditNote.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## void_credit_note

> <CreditNote> void_credit_note(lago_id)

Void a credit note

This endpoint voids an existing credit note.

### Examples

```ruby
require 'time'
require 'lago_ruby'
# setup authorization
LagoAPI.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = LagoAPI::CreditNotesApi.new
lago_id = '1a901a90-1a90-1a90-1a90-1a901a901a90' # String | The credit note unique identifier, created by Lago.

begin
  # Void a credit note
  result = api_instance.void_credit_note(lago_id)
  p result
rescue LagoAPI::ApiError => e
  puts "Error when calling CreditNotesApi->void_credit_note: #{e}"
end
```

#### Using the void_credit_note_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreditNote>, Integer, Hash)> void_credit_note_with_http_info(lago_id)

```ruby
begin
  # Void a credit note
  data, status_code, headers = api_instance.void_credit_note_with_http_info(lago_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreditNote>
rescue LagoAPI::ApiError => e
  puts "Error when calling CreditNotesApi->void_credit_note_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **lago_id** | **String** | The credit note unique identifier, created by Lago. |  |

### Return type

[**CreditNote**](CreditNote.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

