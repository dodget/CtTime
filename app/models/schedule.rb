class Schedule < ActiveRecord::Base

  require 'roo'

  def accessible_attributes
    [course_name, class_name, specialty, start, ending, location, hours, in_hst, ct_assigned, backup_ct]
  end

  def self.import(file)

    spreadsheet = open_spreadsheet(file)
    header = spreadsheet.row(1)
    (2..spreadsheet.last_row).each do |i|
      row = Hash[[header, spreadsheet.row(i)].transpose]
      schedule = find_by_id(row["id"]) || new
      schedule.attributes = row.to_hash.slice(*row.to_hash.keys)
      schedule.save!
    end

  end

  def self.open_spreadsheet(file)
    case File.extname(file.original_filename)
    when ".xlsx" then Roo::Excelx.new(file.path, packed: nil, file_warning: :ignore)
      when ".xls" then Roo::Excel.new(file.path, :ignore)
      when ".ods" then Roo::LibreOffice.new(file.path, :ignore)
      else raise "Unknown file type: #{file.original_filename}"
    end
  end



end
