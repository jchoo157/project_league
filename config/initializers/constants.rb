API_FILE = YAML::load_file(File.join(__dir__, 'api.yml'))
API_KEY = API_FILE['api_key']