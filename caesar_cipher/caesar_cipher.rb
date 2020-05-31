def caesar_cipher(str, offset)
  alpha_l = *('a'..'z')
  alpha_u = *('A'..'Z')

  offset = offset % 26 if offset >= 29

  str.chars.map do |char|
    if alpha_u.include?(char)
      if alpha_u.index(char) + offset > alpha_u.length
        alpha_u[alpha_u.index(char) + offset - alpha_u.length]
      else
        alpha_u[alpha_u.index(char) + offset]
      end
    elsif alpha_l.include?(char)
      if alpha_l.index(char) + offset > alpha_l.length
        alpha_l[alpha_l.index(char) + offset - alpha_l.length]
      else
        alpha_l[alpha_l.index(char) + offset]
      end
    else
      char
    end
  end.join
end

puts caesar_cipher("Htwjd Rfwyns", -5)