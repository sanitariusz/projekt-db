ActiveAdmin.register Hardware do
  menu :priority => 3
  permit_params :Name, :Serial, :Type
  actions :all, except: [:show, :destroy]
  index do
    column :Name
    column :Serial
    column :Type
    column :created_at
    actions
  end

filter :Name
filter :Serial
filter :Type
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
