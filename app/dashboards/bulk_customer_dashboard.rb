require "administrate/base_dashboard"

class BulkCustomerDashboard < Administrate::BaseDashboard
  ATTRIBUTES = [
  ]

  READ_ONLY_ATTRIBUTES = [
    :id,
    :created_at,
    :updated_at,
  ]

  ATTRIBUTE_TYPES = {
  }

  def attribute_types
    ATTRIBUTE_TYPES
  end

  def table_attributes
    ATTRIBUTES.first(4)
  end

  def show_page_attributes
    ATTRIBUTES
  end

  def form_attributes
    ATTRIBUTES - READ_ONLY_ATTRIBUTES
  end
end