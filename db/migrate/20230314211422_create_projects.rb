class CreateProjects < ActiveRecord::Migration[7.0]
  def change
    create_table :projects do |t|
      t.date :start_date
      t.date :end_date
      t.string :title
      t.string :status
      t.string :description
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
