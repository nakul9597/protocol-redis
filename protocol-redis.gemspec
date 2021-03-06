
require_relative 'lib/protocol/redis/version'

Gem::Specification.new do |spec|
	spec.name = "protocol-redis"
	spec.version = Protocol::Redis::VERSION
	spec.authors = ["Samuel Williams", "Huba Nagy"]
	spec.email = ["samuel.williams@oriontransfer.co.nz", "12huba@gmail.com"]
	
	spec.summary = "A transport agnostic RESP protocol client/server."
	spec.homepage = "https://github.com/socketry/protocol-redis"
	
	spec.files = `git ls-files -z`.split("\x0").reject do |f|
		f.match(%r{^(test|spec|features)/})
	end
	
	spec.require_paths = ["lib"]
	
	spec.add_development_dependency "async-http"
	spec.add_development_dependency "trenni"
	spec.add_development_dependency "benchmark-ips"
	
	spec.add_development_dependency "covered"
	spec.add_development_dependency "bundler"
	spec.add_development_dependency "rspec", "~> 3.6"
	spec.add_development_dependency "rake"
end
