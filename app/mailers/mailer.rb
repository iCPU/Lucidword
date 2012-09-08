class Mailer < ActionMailer::Base

  def comment_response(comment, user)
    @comment = comment
    @user = user
    mail :to => @user.email, :from => "noreply@lucidword.com", :subject => "Comment Response on Lucid Word"
  end

end
