require "csv"  # CSVファイルを扱うためのライブラリを読み込んでいます
  
  #1を押した時のメソッド
  def memo1            
    puts "拡張子を除いたファイルを入力していください。"
    file_name = gets.chomp          #ファイル名入力
    puts "メモしたい内容を記入してください"
    puts "完了したらCtrl + Dをおします"
    memo = STDIN.read
    CSV.open("#{file_name}.csv","w") do |csv|
      csv << ["#{memo}"]
    end    
  end

  #2を押した時のメソッド
  def memo2
    puts "編集したいファイル名を入力してください"
    file_name = gets.chomp
    puts "編集する内容を記入してください"
    memo = STDIN.read
    CSV.open("#{file_name}","a") do |csv|
      csv << ["#{memo}"]
    end
  end  
  

  while true
    puts "1(新規でメモを作成) 2(既存のメモを編集する)"
    memo_type = gets.chomp # ユーザーの入力値を取得し、数字へ変換しています
    if memo_type == "1"
      memo1 #1のメソッド
    elsif memo_type == "2"
      memo2 #2のメソッド
    else
      puts "1か2入力してください"
    end
  end
 

 