#!/usr/bin/env ruby

# Check if an argument is provided

if ARGV.empty?
  puts "Usage: #{$PROGRAM_NAME} <log_file>"
  exit 1
end


# Read the log file provided as an argument

log_file = ARGV[0]

# Process each line of the log file

File.foreach(log_file) do |line|
  match_data = line.match(/\[from:([\w\s\+]+)\] \[to:([\w\s\+]+)\] \[flags:([\d:-]+)\]/)

  # If the line matches the pattern, extract sender, receiver, and flags

  if match_data
    sender = match_data[1]
    receiver = match_data[2]
    flags = match_data[3]

    puts "#{sender},#{receiver},#{flags}"
  end
end
