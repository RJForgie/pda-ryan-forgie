class NorseGods

  attr_accessor(:name)

  def initialize
    @name = ["Odin", "Freyja", "Loki"]
  end

  def add_god(god)
    @name.push(god)
  end
end


norse_gods = NorseGods.new

puts norse_gods.name
norse_gods.add_god("Dagr")
puts norse_gods.name



class PrimeMinisters

  attr_accessor(:prime_ministers)

  def initialize
    @prime_ministers = [
      {
        :name => "Neville Chamberlain",
        :party => "Conservative",
        :constituency => "Birmingham Edgebaston",
        :year_of_death => 1940
      },
       {
        :name => "Winston Churchill",
        :party => "Conservative",
        :constituency => "Epping",
        :year_of_death => 1965
      },
      {
        :name => "Clement Atlee",
        :party => "Labour",
        :constituency => "Limehouse",
        :year_of_death => 1967
      }
    ]
  end

  def list_all_consituencies
    @prime_ministers.each {|pm| puts pm[:constituency]}
  end
end

prime_ministers = PrimeMinisters.new
prime_ministers.list_all_consituencies





# # 5. Return the smallest of Erik's favorite numbers
# smallest = users["Erik"][:favourite_numbers]
# puts smallest.min()
#
# # 6. Add the number `7` to Erik's favorite numbers
# users["Erik"][:favourite_numbers].push(7)
# puts users["Erik"][:favourite_numbers]
#
# # 7. Change Erik's hometown to Edinburgh
# users["Erik"][:home_town] = "Edinburgh"
# puts users["Erik"][:home_town]
#
# # 8. Add a pet dog to Erik called "Fluffy"
# users["Erik"][:pets]["Fluffy"] = :dog
# puts users["Erik"][:pets]
#
# # 9. Add yourself to the users hash
# ryan = {
#   "Ryan" => {
#     twitter: "ryanforgie",
#     favourite_numbers: [1, 2, 3, 4],
#     home_town: => "Aberdeen",
#     pets: {
#       "sunny" => :canary
# },
# }
# }
#
# puts users.merge(ryan)
