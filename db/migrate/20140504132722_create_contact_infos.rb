class CreateContactInfos < ActiveRecord::Migration

  def migrate(direction)
    super
    # Create a default contact_info for the default user
    ContactInfo.create!(:first_name => 'Paul', :last_name => 'Hutchinson', :country => 'US', :subregion => 'OH', :community => 'Union Township', :account_id => 1, :avatar => "assets/placeholder.jpg") if direction == :up
  end

  def change
    create_table :contact_infos do |t|
      t.string :first_name, :null => false, :default => ""
      t.string :last_name, :null => false, :default => ""
      t.string :subregion, :null => false, :default => ""
      t.string :community, :null => false, :default => ""
      t.string :country, :null => false, :default => ""
      t.string :avatar
      t.integer :account_id
      t.timestamps
    end
  end
end
