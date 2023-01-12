katz_deli = ["Avi", "Logan", "Ada"];

def line(katz_deli) 
    if katz_deli.size > 1
        line_s = katz_deli.map.with_index(1) { |customer, number|  "#{number}. #{customer}"}
        puts "The line is currently: " + line_s.join(" ")
    elsif katz_deli.size == 0
        puts "The line is currently empty."
    end
end 

line(katz_deli)

def take_a_number(katz_deli, customer)
    katz_deli << customer
    puts "Welcome, #{customer}. You are number #{katz_deli.size} in line."
end

take_a_number(katz_deli, "Tomer")
take_a_number(katz_deli, "Courtney")
take_a_number(katz_deli, "Greg")

def now_serving(katz_deli)
    if katz_deli.size == 0 
        puts "There is nobody waiting to be served!"
    else 
        puts "Currently serving #{katz_deli[0]}."
        katz_deli.shift
    end
end
now_serving(katz_deli)
now_serving(katz_deli)
