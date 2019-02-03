module Ordway
  H = {
    "venue": {
        "layout": {
        "rows": 10,
        "columns": 11
        }
    },
    "seats": {
        "a1": {
        "id": "a1",
        "row": "a",
        "column": 1,
        "status": "AVAILABLE"
        },
        "b5": {
        "id": "b5",
        "row": "b",
        "column": 5,
        "status": "AVAILABLE"
        },
        "h7": {
        "id": "h7",
        "row": "h",
        "column": 7,
        "status": "AVAILABLE"
        }
    }
  }
  class << self
    def available_seats
      Ordway::H[:seats].values.map do |seat|
        seat[:row].upcase.to_s + seat[:column].to_s
      end
    end

    def rows
      @rows ||= Ordway::H[:venue][:layout][:rows]
    end

    def columns
      @columns ||= Ordway::H[:venue][:layout][:columns]
    end

    def weight(column, row)
      # 50% to 50% where the center is 0%
      ((((column+0.5)/@columns.to_f-0.5)*50).round.abs  +

      # 0% to 100% where the first row is 0% and the last row is 50%
      (row+1)/@rows.to_f*50).round

      # divide each of the above by 2 and add them together to form a total of 0% to 100%
      # where the front center row is the lowest number
    end

    def best_seat
      seat = {}
      current_row = 'A'
      Ordway.rows.times.each do |row|
        Ordway.columns.times.each do |column|
          if Ordway.available_seats.include?("#{current_row}#{column+1}")
            seat["#{current_row}#{column+1}"] = Ordway.weight(column, row)
          end
        end
        current_row = current_row.succ
      end
      # debugger.pry
      seat.sort{|a, b| a.last <=> b.last }.first.first
    end
  end

end
