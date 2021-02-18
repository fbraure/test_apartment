ActiveAdmin.register Restaurant do
  actions :index, :show, :new, :create, :edit, :update
  permit_params :name, options_attributes: [:id, :name, :_destroy]

  index do
    selectable_column
    column :id
    column :name
    actions
  end

end
