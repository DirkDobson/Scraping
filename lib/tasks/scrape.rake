namespace :scrape do
  desc "Scrap goodreads and import data"
  task library: :environment do

    agent = Mechanize.new

    page = agent.get('https.//www.goodreads.com/shelf/show/fiction')

    book = page.search('.left')

    book.each do |book|
      title = book.at('.leftAlignedImage').attributes['title'].value
      link = page.link_with(text: title)
      book_page = link.click
      info = 
    end
  end
end
