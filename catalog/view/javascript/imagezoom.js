﻿﻿﻿/**
 * ImageZoom Plugin
 * MIT licensed
 * Copyright (C) 2014 A project by Yosuke Morita
 */

(function($){
  var defaults = {
    zoomviewborder: '1px solid #222',
    focusborder: '1px solid #222',
    zoomviewposition: 'right',
    zoomviewsize: [300,450],
    cursorcolor: '#ffffff',
    cursor: 'crosshair',
    zoomviewmargin: 10,
    magnification: 3.5,
    zindex: 2000000,
    opacity: 0.1
  };
  var imagezoomCursor,imagezoomView,settings,imageWidth,imageHeight,offset;
  var methods = {
    init : function(options){
      $this = $(this),
      imagezoomCursor = $('.imagezoom-cursor'),
      imagezoomView = $('.imagezoom-view'),
      $(document).on('mouseenter',$this.selector,function(e){
        var data = $(this).data();
        settings = $.extend({},defaults,options,data),
        offset = $(this).offset(),
        imageWidth = $(this).width(),
        imageHeight = $(this).height(),
        cursorSize = [(settings.zoomviewsize[0]/settings.magnification),(settings.zoomviewsize[1]/settings.magnification)];
        if(data.imagezoom == true){
          imageSrc = $(this).attr('src');
        }else{
          imageSrc = $(this).get(0).getAttribute('data-imagezoom');
        }
        var posX = e.pageX,posY = e.pageY,zoomViewPositionX;
        $('body').prepend('<div class="imagezoom-cursor">&nbsp;</div><div class="imagezoom-view"><img src="'+imageSrc+'"></div>');
        if(settings.zoomviewposition == 'right'){
          zoomViewPositionX = (offset.left+imageWidth+settings.zoomviewmargin);
        }else{
          zoomViewPositionX = (offset.left-imageWidth-settings.zoomviewmargin);
        }
        $(imagezoomView.selector).css({
          'position':'absolute',
          'left': zoomViewPositionX,
          'top': offset.top,
          'width': cursorSize[0]*settings.magnification,
          'height': cursorSize[1]*settings.magnification,
          'background':'#000',
          'z-index': 2000000,
          'overflow':'hidden',
          'border': settings.zoomviewborder
        });
        $(imagezoomView.selector).children('img').css({
          'position':'absolute',
          'width': imageWidth*settings.magnification,
          'height': imageHeight*settings.magnification,
        });
        $(imagezoomCursor.selector).css({
          'position':'absolute',
          'margin-left':-1,
          'margin-top':-1,
          'width':cursorSize[0],
          'height':cursorSize[1],
          'background-color':settings.cursorcolor,
          'z-index':settings.zindex,
          'opacity':settings.opacity,
          'cursor':settings.cursor,
          'border': settings.focusborder
        });
        $(imagezoomCursor.selector).css({'top':posY-(cursorSize[1]/2),'left':posX});
        $(document).on('mousemove',document.body,methods.cursorPos);
      });
    },
    cursorPos:function(e){
      var posX = e.pageX,posY = e.pageY;
      if(posY < offset.top || posX < offset.left || posY > (offset.top+imageHeight) || posX > (offset.left+imageWidth)){
        $(imagezoomCursor.selector).remove();
        $(imagezoomView.selector).remove();
        return;
      }
      if(posX-(cursorSize[0]/2) < offset.left){
        posX = offset.left+(cursorSize[0]/2);
      }else if(posX+(cursorSize[0]/2) > offset.left+imageWidth){
        posX = (offset.left+imageWidth)-(cursorSize[0]/2);
      }
      if(posY-(cursorSize[1]/2) < offset.top){
        posY = offset.top+(cursorSize[1]/2);
      }else if(posY+(cursorSize[1]/2) > offset.top+imageHeight){
        posY = (offset.top+imageHeight)-(cursorSize[1]/2);
      }
      $(imagezoomCursor.selector).css({'top':posY-(cursorSize[1]/2),'left':posX-(cursorSize[0]/2)});
      $(imagezoomView.selector).children('img').css({'top':((offset.top-posY)+(cursorSize[1]/2))*settings.magnification,'left':((offset.left-posX)+(cursorSize[0]/2))*settings.magnification});
      $(imagezoomCursor.selector).mouseleave(function(){
        $(this).remove();
      });
    }
  };
  $.fn.imageZoom = function(method){
    if(methods[method]){
      return methods[method].apply( this, Array.prototype.slice.call(arguments,1));
    }else if( typeof method === 'object' || ! method ) {
      return methods.init.apply(this,arguments);
    }else{
      $.error(method);
    }
  }
  $(document).ready(function(){
    $('[data-imagezoom]').imageZoom();
  });
})(jQuery);