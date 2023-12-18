<div class="row">
	<div class="col-md-12">
<div class="btn-group pull-right">
<!--<div class="btn-group pull-right">
  <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
    <i class="fa fa-download"></i> Descargar <span class="caret"></span>
  </button>
  <ul class="dropdown-menu" role="menu">
    <li><a href="report/clients-word.php">Word 2007 (.docx)</a></li>
  </ul>
</div>
-->
</div>
<a href="./index.php?view=reservations" class="btn btn-default pull-right">Próximos Eventos</a>
		<h1>Historial</h1>
<br>
<form class="form-horizontal" role="form">
<input type="hidden" name="view" value="history">
        <?php
$pacients = ProjectData::getAll();
$medics = CategoryData::getAll();
        ?>

  <div class="form-group">
    <div class="col-lg-2">
		<div class="input-group">
		  <span class="input-group-addon"><i class="fa fa-search"></i></span>
		  <input type="text" name="q" value="<?php if(isset($_GET["q"]) && $_GET["q"]!=""){ echo $_GET["q"]; } ?>" class="form-control" placeholder="Palabra clave">
		</div>
    </div>
    <div class="col-lg-2">
		<div class="input-group">
		  <span class="input-group-addon"><i class="fa fa-flask"></i></span>
<select name="project_id" class="form-control">
<option value="">PROYECTO</option>
  <?php foreach($pacients as $p):?>
    <option value="<?php echo $p->id; ?>" <?php if(isset($_GET["project_id"]) && $_GET["project_id"]!=""){ echo "selected"; } ?>><?php echo $p->name; ?></option>
  <?php endforeach; ?>
</select>
		</div>
    </div>
    <div class="col-lg-2">
		<div class="input-group">
		  <span class="input-group-addon"><i class="fa fa-th-list"></i></span>
<select name="category_id" class="form-control">
<option value="">CATEGORIA</option>
  <?php foreach($medics as $p):?>
    <option value="<?php echo $p->id; ?>" <?php if(isset($_GET["category_id"]) && $_GET["category_id"]!=""){ echo "selected"; } ?>><?php echo $p->name; ?></option>
  <?php endforeach; ?>
</select>
		</div>
    </div>
    <div class="col-lg-4">
		<div class="input-group">
		  <span class="input-group-addon"><i class="fa fa-calendar"></i></span>
		  <input type="date" name="date_at" value="<?php if(isset($_GET["date_at"]) && $_GET["date_at"]!=""){ echo $_GET["date_at"]; } ?>" class="form-control" placeholder="Palabra clave">
		</div>
    </div>

    <div class="col-lg-2">
    <button class="btn btn-primary btn-block">Buscar</button>
    </div>

  </div>
</form>

<?php
$users= array();
if((isset($_GET["q"]) && isset($_GET["project_id"]) && isset($_GET["category_id"]) && isset($_GET["date_at"])) && ($_GET["q"]!="" || $_GET["project_id"]!="" || $_GET["category_id"]!="" || $_GET["date_at"]!="") ) {
$sql = "select * from event where ";
if($_GET["q"]!=""){
	$sql .= " (title like '%$_GET[q]%' or description like '%$_GET[q]%') ";
}

if($_GET["project_id"]!=""){
if($_GET["q"]!=""){
	$sql .= " and ";
}
	$sql .= " project_id = ".$_GET["project_id"];
}

if($_GET["category_id"]!=""){
if($_GET["q"]!=""||$_GET["project_id"]!=""){
	$sql .= " and ";
}

	$sql .= " category_id = ".$_GET["category_id"];
}



if($_GET["date_at"]!=""){
if($_GET["q"]!=""||$_GET["project_id"]!="" ||$_GET["category_id"]!="" ){
	$sql .= " and ";
}

	$sql .= " date_at = \"".$_GET["date_at"]."\"";
        
}

        $sql .= " and (( date_at <= CURRENT_DATE() and time_at <= CURRENT_TIME() ) OR (date_at < CURRENT_DATE())) order by `date_at`,`time_at` ASC";
        
        	$users = EventData::getBySQL($sql);
                
}else{
    
        $sql = "select * from event where ( date_at <= CURRENT_DATE() and time_at <= CURRENT_TIME() ) OR (date_at < CURRENT_DATE()) order by `date_at`,`time_at` ASC";
        
        //select * from event where (( date_at < CURRENT_DATE() and time_at < CURRENT_TIME() ) OR (date_at < CURRENT_DATE())) order by `date_at`,`time_at` DESC
    
		$users = EventData::getBySQL($sql);
                
}

