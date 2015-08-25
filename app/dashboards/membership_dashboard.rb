require "administrate/base_dashboard"

class MembershipDashboard < Administrate::BaseDashboard
  ATTRIBUTES = [
    :id,
    :user_id,
    :repo_id,
    :created_at,
    :updated_at,
    :repo,
    :user,
  ]

  READ_ONLY_ATTRIBUTES = [
    :id,
    :created_at,
    :updated_at,
  ]

  # This method returns a hash
  # that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  def attribute_types
    {
      id: Field::String,
      user_id: Field::String,
      repo_id: Field::String,
      created_at: Field::String,
      updated_at: Field::String,
      repo: Field::BelongsTo,
      user: Field::BelongsTo,
    }
  end

  # This method returns an array of attributes
  # that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to remove the limit or customize the returned array.
  def table_attributes
    ATTRIBUTES.first(4)
  end

  # This method returns an array of attributes
  # that will be displayed on the model's show page
  def show_page_attributes
    ATTRIBUTES
  end

  # This method returns an array of attributes
  # that will be displayed on the model's form pages (`new` and `edit`)
  def form_attributes
    ATTRIBUTES - READ_ONLY_ATTRIBUTES
  end
end
