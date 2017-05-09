class BattlePokemon

  attr_accessor :current_attker, :users_chosen_pkmn
  attr_reader :opponent_pokemon, :user, :battle_ongoing

  def initialize(user, opponent_pokemon)
    @battl = true
    @user = user
    @users_chosen_pkmn = users.first_pokemon ## questionable method
    @opponent_pokemon = opponent_pokemon
    @current_attker = (users_chosen_pkmn.speed >= opponent_pokemon.speed) ? users_chosen_pkmn : opponent_pokemon #question on the speed
  end

  def play_turn
    user_turn? ? user_turn : opponent_turn
    if battle_over?
      @battle_ongoing = false
    else
      choose_next_attker
    end
  end

  def user_turn?

  end

  def user_turn
  end

  def opponent_turn
  end


end
