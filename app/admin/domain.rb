ActiveAdmin.register Domain do
  menu :priority => 5
  permit_params :name, :adress, :expiration, :responsible
  actions :all, except: [:show, :destroy]
  index do
   column :name
   column :adress
   column :expiration
   column :responsible
   actions
  end

filter :name
filter :adress
filter :expiration
filter :responsible

  
  # See permitted parameters documentation:
  # https://github.com/gregbell/active_admin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
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
