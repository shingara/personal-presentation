require 'duck'
require 'test/unit'

class DuckTest < Test::Unit::TestCase

  # Créer une classe Duck. A l'initialisation de la
  # classe on donne la couleur de son pelage.
  # Par d\'efaut les canards sont noir.
  def test_initialize
    duck = Duck.new
    assert_equal 'M', duck.sexe
    duck = Duck.new('F')
    assert_equal 'F', duck.sexe
  end

  # Un canard peux cancaner (quak)
  def test_quack
    duck = Duck.new
    assert_equal 'COIN', duck.quak
  end

  # Si on ferme le bec du canard,
  # celui-ci ne peux plus cancaner
  def test_mute
    duck = Duck.new
    duck.mute
    assert_equal '', duck.quak
  end

  # Savoir si le canard est mute ou pas
  def test_mute?
    duck = Duck.new
    assert !duck.mute?
    duck.mute
    assert duck.mute?
  end

  # Ajouter une m\'ethode pondre (lay) qui cr\'eer
  # un caneton ( Ducking ).
  # Un caneton est forcement un h\'eritage de Duck
  def test_lay
    duck = Duck.new('F')
    assert duck.lay.kind_of?(Ducking)
    assert duck.lay.class.ancestors.include?(Duck)
  end

  # Un canard masculin ne peux pas pondre. Seul les canards
  # Feminin le peuvent
  def test_lay_male
    duck = Duck.new
    assert_equal nil, duck.lay
  end

  # Un canard peux allez ou sortir de la marre.
  def test_go_pond
    duck = Duck.new
    duck.go_pond
    assert duck.in_pond?
  end

  # Un canard peux sortir de la marre.
  def test_go_pond
    duck = Duck.new
    duck.go_pond
    assert duck.in_pond?
    duck.out_pond
    assert !duck.in_pond?
  end

  # Un canard n'est pas dans la marre à l'initialisation
  def test_in_pond
    duck = Duck.new
    assert !duck.in_pond?
  end

  # On doit savoir combien il y a de canard dans
  # la marre à tout instant. Pour cela on
  # appele la m\'ethode de classe Class#nb_duck_in_pond
  def test_nb_duck_in_pond
    nb_duck = Duck.nb_duck_in_pond
    duck = Duck.new
    assert_equal nb_duck, Duck.nb_duck_in_pond
    duck_1 = Duck.new
    assert_equal nb_duck, Duck.nb_duck_in_pond
    duck_1.go_pond
    assert_equal (nb_duck + 1), Duck.nb_duck_in_pond
    duck.go_pond
    assert_equal (nb_duck + 2), Duck.nb_duck_in_pond
    duck.out_pond
    assert_equal (nb_duck + 1), Duck.nb_duck_in_pond
  end

end

class DuckingTest < Test::Unit::TestCase

  # Un caneton (Ducking) doit cancaner en minuscule
  def test_lay
    duck = Ducking.new
    assert_equal 'coin', duck.quak
  end
end
