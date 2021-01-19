# Write your code here.

def line(all_customers)
    if all_customers.length == 0
        puts "The line is currently empty."
    elsif all_customers.length > 0
        message= "The line is currently:"
         all_customers.each_with_index do |name,index|  
             message << " #{index + 1}. #{name}" 
        end #ends the do/end
            
        puts "#{message}"
       
    end
end


def take_a_number(all_customers, current_customer)
        all_customers << current_customer 
    if all_customers.length == 0
        puts "Welcome, #{current_customer}. You are number 1 in line."
    elsif all_customers.length > 0
       
        puts "Welcome, #{current_customer}. You are number #{all_customers.index(current_customer)+1} in line."
    end
end 

def now_serving(all_customers)
    if all_customers.length == 0
        puts "There is nobody waiting to be served!"
    elsif all_customers.length > 0
        puts "Currently serving #{all_customers.first}."
        all_customers.shift
    end
end
