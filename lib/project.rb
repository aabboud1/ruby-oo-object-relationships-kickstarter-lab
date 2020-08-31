require 'pry'
class Project

    attr_reader :title

    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        backer = ProjectBacker.all.find_all do |row|
            row.project == self
        end
        person = backer.collect do |row|
            row.backer
        end
        #  binding.pry   
    end

end
