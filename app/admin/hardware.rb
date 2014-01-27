ActiveAdmin.register Hardware do
  menu :priority => 3
  permit_params :name, :serial, :type
  actions :all
  index do
    column :name
    column :serial
    column :worker do |hard|
      hard.worker
    end
    column :type
    column :created_at
    actions
  end

filter :name
filter :serial
filter :type
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
