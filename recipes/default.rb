packages = Array.new

case node[:lsb][:codename]
when "lucid"
  packages |= %w/
    perl
  /
when "precise"
  packages |= %w/
    perl
  /
end

packages.each do |pkg|
  package pkg do
    action [:install, :upgrade]
  end
end
