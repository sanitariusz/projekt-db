ActiveAdmin.register Domain do
  menu :priority => 5
  permit_params :Name, :Adress, :Expiration, :Responsible
  actions :all, except: [:show, :destroy]
  index do
   column :Name
   column :Adress
   column :Expiration
   column :Responsible
   actions
  end

filter :Name
filter :Adress
filter :Expiration
filter :Responsible

  
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
