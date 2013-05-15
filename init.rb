Redmine::Plugin.register :newissuealertlist do
  name 'New Issue Alert List Plugin'
  author 'Jason Butz'
  description 'Provides a list of who gets notified of new issues.'
  version '0.0.1'
  url 'https://github.com/jbutz/redmine_newissuealertlist'
  author_url 'http://www.jasonbutz.info'

  project_module :newissuealertlist do
    permission :newissuealertlist, :newissuealertlist => :index, :public => true
    #permission :view_newissuealertlist, :newissuealertlist => :index, :public => true
  end
  menu :project_menu , :newissuealertlist, { :controller => 'newissuealertlist', :action => 'index' }, :caption => :newissuealertlist_index ,:after => :settings ,:param => :project_id
end
