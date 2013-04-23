module AccountsHelper
	  # Returns the Gravatar (http://gravatar.com/) for the given user.
  def gravatar_for(contact)
    gravatar_id = Digest::MD5::hexdigest(contact.email.downcase)
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}"
    image_tag(gravatar_url, alt: contact.name, class: "gravatar")
  end
end
