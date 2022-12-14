module ApplicationHelper

    def gravatar_for(user, options = { size:200 })

        email_address = user.email

        # create the md5 hash
        hash = Digest::MD5.hexdigest(email_address)
        size = options[:size]
        gravatar_url = "https://www.gravatar.com/avatar/#{hash}?s=#{size}"

        image_tag(gravatar_url, alt: user.username, class:"centeri rounded-full ring-2 ring-gray-300 dark:ring-gray-500")
    end

end
