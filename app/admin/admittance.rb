ActiveAdmin.register Admittance do
  menu :priority => 5
  permit_params :access_to, :description, :worker_id
  actions :all, except: (:show)

  index do
    column :access_to
    column :description
    column :worker do |admi|
      admi.worker.name + " " + admi.worker.surname
    end
    actions
  end

  filter :access_to
  filter :descripion
  filter :worker
  
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
