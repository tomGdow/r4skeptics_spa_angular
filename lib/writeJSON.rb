module SKEPTICS

  def self.write_commodities_to_json
    File.open(File.join(Rails.root,
                        'public', 'skepticsCommodities.json'), "w+") { |f| f.write(Commodity.all.to_json) }
  end
end
