# -*- encoding : utf-8 -*-
require "helpers/sidekiq_helper"
require "spec_helper"
require "helpers/active_record_helper"

$queue_engine = :sidekiq

eval File.read(File.join(File.dirname(__FILE__), '..', 'association_observers_spec.rb'))