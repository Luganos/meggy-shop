/*
 * Developed by Lugano.
 */
$(function(){

$('body').on('click',function(e){

  tr = e.target.id;
  tr = '#'+tr;
  console.log("tr="+tr);

    trr = e.target.id;
    console.log(trr);
    console.log(typeof(trr));

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
});

/*
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

  $('#id-for-server-0-1').autocomplete({
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
    $('#id-for-server-0-1').val(item['label']);
    $('input[name=\'manufacturer_id\']').val(item['value']);
  }
});

  $('#id-for-server-0-2').autocomplete({
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
    $('#id-for-server-0-2').val(item['label']);
    $('input[name=\'manufacturer_id\']').val(item['value']);
  }
});

  $('#id-for-server-0-3').autocomplete({
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
    $('#id-for-server-0-3').val(item['label']);
    $('input[name=\'manufacturer_id\']').val(item['value']);
  }
});

  $('#id-for-server-0-4').autocomplete({
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
    $('#id-for-server-0-4').val(item['label']);
    $('input[name=\'manufacturer_id\']').val(item['value']);
  }
});

  $('#id-for-server-0-5').autocomplete({
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
    $('#id-for-server-0-5').val(item['label']);
    $('input[name=\'manufacturer_id\']').val(item['value']);
  }
});

  $('#id-for-server-0-6').autocomplete({
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
    $('#id-for-server-0-6').val(item['label']);
    $('input[name=\'manufacturer_id\']').val(item['value']);
  }
});

  $('#id-for-server-0-7').autocomplete({
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
    $('#id-for-server-0-7').val(item['label']);
    $('input[name=\'manufacturer_id\']').val(item['value']);
  }
});

  $('#id-for-server-0-8').autocomplete({
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
    $('#id-for-server-0-8').val(item['label']);
    $('input[name=\'manufacturer_id\']').val(item['value']);
  }
});

  $('#id-for-server-0-9').autocomplete({
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
    $('#id-for-server-0-9').val(item['label']);
    $('input[name=\'manufacturer_id\']').val(item['value']);
  }
});
*/
});
