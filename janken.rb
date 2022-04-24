  def janken
  puts "最初はグー、じゃんけん..."
  puts "[0]:グー\n[1]チョキ\n[2]パー"
  #\n改行
  player_hand = gets.to_i
  program_hand = rand(3)
  #数値で
  if player_hand > 2
    puts "無効"
	  return true
  end
    jankens=["グー","チョキ","パー"]
    #インデックス
  puts "あなたの手:#{jankens[player_hand]}, 相手の手:#{jankens[program_hand]}"
  if player_hand == program_hand
	  puts "あいこ"
	  return true
  elsif (player_hand == 0 && program_hand ==1) ||(player_hand == 1 && program_hand ==2) || (player_hand == 2 && program_hand ==0)
	  puts "あなたの勝ちです"
    return false
  else
	 puts "あなたの負けです"
	 return false
  end
  end
  
   next_game = true
  while next_game
   next_game = janken
  end