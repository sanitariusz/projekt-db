ActiveAdmin.register Software do
  menu :priority => 3
  permit_params :name, :license, :buy_date, :purpose, :worker_id
  actions :all, except: (:destroy)

  index do
    column :name
    column :license
    column :buy_date
    column :purpose
    column :worker do |soft|
      soft.worker.name + " " + soft.worker.surname
    end
    actions
  end

  filter :name
  filter :buy_date
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
