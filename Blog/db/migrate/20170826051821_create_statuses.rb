class CreateStatuses < ActiveRecord::Migration[5.1]
  def change
    create_table :statuses do |t|
      t.text :title
      t.text :post

      t.timestamps
    end
  end
end
