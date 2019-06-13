defmodule DemoPowWeb.PowResetPassword.MailerView do
  use DemoPowWeb, :mailer_view

  def subject(:reset_password, _assigns), do: "Reset password link"
end