$users = array_reverse($users);

    if(count($users)>0){
            // si hay usuarios
            ?>
            <table class="table table-bordered table-hover">
            <thead>
            <th>Titulo</th>
            <th>Proyecto</th>
            <th>Categoria</th>
            <th>Fecha</th>
            <th></th>
            </thead>
            <?php
            foreach($users as $user){
                    $project = null;
                    if($user->project_id!=null){
                    $project  = $user->getProject();
                    }
                    $category = null;
                    if($user->category_id!=null){
                    $category = $user->getCategory();
                    }
                    ?>
                    <tr>
                    <td><?php echo $user->title; ?></td>
                    <td><?php if($project!=null ){ echo $project->name;} ?></td>
                    <td><?php if($category!=null){ echo $category->name; }?></td>
                    <td><?php echo DateChangeFormat($user->date_at)." ".$user->time_at; ?></td>
                    <td style="width:130px;">
                    <a href="index.php?view=editreservation&id=<?php echo $user->id;?>" class="btn btn-warning btn-xs">Editar</a>
                    <a href="index.php?action=delreservation&id=<?php echo $user->id;?>" class="btn btn-danger btn-xs">Eliminar</a>
                    </td>
                    </tr>
                    <?php

            }



    }else{
            echo "<p class='alert alert-danger'>No hay Eventos</p>";
    }

?>

<?php

function RestarAñoFechaActual(){
    
    $fechaactual = date('Y-m-d');// 2016-12-29
    $nuevafecha = strtotime ('-1 year' , strtotime($fechaactual)); //Se resta un año menos
    $nuevafecha = date ('Y-m-d',$nuevafecha);
    
    return $nuevafecha;
    
}

function RestarAñoFechaActualFormateada(){
    
    $fechaactual = date('Y-m-d');// 2016-12-29
    $nuevafecha = strtotime ('-1 year' , strtotime($fechaactual)); //Se resta un año menos
    $nuevafecha = date ('d-m-Y',$nuevafecha);
    
    return $nuevafecha;
    
}

//Select para contar los registros del año pasado para esta fecha.
$sql_registros_año_anterior= 'SELECT b.name as "categoria",COUNT(*) as "cantidad" '.
'FROM event as a, category as b '.
'WHERE a.category_id=b.id '.
'AND (b.name="Visitas" OR b.name="Firmadas") '.
'AND YEAR(a.date_at)="2022" '.
'AND a.date_at BETWEEN "2022-01-01" AND "'.RestarAñoFechaActual().'" '.
'GROUP by YEAR(a.date_at),a.category_id';

$contador_año_anterior = EventData::getBySQL($sql_registros_año_anterior);


$sql_2022 = 'SELECT b.name as "categoria",COUNT(*) as "cantidad", MONTHNAME(a.date_at) as "nombre_mes", MONTH(a.date_at) as "mes", YEAR(a.date_at) as "Año" from event as a,category as b '.
'WHERE a.category_id=b.id '.
'AND (b.name="Visitas" OR b.name="Firmadas")'.
'AND YEAR(a.date_at)="2022"'.        
'GROUP by MONTH(a.date_at),YEAR(a.date_at),a.category_id';

$estadisticas_2022 = EventData::getBySQL($sql_2022);

