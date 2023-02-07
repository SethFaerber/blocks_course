# Defining a default parameter

def print_mood(feelings)
  feelings.upcase
end

def express_mood(mood = "fine")
  puts "I feel #{print_mood(mood)}."
end

express_mood("happy")
express_mood
express_mood(nil)


def never_opted_in? User.current_user
  user = User.current_user
  !opted_in_ever?(user)
end