# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in rakefile.rb, and run the gemspec command
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{holidays}
  s.version = "1.0.13"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Alex Dunae", "Rowan Crawford"]
  s.date = %q{2011-05-13}
  s.description = %q{A collection of Ruby methods to deal with statutory and other holidays.  You deserve a holiday!}
  s.email = %q{code@dunae.ca}
  s.extra_rdoc_files = [
    "LICENSE",
     "README.rdoc"
  ]
  s.files = [
    ".gitignore",
     "CHANGELOG",
     "LICENSE",
     "README.rdoc",
     "REFERENCES",
     "data/SYNTAX.rdoc",
     "data/au.yaml",
     "data/br.yaml",
     "data/build_defs.rb",
     "data/ca.yaml",
     "data/cz.yaml",
     "data/de.yaml",
     "data/dk.yaml",
     "data/el.yaml",
     "data/es.yaml",
     "data/fi.yaml",
     "data/fr.yaml",
     "data/gb.yaml",
     "data/ie.yaml",
     "data/index.yaml",
     "data/is.yaml",
     "data/it.yaml",
     "data/jp.yaml",
     "data/mx.yaml",
     "data/nl.yaml",
     "data/no.yaml",
     "data/north_america_informal.yaml",
     "data/nyse.yaml",
     "data/nz.yaml",
     "data/pt.yaml",
     "data/se.yaml",
     "data/united_nations.yaml",
     "data/ups.yaml",
     "data/us.yaml",
     "data/za.yaml",
     "holidays.gemspec",
     "lib/holidays.rb",
     "lib/holidays/MANIFEST",
     "lib/holidays/au.rb",
     "lib/holidays/br.rb",
     "lib/holidays/ca.rb",
     "lib/holidays/cz.rb",
     "lib/holidays/de.rb",
     "lib/holidays/dk.rb",
     "lib/holidays/el.rb",
     "lib/holidays/es.rb",
     "lib/holidays/europe.rb",
     "lib/holidays/fi.rb",
     "lib/holidays/fr.rb",
     "lib/holidays/gb.rb",
     "lib/holidays/ie.rb",
     "lib/holidays/is.rb",
     "lib/holidays/it.rb",
     "lib/holidays/jp.rb",
     "lib/holidays/mx.rb",
     "lib/holidays/nl.rb",
     "lib/holidays/no.rb",
     "lib/holidays/north_america.rb",
     "lib/holidays/nyse.rb",
     "lib/holidays/nz.rb",
     "lib/holidays/pt.rb",
     "lib/holidays/scandinavia.rb",
     "lib/holidays/se.rb",
     "lib/holidays/united_nations.rb",
     "lib/holidays/ups.rb",
     "lib/holidays/us.rb",
     "lib/holidays/za.rb",
     "rakefile.rb",
     "test/defs/test_defs_au.rb",
     "test/defs/test_defs_br.rb",
     "test/defs/test_defs_ca.rb",
     "test/defs/test_defs_cz.rb",
     "test/defs/test_defs_de.rb",
     "test/defs/test_defs_dk.rb",
     "test/defs/test_defs_el.rb",
     "test/defs/test_defs_es.rb",
     "test/defs/test_defs_europe.rb",
     "test/defs/test_defs_fi.rb",
     "test/defs/test_defs_fr.rb",
     "test/defs/test_defs_gb.rb",
     "test/defs/test_defs_ie.rb",
     "test/defs/test_defs_is.rb",
     "test/defs/test_defs_it.rb",
     "test/defs/test_defs_jp.rb",
     "test/defs/test_defs_mx.rb",
     "test/defs/test_defs_nl.rb",
     "test/defs/test_defs_no.rb",
     "test/defs/test_defs_north_america.rb",
     "test/defs/test_defs_nyse.rb",
     "test/defs/test_defs_nz.rb",
     "test/defs/test_defs_pt.rb",
     "test/defs/test_defs_scandinavia.rb",
     "test/defs/test_defs_se.rb",
     "test/defs/test_defs_ups.rb",
     "test/defs/test_defs_us.rb",
     "test/defs/test_defs_za.rb",
     "test/test_date.rb",
     "test/test_helper.rb",
     "test/test_holidays.rb",
     "test/test_multiple_regions.rb"
  ]
  s.homepage = %q{https://github.com/alexdunae/holidays}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{A collection of Ruby methods to deal with statutory and other holidays.  You deserve a holiday!}
  s.test_files = [
    "test/defs/test_defs_au.rb",
     "test/defs/test_defs_br.rb",
     "test/defs/test_defs_ca.rb",
     "test/defs/test_defs_cz.rb",
     "test/defs/test_defs_de.rb",
     "test/defs/test_defs_dk.rb",
     "test/defs/test_defs_el.rb",
     "test/defs/test_defs_es.rb",
     "test/defs/test_defs_europe.rb",
     "test/defs/test_defs_fi.rb",
     "test/defs/test_defs_fr.rb",
     "test/defs/test_defs_gb.rb",
     "test/defs/test_defs_ie.rb",
     "test/defs/test_defs_is.rb",
     "test/defs/test_defs_it.rb",
     "test/defs/test_defs_jp.rb",
     "test/defs/test_defs_mx.rb",
     "test/defs/test_defs_nl.rb",
     "test/defs/test_defs_no.rb",
     "test/defs/test_defs_north_america.rb",
     "test/defs/test_defs_nyse.rb",
     "test/defs/test_defs_nz.rb",
     "test/defs/test_defs_pt.rb",
     "test/defs/test_defs_scandinavia.rb",
     "test/defs/test_defs_se.rb",
     "test/defs/test_defs_ups.rb",
     "test/defs/test_defs_us.rb",
     "test/defs/test_defs_za.rb",
     "test/test_date.rb",
     "test/test_helper.rb",
     "test/test_holidays.rb",
     "test/test_multiple_regions.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end

