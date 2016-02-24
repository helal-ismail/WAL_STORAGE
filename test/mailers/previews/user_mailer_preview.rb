# Preview all emails at http://localhost:3000/rails/mailers/user_mailer
class UserMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/user_mailer/shared_moment_notification
  def shared_moment_notification
    UserMailer.shared_moment_notification
  end

end
