
  class Employee
    attr_reader :first_name, :last_name
    attr_accessor :active, :last_name

    def initialize(input_options)
      @first_name = input_options[:first_name] || "Tommy"
      @last_name = input_options[:last_name] || "Bahama"
      @salary = input_options[:salary] || 0
      @active = input_options[:active] || false
    end

    def print_info
      puts "#{@first_name} #{@last_name} makes #{@salary} a year."
    end

    def give_annual_raise
      @salary = 1.05 * @salary
    end

    def full_name
      # "#{@first_name} #{@last_name}" 
      # if "#{@last_name}".end_with?('s')
      #   "#{@first_name} #{@last_name} ,Esquire."
      # end
      if "#{last_name}".end_with?('s')
        puts "#{first_name} #{last_name}, Esquire"
      else
        puts "#{first_name} #{last_name}"
      end
    end
  end

  # (1..100).each_with_index do |employee, counter|
  #   employee = Employee.new(first_name: "Employee", last_name: "#{counter + 1}")
  #   employee.full_name
  # end
  
  class Manager < Employee
    attr_reader :employees 

    def initialize(input_options)
      super
      @employees = input_options[:employees]
    end

    def send_reports
      return "Sending Reports"
    end

    def give_annual_raise
      @salary = 2 * @salary
    end

    def list_employees
      employees.each do |employee|
        puts employee.first_name
      end
    end
  end

  employee1 = Employee.new({})
  employee2 = Employee.new({})

  employee_array = []
  employee_array << employee1
  employee_array << employee2

  manager = Manager.new({})
  manager2 = Manager.new(first_name: "Janice", last_name: "Jun", salary: 1000, active: true, employees: employee_array)
  manager2.print_info
  puts "Employees:"
  manager2.list_employees
  manager2.give_annual_raise
  manager2.print_info


  # employees = []

  # 100.times do
  #   employees << Employee.new({first_name: [*('A'..'Z')].sample(8).join, last_name: [*('A'..'Z')].sample(8).join, salary: rand(1000), active: true})
  # end

  # employees.each do |employee|
  #   puts employee.print_info
  # end


  # employees.each_with_index do |employee, counter|
  #   employee.last_name = "Number #{counter + 1}"
  #   employee.full_name
  # end


  # mimi = Employee.new ({})
  # p mimi.full_name




