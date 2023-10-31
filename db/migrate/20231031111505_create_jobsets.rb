class CreateJobsets < ActiveRecord::Migration[5.2]
  def change
    create_table :jobsets do |t|
      t.string :name
      t.string :qualification
      t.string :designation
      t.string :resume

      t.timestamps
    end
  end
end
