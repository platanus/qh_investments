ActiveAdmin.register Movement do
  permit_params Movement.column_names

  form do |f|
    f.inputs do
      f.input :investment
      f.input :amount
      f.input :value
      f.input :operation_type, as: :select, collection: {'buy' => :Compra , 'sell' => :Venta}.invert
      f.input :date
    end
    f.actions
  end
end
