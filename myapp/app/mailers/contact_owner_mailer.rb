class ContactOwnerMailer < ApplicationMailer

    def contact_owner(content)
        @email_params = content
        mail(to: 'owner@carparkbookings.com',from: @email_params.email_address, subject: 'Car Park Bookings user email').deliver_now
    end
end
