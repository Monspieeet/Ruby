require 'yaml'
require_relative 'Student_list_base'

class Student_list_YAML < Student_list_base

  public_class_method :new

  def read_file(file_path)
    raise ArgumentError, 'Файл не найден' unless File.exist?(file_path)
	@@ -19,41 +17,4 @@ def write_to_file(file_path)
    list_hash = @students.map(&:to_h)
    File.write(file_path, list_hash.map{ |hash| hash.transform_keys(&:to_s)}.to_yaml)
  end
