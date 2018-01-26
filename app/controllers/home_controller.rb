class HomeController < ApplicationController
  def home
    fcm = FCM.new("AAAAfMwNzSs:APA91bGMEOIt_K1qjPJVwDsnCgBctd905jaPMS-oXxkfj51w1HyPSNz9FLZWikBCy-5OGscNzFpw3t1IMDYJtLNL5YxgCF8XuUn1AzOOFwX2SsRR4nzB-3fYoWyfhF03tWCLoRQ9v1bmBkkTIdil4aToRx51TFwrsQ")
    # you can set option parameters in here
    #  - all options are pass to HTTParty method arguments
    #  - ref: https://github.com/jnunemaker/httparty/blob/master/lib/httparty.rb#L29-L60
    #  fcm = FCM.new("my_server_key", timeout: 3)

    registration_ids= ["d6BCznqGg4E:APA91bEJo8uRAOXkZ3N0ewAkBDHjiRUBxD34kxIlFjG3L78X9fPTfzexyL1m1KV5WNvko5vRS1zwD4NmK9Ja34OBy7WaK_LE5mfDXjhrhCyiBmrxdIFvcjHP7AI0hgzVfVWghvoTTL3J"] # an array of one or more client registration tokens
    options = {data: {score: "123"}, collapse_key: "updated_score"}
    response = fcm.send(registration_ids, options)

    return render json: response
  end
end
