albacore_root = File.expand_path(File.dirname(__FILE__))
$: << albacore_root
$: << File.join(albacore_root, "albacore")
$: << File.join(albacore_root, "albacore", 'support')
$: << File.join(albacore_root, "albacore", 'config')

require "albacore/version"
require "albacore/albacoretask"
require "albacore/aspnetcompiler"
require "albacore/assemblyinfo"
require "albacore/csc"
require "albacore/docu"
require "albacore/exec"
require "albacore/fluentmigratorrunner"
require "albacore/ilmerge"
require "albacore/msbuild"
require "albacore/msdeploy"
require "albacore/mspectestrunner"
require "albacore/mstesttestrunner"
require "albacore/nant"
require "albacore/nchurn"
require "albacore/ncoverconsole"
require "albacore/ncoverreport"
require "albacore/ndepend"
require "albacore/nugetinstall"
require "albacore/nugetpack"
require "albacore/nugetpublish"
require "albacore/nugetpush"
require "albacore/nugetupdate"
require "albacore/nunittestrunner"
require "albacore/nuspec"
require "albacore/output"
require "albacore/plink"
require "albacore/specflowreport"
require "albacore/sqlcmd"
require "albacore/unzip"
require "albacore/xbuild"
require "albacore/xunittestrunner"
require "albacore/zipdirectory"
