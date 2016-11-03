class Manager < Employee
  attr_accessor :employees

  def initialize(input_options)
    super(input_options)
    @employees = input_options[:employees]
  end

  def send_report
    puts "Sending email..."
    # use email sending library...
    puts "Email sent!"
  end

  def give_all_raises
    @employees.each do |employee|
      employee.give_annual_raise
    end
  end

  def fire_all_employees
    @employees.each do |employee|
      employee.fire
      puts employee.print_info
    end
  end

  def give_annual_raise
    super
    @salary = 1.1 * @salary
  end
end