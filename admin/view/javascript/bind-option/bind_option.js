/*
 * Developed by Lugano.
 */
$(function(){

  $('#id-for-server-0-0').autocomplete({
  'source': function(request, response) {
    $.ajax({
      url: 'index.php?route=catalog/product/autocomplete&token='+token+'&filter_sku=' +  encodeURIComponent(request),
      dataType: 'json',
      success: function(json) {
        json.unshift({
          manufacturer_id: 0,
          name: 0
        });

        response($.map(json, function(item) {
          return {
            label: item['sku'],
            value: item['sku']
          }
        }));
      }
    });
  },
  'select': function(item) {
    $('#id-for-server-0-0').val(item['label']);
    $('input[name=\'manufacturer_id\']').val(item['value']);
  }
});


});

