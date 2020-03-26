require 'pry'
def turtles
    [
      {name: "Donatello", weapon: "bo-staff", traits: ["serious", "leader"]},
      {name: "Michaelangelo", weapon: "nunchuks", traits: "party dude"},
      {name: "Raphael", weapon: "sais", traits: ["cool", "rude"]},
      {name: "Leonardo", weapon: "katanas", traits: ["loves being a turtle"]}
    ]
end

def turtle_traits(turtles)
  array_ans =[]
  turtles.map do |turtle|
    turtle.each do |trait, value|
      if trait == :traits
        if value.kind_of?(Array)
          array_ans << value
        else
          array = []
          array << value
          array_ans << array
        end
      end
    end
  end
  array_ans
end
