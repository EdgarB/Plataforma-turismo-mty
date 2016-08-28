require 'test_helper'

class ServiciosPublicosControllerTest < ActionController::TestCase
  setup do
    @servicios_publico = servicios_publicos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:servicios_publicos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create servicios_publico" do
    assert_difference('ServiciosPublico.count') do
      post :create, servicios_publico: { apertura: @servicios_publico.apertura, clausura: @servicios_publico.clausura, contacto: @servicios_publico.contacto, descripcion: @servicios_publico.descripcion, direccion: @servicios_publico.direccion, domingo: @servicios_publico.domingo, foto: @servicios_publico.foto, jueves: @servicios_publico.jueves, lunes: @servicios_publico.lunes, martes: @servicios_publico.martes, miercoles: @servicios_publico.miercoles, nombre: @servicios_publico.nombre, sabado: @servicios_publico.sabado, viernes: @servicios_publico.viernes }
    end

    assert_redirected_to servicios_publico_path(assigns(:servicios_publico))
  end

  test "should show servicios_publico" do
    get :show, id: @servicios_publico
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @servicios_publico
    assert_response :success
  end

  test "should update servicios_publico" do
    patch :update, id: @servicios_publico, servicios_publico: { apertura: @servicios_publico.apertura, clausura: @servicios_publico.clausura, contacto: @servicios_publico.contacto, descripcion: @servicios_publico.descripcion, direccion: @servicios_publico.direccion, domingo: @servicios_publico.domingo, foto: @servicios_publico.foto, jueves: @servicios_publico.jueves, lunes: @servicios_publico.lunes, martes: @servicios_publico.martes, miercoles: @servicios_publico.miercoles, nombre: @servicios_publico.nombre, sabado: @servicios_publico.sabado, viernes: @servicios_publico.viernes }
    assert_redirected_to servicios_publico_path(assigns(:servicios_publico))
  end

  test "should destroy servicios_publico" do
    assert_difference('ServiciosPublico.count', -1) do
      delete :destroy, id: @servicios_publico
    end

    assert_redirected_to servicios_publicos_path
  end
end