//Visitas, Firmadas
$sql = 'SELECT b.name as "categoria",COUNT(*) as "cantidad", MONTHNAME(a.date_at) as "nombre_mes", MONTH(a.date_at) as "mes", YEAR(a.date_at) as "Año" from event as a,category as b '.
'WHERE (( a.date_at <= CURRENT_DATE() and a.time_at <= CURRENT_TIME() ) '.
'OR (a.date_at < CURRENT_DATE())) '.
'AND a.category_id=b.id '.
'AND (b.name="Visitas" OR b.name="Firmadas")'.
'AND YEAR(a.date_at)=YEAR(CURRENT_TIME())'.        
'GROUP by MONTH(a.date_at),YEAR(a.date_at),a.category_id';

$estadisticas = EventData::getBySQL($sql);

//Firmas
$sql_firmas = 'SELECT b.name as "categoria",COUNT(*) as "cantidad", MONTHNAME(a.date_at) as "nombre_mes", MONTH(a.date_at) as "mes", YEAR(a.date_at) as "Año" from event as a,category as b '.
'WHERE (( a.date_at >= CURRENT_DATE() and a.time_at >= CURRENT_TIME() ) '. 
'OR (a.date_at > CURRENT_DATE())) '. 
'AND (b.name="Firmas") '.
'AND a.category_id=b.id '.
'AND YEAR(a.date_at)=YEAR(CURRENT_TIME()) '.
'GROUP by MONTH(a.date_at),YEAR(a.date_at),a.category_id; ';


$firmas = EventData::getBySQL($sql_firmas);

/*
echo $sql;
echo "<br>";
echo $sql_firmas;
*/

?>
<!-- <div id="columnchart_material" style="width: 800px; height: 500px;"></div>-->
<div class="grafica" id="grafica_2022"></div>
<div class="totales" id="totales_2022"></div>
<div class="grafica" id="grafica_2023"></div>
<div class="totales" id="totales_2023"></div>
<div id="texto">Resultados: <?php echo count($users); ?></div>

