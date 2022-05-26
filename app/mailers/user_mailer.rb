class UserMailer < ApplicationMailer
    default from: 'bk.furniture.hcmut@gmail.com'
  
    def welcome_email
      @user = params[:user]
      @url  = 'http://localhost:3000/'
      mail(to: @user.email, subject: 'BK Furniture: Submit your design successfully')
    end
  end
  