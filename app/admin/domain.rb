ActiveAdmin.register Domain do
  menu :priority => 4
  permit_params :name, :adress, :expiration, :worker_id
  actions :all, except: (:show)

  index do
   column :name
   column :adress
   column :expiration
   column :responsible do |dom|
     dom.worker.name + " " + dom.worker.surname
   end
   actions
  end

filter :name
filter :adress
filter :expiration
filter :worker


  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #  permitted = [:permitted, :attributes]
  #  permitted << :other if resource.something?
  #  permitted
  # end
  
end
