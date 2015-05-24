class CreateBibliographies < ActiveRecord::Migration
  def change
    create_table :bibliographies do |t|
      t.string :firstsurname
      t.text :authors
      t.integer :year
      t.text :title
      t.string :journalname
      t.string :publication
      t.string :volume
      t.string :pages
      t.string :url
      t.string :localpdflink
      t.string :accessdate
      t.string :websitetitle
      t.string :conferencetitle
      t.string :publisher
      t.string :city
      t.string :editors
      t.string :edition
      t.text :comment
      t.string :isbn
      t.text :abstract

      t.timestamps null: false
    end
  end
end
