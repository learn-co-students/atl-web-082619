require 'pry'

def game_hash
  {
    home: {
      team_name: "Brooklyn Nets",
      colors: ["Black", "White"],
      players: {
        "Alan Anderson" => {
          number: 0,
          shoe: 16,
          points: 22,
          rebounds: 12,
          assists: 12,
          steals: 3,
          blocks: 1,
          slam_dunks: 1
        },
        "Reggie Evans" => {
          number: 30,
          shoe: 14,
          points: 12,
          rebounds: 12,
          assists: 12,
          steals: 12,
          blocks: 12,
          slam_dunks: 7
        },
        "Brook Lopez" => {
          number: 11,
          shoe: 17,
          points: 17,
          rebounds: 19,
          assists: 10,
          steals: 3,
          blocks: 1,
          slam_dunks: 15
        },
        "Mason Plumlee" => {
          number: 1,
          shoe: 19,
          points: 26,
          rebounds: 12,
          assists: 6,
          steals: 3,
          blocks: 8,
          slam_dunks: 5
        },
        "Jason Terry" => {
          number: 31,
          shoe: 15,
          points: 19,
          rebounds: 2,
          assists: 2,
          steals: 4,
          blocks: 11,
          slam_dunks: 1
        }
      }
    },
    away: {
      team_name: "Charlotte Hornets",
      colors: ["Turquoise", "Purple"],
      players: {
        "Jeff Adrien" => {
          number: 4,
          shoe: 18,
          points: 10,
          rebounds: 1,
          assists: 1,
          steals: 2,
          blocks: 7,
          slam_dunks: 2
        },
        "Bismak Biyombo" => {
          number: 0,
          shoe: 16,
          points: 12,
          rebounds: 4,
          assists: 7,
          steals: 7,
          blocks: 15,
          slam_dunks: 10
        },
        "DeSagna Diop" => {
          number: 2,
          shoe: 14,
          points: 24,
          rebounds: 12,
          assists: 12,
          steals: 4,
          blocks: 5,
          slam_dunks: 5
        },
        "Ben Gordon" => {
          number: 8,
          shoe: 15,
          points: 33,
          rebounds: 3,
          assists: 2,
          steals: 1,
          blocks: 1,
          slam_dunks: 0
        },
        "Brendan Haywood" => {
          number: 33,
          shoe: 15,
          points: 6,
          rebounds: 12,
          assists: 12,
          steals: 22,
          blocks: 5,
          slam_dunks: 12
        }
      }
    }
  }
end


# def num_points_scored(player_name)
#   game_hash.each do |location, team|
#     team[:players].each do |name, stats|
#       if name == player_name
#         return stats[:points]
#       end
#     end
#   end
# end

def all_players
  home_players = game_hash[:home][:players]
  away_players = game_hash[:away][:players]
  home_players.merge(away_players)
end

def num_points_scored(player_name)
  # find the player whose name matches the argument 'player_name'
  player = all_players[player_name]
  # return that player's points
  player[:points]
end

def shoe_size(player_name)
  all_players[player_name][:shoe]
end

def team_colors(team_name)
  if game_hash[:home][:team_name] == team_name
    game_hash[:home][:colors]
  else
    game_hash[:away][:colors]
  end
end

# def team_colors(team_name)
#   # find the team in the game_hash with the requested team_name
#   team = game_hash.find { |location, data| data[:team_name] == team_name }
#   # return that team's colors
#   team[1][:colors]
# end

score = num_points_scored("Brendan Haywood")
# binding.pry


# # EXERCISE:
# # Define a method called get_names that takes an array of instructors
# # and returns just their names.
# instructors = [
#   {name: 'Alex', hometown: 'upstate ny', mood: 'excited'},
#   {name: 'rachel', hometown: 'maine'},
#   {name: 'maxwell', hometwon: 'brookyln'}
# ]
#
# def get_names(instructors)
#
# end




# def get_players
#
# end



# # EXERCISE
# # What do the following return?
#
# arr = (1..100).to_a
#
# arr.map do |num|
#   num.even?
# end
#
# arr.select do |num|
#   7
# end
