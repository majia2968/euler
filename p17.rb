$h = {0=>"", 1 => "one", 2 => "two", 3=>"three", 4=>"four", 5=>"five", 6=>"six", 7=>"seven", 8=>"eight", 9=>"nine", 10=>"ten",
11=>"eleven", 12=>"twelve", 13=>"thirteen", 14=>"fourteen", 15=>"fifteen", 16=>"sixteen", 17=>"seventeen", 18=>"eighteen", 19=>"nineteen",
20=>"twenty", 30=>"thirty", 40=>"forty", 50=>"fifty", 60=>"sixty", 70=>"seventy", 80=>"eighty", 90=>"ninety",
100=>"hundred", 1000=>"onethousand"}
$tmp = Hash.new
s = 0
(1..1000).each do |i|
 if i <= 20
   $tmp[i] = $h[i].size
   s += $tmp[i]
 elsif i < 100
   $tmp[i] = $h[(i/10)*10].size + $h[i%10].size
   s += $tmp[i]
 elsif i < 1000
   if i%100 == 0
     $tmp[i] = $h[i/100].size + $h[100].size
     s += $tmp[i]
   else
     if $tmp[i%100]
      s += $tmp[(i/100)*100] + $tmp[i%100] + 3
     end
   end
 else
   s += $h[1000].size
 end
end
p s