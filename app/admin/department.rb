ActiveAdmin.register Department do
  menu :priority => 4
  permit_params :name, :description
  actions :all, except: (:show)

  index do
    column :name
    column :description
    column("Workers"){|u| u.workers.count }
    actions
  end

  filter :name
  filter :description

  
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
