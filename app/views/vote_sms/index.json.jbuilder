json.array!(@vote_sms) do |vote_sm|
  json.extract! vote_sm, :id, :vote_number, :compaign_name, :validity, :choice, :conn, :msisdn, :guid, :short_code
  json.url vote_sm_url(vote_sm, format: :json)
end
