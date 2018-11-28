require "csv"

namespace :import do

  task merchants: :environment do
    file_name = '.db/data/merhants.csv'
    CSV.foreach(file_name, headers: true) do |row|
      Merchant.create(row.to_h)
    end
  end

end
