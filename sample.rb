while true
  puts "実施したい処理を選択してください"
  puts "1:評価ポイントとコメントを入力する"
  puts "2:今までの結果を確認する"
  puts "3:やめる"
  num = gets.to_i

  def incorrect_input
    puts "1から5で入力してください"
    point = gets.to_i
  end
  def correct_input
    puts "コメントを入力してください"
    comment = gets
    point = gets.to_i
    post = "ポイント：#{point} コメント：#{comment}"
    File.open("data.txt", "a") do |file|
      file.puts(post)
    end
  end
  def open_file
    File.open("data.txt", "r") do |file|
      file.each_line do |line|
        puts line
      end
    end
  end


  case num
  when 1
    puts "1から5で評価を入力してください"
    point = gets.to_i
    case point
    when 1..5
      correct_input
    else
      incorrect_input
    end
  
  when 2
    puts "これまでの結果"
    open_file
  
  when 3
    puts "終了します"
    break
  else
    puts "1から3で入力してください"
  end
end