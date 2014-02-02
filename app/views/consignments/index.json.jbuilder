json.array!(@consignments) do |consignment|
  json.extract! consignment, :id, :owner_id, :good_id
  json.url consignment_url(consignment, format: :json)
end
