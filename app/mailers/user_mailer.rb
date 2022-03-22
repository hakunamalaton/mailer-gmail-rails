class UserMailer < ApplicationMailer
    default from: 'lamtoan557@gmail.com'
  
    def welcome_email
      @user = params[:user]
      @url  = 'https://rails-gmail.herokuapp.com'
      attachments['logo.png'] = File.read(Rails.root.join("app/assets/images/logo.png"))
      p "Lam thien toan can mot buc anh: #{attachments['logo.png'].url}"
      mail(to: @user.email, subject: 'Welcome to My Awesome Site')
    end
  end
  