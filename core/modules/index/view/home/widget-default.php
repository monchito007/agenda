<?php

$categories = CategoryData::getAll();

$events = EventData::getEvery();
foreach($events as $event){
    
	//$thejson[] = array("title"=>$event->title,"url"=>"./?view=editreservation&id=".$event->id,"start"=>$event->date_at."T".$event->time_at);
	$thejson[] = array("title"=>$event->title,"url"=>"./?view=editreservation&id=".$event->id,"start"=>$event->date_at."T".$event->time_at,"color"=>$categories[$event->category_id-1]->color);

}

?>
<script>


	$(document).ready(function() {

            
            $('#calendar').fullCalendar({
                
                        header: {
				left: 'prev,next today',
                                center: 'title',
				right: 'month,agendaWeek,agendaDay'
                                
			},
                        locale: 'es',
                        firstDay: 1,
			defaultDate: <?php echo "'".date("Y-m-d")."'"; ?>,
			editable: false,
			eventLimit: false, // deny "more" link when too many events
			events: <?php echo json_encode($thejson); ?>,
                        monthNames: ['Enero','Febrero','Marzo','Abril','Mayo','Junio','Julio','Agosto','Septiembre','Octubre','Noviembre','Diciembre'],
                        monthNamesShort: ['Ene','Feb','Mar','Abr','May','Jun','Jul','Ago','Sep','Oct','Nov','Dic'],
                        dayNames: ['Domingo','Lunes','Martes','Miércoles','Jueves','Viernes','Sábado'],
                        dayNamesShort: ['Dom','Lun','Mar','Mié','Jue','Vie','Sáb'],
                        contentHeight: 'auto',
                       
                        buttonText:
                        {
                            prev:     ' ◄ ',
                            next:     ' ► ',
                            prevYear: ' &lt;&lt; ',
                            nextYear: ' &gt;&gt; ',
                            today:    'Hoy',
                            month:    'Mes',
                            week:     'Semana',
                            day:      'Día'
                        }
                        
		});
                
	});

</script>


<div class="row">
<div class="col-md-12">
<?php
foreach ($categories as $category) {    
    echo "<div id='categorias' style='background-color: $category->color;'><a href='index.php?view=reservations&q=&project_id=&category_id=$category->id&date_at='>$category->name</a></div>";       
}
?>
</div>    
<div class="col-md-12">
<h1>Calendario</h1>
<div id="calendar"></div>

</div>
</div>
