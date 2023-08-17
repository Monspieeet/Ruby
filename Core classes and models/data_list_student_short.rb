require_relative 'data_list'

class Data_list_student_short < Data_list

  def column_count
    @data[0].instance_variables.count
  end

  def select(number)
    @selected << data[:data][number]
  end

  def get_names
    ["number", "fullname", "git", "contact"]
  end

  def get_data(obj)
    [obj.git, obj.contact, obj.short_name]
  end
end
