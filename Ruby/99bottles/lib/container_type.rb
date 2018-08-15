class ContainerType

    attr_reader :containerName, :containerNamePl, :count, :capacity

    def initialize(containerName,containerNamePl,count)

        @containerName = containerName
        @count = count
        @containerNamePl = containerNamePl

    end

end