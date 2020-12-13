module PropertiesHelper
  def property_photo(property)
    if property.photo.attached?
      render 'properties/property_photo', property: property 
    else
      render 'properties/property_dummy_photo'
    end
  end

  def property_card_photo(property)
    if property.photo.attached?
      render 'properties/property_card_photo', property: property 
    else
      render 'properties/property_card_dummy_photo'
    end
  end

  def property_cover_photo(property)
    if property.photo.attached?
      render 'properties/property_cover_photo', property: property 
    else
      render 'properties/property_cover_dummy_photo'
    end
  end
end
