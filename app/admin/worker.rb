ActiveAdmin.register Worker do
  menu :priority => 2
  permit_params :name, :surname, :email, :superior, :phone, :login
  actions :all, except: [:show, :destroy]

  index do
   column :name
   column :surname
   column :email
   column :superior
   column :phone
   column :login
   actions
  end

filter :name
filter :surname
filter :email

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
