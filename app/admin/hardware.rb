ActiveAdmin.register Hardware do
  menu :priority => 3
  permit_params :name, :serial, :type, :worker_id, :hardware_type_id
  actions :all
  index do
    column :name
    column :serial
    column :worker do |hard|
      hard.worker.name + " " +  hard.worker.surname
    end
    column :hardware_type do |type|
      type.hardware_type.name
    end
    column :created_at
    actions
  end

filter :name
filter :serial
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
