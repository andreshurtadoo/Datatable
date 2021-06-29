$(document).ready(function() {
    $('#example').DataTable();
} );

var array = [];
var array2 = [];

// EDIT, DELETE.  INDEX
function checkOne(myCheckbox, value){
  const alert = document.getElementById('alert')
  var btn1 = document.querySelector("a[id='deleteCheck']");
  var btn2 = document.querySelector("a[id='UpdateCheck']");

  if(myCheckbox.checked == true){
    array.push(value);
  }else{
    array.pop()
  }

  // LIMITE DE CHECKBOX SELECT
  if(array.length > 100){
    alert.innerHTML = "Sobrepasastes el limite"
    btn1.href = `#`;
    btn2.href = `#`;
  }else{
    alert.innerHTML = ''
    btn1.href = `/desactive/${array}`;
    btn2.href = `/edit/${value}`;
  }

  // COUNT CHECBOX SELECT
  const span = document.getElementById('span');
  span.innerHTML = array.length;
}

// VERIFICAR ELIMINACION DE REGISTROS  BTN UP
function veryDelete(){
  const btn = document.querySelectorAll("a[id='delete']")
  if(confirm('Are you Sure')){
    
  }else{
    btn.forEach(btn => {
      btn.href="#";
    })
  }
}

// SELECCIONAR TODOS LOS CHECKBOX
function checkAll(myCheckbox){
  var checkboxes = document.querySelectorAll("input[type='checkbox']");
  if(myCheckbox.checked == true){
     checkboxes.forEach(function(checkbox){
     checkbox.checked = true;
  });
  }else{
   checkboxes.forEach(function(checkbox){
   checkbox.checked = false;
  
  });
  }
}

// VERIFICAR ELIMINCACION BTN DOWN
function verifyCation(){
  const btn = document.querySelector("a[id='deleteCheck']");
  if(confirm('Are you Sure')){

  }else{
    btn.href = '#';
  }
}

// RECOVER, DELETE,  ELIMINADOS
function checkTwo(myCheckbox, value){
  if(myCheckbox.checked == true){
    array2.push(value)
  }else{
    array2.pop()
  }

  const btn1 =  document.querySelector("a[id='btn-recover']");
  const btn2 = document.querySelector("a[id='btn-delete']")

  btn1.href = `/recover/${array2}`
  btn2.href = `delete2/${array2}`
}



