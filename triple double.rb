#Triple Double

# Have the function TripleDouble(num1,num2) take both parameters being passed, and return 1 if there is a straight triple of a number at any place in num1 and also a straight double of the same number in num2.

# For example: if num1 equals 451999277 and num2 equals 41177722899, then return 1 because in the first parameter you have the straight triple 999 and you have a straight double, 99, of the same number in the second parameter. If this isn't the case, return 0.


def tripleDouble(triple,double)
  t = Array.new(triple.to_s.split(''))
  puts t
  d = Array.new(double.to_s.split(''))
  puts d
  if t.length < 3 && d.length < 2
    if t[i] == t[i+1] && t[i+1] == t[i+2] 
      if d.[i] 
        return 1
      end
    end
    return 0
  end
end

tripleDouble(451999277,41177722899)