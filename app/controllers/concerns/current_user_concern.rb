module CurrentUserConcern
  extend ActiveSupport::Concern

  def current_user
    super || create_guest_user
  end

  def create_guest_user
    guest = GuestUser.new
    guest.name = "Guest user"
    guest.first_name = "Guest"
    guest.last_name = "user"
    guest.email = "guest@example.com"
    guest
  end
end