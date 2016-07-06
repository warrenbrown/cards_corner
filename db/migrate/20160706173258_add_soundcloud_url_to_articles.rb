class AddSoundcloudUrlToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :soundcloud_url, :text
  end
end
