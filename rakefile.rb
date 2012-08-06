# -*- encoding: utf-8 -*-
require 'rake/clean'

RACC="racc"

SRCS = FileList["**/*.racc"]
GENS = SRCS.ext("rb");
task :default => "hello"

desc "build and test, default"
task "hello" => GENS do
	ruby "main.rb", "fact.scm"
end

desc "clean builds, then Hello world!"
task "reload" => ["clean", "hello"]

CLEAN.include(GENS)

rule '.rb' => '.racc' do |t|
  sh "#{RACC} #{t.source} -o #{t.name}"
end
