require 'heroku/command/run'

class Heroku::Command::Django < Heroku::Command::Run
  # django [COMMAND]
  #
  # Alias for run python manage.py
  def index
    run_attached((%w(python manage.py) + args).join(' '))
  end
end
