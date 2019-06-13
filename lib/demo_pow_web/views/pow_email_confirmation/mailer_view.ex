defmodule DemoPowWeb.PowEmailConfirmation.MailerView do
  use DemoPowWeb, :mailer_view

  def subject(:email_confirmation, _assigns), do: "Confirm your email address"
end
