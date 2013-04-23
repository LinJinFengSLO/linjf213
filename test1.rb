#def test1
  require 'rubygems'
#  require 'iconv'
  require 'roo'

  s = Roo::Excel.new("simple_spreadsheet.xls")

  if s==nil then
    puts 'AAAAA'
  else
    puts 'BBBBB'
  end

  s.default_sheet = s.sheets.first

  1.upto(8) do |line|
    roll = s.cell(line,'A')
    puts "#{roll} -------------"
  end


1.upto(8) do |line|
  roll = s.cell(line,'C')
  puts "#{roll} -------------"
end


1.upto(8) do |line|
  roll1 = s.cell(line,'A')
  roll2 = s.cell(line,'B')
  roll3 = s.cell(line,'C')
  roll4 = s.cell(line,'D')
  roll5 = s.cell(line,'E')
  puts "#{roll1} --#{roll2} --#{roll3}  ---#{roll4} ---#{roll5} ---"
end



#end

#
#def test1
#require 'rubygems'
#require 'roo'
#
#
##HOURLY_RATE = 123.45
##oo = Excel.new("simple_spreadsheet.xls")
#
#  oo = Roo::Excel.new("simple_spreadsheet.xls")
#  #try Roo::Excel.new
#
#  #Or Roo::Spreadsheet.new
#
#    #
#    #// oo = Openoffice.new("simple_spreadsheet.ods")
#oo.default_sheet = oo.sheets.first
#4.upto(12) do |line|
#  date       = oo.cell(line,'A')
#  start_time = oo.cell(line,'B')
#  end_time   = oo.cell(line,'C')
#  pause      = oo.cell(line,'D')
#  #sum        = (end_time - start_time) - pause
#  comment    = oo.cell(line,'F')
#  amount     = sum * 24
#
#  puts "#{date}\t#{amount}\t#{comment}"
#  if date
#    puts "#{date}\t#{sum}\t#{amount}\t#{comment}"
#  end
#end
#end