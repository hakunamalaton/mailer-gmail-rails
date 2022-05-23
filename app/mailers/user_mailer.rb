class UserMailer < ApplicationMailer
    default from: 'bk.furniture.hcmut@gmail.com'
  
    def welcome_email
      @user = params[:user]
      @url  = 'http://localhost:3000/'
      attachments.inline['logo.png'] = File.read(Rails.root.join("app/assets/images/logo.png"))
      mail(to: @user.email, subject: 'Welcome to My BK CSE Furniture Site')
    end
  end
  