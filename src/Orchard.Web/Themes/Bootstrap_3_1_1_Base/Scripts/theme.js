﻿$(function () {
    // todo - Put this into the child theme

    $(window).resize(function () {
        var masthead = $(".widget-masthead");
        var width = masthead.width();                
        var height = width * 700 / 1200;
        masthead.height(height);
    });

    $(window).resize();
});