require 'rails_helper'

RSpec.describe "bibliographies/index", type: :view do
  before(:each) do
    assign(:bibliographies, [
      Bibliography.create!(
        :firstsurname => "Firstsurname",
        :authors => "MyText",
        :year => 1,
        :title => "MyText",
        :journalname => "Journalname",
        :publication => "Publication",
        :volume => "Volume",
        :pages => "Pages",
        :url => "Url",
        :localpdflink => "Localpdflink",
        :accessdate => "Accessdate",
        :websitetitle => "Websitetitle",
        :conferencetitle => "Conferencetitle",
        :publisher => "Publisher",
        :city => "City",
        :editors => "Editors",
        :edition => "Edition",
        :comment => "MyText",
        :isbn => "Isbn",
        :abstract => ""
      ),
      Bibliography.create!(
        :firstsurname => "Firstsurname",
        :authors => "MyText",
        :year => 1,
        :title => "MyText",
        :journalname => "Journalname",
        :publication => "Publication",
        :volume => "Volume",
        :pages => "Pages",
        :url => "Url",
        :localpdflink => "Localpdflink",
        :accessdate => "Accessdate",
        :websitetitle => "Websitetitle",
        :conferencetitle => "Conferencetitle",
        :publisher => "Publisher",
        :city => "City",
        :editors => "Editors",
        :edition => "Edition",
        :comment => "MyText",
        :isbn => "Isbn",
        :abstract => ""
      )
    ])
  end

  it "renders a list of bibliographies" do
    render
    assert_select "tr>td", :text => "Firstsurname".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Journalname".to_s, :count => 2
    assert_select "tr>td", :text => "Publication".to_s, :count => 2
    assert_select "tr>td", :text => "Volume".to_s, :count => 2
    assert_select "tr>td", :text => "Pages".to_s, :count => 2
    assert_select "tr>td", :text => "Url".to_s, :count => 2
    assert_select "tr>td", :text => "Localpdflink".to_s, :count => 2
    assert_select "tr>td", :text => "Accessdate".to_s, :count => 2
    assert_select "tr>td", :text => "Websitetitle".to_s, :count => 2
    assert_select "tr>td", :text => "Conferencetitle".to_s, :count => 2
    assert_select "tr>td", :text => "Publisher".to_s, :count => 2
    assert_select "tr>td", :text => "City".to_s, :count => 2
    assert_select "tr>td", :text => "Editors".to_s, :count => 2
    assert_select "tr>td", :text => "Edition".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Isbn".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end
