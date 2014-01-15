ActiveAdmin.register Hardware do
  menu :priority => 3
  permit_params :name, :serial, :type
  actions :all, except: [:show, :destroy]
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
