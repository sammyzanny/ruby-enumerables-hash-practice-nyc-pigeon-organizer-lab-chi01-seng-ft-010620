def nyc_pigeon_organizer(data)
organized_pigeons = {}
  data.each do |key, value|
    value.each do |next_key, names|
      names.each do |name|
        
        if !organized_pigeons[name]
          organized_pigeons[name] = {}
        end

        if !organized_pigeons[name][key]
          organized_pigeons[name][key] = []
        end
        
        organized_pigeons[name][key] << next_key.to_s
      end
    end
  end
  organized_pigeons
end

nyc_pigeon_organizer({
        :color => {
          :purple => ["Theo", "Peter Jr.", "Lucky"],
          :grey => ["Theo", "Peter Jr.", "Ms. K"],
          :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
          :brown => ["Queenie", "Alex"]
        },
        :gender => {
          :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
          :female => ["Queenie", "Ms. K"]
        },
        :lives => {
          "Subway" => ["Theo", "Queenie"],
          "Central Park" => ["Alex", "Ms. K", "Lucky"],
          "Library" => ["Peter Jr."],
          "City Hall" => ["Andrew"]
        }
      })