class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @sequence_length = 1
    @game_over = false
    @seq = []

  end

  def play
    until self.game_over
      self.take_turn
    end
    self.game_over_message
    self.reset_game

  end

  def take_turn
    unless self.game_over
      self.show_sequence
      self.sequence_length += 1
      self.require_sequence
      self.round_success_message
      
    end

  end

  def show_sequence
    self.add_random_color
  end

  def require_sequence
    p self.seq
  end

  def add_random_color
    self.seq << COLORS.sample
  end

  def round_success_message
    p 'Success!'
  end

  def game_over_message
    p 'You lost!'
  end

  def reset_game
    self.sequence_length = 1
    @game_over = false
    self.seq = []
  end
end
