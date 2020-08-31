require("./project.rb")
require("./backer.rb")
require("./project_backer.rb")
require 'pry'

project_a = Project.new("project A")
project_b = Project.new("project B")

jim = Backer.new("Jim")
backer_2 = Backer.new("Sophia")

project_a.add_backer(jim)

# binding.pry