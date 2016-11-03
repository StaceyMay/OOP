require './email_reporter.rb'
require './employee_.rb'
require './manager_.rb'
require './intern.rb'


employee1 = Employee.new({first_name: "Majora", last_name: "Carter", salary: 80000, active: true})
employee2 = Employee.new(first_name: "Danilo", last_name: "Campos", salary: 70000, active: true)
employee1.print_info
employee2.print_info

manager = Manager.new(first_name: "Saron", last_name: "Yitbarek", salary: 100000, active: true, employees: [employee1, employee2])

intern = Intern.new(first_name: "James", last_name: "Bond", salary: 0, active: true)

manager.print_info
manager.send_report
manager.give_all_raises
manager.fire_all_employees
manager.give_annual_raise
manager.print_info