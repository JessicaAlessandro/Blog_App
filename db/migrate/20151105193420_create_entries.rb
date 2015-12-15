class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.string :title
      t.text :content

      t.timestamps null: false
    end
  end
end



    	  t.string   :title
        t.string   :arist
        t.text     :year
        t.string   :time_period
        t.text     :medium
    	  t.string   :provenance
        t.string   :repatriared
        t.text     :description
        t.string   :current_location
        t.text     :img_url