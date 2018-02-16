Trestle.resource(:categories) do
  menu do
    item :categories, icon: "fa fa-star", group: :blog_management
  end

  # Customize the table columns shown on the index view.
  #
  table do
     column :name
     actions
  end

  # Customize the form fields shown on the new/edit views.
  #
  # form do |category|
  #   text_field :name
  #
  #   row do
  #     col(xs: 6) { datetime_field :updated_at }
  #     col(xs: 6) { datetime_field :created_at }
  #   end
  # end

  # By default, all parameters passed to the update and create actions will be
  # permitted. If you do not have full trust in your users, you should explicitly
  # define the list of permitted parameters.
  #
  # For further information, see the Rails documentation on Strong Parameters:
  #   http://guides.rubyonrails.org/action_controller_overview.html#strong-parameters
  #
  # params do |params|
  #   params.require(:category).permit(:name, ...)
  # end
end