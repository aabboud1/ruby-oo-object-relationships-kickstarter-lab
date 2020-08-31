require 'pry'
class Backer

    attr_reader :name
    def initialize(name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        project = ProjectBacker.all.find_all do |row|
            row.backer == self
        end

        name = project.collect do |row|
            row.project
        end
        # binding.pry
    end
end