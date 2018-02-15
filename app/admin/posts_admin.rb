Trestle.resource(:posts) do
  menu do
    item :posts, icon: "fa fa-star", group: :blog_management
  end

  # Define custom scopes for the index view
  scope :all, default: true

  form do
    # Organize fields into tabs and sidebars
    tab :post do
      text_field :title

      # Define custom form fields for easy re-use
      editor :body
      select :category_id, Category.all
    end

    tab :metadata do
      # Layout fields based on a 12-column grid
      row do
        col(sm: 6) { select :administrator_id, Administrator.all }
      end
    end

  end

  # Customize the table columns shown on the index view.
  #
  # table do
  #   column :name
  #   column :created_at, align: :center
  #   actions
  # end

  # Customize the form fields shown on the new/edit views.
  #
  # form do |post|
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
  #   params.require(:post).permit(:name, ...)
  # end
end
