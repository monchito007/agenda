<?php
$pacients = ProjectData::getAll();
$medics = CategoryData::getAll();
?>
  <script src="res/tinymce/tinymce.min.js"></script>
  <script>tinymce.init({ selector:'textarea' });</script>

<div class="row">
<div class="col-md-10">
<h4>Nueva Nota</h4>
<form class="form-horizontal" role="form" method="post" action="./?action=addnote">
<div class="form-group">
    <label for="inputEmail1" class="col-lg-2 control-label">Titulo</label>
    <div class="col-lg-10">
      <input type="text" name="title" required class="form-control" id="inputEmail1" placeholder="Titulo">
    </div>
  </div>
  <div class="form-group">
    <label for="inputEmail1" class="col-lg-2 control-label">Descripcion</label>
    <div class="col-lg-10">
    <textarea class="form-control" rows="15" name="description" placeholder="Descripcion"></textarea>
    </div>
  </div>

  <div class="form-group">
    <label for="inputEmail1" class="col-lg-2 control-label">Proyecto</label>
    <div class="col-lg-4">
<select name="project_id" class="form-control">
<option value="">-- SELECCIONE --</option>
  <?php foreach($pacients as $p):?>
    <option value="<?php echo $p->id; ?>"><?php echo $p->name; ?></option>
  <?php endforeach; ?>
</select>
    </div>
    <label for="inputEmail1" class="col-lg-2 control-label">Categoria</label>
    <div class="col-lg-4">
<select name="category_id" class="form-control">
<option value="">-- SELECCIONE --</option>
  <?php foreach($medics as $p):?>
    <option value="<?php echo $p->id; ?>"><?php echo $p->name; ?></option>
  <?php endforeach; ?>
</select>
    </div>
  </div>


  <div class="form-group">
    <div class="col-lg-offset-2 col-lg-10">
      <button type="submit" class="btn btn-default">Agregar Nota</button>
    </div>
  </div>
</form>

</div>
</div>