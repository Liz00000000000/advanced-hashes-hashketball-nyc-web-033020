# Write your code here!
require "pry"
def game_hash
hash = {:home =>
            {:team_name => "Brooklyn Nets",
              :colors => ["Black","White"],
            :players =>
              [{:player_name => "Alan Anderson",
                :number => 0,
                :shoe => 16,
                :points => 22,
                :rebounds => 12,
                :assists => 12,
                :steals => 3,
                :blocks => 1,
                :slam_dunks => 1},
                {:player_name => "Reggie Evans",
                  :number => 30,
                  :shoe => 14,
                  :points => 12,
                  :rebounds => 12,
                  :assists => 12,
                  :steals => 12,
                  :blocks => 12,
                  :slam_dunks => 7},
                  {:player_name => "Brook Lopez",
                    :number => 11,
                    :shoe => 17,
                    :points => 17,
                    :rebounds => 19,
                    :assists => 10,
                    :steals => 3,
                    :blocks => 1,
                    :slam_dunks => 15},
                    {:player_name => "Mason Plumlee",
                      :number => 1,
                      :shoe => 19,
                      :points => 26,
                      :rebounds => 11,
                      :assists => 6,
                      :steals => 3,
                      :blocks => 8,
                      :slam_dunks => 5},
                      {:player_name => "Jason Terry",
                        :number => 31,
                        :shoe => 15,
                        :points => 19,
                        :rebounds => 2,
                        :assists => 2,
                        :steals => 4,
                        :blocks => 11,
                        :slam_dunks => 1}
              ]
          },
           :away => {
            :team_name => "Charlotte Hornets",
             :colors => ["Turquoise", "Purple"],
           :players => [
             {:player_name => "Jeff Adrien",
               :number => 4,
               :shoe => 18,
               :points => 10,
               :rebounds => 1,
               :assists => 1,
               :steals => 2,
               :blocks => 7,
               :slam_dunks => 2},
               {:player_name => "Bismack Biyombo",
                 :number => 0,
                 :shoe => 16,
                 :points => 12,
                 :rebounds => 4,
                 :assists => 7,
                 :steals => 22,
                 :blocks => 15,
                 :slam_dunks => 10},
                 {:player_name => "DeSagna Diop",
                   :number => 2,
                   :shoe => 14,
                   :points => 24,
                   :rebounds => 12,
                   :assists => 12,
                   :steals => 4,
                   :blocks => 5,
                   :slam_dunks => 5},
                   {:player_name => "Ben Gordon",
                     :number => 8,
                     :shoe => 15,
                     :points => 33,
                     :rebounds => 3,
                     :assists => 2,
                     :steals => 1,
                     :blocks => 1,
                     :slam_dunks => 0},
                     {:player_name => "Kemba Walker",
                       :number => 33,
                       :shoe => 15,
                       :points => 6,
                       :rebounds => 12,
                       :assists => 12,
                       :steals => 7,
                       :blocks => 5,
                       :slam_dunks => 12}
           ]
         }}
return hash
end

def num_points_scored(name)
  game_hash.each do |location, players |
    #binding.pry
    #pp location
    players[:players].each do |player|
      if player[:player_name] == name
        return player[:points]
      end
    end
  #    if players[:player_name] == name
  #  p player_name[:points]
end
end


def shoe_size(name)
game_hash.each do |location, players |
  players[:players].each do |player|
    if player[:player_name] == name
      return player[:shoe]
    end
  end
end
end

def team_colors(team)
game_hash.each do |hash, location|
  if location[:team_name] == team
    return location[:colors]
  end
  end
end

def team_names
  array = [ ]
 game_hash.each do |location, team|
   #binding.pry
   group = team[:team_name]
   array << group
 end
 return array
end

def player_numbers(team)
  array = [ ]
  game_hash.each do |location, players |
    players[:players].each do |player|
      if player[:team] == team
        player[:team][:points].each do | points|
          array << points
        end
      end
      return array
    end
  end
end

def player_stats(name)
 hash = { }
  game_hash.each do |location, team |
      team[:players].each do |players|
  #binding.pry
      if players[:player_name] == name
         hash[:assists] = players[:assists]
           hash[:blocks] = players[:blocks]
           hash[:number] = players[:number]
           hash[:points] = players[:points]
           hash[:rebounds] = players[:rebounds]
           hahs[:shoe] = players[:shoe]
           hahs[:slam_dunks] = players[:slam_dunks]
           hash[:steals] = players[:steals]
      end
    return hash
    end
  end
end

def big_shoe_rebounds
  array = [ ]
 game_hash.each do |one, two|
   two.each do |player|
     size = player[:shoe]
   end 
 end 
end
