class Backer
    attr_reader :backed_projects, :name #backer adds projectObj



    def initialize(name)
      @backed_projects = []
      @name = name
    end

    def back_project(projectObj)
      if (!@backed_projects.include?(projectObj))
          puts("Putting project #{projectObj.title} into #{@name}\'s @backed_projects array")
          @backed_projects << projectObj
          projectObj.add_backer(self)
        else
          puts("#{projectObj.title} already exists in backed_projects array: \n#{@backed_projects}")
      end
    end


end
