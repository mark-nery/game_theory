# My Monte Carlo solution for determining optimal grade picking stragegy presented
# in the open Yale game theory course in lecture 1 problem one for a
# more detailed explanation visit http://oyc.yale.edu/economics/econ-159/lecture-1#ch3

grade_select = ['a','b']

#grading matrix 
matrix = { "aa" => [2,2] ,"ab" => [4,1] , "ba" => [1,4] , "bb" => [3,3]}

a_score = 0
b_score = 0
trials =  100000

(1..trials).each do 
  random_grade = grade_select[rand(2)]

  #total score for picking "a" against a random opponent for n trials
  a_score += matrix["a#{random_grade}"][0]
    #total score for picking "b" against a random opponent for n trials
  b_score += matrix["b#{random_grade}"][0]
end

puts "average score for picking a with #{trials} trials : #{a_score/trials}"
puts "average score for picking b with #{trials} trials : #{b_score/trials}"
