require 'test_helper'

class JugadorsControllerTest < ActionController::TestCase
  setup do
    @jugador = jugadors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:jugadors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create jugador" do
    assert_difference('Jugador.count') do
      post :create, jugador: { casilla: @jugador.casilla, nombre: @jugador.nombre }
    end

    assert_redirected_to jugador_path(assigns(:jugador))
  end

  test "should show jugador" do
    get :show, id: @jugador
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @jugador
    assert_response :success
  end

  test "should update jugador" do
    patch :update, id: @jugador, jugador: { casilla: @jugador.casilla, nombre: @jugador.nombre }
    assert_redirected_to jugador_path(assigns(:jugador))
  end

  test "should destroy jugador" do
    assert_difference('Jugador.count', -1) do
      delete :destroy, id: @jugador
    end

    assert_redirected_to jugadors_path
  end
end
