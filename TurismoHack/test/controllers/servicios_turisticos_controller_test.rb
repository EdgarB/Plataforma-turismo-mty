require 'test_helper'

class ServiciosTuristicosControllerTest < ActionController::TestCase
  setup do
    @servicios_turistico = servicios_turisticos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:servicios_turisticos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create servicios_turistico" do
    assert_difference('ServiciosTuristico.count') do
      post :create, servicios_turistico: { apertura: @servicios_turistico.apertura, clausura: @servicios_turistico.clausura, contacto: @servicios_turistico.contacto, descripcion: @servicios_turistico.descripcion, direccion: @servicios_turistico.direccion, domingo: @servicios_turistico.domingo, foto: @servicios_turistico.foto, jueves: @servicios_turistico.jueves, lunes: @servicios_turistico.lunes, martes: @servicios_turistico.martes, miercoles: @servicios_turistico.miercoles, nombre: @servicios_turistico.nombre, sabado: @servicios_turistico.sabado, viernes: @servicios_turistico.viernes }
    end

    assert_redirected_to servicios_turistico_path(assigns(:servicios_turistico))
  end

  test "should show servicios_turistico" do
    get :show, id: @servicios_turistico
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @servicios_turistico
    assert_response :success
  end

  test "should update servicios_turistico" do
    patch :update, id: @servicios_turistico, servicios_turistico: { apertura: @servicios_turistico.apertura, clausura: @servicios_turistico.clausura, contacto: @servicios_turistico.contacto, descripcion: @servicios_turistico.descripcion, direccion: @servicios_turistico.direccion, domingo: @servicios_turistico.domingo, foto: @servicios_turistico.foto, jueves: @servicios_turistico.jueves, lunes: @servicios_turistico.lunes, martes: @servicios_turistico.martes, miercoles: @servicios_turistico.miercoles, nombre: @servicios_turistico.nombre, sabado: @servicios_turistico.sabado, viernes: @servicios_turistico.viernes }
    assert_redirected_to servicios_turistico_path(assigns(:servicios_turistico))
  end

  test "should destroy servicios_turistico" do
    assert_difference('ServiciosTuristico.count', -1) do
      delete :destroy, id: @servicios_turistico
    end

    assert_redirected_to servicios_turisticos_path
  end
end
