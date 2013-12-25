require "albacore/albacoretask"
require "albacore/support/supportlinux"

class NuGetInstall
	include Albacore::Task
 	include Albacore::RunCommand
 	include SupportsLinuxEnvironment

  attr_reader   :no_cache,
                :prerelease,
                :exclude_version

 	attr_accessor	:package,
                :output_directory,
                :version

	attr_array    :sources

	def initialize()
		super()
		@command = "nuget"
	end

	def execute
    unless @package
      fail_with_message("nugetinstall requires #package")
      return
    end
    
		result = run_command("nugetinstall", build_parameters)
		fail_with_message("NuGet Install failed, see the build log for more details.") unless result
	end

  def no_cache
    @no_cache = true
  end

  def prerelease
    @prerelease = true
  end
  
  def exclude_version
    @exclude_version = true
  end

	def build_parameters
		p = []
		p << "install"
		p << @package
		p << "-Version #{@version}" if @version
		p << "-OutputDirectory #{@output_directory}" if @output_directory
		p << "-ExcludeVersion" if @exclude_version
		p << "-NoCache" if @no_cache
		p << "-Prerelease" if @prerelease
		p << "-Source \"#{@sources.join(";")}\"" if @sources
		p
	end
end