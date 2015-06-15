class Admins::SessionsController < Devise::SessionsController
# before_filter :configure_sign_in_params, only: [:create]

	skip_before_filter  :verify_authenticity_token
	prepend_before_filter :verify_signed_out_user, only: :destroy
	respond_to :html, :js

  # GET /resource/sign_in
  # def new
  #   super
  # end

  # POST /resource/sign_in
  # def create
  #   super
  # end
	
	# DELETE /resource/sign_out
	def destroy
		signed_out = (Devise.sign_out_all_scopes ? sign_out : sign_out(resource_name))
		set_flash_message :notice, :signed_out if signed_out && is_flashing_format?
		yield if block_given?
		respond_to_on_destroy
	end

	protected

	def respond_to_on_destroy
		respond_to do |format|
			format.js
		end
	end

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.for(:sign_in) << :attribute
	#
  # end
end