<script type="text/javascript">
    
    var json_2022 = <?php echo json_encode($estadisticas_2022);?>;
    
    var json_contador_año_anterior = <?php echo json_encode($contador_año_anterior);?>;
    
    function grafica_año_anterior(json,json_año_anterior){
        
        //Obtenemos el contador de visitas y firmas del año anterior para la fecha de hoy.
        var cont_visitas_2022 = json_año_anterior[0].cantidad;
        var cont_firmadas_2022 = json_año_anterior[1].cantidad;
        
        google.charts.load('current', {'packages':['bar']});
        google.charts.setOnLoadCallback(drawChart0);

        datachart_2022=[['Mes', 'Visitas', 'Firmadas']];

        var month = ['January','February','March','April','May','June','July','August','September','October','November','December'];
        var mes = ['Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo', 'Junio', 'Julio', 'Agosto', 'Septiembre', 'Octubre', 'Noviembre', 'Diciembre'];
        
        var firmadas = new Array();
        var visitas = new Array();
        
        for(var x=0;x<month.length;x++){

            var Bvisita = false;
            var Bfirma = false;

            for(var y=0;y<json.length;y++){

                if(((x+1)===parseInt(json[y].mes)&&(json[y].categoria==="Firmadas"))){
                    firmadas.push(json[y].cantidad);
                    Bfirma = true;
                }

                if(((x+1)===parseInt(json[y].mes)&&(json[y].categoria==="Visitas"))){
                    visitas.push(json[y].cantidad);
                    Bvisita = true;
                }
            }

            if(Bfirma===false){firmadas.push(0);}
            if(Bvisita===false){visitas.push(0);}
        
        }
    
        var cont_visitas=0;
        var cont_firmadas=0;
        
        for(var x=0;x<month.length;x++){

            datachart_2022.push([mes[x],parseInt(visitas[x]),parseInt(firmadas[x])]);

            cont_visitas=cont_visitas+parseInt(visitas[x]);
            cont_firmadas=cont_firmadas+parseInt(firmadas[x]);

        }
        
        document.getElementById("totales_2022").innerHTML="<b>Visitas: </b>" + cont_visitas + "<br>" + "<b>Firmadas: </b>" + cont_firmadas + "<br>";
        document.getElementById("totales_2022").innerHTML+="<b>Visitas a <?php echo RestarAñoFechaActualFormateada(); ?>: </b>" + cont_visitas_2022 + "<br>" + "<b>Firmadas a <?php echo RestarAñoFechaActualFormateada(); ?>: </b>" + cont_firmadas_2022 + "<br>";
        
        
    }
    
    function drawChart0(){

        var data = google.visualization.arrayToDataTable(datachart_2022);

        var current_year = "2022";

        var options = {
            chart: {
                title: 'Estadísticas '+current_year,
                subtitle: 'Visitas / Firmadas'
            }
        };

        var chart = new google.charts.Bar(document.getElementById("grafica_2022"));
        chart.draw(data, google.charts.Bar.convertOptions(options));
        
    }
    
    grafica_año_anterior(json_2022,json_contador_año_anterior);

    //*****************************************************************************************************
    
    var json = <?php echo json_encode($estadisticas);?>;
    var json_firmas = <?php echo json_encode($firmas);?>;
    
    function grafica_año_actual(json,json_firmas){
    
        google.charts.load('current', {'packages':['bar']});
        google.charts.setOnLoadCallback(drawChart);

        datachart=[['Mes', 'Visitas', 'Firmadas', 'Pendientes de firma']];

        var month = ['January','February','March','April','May','June','July','August','September','October','November','December'];
        var mes = ['Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo', 'Junio', 'Julio', 'Agosto', 'Septiembre', 'Octubre', 'Noviembre', 'Diciembre'];

        var firmadas = new Array();
        var visitas = new Array();
        var firmas = new Array();

        for(var x=0;x<month.length;x++){

            var Bvisita = false;
            var Bfirmas = false;
            var Bfirma = false;

            for(var y=0;y<json.length;y++){

                if(((x+1)===parseInt(json[y].mes)&&(json[y].categoria==="Firmadas"))){
                    firmadas.push(json[y].cantidad);
                    Bfirma = true;
                }

                if(((x+1)===parseInt(json[y].mes)&&(json[y].categoria==="Visitas"))){
                    visitas.push(json[y].cantidad);
                    Bvisita = true;
                }
            }

            for(var y=0;y<json_firmas.length;y++){
                if((x+1)===parseInt(json_firmas[y].mes)){
                    firmas.push(json_firmas[y].cantidad);
                    Bfirmas = true;
                }
            }

            if(Bfirma===false){firmadas.push(0);}
            if(Bvisita===false){visitas.push(0);}
            if(Bfirmas===false){firmas.push(0);}
        
        }
        
        var cont_visitas=0;
        var cont_firmadas=0;
        var cont_pendientes=0;
    
        for(var x=0;x<month.length;x++){

            datachart.push([mes[x],parseInt(visitas[x]),parseInt(firmadas[x]),parseInt(firmas[x])]);
            
            cont_visitas=cont_visitas+parseInt(visitas[x]);
            cont_firmadas=cont_firmadas+parseInt(firmadas[x]);
            cont_pendientes=cont_pendientes+parseInt(firmas[x]);

        }
        
        document.getElementById("totales_2023").innerHTML="<b>Visitas: </b>" + cont_visitas + "<br>" + "<b>Firmadas: </b>" + cont_firmadas + "<br>" + "<b>Pendientes de firma: </b>" + cont_pendientes;
    
    }
    
    function drawChart(){

        var data = google.visualization.arrayToDataTable(datachart);

        var currentTime = new Date();
        var year = currentTime.getFullYear();

        var options = {
            chart: {
                title: 'Estadísticas '+year,
                subtitle: 'Visitas / Firmadas / Pendientes de firma'
            }
        };

        var chart = new google.charts.Bar(document.getElementById('grafica_2023'));
        chart.draw(data, google.charts.Bar.convertOptions(options));
        
    }
      
    grafica_año_actual(json,json_firmas);

</script>





    </div>
</div>