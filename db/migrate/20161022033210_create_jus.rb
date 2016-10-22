class CreateJus < ActiveRecord::Migration[5.0]
  def change
    create_table :jus do |t|

      t.timestamps
    end
  end
end
