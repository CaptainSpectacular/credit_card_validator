def credit_check(number)
  split_number = number.digits

  split_number.map!.with_index do |num, index|
    unless index.even?
      num * 2
    else
      num
    end
  end

 
  split_number.map! do |num|
    if num >= 10
     num.digits
    else
      num
    end
  end


  split_number.map! do |num|
    if num.class == Array
      num.reduce(:+)
    else
      num
    end
  end

  split_number.reduce(:+) % 10 == 0
end

print credit_check(79927398713),      "\n"
print credit_check(342801633855673),  "\n"
print credit_check(5541808923795240), "\n"
print credit_check(4024007136512380), "\n"
print credit_check(6011797668867828), "\n"
print credit_check(5541801923795240), "\n"
print credit_check(4024007106512380), "\n"
print credit_check(6011797668868728), "\n"
print credit_check(342804633855673),  "\n"
print credit_check(342801633855673),  "\n"






