#!/usr/bin/env rake
# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require File.expand_path('../config/application', __FILE__)

SampleApp::Application.load_tasks

# == BEGIN Annotate (aka AnnotateModels) Configurations ==
# https://github.com/ctran/annotate_models

# Customize the behavior of annotate when it is running as a Rake task
ENV['position_in_class']   = 'before'
ENV['position_in_fixture'] = 'before'
ENV['show_indexes']        = 'false'
ENV['include_version']     = 'false'
ENV['exclude_tests']       = 'false'
ENV['exclude_fixtures']    = 'false'
ENV['skip_on_db_migrate']  = 'false'

# Auto-invoke on rake:db:migrate
Dir["#{Gem.searcher.find('annotate').full_gem_path}/**/tasks/**/*.rake"].each {|ext| load ext}

# == END Annotate (aka AnnotateModels) Configurations ==
