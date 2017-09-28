ActiveAdmin.register Investment do
  permit_params Investment.column_names

  index do
    column :code
    column :description
    column :investment_type
    column :balance
  end


  form do |f|
    f.inputs do
      f.input :code
      f.input :description, as: :string
      f.input :investment_type, as: :select
    end
    f.actions
  end

end
