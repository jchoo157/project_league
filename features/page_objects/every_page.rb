class EveryPage
  include PageObject

  # link(:sign_up_link, href: '/accounts/sign_up')
  # link(:log_in_link, href: '/accounts/sign_in')
  link(:home_link, href: '/home')
  link(:about_link, href: '/about')
  link(:help_link, href: '/help')

  def wait_until(timeout = 30, message = nil, &block)
  end


end