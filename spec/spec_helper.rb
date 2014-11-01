require 'rspec'
require 'albacore/albacore_module'

RSpec.configure do |config|
  config.raise_errors_for_deprecations! if ENV['RAISE_DEPRECATED']
  config.before(:each) do
    @logout = StringIO.new
    @logout = STDOUT if ENV['TEST_DEBUG']
    @output = StringIO.new
    ::Albacore.set_application(::Albacore::Application.new(@logout, @output))
    ::Albacore.log_level = Logger::DEBUG
    @logger = ::Albacore.application.logger
    ENV['TEST'] = 'true'
  end
end

shared_context 'path testing' do
  def path p
    ::Albacore::Paths.normalise_slashes p
  end
end 
