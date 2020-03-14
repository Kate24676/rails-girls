class CreateAttendees < ActiveRecord::Migration[6.0]
  def change
    create_table :attendees do |t|

      t.timestamps
      t.belongs_to :event
      t.belongs_to :user
    end
  end
end
