<?php
include 'functions/functions.php';
/*
echo "user_id:".$_SESSION['user_id'];
echo "<br>";
echo "is_admin:".$_SESSION['is_admin'];
echo "<br>";
*/
if($_SESSION['is_admin']==0){
    
    if(isset($_REQUEST['view'])){
        $view = $_REQUEST['view'];
    }

    $editview = strpos($view,"edit");
    $newview = strpos($view,"new");

    if(($editview === 0)||($newview === 0)){
        print "<script>window.location='index.php?view=home';</script>";
    }
    
}
?>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Agenda Habitat Gestions</title>

    <!-- Bootstrap core CSS -->
    <link href="res/bootstrap3/css/bootstrap.css" rel="stylesheet">

    <!-- Add custom CSS here -->
    <link href="css/sb-admin.css" rel="stylesheet">
    <link rel="stylesheet" href="font-awesome/css/font-awesome.min.css">
    <script src="js/jquery-1.10.2.js"></script>
    <script src="js/fontawesome.js" crossorigin="anonymous"></script>
    <script type="text/javascript" src="js/loader.js"></script>
    <link href="css/style.css" rel="stylesheet" type="text/css">
<?php if(isset($_GET["view"]) && $_GET["view"]=="home"):?>
<link href='res/fullcalendar.min.css' rel='stylesheet' />
<link href='res/fullcalendar.print.css' rel='stylesheet' media='print' />
<script src='res/js/moment.min.js'></script>
<script src='res/fullcalendar.min.js'></script>
<?php endif; ?>

  </head>

  <body>

    <div id="wrapper">

      <!-- Sidebar -->
      <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="./"><span class="label label-warning">Agenda Habitat Gestions</span> </a>
          
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse navbar-ex1-collapse">
<?php 
$u=null;
if(Session::getUID()!=""):
  $u = UserData::getById(Session::getUID());
?>
         <ul class="nav navbar-nav">
<li class="dropdown">
        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
        <i class="fa fa-asterisk"></i> Nuevo <b class="caret"></b>
        </a>
        <ul class="dropdown-menu">
          <li><a href="./?view=newnote">Nota</a></li>
          <li><a href="./?view=newreservation">Evento</a></li>
          <li><a href="./?view=newtask">Tarea</a></li>
          <li><a href="./?view=newcontact">Contacto</a></li>
          <li><a href="./?view=newproject">Proyecto</a></li>
          <li><a href="./?view=newcategory">Categoria</a></li>
        </ul>
        </li>

                  </ul> 
          <ul class="nav navbar-nav side-nav">
          <li><a href="index.php?view=home"><i class="fa fa-home"></i> Inicio</a></li>
          <li><a href="index.php?view=reservations"><i class="fa fa-calendar"></i> Eventos</a></li>
          <li><a href="index.php?view=notes"><i class="fa fa-file-text"></i> Notas</a></li>
          <li><a href="index.php?view=tasks"><i class="fa fa-tasks"></i> Tareas</a></li>
          <li><a href="index.php?view=projects"><i class="fa fa-flask"></i> Proyectos</a></li>
          <li><a href="index.php?view=categories"><i class="fa fa-th-list"></i> Categorias</a></li>
          <li><a href="index.php?view=contacts"><i class="fa fa-male"></i> Contactos</a></li>
          <li><a href="index.php?view=history"><i class="fa-solid fa-clock"></i> Historial</a></li>
          <?php if($u->is_admin):?>
          <li><a href="index.php?view=changelog"><i class="fa fa-filter"></i> Log de cambios </a></li>
          <li><a href="index.php?view=users"><i class="fa fa-users"></i> Usuarios </a></li>
        <?php endif;?>
          </ul>




<?php endif;?>



<?php if(Session::getUID()!=""):?>
<?php 
$u=null;
if(Session::getUID()!=""){
  $u = UserData::getById(Session::getUID());
  $user = $u->name." ".$u->lastname;

  }?>
          <ul class="nav navbar-nav navbar-right navbar-user">
<li class="dropdown">
        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
        <b><u>EVILNΛPSIS</u></b> <b class="caret"></b>
        </a>
        <ul class="dropdown-menu">
          <li><a target="_blank" href="http://evilnapsis.com/">Sitio Web</a></li>
          <li><a target="_blank" href="http://evilnapsis.com/store/">Tienda de aplicaciones</a></li>
        </ul>
        </li>

            <li class="dropdown user-dropdown">
        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
        <?php echo $user; ?> <b class="caret"></b>
        </a>
        <ul class="dropdown-menu">
          <li><a href="index.php?view=configuration">Configuracion</a></li>
          <li><a href="logout.php">Salir</a></li>
        </ul>
        </li>
        </ul>
<?php else:?>
<?php endif; ?>




        </div><!-- /.navbar-collapse -->
      </nav>

      <div id="page-wrapper">

<?php 
  // puedo cargar otras funciones iniciales
  // dentro de la funcion donde cargo la vista actual
  // como por ejemplo cargar el corte actual
  View::load("login");

?>



      </div><!-- /#page-wrapper -->

    </div><!-- /#wrapper -->

    <!-- JavaScript -->

<script src="res/bootstrap3/js/bootstrap.min.js"></script>

  </body>
</html>
