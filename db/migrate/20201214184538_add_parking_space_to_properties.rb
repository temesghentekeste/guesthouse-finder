class AddParkingSpaceToProperties < ActiveRecord::Migration[6.0]
  def change
    add_column :properties, :parking_spaces, :integer, default: 0
    #Ex:- add_column("admin_users", "username", :string, :limit =>25, :after => "email")
  end
end
