# Daru makes a lot of noise about optional dependencies. We don't want
# them, never will.
begin
  original_stderr = $stderr
  $stderr = File.open(File::NULL, "w")
  require 'daru'
ensure
  $stderr = original_stderr
end
