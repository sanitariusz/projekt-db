ActiveAdmin.register HardwareType do

  permit_params :name
  actions :all, except: [:show, :edit, :destroy]
  index do
    column :id
    column :name
  end

  filter :name
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
