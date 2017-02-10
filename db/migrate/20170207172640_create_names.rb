class CreateNames < ActiveRecord::Migration[5.0]
  def change
    create_table :names do |t|
      t.string :first_name
      t.string :last_name
      t.string :middle_initial
      t.string :address_1
      t.string :address_2
      t.string :city
      t.string :state_name
      t.string :state_abbr
      t.string :zip_code
      t.string :country
      t.string :home_phone
      t.string :cell_phone
      t.string :email
           

      t.timestamps
    end
  end
end

