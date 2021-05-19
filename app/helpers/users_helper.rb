module UsersHelper
<<<<<<< HEAD
   def gravatar_url(user, options = { size: 80 })
    gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
    size = options[:size]
    "https://secure.gravatar.com/avatar/#{gravatar_id}?s=#{size}"
  end
=======
>>>>>>> 233b73be775fddbe479d442da7bdde594450fdd9
end
