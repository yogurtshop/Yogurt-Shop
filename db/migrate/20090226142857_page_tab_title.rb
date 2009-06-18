class PageTabTitle < ActiveRecord::Migration
  def self.up
    add_column :pages, :tab, :string
    
    @pages = Page.find(:all)
    @pages.each do |page|
      page.update_attribute(:tab, false)
  end

end

  def self.down
    remove_column :pages, :tab
  end
end
