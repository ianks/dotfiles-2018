# frozen_string_literal: true
# vi: ft=ruby

# === EDITOR ===
Pry.config.editor = 'nvim'

# == Pry-Nav - Using pry as a debugger ==
begin
  Pry.commands.alias_command 'c', 'continue'
rescue
  nil
end
begin
  Pry.commands.alias_command 's', 'step'
rescue
  nil
end
begin
  Pry.commands.alias_command 'n', 'next'
rescue
  nil
end

# === Listing config ===
# Better colors - by default the headings for methods are too
# similar to method name colors leading to a "soup"
# These colors are optimized for use with Solarized scheme
# for your terminal
Pry.config.ls.separator = "\n" # new lines between methods

# === CUSTOM COMMANDS ===
# from: https://gist.github.com/1297510
default_command_set = Pry::CommandSet.new do
  command "copy", "Copy argument to the clip-board" do |str|
    IO.popen('pbcopy', 'w') { |f| f << str.to_s }
  end

  command "clear" do
    system 'clear'
    output.puts "Rails Environment: " + ENV['RAILS_ENV'] if ENV['RAILS_ENV']
  end

  command "sql", "Send sql over AR." do |query|
    if ENV['RAILS_ENV'] || defined?(Rails)
      pp ActiveRecord::Base.connection.select_all(query)
    else
      pp "No rails env defined"
    end
  end

  command "caller_method" do |depth|
    depth = depth.to_i || 1
    if /^(.+?):(\d+)(?::in `(.*)')?/ =~ caller(depth + 1).first
      file   = Regexp.last_match[1]
      line   = Regexp.last_match[2].to_i
      method = Regexp.last_match[3]
      output.puts [file, line, method]
    end
  end
end

Pry.config.commands.import default_command_set

begin
  require 'pry-theme'
  Pry.config.theme = 'zenburn'
rescue LoadError
  puts '$ gem install pry-theme  <-- Highly recommended.'
end

begin
  require 'pry-byebug'
rescue LoadError
  puts '$ gem install pry-byebug  <-- Highly recommended.'
end

# === CONVENIENCE METHODS ===
# Stolen from https://gist.github.com/807492
# Use Array.toy or Hash.toy to get an array or hash to play with
class Array
  def self.toy(n = 10, &block)
    block_given? ? Array.new(n, &block) : Array.new(n) { |i| i + 1 }
  end
end

class Hash
  def self.toy(n = 10)
    Hash[Array.toy(n).zip(Array.toy(n) { |c| (96 + (c + 1)).chr })]
  end
end

def open_html(body)
  require 'tempfile'
  file = Tempfile.new(['html_preview', '.html'])
  file.write body
  system "xdg-open #{file.path}"
end

def pbcopy(something)
  something.tap do |s|
    IO.popen("xclip -selection clipboard -in", "w") { |pipe| pipe.write s }
  end
end

def pbpaste
  IO.popen("xclip -selection clipboard -out", "r", &:read)
end
