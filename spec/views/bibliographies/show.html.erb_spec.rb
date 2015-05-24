require 'rails_helper'

RSpec.describe "bibliographies/show", type: :view do
  before(:each) do
    @bibliography = assign(:bibliography, Bibliography.create!(
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Firstsurname/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Journalname/)
    expect(rendered).to match(/Publication/)
    expect(rendered).to match(/Volume/)
    expect(rendered).to match(/Pages/)
    expect(rendered).to match(/Url/)
    expect(rendered).to match(/Localpdflink/)
    expect(rendered).to match(/Accessdate/)
    expect(rendered).to match(/Websitetitle/)
    expect(rendered).to match(/Conferencetitle/)
    expect(rendered).to match(/Publisher/)
    expect(rendered).to match(/City/)
    expect(rendered).to match(/Editors/)
    expect(rendered).to match(/Edition/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Isbn/)
    expect(rendered).to match(//)
  end
end
