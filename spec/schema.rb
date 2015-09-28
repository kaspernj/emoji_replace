ActiveRecord::Schema.define do
  self.verbose = false

  create_table :messages, force: true do |t|
    t.string :message
    t.timestamps null: true
  end
end