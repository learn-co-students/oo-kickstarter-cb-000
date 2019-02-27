class Project
    attr_accessor :backers
    attr_reader :title
     #array of project's Backer objects
                    #backers array is added by backer as
                    #backer backs another project
    def initialize(title)
        @backers = []
        @title = title
    end

    def add_backer(backerObj)
      #better check that backerObj doesn't already
      #exist in @backers
      if (!@backers.include?(backerObj))
          puts("Putting #{backerObj.name} object into @backers array")
          @backers << backerObj
          backerObj.back_project(self)
        else
          puts("Backer object already exists in @backers array:  \n#{@backers}")
        end


    end
end
