class ContactOwnerController < ApplicationController
    def index
    end

    def create
        redirect_to contact_owner_preview_path(email_params.values)

        ContactOwnerMailer.contact_owner(@email_params)


    end
    def preview
        render :file => 'contact_owner_mailer/contact_owner.html.haml', :layout => 'mailer'
    end

       
  def email_params
    params.require(:email).permit(:email_address, :email_content)
  end

end
