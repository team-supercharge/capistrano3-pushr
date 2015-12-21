namespace :load do
end

namespace :pushr do
  desc 'Pushr version.'
  task :version do
    on roles(fetch(:pushr_roles, :all)) do
      within fetch(:release_path) do
        execute 'pushr', '--version'
      end
    end
  end
end
