const input = document.querySelector('#listing_sale_type_1')
const price = document.querySelector('#price')
const checkboxes = document.querySelectorAll('.sale_type')
checkboxes.forEach((checkbox)=> {
  checkbox.addEventListener('input', () => {
    if(!input.checked){
      price.style.display = 'none'
    }
    else {
      price.style.display = 'inline'
    }
  })
})