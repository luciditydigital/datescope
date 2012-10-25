require "datescope/version"
require "datescope/intervals.rb"
require "datescope/extension.rb"

ActiveRecord::Base.send(:extend, DateScope::Extension)
ActiveRecord::Relation.send(:include, DateScope::Extension)
