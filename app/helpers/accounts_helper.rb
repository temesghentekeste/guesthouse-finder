module AccountsHelper

  def account_photo(account)
    if account.image.attached?
      render 'account_photo', account: account 
    else
      render 'account_dummy_photo'
    end
  end

end
