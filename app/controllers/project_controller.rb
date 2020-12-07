class ProjectController < ApplicationController

  def index
    # render json: :ok
    @projects = Project.all
    projects = @projects.map do |p|
      ProjectSerializer.new(p).as_json
    end
    render json: projects
  end

end
