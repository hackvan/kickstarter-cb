class Project
  attr_reader :title
  attr_accessor :backers

  def initialize(title)
    @title = title
    @backers = []
  end

  def add_backer(backer)
    return unless backer.respond_to?(:back_project)
    return if @backers.include?(backer)
    @backers << backer
    backer.back_project(self)
  end

end