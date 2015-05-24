require 'rails_helper'

RSpec.describe "bibliographies/new", type: :view do
  before(:each) do
    assign(:bibliography, Bibliography.new(
      :firstsurname => "MyString",
      :authors => "MyText",
      :year => 1,
      :title => "MyText",
      :journalname => "MyString",
      :publication => "MyString",
      :volume => "MyString",
      :pages => "MyString",
      :url => "MyString",
      :localpdflink => "MyString",
      :accessdate => "MyString",
      :websitetitle => "MyString",
      :conferencetitle => "MyString",
      :publisher => "MyString",
      :city => "MyString",
      :editors => "MyString",
      :edition => "MyString",
      :comment => "MyText",
      :isbn => "MyString",
      :abstract => ""
    ))
  end

  it "renders new bibliography form" do
    render

    assert_select "form[action=?][method=?]", bibliographies_path, "post" do

      assert_select "input#bibliography_firstsurname[name=?]", "bibliography[firstsurname]"

      assert_select "textarea#bibliography_authors[name=?]", "bibliography[authors]"

      assert_select "input#bibliography_year[name=?]", "bibliography[year]"

      assert_select "textarea#bibliography_title[name=?]", "bibliography[title]"

      assert_select "input#bibliography_journalname[name=?]", "bibliography[journalname]"

      assert_select "input#bibliography_publication[name=?]", "bibliography[publication]"

      assert_select "input#bibliography_volume[name=?]", "bibliography[volume]"

      assert_select "input#bibliography_pages[name=?]", "bibliography[pages]"

      assert_select "input#bibliography_url[name=?]", "bibliography[url]"

      assert_select "input#bibliography_localpdflink[name=?]", "bibliography[localpdflink]"

      assert_select "input#bibliography_accessdate[name=?]", "bibliography[accessdate]"

      assert_select "input#bibliography_websitetitle[name=?]", "bibliography[websitetitle]"

      assert_select "input#bibliography_conferencetitle[name=?]", "bibliography[conferencetitle]"

      assert_select "input#bibliography_publisher[name=?]", "bibliography[publisher]"

      assert_select "input#bibliography_city[name=?]", "bibliography[city]"

      assert_select "input#bibliography_editors[name=?]", "bibliography[editors]"

      assert_select "input#bibliography_edition[name=?]", "bibliography[edition]"

      assert_select "textarea#bibliography_comment[name=?]", "bibliography[comment]"

      assert_select "input#bibliography_isbn[name=?]", "bibliography[isbn]"

      assert_select "input#bibliography_abstract[name=?]", "bibliography[abstract]"
    end
  end
end
