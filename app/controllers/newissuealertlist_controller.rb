class NewissuealertlistController < ApplicationController
  unloadable
  before_filter :find_project, :authorize, :only => [:index]

  def index
  	render('projects/_newissuealertlist')
  end

  private

  def find_project
    begin
      @project = Project.find(params[:project_id])
    rescue ActiveRecord::RecordNotFound
      render_404
      @project = nil
    rescue => e
      flash.now[:error] = e
      @project = nil
    end
  end

end
