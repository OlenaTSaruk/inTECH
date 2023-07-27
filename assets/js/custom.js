$(document).ready(function () {
    $('.qty .input-group, .js-cart-line-product-quantity').each(function () {
        productTouchSpinInit($(this));
    });

    prestashop.on('updatedProduct', function (e) {
        $('.product-add-to-cart-product .input-group').each(function (t, e) {
            productTouchSpinInit($(e));
        });
    });

    prestashop.on('updateProductList', function (e) {
        $('.qty .input-group, .js-cart-line-product-quantity').each(function () {
            productTouchSpinInit($(this));
        });
    });
  
  
  	$('#submenu-tabs .nav-link').on('click mouseenter', function(e){
      	if($(window).width() < 768 && e.type == 'mouseenter') return;
    	let $this = $(this);
      	let target = $this.attr('href');
      	let $target = $(target);
      	if(!$target.length) return;
      	
      	$('#submenu-tabs .active').removeClass('active');
      	$this.addClass('active');
      	$target.addClass('active');
      	e.preventDefault();
    });
});

function productTouchSpinInit(item) {
    if (typeof (item) === typeof (undefined)) return;
    item.TouchSpin({
        verticalbuttons: true,
        verticalupclass: "touchspin-up",
        verticaldownclass: "touchspin-down",
        buttondown_class: "btn btn-touchspin js-touchspin js-increase-product-quantity",
        buttonup_class: "btn btn-touchspin js-touchspin js-decrease-product-quantity",
        min: parseInt(item.attr("min"), 10),
        max: 1e6
    });
}