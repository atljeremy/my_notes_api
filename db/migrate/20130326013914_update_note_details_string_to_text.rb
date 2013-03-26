class UpdateNoteDetailsStringToText < ActiveRecord::Migration
  def up
    change_column :notes, :details, :text
  end

  def down
    change_column :notes, :details, :string
  end
end
