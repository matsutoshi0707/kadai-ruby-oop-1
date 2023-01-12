class Team

  # インスタンスが持つ変数(値)
  attr_accessor :name, :win, :lose, :draw

  # インスタンスを初期化するための特別なメソッド
  def initialize(name, win, lose, draw)
    self.name = name
    self.win = win
    self.lose = lose
    self.draw = draw
  end

  # 勝率を計算するメソッド
  def calc_win_rate(win, lose)
    win.to_f / (win + lose).to_f
  end

  # チームの成績をターミナルに表示するメソッド
  def show_team_result()
    puts "#{self.name} の2020年の成績は #{self.win}勝 #{self.lose}敗 #{self.draw}分、勝率は #{self.calc_win_rate(self.win, self.lose)}です。"
  end
end

# 各チームのインスタンスを生成
team_Giants = Team.new("Giants", 67, 45, 8)
team_Tigers = Team.new("Tigers", 60, 53, 7)
team_Dragons = Team.new("Dragons", 60, 55, 5)
team_BayStars = Team.new("BayStars", 56, 58, 6)
team_Carp = Team.new("Carp", 52, 56, 12)
team_Swallows = Team.new("Swallows", 41, 69, 10)

# 各チームの成績を表示
team_Giants.show_team_result()
team_Tigers.show_team_result()
team_Dragons.show_team_result()
team_BayStars.show_team_result()
team_Carp.show_team_result()
team_Swallows.show_team_result()
