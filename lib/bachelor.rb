require "pry"

def get_first_name_of_season_winner(data, season)
  data[season].each do |contestant|
    if contestant["status"] == "Winner"
      return contestant["name"].split[0]
    end
  end
end

def get_contestant_name(data, occupation)
  # data is the Hash where the top level keys are the seasons
  # occupation is unique to only one contestant


  # iterate through all of the seasons
    # within a season, iterate through the array of contestants
      # where "occupation" == occupation
        # return "name"


  # data: Hash contestants: Array
  data.each do |season, contestants|
    contestants.each do |contestant|
      # contestant: Hash
      if contestant["occupation"] == occupation
        return contestant["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
# create array where contestant hashes will be stored
  #iterate through all of the seasons
    #within a season, iterate thought the array of contestants
      # where "hometown" == hometown
        # shovel contestant hash into an array
  # return count of contestants in initialized array
  contestants_from_hometown = []
  data.each do |season, contestants|
    contestants.each do |contestant|
      #contestant: Hash
      if contestant["hometown"] == hometown
        contestants_from_hometown << contestant
      end
    end
  end
  contestants_from_hometown.length
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
  array_of_ages = []
  data[season].each do |contestant|
    #contestant: Hash
    array_of_ages << contestant["age"].to_f
  end
  (array_of_ages.reduce(:+)/array_of_ages.length).round
end
