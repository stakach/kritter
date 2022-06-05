require "csv"

file_input = ARGV[0]
file_output = ARGV[1]
puts "Reading #{file_input}"
puts "Writing #{file_output}"
File.open(file_output, "w") do |output|
  CSV.each_row(File.open(file_input)) do |row|
    output << %(item {\n  id: #{row[0]}\n  name: '#{row[1]}'\n}\n)
  end
end
