let registro = document.getElementById('registro')
let inicio_seccion = document.getElementById('inicio_seccion')

const boton_registrarse = document.querySelector('#boton_registrarse');
const iniciar_cuenta = document.querySelector('#iniciar_cuenta')

const boton_ingresar_producto = document.querySelector('#boton_ingresar_producto')
const agregar_producto = document.querySelector('#agregar_producto')

const iniciar_cuenta_principal = document.querySelector('#iniciar_cuenta_principal')

boton_ingresar_producto.onclick = function() {
    registro.style.display='none'
    inicio_seccion.style.display='none'
    agregar_producto.style.display='flex'
}

boton_registrarse.onclick = function() {
    registro.style.display='flex'
    inicio_seccion.style.display='none'
    agregar_producto.style.display='none'
}
iniciar_cuenta.onclick= function(){
    inicio_seccion.style.display='flex'
    registro.style.display='none'
    agregar_producto.style.display='none'
}
iniciar_cuenta_principal.onclick= function(){
    inicio_seccion.style.display='flex'
    registro.style.display='none'
    agregar_producto.style.display='none'
}
