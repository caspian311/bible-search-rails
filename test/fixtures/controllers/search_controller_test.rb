require 'test_helper'

class SerachControllerTest < ActionController::TestCase
  def setup
    Bible.destroy_all
    
    bible = Bible.new
    bible.shortName = 'BIBLE'
    bible.longName = 'Holy Bible'

    book1 = Book.new
    book1.title = 'John'

    chapter3 = Chapter.new
    chapter3.ref = 3

    verse16 = Verse.new
    verse16.ref = 16
    verse16.text = 'For God so loved the world...'

    chapter3.verses = []
    chapter3.verses << verse16

    book1.chapters = []
    book1.chapters << chapter3

    bible.books = []
    bible.books << book1

    bible.save
  end

  def teardown
    Bible.destroy_all
  end

  def test_get
    get :index
    assert_response :success
  end
end
