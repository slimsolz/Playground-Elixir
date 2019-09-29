defmodule ProjectManagementApiWeb.DocumentView do
  use ProjectManagementApiWeb, :view
  use JaSerializer.PhoenixView

  attributes [:name, :content, :view_count, :published, :project_id]
end
