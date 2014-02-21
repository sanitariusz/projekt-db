ActiveAdmin.register HardwareType do
  menu :priority => 6
  permit_params :name
  actions :all, except: (:show)
  index do
    column :name
    column("Total") {|total| total.hardwares.count}
    actions
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
