class CreateVoteSms < ActiveRecord::Migration
  def change
    create_table :vote_sms do |t|
      t.integer :vote_number
      t.string :compaign_name
      t.string :validity
      t.string :choice
      t.string :conn
      t.string :msisdn
      t.string :guid
      t.string :short_code

      t.timestamps
    end
  end
end
