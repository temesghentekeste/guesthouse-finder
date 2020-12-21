module ApplicationHelper

  def cloudinary_name
    ENV['CLOUD_NAME']
  end

  def flash_notifications
    flash_messages = []

    flash.each do |type, message|
      type = 'success' if type == 'notice'
      type = 'error' if type == 'danger' || type == 'alert'

      text = "toastr['#{type}']('#{message}')"
      flash_messages << text.html_safe unless message.blank?
    end

    "<script>
        #{ flash_messages.join("\n")}
    </script>".html_safe if flash_messages.any?
  end
end
