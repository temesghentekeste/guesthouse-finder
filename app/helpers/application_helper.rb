module ApplicationHelper

  def cloudinary_name
    ENV['CLOUD_NAME']
  end

  def property_photo(property)
    render 'properties/property_photo', property: property if property.photo.attached?
  end
end
