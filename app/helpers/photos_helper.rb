module PhotosHelper
  def user_can_edit_b?
    policy(@photo).edit?
  end

  def user_can_destroy_b?
    policy(@photo).destroy?
  end
end
