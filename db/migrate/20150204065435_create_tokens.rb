class CreateTokens < ActiveRecord::Migration
  def change
    create_table :tokens do |t|
      t.string :source
      t.string :value
      t.datetime :expiry

      t.timestamps
    end
  end
end
