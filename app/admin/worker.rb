ActiveAdmin.register Worker do
  menu :priority => 2
  permit_params :name, :surname, :email, :superior, :phone, :login, :department_id
  actions :all, except: (:show)

  index do
   column :name
   column :surname
   column :email
   column :superior
   column :phone
   column :login
   column :department do |dep|
     dep.department.name
   end
   actions
  end

filter :name
filter :surname
filter :email
filter :department

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
