class CreateEmployees < ActiveRecord::Migration[5.2]
  def change
    create_table :employees do |t|
      t.column(:first_name, :string)
      t.column(:last_name, :string)
      t.column(:division_id, :integer)

      t.timestamps()
    end
  end
end
