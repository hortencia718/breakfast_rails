class CreateDaycares < ActiveRecord::Migration[6.0]
  def change
    create_table :daycares do |t|
      t.belongs_to :dog, null: false, foreign_key: true
      t.belongs_to :activity, null: false, foreign_key: true

      t.timestamps
    end
  end
end
