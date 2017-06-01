class CreateCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :categories do |t|
      t.string :title
      t.timestamps
    end
    Category.create({'title' => "Огненное шоу"})
    Category.create({'title' => "Пиротехническое шоу"})
    Category.create({'title' => "Инсталяции"})
    Category.create({'title' => "Светодиодное шоу"})
    Category.create({'title' => "Мимы"})
    Category.create({'title' => "Ходулисты"})
    Category.create({'title' => "Живые статуи"})
  end
end
