class CreateCandidateContacts < ActiveRecord::Migration[5.1]
  def change
    create_table :candidate_contacts do |t|
      t.hstore :phones
      t.hstore :emails
      t.hstore :social_networks

      t.timestamps
    end
  end
end
