# Author: Pol Jhon Andajer
# Comment: Simple ruby script that will handle sample cart system.


puts `clear`
require 'bigdecimal'

def choose_menu?

print "Enter Customer Name: "
customer_name = gets.chomp

print "\n""\n"
print "Option 1: 	Unlimited 1GB - $24.90" "\n"
print "Option 2: 	Unlimited 2GB - $29.90" "\n"
print "Option 3: 	Unlimited 5GB - $44.90" "\n"
print "Option 4:	1GB Data-pack - $9.90" "\n""\n"


#def choose_menu?

# Declaring variables
option1_sess = 0
option2_sess = 0
option3_sess = 0
option4_sess = 0
ult_small = 24.90
ult_medium  = 29.90
ult_large = 44.90
ult_1gb = 9.90
promo_string = 'I<3AMAYSIM'


while true
print "Select Product from selection above: "
result = gets.to_i

	if (result >=1) && (result <=4)

		if (result ==1)
		   puts "Unlimited 1GB added to your cart."
		   option1_sess +=1
		elsif (result ==2)
		   puts "Unlimited 2GB added to your cart."
		   option2_sess +=1
		elsif (result ==3)
		   puts "Unlimited 5GB added to your cart."
		   option3_sess +=1
		else
		   puts "1GB Data-pack added to your cart."
		   option4_sess +=1
		end


	else
	   puts "Invalid input"
	end

	print "Would you like to select another one? [y/n]: "
  	   case gets.strip
       	   when 'Y', 'y'
	#loop
    	  when /\A[nN]o?\Z/


		# Get Total amount for purchased Unlimited 1GB 
        	  item_option1 = option1_sess / 3
		  qty_option1 = option1_sess - item_option1
		  qty_amount_option1 = (qty_option1 * ult_small)


		# Get total amount for purchased Unlimited 2GB
		  qty_amount_option2 = (option2_sess * ult_medium)


		# Get total amount for purchased Unlimited 5GB
		if (option3_sess >=4)
		  ult_large = 39.90
		  qty_amount_option3 = (option3_sess * ult_large)
		elsif
		  qty_amount_option3 = (option3_sess * ult_large)
		end


		# Get total amount for purchased 1GB Data-pack
		  qty_amount_option4 = (option4_sess * ult_1gb)

	print "Enter promo code: "
 	promo_code = gets.chomp

		if promo_string == promo_code
		   puts "Promo code accepted."
		   init_sum = (qty_amount_option1 + qty_amount_option2 + qty_amount_option3 + qty_amount_option4)
		   discount = init_sum * BigDecimal("0.10")
  	   	   sum = sprintf('%.2f', init_sum - discount)
		else
		   puts "Invalid promo code."
		   sum = sprintf('%.2f', qty_amount_option1 + qty_amount_option2 + qty_amount_option3 + qty_amount_option4)
		end
                   puts "Thank you " + customer_name + "for purchasing the following"
                   puts "Unlimited 1GB: " + option1_sess.to_s + " = $" + sprintf('%.2f', qty_amount_option1)
		   puts "Unlimited 2GB: " + option2_sess.to_s + " = $" + sprintf('%.2f', qty_amount_option2)
		   puts "Unlimited 5GB: " + option3_sess.to_s + " = $" + sprintf('%.2f', qty_amount_option3)
		   puts "1GB Data-pack: " + option4_sess.to_s + " = $" + sprintf('%.2f', qty_amount_option4)
		   puts "Total amount: $" + sum.to_s


    		break
    		end
  	end
end
choose_menu?

