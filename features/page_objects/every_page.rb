class EveryPage
  include PageObject

  text_area(:title, id: 'title')

  link(:home_link, href: '/home')
  link(:about_link, href: '/about')
  link(:help_link, href: '/help')

  def wait_until(timeout = 30, message = nil, &block)
  end
end