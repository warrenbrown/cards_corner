class AddYoutubeUrlToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :youtube_url, :string
  end
end
