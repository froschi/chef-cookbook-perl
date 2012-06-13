include_recipe "perl-base"
include_recipe "perl-modules"
include_recipe "libbz2"
include_recipe "libdb"
include_recipe "libgdbm"

packages = Array.new

case node[:lsb][:codename]
when "lucid", "precise"
  packages |= %w/
    perl
  /
end

packages.each do |pkg|
  package pkg do
    action [:install, :upgrade]
  end
end
