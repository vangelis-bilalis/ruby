def caesar_cipher (str, shift)
  arr = str.split("")

  arr = arr.map do |el|
    if (el.ord >= 97 && el.ord <= 122)
      if (el.ord + shift <= 122)
        el = (el.ord + shift).chr
      else
        if (shift <= 26)
          el = (el.ord + shift - 26).chr
        else
          el = (el.ord + shift - 26 * (shift / 26)).chr
        end
      end
    elsif (el.ord >= 65 && el.ord <= 90)
      if (el.ord + shift <= 90)
        el = (el.ord + shift).chr
      else
        if (shift <= 26)
          el = (el.ord + shift - 26).chr
        else
          el = (el.ord + shift - 26 * (shift / 26)).chr
        end
      end
    end
  end
  arr.join(" ")
end

puts caesar_cipher("abc de fgh ijk.", 1)