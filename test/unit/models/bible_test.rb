class BibleTest<Test::Unit::TestCase
  def test_find_all
    b = Bible.new
    b.id = 1
    b.name = "NASB"
    b.publisher = "Lockman Foundation"
    b.save

    b2 = Bible.new
    b2.id = 2
    b2.name = "NIV"
    b2.publisher = "Zondervan"
    b2.save

    assert_equal(2, Bible.all.size)

    all_bibles.each do |bible|
      bible.delete
    end

    assert_equal(0, Bible.all.size)
  end
end
