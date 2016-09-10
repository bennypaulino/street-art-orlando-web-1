class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.text :caption
      t.references :installation, index: true, foreign_key: true
      t.string :video_clip

      t.timestamps null: false
    end
  end
end
