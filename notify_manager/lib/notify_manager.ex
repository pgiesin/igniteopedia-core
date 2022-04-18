defmodule NotifyManager do

  alias NotifyManager.Impl.UserNotifier

  # User Account Notifications
  defdelegate deliver_confirmation_instructions(user, url), to: UserNotifier
  defdelegate deliver_reset_password_instructions(user, url), to: UserNotifier
  defdelegate deliver_update_email_instructions(user, url), to: UserNotifier
end
