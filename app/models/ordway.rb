module Ordway
  H = {
    "venue": {
        "layout": {
        "rows": 10,
        "columns": 10
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
  def self.available_seats
    Ordway::H[:seats].values.map do |seat|
      seat[:row].upcase.to_s + seat[:column].to_s
    end
  end

end
