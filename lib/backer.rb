class Backer

    attr_reader :backed_projects, :name

    def initialize(name)
        @name = name
        @backed_projects = [] # init with empty array
    end

    def back_project(project) # project instance 
        @backed_projects << project
        project.add_backer(self) unless project.backers.include?(self) # dont add if backers already include itself.
    end


end