json.array!(@bibliographies) do |bibliography|
  json.extract! bibliography, :id, :firstsurname, :authors, :year, :title, :journalname, :publication, :volume, :pages, :url, :localpdflink, :accessdate, :websitetitle, :conferencetitle, :publisher, :city, :editors, :edition, :comment, :isbn, :abstract
  json.url bibliography_url(bibliography, format: :json)
end
