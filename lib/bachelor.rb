def get_first_name_of_season_winner(data, season)
  contestants = data[season]
  contestants.each do |contestant| 
    if contestant["status"] == "Winner"
      return contestant["name"].split(" ")[0]
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |season, details|
    details.each do |contestant|
    if contestant["occupation"] == occupation
      return contestant["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  counter = 0
  data.each do |season, details|
    details.each do |contestant|
      if contestant["hometown"] == hometown
        counter += 1
      end
    end
  end
  counter
end

def get_occupation(data, hometown)
  data.each do |season, contestants|
    contestants.each do |contestant|
      if contestant["hometown"] == hometown
        return contestant["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  contestants = data[season]
  age_sum = 0
  contestant_count = 0
  contestants.each do |contestant|
    age_sum+= contestant["age"].to_i
    contestant_count+=1
  end
  return (age_sum / contestant_count.to_f).round
end
