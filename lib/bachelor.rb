require 'pry'
def get_first_name_of_season_winner(data, season)
  x = ""
data.each {|season_number, contestants|
 if season == season_number
    contestants.each {|info|
      info.each {|attribute, value|
      if info["status"] = "winner" && attribute == "name"
      return value.split(" ")[0]
    end
    }
      }
    end
  }
end

def get_contestant_name (data, string)
  data.each {|season_number, contestants|
  contestants.each {|info|
    info.each {|attribute, value|
      if info["occupation"] == string && attribute == "name"
        return value
      end
      }}}
    end

    def count_contestants_by_hometown (data, string)
      i = 0
      data.each {|season_number, contestants|
      contestants.each {|info|
        info.each {|attribute, value|
          if attribute == "hometown" && value == string
            i += 1
          end
        }}}
        return i
      end

def get_occupation (data, string)
  data.each {|season_number, contestants|
  contestants.each {|info|
    info.each {|attribute, value|
      if info["hometown"] == string && attribute == "occupation"
        return value
      end
    }}}
  end

  def get_average_age_for_season (data, season)
    x = 0
    i = 0
    data.each {|season_number, contestants|
      if season_number == season
    contestants.each {|info|
      info.each {|attribute, value|
        if attribute == "age"
          x = x + value.to_f
          i += 1
        end
      }}
    end
  }
  return (x/i).round
end
