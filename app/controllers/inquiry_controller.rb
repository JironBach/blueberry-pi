class InquiryController < ApplicationController
	def contact
		@title = 'ブルーベリー・パイ：お問い合わせ'
		@contact = MailContact.new
		render :contact
	end

	def confirm_contact
		@title = 'ブルーベリー・パイ：お問い合わせ'
		@contact = MailContact.new
		@contact.update(contact_strong_params)
		if @contact.valid?
			render :confirm_contact
		else
			render :contact
		end
	end

	def post_contact
		@title = 'ブルーベリー・パイ：お問い合わせ'
		@contact = MailContact.new
		@contact.update(contact_strong_params)
		@contact.save

		InquiryMailer.confirm_contact(@contact).deliver
		InquiryMailer.contact(@contact).deliver

		render :post_contact
	end

private
  def mailmagazine_strong_params
    params.require(:mail_mailmagazine).permit(:email)
  end

  def contact_strong_params
    params.require(:mail_contact).permit(:corp_name, :name, :email, :detail)
  end
end
