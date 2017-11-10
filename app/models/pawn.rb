class Pawn < Piece

  def valid_move?(new_x_coord, new_y_coord)
    x_distance = x_distance(new_x_coord)
    y_distance = y_distance(new_y_coord)

# ----- Opening move ----- 
    if y_coord == 2 && white?
      x_distance == 0 && (new_y_coord == 3 || new_y_coord == 4)
    elsif y_coord == 7 && black?
      x_distance == 0 && (new_y_coord == 6 || new_y_coord == 5)  
  
# ----- Otherwise -------
    else 
      if white?
        (x_distance == 0) && (new_y_coord == (y_coord + 1))
      elsif black? 
        (x_distance == 0) && (new_y_coord == (y_coord - 1))
      end  
    end
  end
end



