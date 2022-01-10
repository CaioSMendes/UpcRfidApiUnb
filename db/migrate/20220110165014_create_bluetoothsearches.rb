class CreateBluetoothsearches < ActiveRecord::Migration[6.0]
  def change
    create_table :bluetoothsearches do |t|
      t.string :rfidCode

      t.timestamps
    end
  end
end
