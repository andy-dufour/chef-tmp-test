resource_name 'set_temp'

property :directory, String, name_property: true

default_action :set

load_current_value do
  current_value_does_not_exist! unless ENV['TEMP']
end


action :set do
  ruby_block 'Set TEMP environment variable' do
    block do
      ENV['TEMP'] = new_resource.directory
    end
    not_if { ENV['TEMP'] == new_resource.directory }
  end
end
