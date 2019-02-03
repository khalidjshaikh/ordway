namespace :seats do
desc "Print Seats with weights"
  task print: :environment do
    puts "RowColumn[Available/Reserved] Weight"
    puts "Weight is composed of 0 to 100% and leans towards center and front.  Lowest # is best."
    puts ""
    current_row = 'A'
    Ordway.rows.times.each do |row|
      Ordway.columns.times.each do |column|
        print "#{current_row}#{column+1}"
        if Ordway.available_seats.include?("#{current_row}#{column+1}")
          print "[Avail] "
        else
          print "[Reser] "
        end
        print Ordway.weight(column, row)
        print "  "
      end
      print "\n"
      current_row = current_row.succ
    end
    puts ""
    puts "Ordway best seat is #{Ordway.best_seat}"
  end
end
