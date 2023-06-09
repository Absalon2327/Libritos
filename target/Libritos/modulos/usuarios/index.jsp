
<%@ include file="../../layouts/header.jsp" %>
<!-- C3 charts css -->
<link href="public/plugins/c3/c3.min.css" rel="stylesheet" type="text/css"/>
<!-- DataTables -->
<link href="public/plugins/datatables/dataTables.bootstrap4.min.css" rel="stylesheet"
      type="text/css"/>
<link href="public/plugins/datatables/buttons.bootstrap4.min.css" rel="stylesheet"
      type="text/css"/>
<!-- Responsive datatable examples -->
<link href="public/plugins/datatables/responsive.bootstrap4.min.css" rel="stylesheet"
      type="text/css"/>
<link href="public/plugins/bootstrap-datepicker/css/bootstrap-datepicker.min.css"
      rel="stylesheet">
<%@ include file="../../layouts/headerStyle.jsp" %>
<body class="fixed-left">
<%@ include file="../../layouts/loader.jsp" %>
<!-- Begin page -->
<div id="wrapper">
  <%@ include file="../../layouts/navbar.jsp" %>
  <!-- Start right Content here -->
  <div class="content-page">
    <!-- Start content -->
    <div class="content">
      <!-- Top Bar Start -->
      <%@ include file="../../layouts/toolbar.jsp" %>
      <!-- Top Bar End -->
      <!-- ==================
      PAGE CONTENT START
      ================== -->
      <div class="page-content-wrapper">
        <div class="container-fluid">
          <div class="row">
            <div class="col-md-6 col-xl-6">
              <div class="mini-stat clearfix bg-white">
                                <span class="mini-stat-icon bg-blue-grey mr-0 float-right">
                                    <i class="mdi mdi-black-mesa"></i>
                                </span>
                <div class="mini-stat-info">
                  <span id="usuarios_registrados" class="counter text-blue-grey">0</span>
                  Usuarios registrados
                </div>
                <div class="clearfix"></div>
              </div>
            </div>
            <div class="col-md-6 col-xl-6" id="registrar_usuarios" style="cursor: pointer;">
              <div class="mini-stat clearfix bg-white">
                                <span class="mini-stat-icon bg-teal mr-0 float-right">
                                    <i class="mdi mdi-account"></i>
                                </span>
                <div class="mini-stat-info">
                  <span class="counter text-teal">Registrar</span>
                  Usuario
                </div>
                <div class="clearfix"></div>
              </div>
            </div>
          </div>
          <div class="row">
            <div class="col-12">
              <div class="card m-b-20">
                <div class="card-body">
                  <div id="tbUsuarios"></div>
                </div>
              </div>
            </div>
          </div>
        </div><!-- container -->
      </div> <!-- Page content Wrapper -->
    </div> <!-- content -->
    <%@ include file="../../layouts/footer.jsp" %>
  </div>
  <!-- End Right content here -->

    <!-- MODAL PARA INSERAT -->
  <div class="modal fade" id="mdRegisUsuarios" tabindex="-1" role="dialog" arialabelledby="exampleModalLabel"
       aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Nuevo | Usuario<br>
            <sub>Campos marcados con * son obligatorios</sub>
          </h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
          <form name="formulario_registro" id="formulario_registro">
            <input type="hidden" id="consultar_datos" name="consultar_datos"
                   value="insertarUsuarios">
            <div class="row">
              <div class="col-md-6">
                <div class="form-group">
                  <label>ID *</label>
                  <input type="text" autocomplete="off" name="idUsers"
                         data-parsley-error-message="Campo requerido" id="idUsers"
                         class="form-control"
                         required placeholder="ID del usuario" maxlength="7"/>
                </div>
              </div>
              <div class="col-md-6">
                <div class="form-group">
                  <label>Nombre *</label>
                  <input type="text" autocomplete="off" name="nombrePersona"
                         data-parsley-error-message="Campo requerido" id="nombrePersona"
                         class="form-control"
                         required placeholder="Ingrese el Nombre de la Persona"/>
                </div>
              </div>
            </div>
            <div class="row">
              <div class="col-md-6">
                <div class="form-group">
                  <label>Apellido *</label>
                  <input type="text" data-parsley-error-message="Campo requerido"
                         autocomplete="off"
                         name="apellidoPersona" id="apellidoPersona" class="form-control"
                         required
                         placeholder="Ingrese el Apellido de la Persona"/>
                </div>
              </div>
              <div class="col-md-6">
                <div class="form-group">
                  <label>Nombre de Usuario *</label>
                  <input type="text" autocomplete="off" name="nombreUsuario"
                         data-parsley-error-message="Campo requerido" id="nombreUsuario"
                         class="form-control"
                         required placeholder="Ingrese el nombre de Usuario"/>
                </div>
              </div>
            </div>
            <div class="row" id="contra">
              <div class="col-md-6">
                <div class="form-group">
                  <label>Contraseña *</label>
                  <input type="password" autocomplete="off" name="contrasena"
                         data-parsley-error-message="Campo requerido" id="contrasena"
                         class="form-control" required placeholder="Ingrese una contraseña"/>
                </div>
              </div>
              <div class="col-md-6">
                <div class="form-group">
                  <label>Repita la contraseña *</label>
                  <input type="password" autocomplete="off" name="reContrasena"
                         data-parsley-error-message="Campo requerido" id="reContrasena"
                         class="form-control" required placeholder="Repita la contraseña"/>
                </div>
              </div>
            </div>
            <div class="row">
              <div class="col-md-6">
                <div class="form-group">
                  <label>Nivel *</label>
                  <select class="form-control" id="nivelUsuario" name="nivelUsuario" >
                    <option value="Seleccione" selected>Seleccione</option>
                    <option value="Administrador" >Administrador</option>
                    <option value="Estandar" >Estandar</option>
                  </select>
                </div>
              </div>
            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-secondary" datadismiss="modal">Cerrar</button>
              <button type="submit" class="btn btn-primary">Guardar</button>
            </div>
          </form>
        </div>
      </div>
    </div>
  </div>
    <!-- MODAL PARA MODIFICAR DATOS GENERALES -->
    <div class="modal fade" id="mdModiUsuarios" tabindex="-1" role="dialog" arialabelledby="exampleModalLabel"
         aria-hidden="true">
      <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" >Modificar | Usuario<br>
              <sub>Campos marcados con * son obligatorios</sub>
            </h5>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
          </div>
          <div class="modal-body">
            <form name="formularioModifiUser" id="formularioModifiUser">
              <input type="hidden" id="modificar_datos" name="modificar_datos"
                     value="modificarUsuarios">
              <div class="row">
                <div class="col-md-6">
                  <div class="form-group">
                    <label>ID </label>
                    <input type="text" autocomplete="off" name="idUsersM"
                           data-parsley-error-message="Campo requerido" id="idUsersM"
                           class="form-control"
                           required placeholder="ID del usuario" maxlength="7"/>
                  </div>
                </div>
                <div class="col-md-6">
                  <div class="form-group">
                    <label>Nombre *</label>
                    <input type="text" autocomplete="off" name="nombrePersonaM"
                           data-parsley-error-message="Campo requerido" id="nombrePersonaM"
                           class="form-control"
                           required placeholder="Ingrese el Nombre de la Persona"/>
                  </div>
                </div>
              </div>
              <div class="row">
                <div class="col-md-6">
                  <div class="form-group">
                    <label>Apellido *</label>
                    <input type="text" data-parsley-error-message="Campo requerido"
                           autocomplete="off"
                           name="apellidoPersonaM" id="apellidoPersonaM" class="form-control"
                           required
                           placeholder="Ingrese el Apellido de la Persona"/>
                  </div>
                </div>
                <div class="col-md-6">
                  <div class="form-group">
                    <label>Nombre de Usuario *</label>
                    <input type="text" autocomplete="off" name="nombreUsuarioM"
                           data-parsley-error-message="Campo requerido" id="nombreUsuarioM"
                           class="form-control"
                           required placeholder="Ingrese el nombre de Usuario"/>
                  </div>
                </div>
              </div>
              <div class="row">
                <div class="col-md-6">
                  <div class="form-group">
                    <label>Nivel *</label>
                    <select class="form-control" id="nivelUsuarioM" name="nivelUsuarioM" >
                      <option value="Seleccione" selected>Seleccione</option>
                      <option value="Administrador" >Administrador</option>
                      <option value="Estandar" >Estandar</option>
                    </select>
                  </div>
                </div>
                <div class="col-md-6">
                  <div class="form-group">
                    <label>Estado *</label>
                    <select class="form-control" id="estado" name="estado" >
                      <option value="Seleccione" selected>Seleccione</option>
                      <option value="activo" >Activo</option>
                      <option value="inactivo" >Inactivo</option>
                    </select>
                  </div>
                </div>
              </div>
              <div class="modal-footer">
                <button type="button" class="btn btn-secondary" datadismiss="modal">Cerrar</button>
                <button type="submit" class="btn btn-primary">Guardar</button>
              </div>
            </form>
          </div>
        </div>
      </div>
    </div>
    <!-- MODAL PARA MODIFICAR CONTRASEÑAS -->
    <div class="modal fade" id="mdModiContrasenas" tabindex="-1" role="dialog" arialabelledby="exampleModalLabel"
         aria-hidden="true">
      <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="titleModal">Modificar Contraseña | Usuario | <br>
              <sub>Campos marcados con * son obligatorios</sub>
            </h5>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
          </div>
          <div class="modal-body">
            <form name="formularioModContra" id="formularioModContra">
              <input type="hidden" id="consultar_contra" name="consultar_contra"
                     value="modContraUsuarios">
              <input type="hidden" id="id" name="id">
              <div class="row">
                <div class="col-md-6">
                  <div class="form-group">
                    <label>Contraseña *</label>
                    <input type="password" autocomplete="off" name="contrasenaM"
                           data-parsley-error-message="Campo requerido" id="contrasenaM"
                           class="form-control" required placeholder="Ingrese una contraseña"/>
                  </div>
                </div>
                <div class="col-md-6">
                  <div class="form-group">
                    <label>Repita la contraseña *</label>
                    <input type="password" autocomplete="off" name="reContrasenaM"
                           data-parsley-error-message="Campo requerido" id="reContrasenaM"
                           class="form-control" required placeholder="Repita la contraseña"/>
                  </div>
                </div>
              </div>
              <div class="modal-footer">
                <button type="button" class="btn btn-secondary" datadismiss="modal">Cerrar</button>
                <button type="submit" class="btn btn-primary">Guardar</button>
              </div>
            </form>
          </div>
        </div>
      </div>
    </div>

  <!-- END wrapper -->
  <%@ include file="../../layouts/footerScript.jsp" %>
  <!-- Peity chart JS -->
  <script src="public/plugins/peity-chart/jquery.peity.min.js"></script>
  <!--C3 Chart-->
  <script src="public/plugins/d3/d3.min.js"></script>
  <script src="public/plugins/c3/c3.min.js"></script>
  <!-- KNOB JS -->
  <script src="public/plugins/jquery-knob/excanvas.js"></script>
  <script src="public/plugins/jquery-knob/jquery.knob.js"></script>
  <!-- Page specific js -->
  <script src="public/assets/pages/dashboard.js"></script>
  <!-- App js -->
  <script src="public/assets/js/app.js"></script>
  <script src="public/plugins/datatables/jquery.dataTables.min.js"></script>
  <script src="public/plugins/datatables/dataTables.bootstrap4.min.js"></script>
  <script type="text/javascript" src="public/plugins/parsleyjs/parsley.min.js"></script>
  <script src="public/plugins/bootstrap-datepicker/js/bootstrap-datepicker.min.js"></script>
  <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
  <%@page import="java.time.LocalDateTime" %>
  <%@ page import="java.time.temporal.ChronoField" %>
  <script src="./modulos/usuarios/usuarios_funciones.js"></script>
