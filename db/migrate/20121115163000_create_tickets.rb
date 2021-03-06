class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.string :name
      t.string :email
      t.string :department
      t.string :subject
      t.string :body
      t.string :status

      t.timestamps
    end
  end
end
