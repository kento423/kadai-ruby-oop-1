class Team
  
  attr_accessor :name, :win, :lose, :draw
  
  def initialize(name, win, lose, draw)
    self.name = name
    self.win = win
    self.lose = lose
    self.draw = draw
  end
  
  def calc_win_rate(win, lose)
    win.to_f / (win + lose)
  end
  
  def show_team_result
    puts "#{self.name} の2020年の成績は #{self.win}勝 #{self.lose}敗 #{self.draw}分、勝率は #{calc_win_rate(self.win, self.lose)}です。"
  end
  
end

teams = [
  {name: "Giants", win: 67, lose: 45, draw: 8},
  {name: "Tigers", win: 60, lose: 53, draw: 7},
  {name: "Dragons", win: 60, lose: 55, draw: 5},
  {name: "BayStars", win: 56, lose: 58, draw: 6},
  {name: "Carp", win: 52, lose: 56, draw: 12},
  {name: "Swallows", win: 41, lose: 69, draw: 10}
  ]
teams.each do |team|
    t = Team.new(team[:name], team[:win], team[:lose], team[:draw])
    t.show_team_result
end