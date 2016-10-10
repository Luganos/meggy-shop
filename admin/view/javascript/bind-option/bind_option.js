/*
 * Developed by Lugano.
 */
$(function(){

$('body').on('click',function(e){

  tr = e.target.id;
  tr = '#'+tr;
  
  var class_name = null;
  class_name = $(tr).attr('class');
  
  trr = e.target.id;
 
  if (class_name !== undefined) {
      
     if(class_name.match( /bind/i )) {
         
       $(tr).autocomplete({
           'source': function(request, response) {
            $.ajax({
                url: 'index.php?route=catalog/product/autocomplete&token='+token+'&filter_sku=' +  encodeURIComponent(request),
                dataType: 'json',
                success: function(json) {
                    json.unshift({
                      sku: 0,
                      name: 'Нет связей'
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
                       document.getElementById(trr).setAttribute('value',item['label']);
                       var name = $('#' + trr).attr('name');
                       $('input[name=\''+name+'\']').val(item['value']);
           }
        });
       }
     }
  });
});
