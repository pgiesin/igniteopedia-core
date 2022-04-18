defmodule AccountManager do

  alias AccountManager.Impl.Accounts

  defdelegate get_user_by_email(email), to: Accounts

  defdelegate register_user(attrs), to: Accounts

  defdelegate get_user_by_email_and_password(email, password), to: Accounts

  defdelegate get_user!(id), to: Accounts

  defdelegate change_user_registration(user, attrs \\ %{}), to: Accounts

  defdelegate change_user_email(user, attrs \\ %{}), to: Accounts

  defdelegate apply_user_email(user, password, attrs), to: Accounts

  defdelegate update_user_email(user, token), to: Accounts

  defdelegate deliver_update_email_instructions(user, current_email, update_email_url_fun), to: Accounts

  defdelegate change_user_password(user, attrs \\ %{}), to: Accounts

  defdelegate update_user_password(user, password, attrs), to: Accounts

  defdelegate generate_user_session_token(user), to: Accounts

  defdelegate get_user_by_session_token(token), to: Accounts

  defdelegate delete_session_token(token), to: Accounts

  defdelegate deliver_user_confirmation_instructions(user, confirmation_url_fun), to: Accounts

  defdelegate confirm_user(token), to: Accounts

  defdelegate deliver_user_reset_password_instructions(user, reset_password_url_fun), to: Accounts

  defdelegate get_user_by_reset_password_token(token), to: Accounts

  defdelegate reset_user_password(user, attrs), to: Accounts
end
