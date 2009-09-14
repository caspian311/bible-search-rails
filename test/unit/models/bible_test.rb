class BibleTest<Test::Unit::TestCase
  def setup
    Bible.destroy_all
  end

  def teardown
    Bible.destroy_all
  end

  def test_find_all
    nasBible = Bible.new
    nasBible.id = 1
    nasBible.shortName = "NASB"
    nasBible.longName = "Lockman Foundation"
    nasBible.save

    nivBible = Bible.new
    nivBible.id = 2
    nivBible.shortName = "NIV"
    nivBible.longName = "Zondervan"
    nivBible.save

    assert_equal(2, Bible.all.size)

    Bible.all.each do |bible|
      bible.delete
    end

    assert_equal(0, Bible.all.size)
  end

  def test_relationships
    bible = Bible.new
    bible.shortName = "NASB"
    bible.longName = "Lockman Foundation"

    genesis = Book.new
    genesis.title = "Genesis"

    bible.books << genesis

    chap1 = Chapter.new

    genesis.chapters << chap1

    verse1 = Verse.new
    verse1.text = "In the beginning..."

    chap1.verses << verse1

    bible.save

    assert_equal(1, Bible.all.size)
    assert_equal(1, Book.all.size)
    assert_equal(1, Chapter.all.size)
    assert_equal(1, Verse.all.size)

    bible.destroy

    assert_equal(0, Bible.all.size)
    assert_equal(0, Book.all.size)
    assert_equal(0, Chapter.all.size)
    assert_equal(0, Verse.all.size)
  end
end
