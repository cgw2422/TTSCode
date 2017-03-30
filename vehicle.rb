class Atm
    attr_accessor :balance ,:info,:selection, :greeting, :pin
  def initialize(balance=1.00,
                info = "Press any number to Continue! or enter to end!",
                selection = "What would you like to do today? Withdrawal enter 1, For deposit enter 2, for balance enter 3",
                greeting = "Welcome to Banking and CO. Please insert card!")
        @balance = balance
        @info = info
        @selection = selection
        @greeting = greeting
        
  end
    


  def greeting
    puts "#{@greeting}"
    puts "What is your pin?"
    number = gets.chomp.length
    while (number < 4) || (number> 4)
      puts "Sorry that pin is incorrect! What is your pin?"
      number = gets.chomp.length
    end
  end
    
  
    

    
  def what_choices
    puts "#{@info}"
    choice = gets.chomp

    while choice != ""
      puts "#{@selection}"
      choice = gets.chomp.to_i
        if (choice == 1)
          puts "How much do you want to withdraw?"
          money = gets.chomp.to_f
            if (@balance < money)
              puts "Sorry not enough funds"
            else
              if (money >= 500.00)
                puts "You have reached the limit!"
              else
                total = @balance - money
                puts "Please take your money! Your new balance is #{total} "
              end
            end
          puts "#{@info}"
          choice = gets.chomp

        elsif (choice == 2)
          puts "How much do you want to deposit?"
          money = gets.chomp.to_f
          total = @balance + money

          puts "Thank you, #{money} as been accepted and your new balance is $#{total}"
          puts "#{@info}"
          choice = gets.chomp
        elsif (choice == 3)
          puts "Hello, you have $#{@balance}.#{@info}"
          choice =gets.chomp

        else 
          puts "Thanks for banking with us!"
        end
    end
    puts "Thanks for banking with us!"
  end

end


n = Atm.new
n.greeting
n.what_choices
 a = what_choices(total)




