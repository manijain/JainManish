json.array!(@request_forms) do |request_form|
  json.extract! request_form, :id, :name, :email, :message
  json.url request_form_url(request_form, format: :json)
end
