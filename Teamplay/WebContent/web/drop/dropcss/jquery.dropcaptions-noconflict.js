/*
 * jQuery Drop Captions plugin
 * @author admin@catchmyfame.com - http://www.catchmyfame.com
 * @version 1.0.0
 * @date October 21, 2009
 * @category jQuery plugin
 * @copyright (c) 2009 admin@catchmyfame.com (www.catchmyfame.com)
 * @license CC Attribution-Share Alike 3.0 - http://creativecommons.org/licenses/by-sa/3.0/
 */
jQuery.noConflict();

(function(jQuery){
	jQuery.fn.extend({ 
		dropCaptions: function(options)
		{
			var defaults = 
			{
				showSpeed : 500,
				hideSpeed: 500,
				showOpacity : .85,
				hideOpacity : 0,
				showEasing: 'swing',
				hideEasing: 'swing',
				showDelay: 0,
				hideDelay: 0
			};
			var options = jQuery.extend(defaults, options);
	
    		return this.each(function() {
				var o=options;
				var obj = jQuery(this);
				
				var caption = jQuery(obj).attr('title'); // Get the text of the caption from the image's title attribute
				jQuery(obj).wrap('<div class="captainer"></div>').before('<div class="caption">'+caption+'</div>').attr('title',''); // Create a wrapping div, caption div, and remove the title from the image
				jQuery(obj).parents('div.captainer').width(jQuery(obj).width()+parseInt(jQuery(obj).css('paddingLeft'))+parseInt(jQuery(obj).css('paddingRight'))+parseInt(jQuery(obj).css('borderLeftWidth'))+parseInt(jQuery(obj).css('borderRightWidth'))).css('float',jQuery(obj).css('float')); // Copy the image's width (+ border) and float to the wrapper div
		
				jQuery('.captainer').css({'position':'relative'}); // Set the wrapper div's position
				jQuery('.caption').css({'position':'absolute','bottom':'0'}); // set the caption div's position
				jQuery(obj).css({'position':'relative'});	// Set the image's position
				jQuery(obj).parents('div.captainer').css({'margin':jQuery(obj).css('margin-top')+' '+jQuery(obj).css('margin-right')+' '+jQuery(obj).css('margin-bottom')+' '+jQuery(obj).css('margin-left')});	// Move the margin from the image to the wrapper div
				jQuery(obj).css('margin','0');
		
				var moveAmount = parseInt(jQuery(obj).prev('div.caption').height()) + parseInt(jQuery(obj).prev('div.caption').css('paddingTop')) + parseInt(jQuery(obj).prev('div.caption').css('paddingBottom'));
				jQuery(obj).bind('mouseover', function(){
					setTimeout(function(){jQuery(obj).prev('div.caption').stop().animate({marginBottom:'-'+moveAmount +'px',opacity:o.showOpacity},o.showSpeed,o.showEasing)},o.showDelay);
				});
				jQuery(obj).bind('mouseout', function(){
					setTimeout(function(){jQuery(obj).prev('div.caption').animate({marginBottom:'0px',opacity:o.hideOpacity},o.hideSpeed,o.hideEasing)},o.hideDelay);
				});
				jQuery('.caption').css({'opacity':o.hideOpacity});
  			});
    	}
	});
})(jQuery);