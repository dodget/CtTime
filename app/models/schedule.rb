class Schedule < ActiveRecord::Base

  require 'roo'



  def self.import(file)

    Schedule.destroy_all

    spreadsheet = open_spreadsheet(file)
    #raise spreadsheet.cell(2, 'E').inspect
    header = spreadsheet.row(1)
    (2..spreadsheet.last_row).each do |i|
      row = Hash[[header, spreadsheet.row(i)].transpose]
      schedule = find_by_id(row["id"]) || new
      #raise spreadsheet.row(i).inspect
      schedule.attributes = row.to_hash.slice(*row.to_hash.keys)
      #schedule.start_time = Time.at(schedule.start_time.days).local_time
      #schedule.end_time = Time.at(schedule.end_time.days).local_time
      schedule.save!
    end

  end

  def self.open_spreadsheet(file)
    case File.extname(file.original_filename)
    when ".xlsx" then Roo::Excelx.new(file.path, packed: nil, file_warning: :ignore)
      when ".xls" then Roo::Excel.new(file.path, :ignore)
      when ".ods" then Roo::LibreOffice.new(file.path, packed: nil, file_warning: :ignore)
      else raise "Unknown file type: #{file.original_filename}"
    end
  end



end
