module AccountsHelper

  def profile_picture(account, style, width)
    if account.image.attached?
      render 'shared/profile_picture', { account: account, style: style, width: width} 
    else
      render 'shared/dummy_profile_picture'
    end
  end

end
