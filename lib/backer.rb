class Backer
  attr_reader :name
  attr_accessor :backed_projects

  def initialize(name)
    @name = name
    @backed_projects = []
  end

  def back_project(project)
    # object.is_a?(ClassName)
    # object.respond_to?(:to_s)
    return unless project.respond_to?(:add_backer)
    return if @backed_projects.include?(project)
    @backed_projects << project
    project.add_backer(self)
  end

end