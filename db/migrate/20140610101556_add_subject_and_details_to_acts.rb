class AddSubjectAndDetailsToActs < ActiveRecord::Migration
  def change
    add_column :acts, :subject, :string
    add_column :acts, :details, :text
  end
end
