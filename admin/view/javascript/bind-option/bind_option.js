/*
 * Developed by Lugano.
 */
$(function(){

  $('#id-for-server-0-0').autocomplete({
  'source': function(request, response) {
    $.ajax({
      url: 'index.php?route=catalog/product/autocomplete&token='+token+'&filter_name=' +  encodeURIComponent(request),
      dataType: 'json',
      success: function(json) {
        json.unshift({
          manufacturer_id: 0,
          name: text_none
        });

        response($.map(json, function(item) {
          return {
            label: item['name'],
            value: item['manufacturer_id']
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

