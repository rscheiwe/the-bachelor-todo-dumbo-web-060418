require 'pry'

def get_first_name_of_season_winner(data, season)
  # code here
  data.each do |key, value|
    if key == season
      value.each do |x|
        if x["status"] == "Winner"
          names = x["name"].split
          return names.first
        end
      end
    end
  end
end


def get_contestant_name(data, occupation)
  # code here
  data.each do |key, value|
    value.each do |x|
      if x["occupation"] == occupation
        return x["name"]
      end
    end
  end
end


def count_contestants_by_hometown(data, hometown)
  # code here
  counter = 0
  data.each do |key, value|
    value.each do |x|
      if x["hometown"] == hometown
        counter += 1
      end
    end
  end
  return counter
end


def get_occupation(data, hometown)
  # code here
  data.each do |key, value|
    value.each do |x|
      if x["hometown"] == hometown
        return x["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  # code here
  total = 0
  num = 0
  data.each do |key, value|
    if key == season
      value.each do |x|
        age = x["age"].to_i
        total += age
        num += 1
      end
    end
  end
  #.ceil, other uses of .to_f, not working.
  (total.to_f / num).round(0)
end
