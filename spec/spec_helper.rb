require 'serverspec'
require 'net/ssh'

include SpecInfra::Helper::Ssh
include SpecInfra::Helper::DetectOS

RSpec.configure do |c|
  options = {}
  host    = ""
  user    = ""

  config = `vagrant ssh-config #{ENV["ROLE"]}`
  config.each_line do |line|
    if match = /HostName (.*)/.match(line)
      host = match[1]
    elsif match = /User (.*)/.match(line)
      user = match[1]
    elsif match = /IdentityFile (.*)/.match(line)
      options[:keys] =  [match[1].gsub(/"/,'')]
    elsif match = /Port (.*)/.match(line)
      options[:port] = match[1]
    end
  end

  c.ssh = Net::SSH.start(host, user, options)
end
