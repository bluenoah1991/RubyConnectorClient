# -*- encoding: utf-8 -*-
#
=begin
#Microsoft Bot Connector API - v3.0

#﻿The Bot Connector REST API allows your bot to send and receive messages to channels configured in the  [Bot Framework Developer Portal](https://dev.botframework.com). The Connector service uses industry-standard REST  and JSON over HTTPS.    Client libraries for this REST API are available. See below for a list.    Many bots will use both the Bot Connector REST API and the associated [Bot State REST API](/en-us/restapi/state). The  Bot State REST API allows a bot to store and retrieve state associated with users and conversations.    Authentication for both the Bot Connector and Bot State REST APIs is accomplished with JWT Bearer tokens, and is  described in detail in the [Connector Authentication](/en-us/restapi/authentication) document.    # Client Libraries for the Bot Connector REST API    * [Bot Builder for C#](/en-us/csharp/builder/sdkreference/)  * [Bot Builder for Node.js](/en-us/node/builder/overview/)  * Generate your own from the [Connector API Swagger file](https://raw.githubusercontent.com/Microsoft/BotBuilder/master/CSharp/Library/Microsoft.Bot.Connector/Swagger/ConnectorAPI.json)    © 2016 Microsoft

OpenAPI spec version: v3
Contact: botframework@microsoft.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

=end

$:.push File.expand_path("../lib", __FILE__)
require "swagger_client/version"

Gem::Specification.new do |s|
  s.name        = "bot_connector_api"
  s.version     = SwaggerClient::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Swagger-Codegen"]
  s.email       = ["botframework@microsoft.com"]
  s.homepage    = "https://github.com/swagger-api/swagger-codegen"
  s.summary     = "Microsoft Bot Connector API - v3.0 Ruby Gem"
  s.description = "﻿The Bot Connector REST API allows your bot to send and receive messages to channels configured in the  [Bot Framework Developer Portal](https://dev.botframework.com). The Connector service uses industry-standard REST  and JSON over HTTPS.    Client libraries for this REST API are available. See below for a list.    Many bots will use both the Bot Connector REST API and the associated [Bot State REST API](/en-us/restapi/state). The  Bot State REST API allows a bot to store and retrieve state associated with users and conversations.    Authentication for both the Bot Connector and Bot State REST APIs is accomplished with JWT Bearer tokens, and is  described in detail in the [Connector Authentication](/en-us/restapi/authentication) document.    # Client Libraries for the Bot Connector REST API    * [Bot Builder for C#](/en-us/csharp/builder/sdkreference/)  * [Bot Builder for Node.js](/en-us/node/builder/overview/)  * Generate your own from the [Connector API Swagger file](https://raw.githubusercontent.com/Microsoft/BotBuilder/master/CSharp/Library/Microsoft.Bot.Connector/Swagger/ConnectorAPI.json)    © 2016 Microsoft"
  s.license     = "The MIT License (MIT)"

  s.add_runtime_dependency 'typhoeus', '~> 1.0', '>= 1.0.1'
  s.add_runtime_dependency 'json', '~> 1.8', '>= 1.8.3'

  s.add_development_dependency 'rspec', '~> 3.4', '>= 3.4.0'
  s.add_development_dependency 'vcr', '~> 3.0', '>= 3.0.1'
  s.add_development_dependency 'webmock', '~> 1.24', '>= 1.24.3'
  s.add_development_dependency 'autotest', '~> 4.4', '>= 4.4.6'
  s.add_development_dependency 'autotest-rails-pure', '~> 4.1', '>= 4.1.2'
  s.add_development_dependency 'autotest-growl', '~> 0.2', '>= 0.2.16'
  s.add_development_dependency 'autotest-fsevent', '~> 0.2', '>= 0.2.11'

  s.files         = `find *`.split("\n").uniq.sort.select{|f| !f.empty? }
  s.test_files    = `find spec/*`.split("\n")
  s.executables   = []
  s.require_paths = ["lib"]
end
