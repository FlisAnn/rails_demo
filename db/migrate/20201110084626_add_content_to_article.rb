class AddContentToArticle < ActiveRecord::Migration[6.0]
  def change
    add_column :articles, :content, :text #Add content to article data type:text
  end
end
