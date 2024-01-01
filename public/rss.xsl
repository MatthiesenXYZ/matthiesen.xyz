<?xml version="1.0" encoding="utf-8"?>
<!--
## Credits

pretty-feed is based on work by lepture.com:

   https://lepture.com/en/2019/rss-style-with-xsl

This current version is maintained by aboutfeeds.com:

   https://github.com/genmon/aboutfeeds


## Feedback

This file is in BETA. Please test and contribute to the discussion:

     https://github.com/genmon/aboutfeeds/issues/8

-->
<xsl:stylesheet version="3.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:atom="http://www.w3.org/2005/Atom" xmlns:dc="http://purl.org/dc/elements/1.1/"
                xmlns:itunes="http://www.itunes.com/dtds/podcast-1.0.dtd">
  <xsl:output method="html" version="1.0" encoding="UTF-8" indent="yes"/>
  <xsl:template match="/">
    <html xmlns="http://www.w3.org/1999/xhtml" lang="en">
      <head>
        <title><xsl:value-of select="/rss/channel/title"/> Web Feed</title>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"/>
        <style type="text/css">/*! normalize.css v4.1.1 | MIT License | github.com/necolas/normalize.css */html{font-family:sans-serif;-ms-text-size-adjust:100%;-webkit-text-size-adjust:100%}body{margin:0}article,aside,details,figcaption,figure,footer,header,main,menu,nav,section{display:block}summary{display:list-item}audio,canvas,progress,video{display:inline-block}audio:not([controls]){display:none;height:0}progress{vertical-align:baseline}[hidden],template{display:none!important}a{background-color:transparent}a:active,a:hover{outline-width:0}abbr[title]{border-bottom:none;text-decoration:underline;text-decoration:underline dotted}b,strong{font-weight:inherit}b,strong{font-weight:bolder}dfn{font-style:italic}h1{font-size:2em;margin:.67em 0}mark{background-color:#ff0;color:#000}small{font-size:80%}sub,sup{font-size:75%;line-height:0;position:relative;vertical-align:baseline}sub{bottom:-.25em}sup{top:-.5em}img{border-style:none}svg:not(:root){overflow:hidden}code,kbd,pre,samp{font-family:monospace,monospace;font-size:1em}figure{margin:1em 40px}hr{box-sizing:content-box;height:0;overflow:visible}button,input,select,textarea{font:inherit;margin:0}optgroup{font-weight:700}button,input{overflow:visible}button,select{text-transform:none}[type=reset],[type=submit],button,html [type=button]{-webkit-appearance:button}[type=button]::-moz-focus-inner,[type=reset]::-moz-focus-inner,[type=submit]::-moz-focus-inner,button::-moz-focus-inner{border-style:none;padding:0}[type=button]:-moz-focusring,[type=reset]:-moz-focusring,[type=submit]:-moz-focusring,button:-moz-focusring{outline:1px dotted ButtonText}fieldset{border:1px solid silver;margin:0 2px;padding:.35em .625em .75em}legend{box-sizing:border-box;color:inherit;display:table;max-width:100%;padding:0;white-space:normal}textarea{overflow:auto}[type=checkbox],[type=radio]{box-sizing:border-box;padding:0}[type=number]::-webkit-inner-spin-button,[type=number]::-webkit-outer-spin-button{height:auto}[type=search]{-webkit-appearance:textfield;outline-offset:-2px}[type=search]::-webkit-search-cancel-button,[type=search]::-webkit-search-decoration{-webkit-appearance:none}::-webkit-input-placeholder{color:inherit;opacity:.54}::-webkit-file-upload-button{-webkit-appearance:button;font:inherit}*{box-sizing:border-box}button,input,select,textarea{font-family:inherit;font-size:inherit;line-height:inherit}body{font-family:-apple-system,BlinkMacSystemFont,"Segoe UI",Helvetica,Arial,sans-serif,"Apple Color Emoji","Segoe UI Emoji","Segoe UI Symbol";font-size:14px;line-height:1.5;color:#24292e;background-color:#fff}a{color:#0366d6;text-decoration:none}a:hover{text-decoration:underline}b,strong{font-weight:600}.rule,hr{height:0;margin:15px 0;overflow:hidden;background:0 0;border:0;border-bottom:1px solid #dfe2e5}.rule::before,hr::before{display:table;content:""}.rule::after,hr::after{display:table;clear:both;content:""}table{border-spacing:0;border-collapse:collapse}td,th{padding:0}button{cursor:pointer;border-radius:0}[hidden][hidden]{display:none!important}details summary{cursor:pointer}details:not([open])>* :not(summary){display:none!important}h1,h2,h3,h4,h5,h6{margin-top:0;margin-bottom:0}h1{font-size:32px;font-weight:600}h2{font-size:24px;font-weight:600}h3{font-size:20px;font-weight:600}h4{font-size:16px;font-weight:600}h5{font-size:14px;font-weight:600}h6{font-size:12px;font-weight:600}p{margin-top:0;margin-bottom:10px}small{font-size:90%}blockquote{margin:0}ol,ul{padding-left:0;margin-top:0;margin-bottom:0}ol ol,ul ol{list-style-type:lower-roman}ol ol ol,ol ul ol,ul ol ol,ul ul ol{list-style-type:lower-alpha}dd{margin-left:0}code,tt{font-family:SFMono-Regular,Consolas,"Liberation Mono",Menlo,Courier,monospace;font-size:12px}pre{margin-top:0;margin-bottom:0;font-family:SFMono-Regular,Consolas,"Liberation Mono",Menlo,Courier,monospace;font-size:12px}.octicon{vertical-align:text-bottom}.anim-fade-in{animation-name:fade-in;animation-duration:1s;animation-timing-function:ease-in-out}.anim-fade-in.fast{animation-duration:.3s}@keyframes fade-in{0%{opacity:0}100%{opacity:1}}.anim-fade-out{animation-name:fade-out;animation-duration:1s;animation-timing-function:ease-out}.anim-fade-out.fast{animation-duration:.3s}@keyframes fade-out{0%{opacity:1}100%{opacity:0}}.anim-fade-up{opacity:0;animation-name:fade-up;animation-duration:.3s;animation-fill-mode:forwards;animation-timing-function:ease-out;animation-delay:1s}@keyframes fade-up{0%{opacity:.8;transform:translateY(100%)}100%{opacity:1;transform:translateY(0)}}.anim-fade-down{animation-name:fade-down;animation-duration:.3s;animation-fill-mode:forwards;animation-timing-function:ease-in}@keyframes fade-down{0%{opacity:1;transform:translateY(0)}100%{opacity:.5;transform:translateY(100%)}}.anim-grow-x{width:0%;animation-name:grow-x;animation-duration:.3s;animation-fill-mode:forwards;animation-timing-function:ease;animation-delay:.5s}@keyframes grow-x{to{width:100%}}.anim-shrink-x{animation-name:shrink-x;animation-duration:.3s;animation-fill-mode:forwards;animation-timing-function:ease-in-out;animation-delay:.5s}@keyframes shrink-x{to{width:0%}}.anim-scale-in{animation-name:scale-in;animation-duration:.15s;animation-timing-function:cubic-bezier(.2,0,.13,1.5)}@keyframes scale-in{0%{opacity:0;transform:scale(.5)}100%{opacity:1;transform:scale(1)}}.anim-pulse{animation-name:pulse;animation-duration:2s;animation-timing-function:linear;animation-iteration-count:infinite}@keyframes pulse{0%{opacity:.3}10%{opacity:1}100%{opacity:.3}}.anim-pulse-in{animation-name:pulse-in;animation-duration:.5s}@keyframes pulse-in{0%{transform:scale3d(1,1,1)}50%{transform:scale3d(1.1,1.1,1.1)}100%{transform:scale3d(1,1,1)}}.hover-grow{transition:transform .3s;backface-visibility:hidden}.hover-grow:hover{transform:scale(1.025)}.border{border:1px #e1e4e8 solid!important}.border-y{border-top:1px #e1e4e8 solid!important;border-bottom:1px #e1e4e8 solid!important}.border-0{border:0!important}.border-dashed{border-style:dashed!important}.border-blue{border-color:#0366d6!important}.border-blue-light{border-color:#c8e1ff!important}.border-green{border-color:#34d058!important}.border-green-light{border-color:#a2cbac!important}.border-red{border-color:#d73a49!important}.border-red-light{border-color:#cea0a5!important}.border-purple{border-color:#6f42c1!important}.border-yellow{border-color:#d9d0a5!important}.border-gray-light{border-color:#eaecef!important}.border-gray-dark{border-color:#d1d5da!important}.border-black-fade{border-color:rgba(27,31,35,.15)!important}.border-top{border-top:1px #e1e4e8 solid!important}.border-right{border-right:1px #e1e4e8 solid!important}.border-bottom{border-bottom:1px #e1e4e8 solid!important}.border-left{border-left:1px #e1e4e8 solid!important}.border-top-0{border-top:0!important}.border-right-0{border-right:0!important}.border-bottom-0{border-bottom:0!important}.border-left-0{border-left:0!important}.rounded-0{border-radius:0!important}.rounded-1{border-radius:3px!important}.rounded-2{border-radius:6px!important}.rounded-top-0{border-top-left-radius:0!important;border-top-right-radius:0!important}.rounded-top-1{border-top-left-radius:3px!important;border-top-right-radius:3px!important}.rounded-top-2{border-top-left-radius:6px!important;border-top-right-radius:6px!important}.rounded-right-0{border-top-right-radius:0!important;border-bottom-right-radius:0!important}.rounded-right-1{border-top-right-radius:3px!important;border-bottom-right-radius:3px!important}.rounded-right-2{border-top-right-radius:6px!important;border-bottom-right-radius:6px!important}.rounded-bottom-0{border-bottom-right-radius:0!important;border-bottom-left-radius:0!important}.rounded-bottom-1{border-bottom-right-radius:3px!important;border-bottom-left-radius:3px!important}.rounded-bottom-2{border-bottom-right-radius:6px!important;border-bottom-left-radius:6px!important}.rounded-left-0{border-bottom-left-radius:0!important;border-top-left-radius:0!important}.rounded-left-1{border-bottom-left-radius:3px!important;border-top-left-radius:3px!important}.rounded-left-2{border-bottom-left-radius:6px!important;border-top-left-radius:6px!important}@media (min-width:544px){.border-sm-top{border-top:1px #e1e4e8 solid!important}.border-sm-right{border-right:1px #e1e4e8 solid!important}.border-sm-bottom{border-bottom:1px #e1e4e8 solid!important}.border-sm-left{border-left:1px #e1e4e8 solid!important}.border-sm-top-0{border-top:0!important}.border-sm-right-0{border-right:0!important}.border-sm-bottom-0{border-bottom:0!important}.border-sm-left-0{border-left:0!important}.rounded-sm-0{border-radius:0!important}.rounded-sm-1{border-radius:3px!important}.rounded-sm-2{border-radius:6px!important}.rounded-sm-top-0{border-top-left-radius:0!important;border-top-right-radius:0!important}.rounded-sm-top-1{border-top-left-radius:3px!important;border-top-right-radius:3px!important}.rounded-sm-top-2{border-top-left-radius:6px!important;border-top-right-radius:6px!important}.rounded-sm-right-0{border-top-right-radius:0!important;border-bottom-right-radius:0!important}.rounded-sm-right-1{border-top-right-radius:3px!important;border-bottom-right-radius:3px!important}.rounded-sm-right-2{border-top-right-radius:6px!important;border-bottom-right-radius:6px!important}.rounded-sm-bottom-0{border-bottom-right-radius:0!important;border-bottom-left-radius:0!important}.rounded-sm-bottom-1{border-bottom-right-radius:3px!important;border-bottom-left-radius:3px!important}.rounded-sm-bottom-2{border-bottom-right-radius:6px!important;border-bottom-left-radius:6px!important}.rounded-sm-left-0{border-bottom-left-radius:0!important;border-top-left-radius:0!important}.rounded-sm-left-1{border-bottom-left-radius:3px!important;border-top-left-radius:3px!important}.rounded-sm-left-2{border-bottom-left-radius:6px!important;border-top-left-radius:6px!important}}@media (min-width:768px){.border-md-top{border-top:1px #e1e4e8 solid!important}.border-md-right{border-right:1px #e1e4e8 solid!important}.border-md-bottom{border-bottom:1px #e1e4e8 solid!important}.border-md-left{border-left:1px #e1e4e8 solid!important}.border-md-top-0{border-top:0!important}.border-md-right-0{border-right:0!important}.border-md-bottom-0{border-bottom:0!important}.border-md-left-0{border-left:0!important}.rounded-md-0{border-radius:0!important}.rounded-md-1{border-radius:3px!important}.rounded-md-2{border-radius:6px!important}.rounded-md-top-0{border-top-left-radius:0!important;border-top-right-radius:0!important}.rounded-md-top-1{border-top-left-radius:3px!important;border-top-right-radius:3px!important}.rounded-md-top-2{border-top-left-radius:6px!important;border-top-right-radius:6px!important}.rounded-md-right-0{border-top-right-radius:0!important;border-bottom-right-radius:0!important}.rounded-md-right-1{border-top-right-radius:3px!important;border-bottom-right-radius:3px!important}.rounded-md-right-2{border-top-right-radius:6px!important;border-bottom-right-radius:6px!important}.rounded-md-bottom-0{border-bottom-right-radius:0!important;border-bottom-left-radius:0!important}.rounded-md-bottom-1{border-bottom-right-radius:3px!important;border-bottom-left-radius:3px!important}.rounded-md-bottom-2{border-bottom-right-radius:6px!important;border-bottom-left-radius:6px!important}.rounded-md-left-0{border-bottom-left-radius:0!important;border-top-left-radius:0!important}.rounded-md-left-1{border-bottom-left-radius:3px!important;border-top-left-radius:3px!important}.rounded-md-left-2{border-bottom-left-radius:6px!important;border-top-left-radius:6px!important}}@media (min-width:1012px){.border-lg-top{border-top:1px #e1e4e8 solid!important}.border-lg-right{border-right:1px #e1e4e8 solid!important}.border-lg-bottom{border-bottom:1px #e1e4e8 solid!important}.border-lg-left{border-left:1px #e1e4e8 solid!important}.border-lg-top-0{border-top:0!important}.border-lg-right-0{border-right:0!important}.border-lg-bottom-0{border-bottom:0!important}.border-lg-left-0{border-left:0!important}.rounded-lg-0{border-radius:0!important}.rounded-lg-1{border-radius:3px!important}.rounded-lg-2{border-radius:6px!important}.rounded-lg-top-0{border-top-left-radius:0!important;border-top-right-radius:0!important}.rounded-lg-top-1{border-top-left-radius:3px!important;border-top-right-radius:3px!important}.rounded-lg-top-2{border-top-left-radius:6px!important;border-top-right-radius:6px!important}.rounded-lg-right-0{border-top-right-radius:0!important;border-bottom-right-radius:0!important}.rounded-lg-right-1{border-top-right-radius:3px!important;border-bottom-right-radius:3px!important}.rounded-lg-right-2{border-top-right-radius:6px!important;border-bottom-right-radius:6px!important}.rounded-lg-bottom-0{border-bottom-right-radius:0!important;border-bottom-left-radius:0!important}.rounded-lg-bottom-1{border-bottom-right-radius:3px!important;border-bottom-left-radius:3px!important}.rounded-lg-bottom-2{border-bottom-right-radius:6px!important;border-bottom-left-radius:6px!important}.rounded-lg-left-0{border-bottom-left-radius:0!important;border-top-left-radius:0!important}.rounded-lg-left-1{border-bottom-left-radius:3px!important;border-top-left-radius:3px!important}.rounded-lg-left-2{border-bottom-left-radius:6px!important;border-top-left-radius:6px!important}}@media (min-width:1280px){.border-xl-top{border-top:1px #e1e4e8 solid!important}.border-xl-right{border-right:1px #e1e4e8 solid!important}.border-xl-bottom{border-bottom:1px #e1e4e8 solid!important}.border-xl-left{border-left:1px #e1e4e8 solid!important}.border-xl-top-0{border-top:0!important}.border-xl-right-0{border-right:0!important}.border-xl-bottom-0{border-bottom:0!important}.border-xl-left-0{border-left:0!important}.rounded-xl-0{border-radius:0!important}.rounded-xl-1{border-radius:3px!important}.rounded-xl-2{border-radius:6px!important}.rounded-xl-top-0{border-top-left-radius:0!important;border-top-right-radius:0!important}.rounded-xl-top-1{border-top-left-radius:3px!important;border-top-right-radius:3px!important}.rounded-xl-top-2{border-top-left-radius:6px!important;border-top-right-radius:6px!important}.rounded-xl-right-0{border-top-right-radius:0!important;border-bottom-right-radius:0!important}.rounded-xl-right-1{border-top-right-radius:3px!important;border-bottom-right-radius:3px!important}.rounded-xl-right-2{border-top-right-radius:6px!important;border-bottom-right-radius:6px!important}.rounded-xl-bottom-0{border-bottom-right-radius:0!important;border-bottom-left-radius:0!important}.rounded-xl-bottom-1{border-bottom-right-radius:3px!important;border-bottom-left-radius:3px!important}.rounded-xl-bottom-2{border-bottom-right-radius:6px!important;border-bottom-left-radius:6px!important}.rounded-xl-left-0{border-bottom-left-radius:0!important;border-top-left-radius:0!important}.rounded-xl-left-1{border-bottom-left-radius:3px!important;border-top-left-radius:3px!important}.rounded-xl-left-2{border-bottom-left-radius:6px!important;border-top-left-radius:6px!important}}.circle{border-radius:50%!important}.box-shadow{box-shadow:0 1px 1px rgba(27,31,35,.1)!important}.box-shadow-medium{box-shadow:0 1px 5px rgba(27,31,35,.15)!important}.box-shadow-large{box-shadow:0 1px 15px rgba(27,31,35,.15)!important}.box-shadow-extra-large{box-shadow:0 10px 50px rgba(27,31,35,.07)!important}.box-shadow-none{box-shadow:none!important}.bg-white{background-color:#fff!important}.bg-blue{background-color:#0366d6!important}.bg-blue-light{background-color:#f1f8ff!important}.bg-gray-dark{background-color:#24292e!important}.bg-gray{background-color:#f6f8fa!important}.bg-gray-light{background-color:#fafbfc!important}.bg-green{background-color:#28a745!important}.bg-green-light{background-color:#dcffe4!important}.bg-red{background-color:#d73a49!important}.bg-red-light{background-color:#ffdce0!important}.bg-yellow{background-color:#ffd33d!important}.bg-yellow-light{background-color:#fff5b1!important}.bg-purple{background-color:#6f42c1!important}.bg-purple-light{background-color:#f5f0ff!important}.bg-shade-gradient{background-image:linear-gradient(180deg,rgba(27,31,35,.065),rgba(27,31,35,0))!important;background-repeat:no-repeat!important;background-size:100% 200px!important}.text-blue{color:#0366d6!important}.text-red{color:#cb2431!important}.text-gray-light{color:#6a737d!important}.text-gray{color:#586069!important}.text-gray-dark{color:#24292e!important}.text-green{color:#28a745!important}.text-orange{color:#a04100!important}.text-orange-light{color:#e36209!important}.text-purple{color:#6f42c1!important}.text-white{color:#fff!important}.text-inherit{color:inherit!important}.text-pending{color:#b08800!important}.bg-pending{color:#dbab09!important}.link-gray{color:#586069!important}.link-gray:hover{color:#0366d6!important}.link-gray-dark{color:#24292e!important}.link-gray-dark:hover{color:#0366d6!important}.link-hover-blue:hover{color:#0366d6!important}.muted-link{color:#586069!important}.muted-link:hover{color:#0366d6!important;text-decoration:none}.details-overlay[open]>summary::before{position:fixed;top:0;right:0;bottom:0;left:0;z-index:80;display:block;cursor:default;content:" ";background:0 0}.details-overlay-dark[open]>summary::before{z-index:99;background:rgba(27,31,35,.5)}.flex-row{flex-direction:row!important}.flex-row-reverse{flex-direction:row-reverse!important}.flex-column{flex-direction:column!important}.flex-wrap{flex-wrap:wrap!important}.flex-nowrap{flex-wrap:nowrap!important}.flex-justify-start{justify-content:flex-start!important}.flex-justify-end{justify-content:flex-end!important}.flex-justify-center{justify-content:center!important}.flex-justify-between{justify-content:space-between!important}.flex-justify-around{justify-content:space-around!important}.flex-items-start{align-items:flex-start!important}.flex-items-end{align-items:flex-end!important}.flex-items-center{align-items:center!important}.flex-items-baseline{align-items:baseline!important}.flex-items-stretch{align-items:stretch!important}.flex-content-start{align-content:flex-start!important}.flex-content-end{align-content:flex-end!important}.flex-content-center{align-content:center!important}.flex-content-between{align-content:space-between!important}.flex-content-around{align-content:space-around!important}.flex-content-stretch{align-content:stretch!important}.flex-auto{flex:1 1 auto!important}.flex-shrink-0{flex-shrink:0!important}.flex-self-auto{align-self:auto!important}.flex-self-start{align-self:flex-start!important}.flex-self-end{align-self:flex-end!important}.flex-self-center{align-self:center!important}.flex-self-baseline{align-self:baseline!important}.flex-self-stretch{align-self:stretch!important}.flex-item-equal{flex-grow:1;flex-basis:0}@media (min-width:544px){.flex-sm-row{flex-direction:row!important}.flex-sm-row-reverse{flex-direction:row-reverse!important}.flex-sm-column{flex-direction:column!important}.flex-sm-wrap{flex-wrap:wrap!important}.flex-sm-nowrap{flex-wrap:nowrap!important}.flex-sm-justify-start{justify-content:flex-start!important}.flex-sm-justify-end{justify-content:flex-end!important}.flex-sm-justify-center{justify-content:center!important}.flex-sm-justify-between{justify-content:space-between!important}.flex-sm-justify-around{justify-content:space-around!important}.flex-sm-items-start{align-items:flex-start!important}.flex-sm-items-end{align-items:flex-end!important}.flex-sm-items-center{align-items:center!important}.flex-sm-items-baseline{align-items:baseline!important}.flex-sm-items-stretch{align-items:stretch!important}.flex-sm-content-start{align-content:flex-start!important}.flex-sm-content-end{align-content:flex-end!important}.flex-sm-content-center{align-content:center!important}.flex-sm-content-between{align-content:space-between!important}.flex-sm-content-around{align-content:space-around!important}.flex-sm-content-stretch{align-content:stretch!important}.flex-sm-auto{flex:1 1 auto!important}.flex-sm-shrink-0{flex-shrink:0!important}.flex-sm-self-auto{align-self:auto!important}.flex-sm-self-start{align-self:flex-start!important}.flex-sm-self-end{align-self:flex-end!important}.flex-sm-self-center{align-self:center!important}.flex-sm-self-baseline{align-self:baseline!important}.flex-sm-self-stretch{align-self:stretch!important}.flex-sm-item-equal{flex-grow:1;flex-basis:0}}@media (min-width:768px){.flex-md-row{flex-direction:row!important}.flex-md-row-reverse{flex-direction:row-reverse!important}.flex-md-column{flex-direction:column!important}.flex-md-wrap{flex-wrap:wrap!important}.flex-md-nowrap{flex-wrap:nowrap!important}.flex-md-justify-start{justify-content:flex-start!important}.flex-md-justify-end{justify-content:flex-end!important}.flex-md-justify-center{justify-content:center!important}.flex-md-justify-between{justify-content:space-between!important}.flex-md-justify-around{justify-content:space-around!important}.flex-md-items-start{align-items:flex-start!important}.flex-md-items-end{align-items:flex-end!important}.flex-md-items-center{align-items:center!important}.flex-md-items-baseline{align-items:baseline!important}.flex-md-items-stretch{align-items:stretch!important}.flex-md-content-start{align-content:flex-start!important}.flex-md-content-end{align-content:flex-end!important}.flex-md-content-center{align-content:center!important}.flex-md-content-between{align-content:space-between!important}.flex-md-content-around{align-content:space-around!important}.flex-md-content-stretch{align-content:stretch!important}.flex-md-auto{flex:1 1 auto!important}.flex-md-shrink-0{flex-shrink:0!important}.flex-md-self-auto{align-self:auto!important}.flex-md-self-start{align-self:flex-start!important}.flex-md-self-end{align-self:flex-end!important}.flex-md-self-center{align-self:center!important}.flex-md-self-baseline{align-self:baseline!important}.flex-md-self-stretch{align-self:stretch!important}.flex-md-item-equal{flex-grow:1;flex-basis:0}}@media (min-width:1012px){.flex-lg-row{flex-direction:row!important}.flex-lg-row-reverse{flex-direction:row-reverse!important}.flex-lg-column{flex-direction:column!important}.flex-lg-wrap{flex-wrap:wrap!important}.flex-lg-nowrap{flex-wrap:nowrap!important}.flex-lg-justify-start{justify-content:flex-start!important}.flex-lg-justify-end{justify-content:flex-end!important}.flex-lg-justify-center{justify-content:center!important}.flex-lg-justify-between{justify-content:space-between!important}.flex-lg-justify-around{justify-content:space-around!important}.flex-lg-items-start{align-items:flex-start!important}.flex-lg-items-end{align-items:flex-end!important}.flex-lg-items-center{align-items:center!important}.flex-lg-items-baseline{align-items:baseline!important}.flex-lg-items-stretch{align-items:stretch!important}.flex-lg-content-start{align-content:flex-start!important}.flex-lg-content-end{align-content:flex-end!important}.flex-lg-content-center{align-content:center!important}.flex-lg-content-between{align-content:space-between!important}.flex-lg-content-around{align-content:space-around!important}.flex-lg-content-stretch{align-content:stretch!important}.flex-lg-auto{flex:1 1 auto!important}.flex-lg-shrink-0{flex-shrink:0!important}.flex-lg-self-auto{align-self:auto!important}.flex-lg-self-start{align-self:flex-start!important}.flex-lg-self-end{align-self:flex-end!important}.flex-lg-self-center{align-self:center!important}.flex-lg-self-baseline{align-self:baseline!important}.flex-lg-self-stretch{align-self:stretch!important}.flex-lg-item-equal{flex-grow:1;flex-basis:0}}@media (min-width:1280px){.flex-xl-row{flex-direction:row!important}.flex-xl-row-reverse{flex-direction:row-reverse!important}.flex-xl-column{flex-direction:column!important}.flex-xl-wrap{flex-wrap:wrap!important}.flex-xl-nowrap{flex-wrap:nowrap!important}.flex-xl-justify-start{justify-content:flex-start!important}.flex-xl-justify-end{justify-content:flex-end!important}.flex-xl-justify-center{justify-content:center!important}.flex-xl-justify-between{justify-content:space-between!important}.flex-xl-justify-around{justify-content:space-around!important}.flex-xl-items-start{align-items:flex-start!important}.flex-xl-items-end{align-items:flex-end!important}.flex-xl-items-center{align-items:center!important}.flex-xl-items-baseline{align-items:baseline!important}.flex-xl-items-stretch{align-items:stretch!important}.flex-xl-content-start{align-content:flex-start!important}.flex-xl-content-end{align-content:flex-end!important}.flex-xl-content-center{align-content:center!important}.flex-xl-content-between{align-content:space-between!important}.flex-xl-content-around{align-content:space-around!important}.flex-xl-content-stretch{align-content:stretch!important}.flex-xl-auto{flex:1 1 auto!important}.flex-xl-shrink-0{flex-shrink:0!important}.flex-xl-self-auto{align-self:auto!important}.flex-xl-self-start{align-self:flex-start!important}.flex-xl-self-end{align-self:flex-end!important}.flex-xl-self-center{align-self:center!important}.flex-xl-self-baseline{align-self:baseline!important}.flex-xl-self-stretch{align-self:stretch!important}.flex-xl-item-equal{flex-grow:1;flex-basis:0}}.position-static{position:static!important}.position-relative{position:relative!important}.position-absolute{position:absolute!important}.position-fixed{position:fixed!important}.top-0{top:0!important}.right-0{right:0!important}.bottom-0{bottom:0!important}.left-0{left:0!important}.v-align-middle{vertical-align:middle!important}.v-align-top{vertical-align:top!important}.v-align-bottom{vertical-align:bottom!important}.v-align-text-top{vertical-align:text-top!important}.v-align-text-bottom{vertical-align:text-bottom!important}.v-align-baseline{vertical-align:baseline!important}.overflow-hidden{overflow:hidden!important}.overflow-scroll{overflow:scroll!important}.overflow-auto{overflow:auto!important}.clearfix::before{display:table;content:""}.clearfix::after{display:table;clear:both;content:""}.float-left{float:left!important}.float-right{float:right!important}.float-none{float:none!important}@media (min-width:544px){.float-sm-left{float:left!important}.float-sm-right{float:right!important}.float-sm-none{float:none!important}}@media (min-width:768px){.float-md-left{float:left!important}.float-md-right{float:right!important}.float-md-none{float:none!important}}@media (min-width:1012px){.float-lg-left{float:left!important}.float-lg-right{float:right!important}.float-lg-none{float:none!important}}@media (min-width:1280px){.float-xl-left{float:left!important}.float-xl-right{float:right!important}.float-xl-none{float:none!important}}.width-fit{max-width:100%!important}.width-full{width:100%!important}.height-fit{max-height:100%!important}.height-full{height:100%!important}.min-width-0{min-width:0!important}.direction-rtl{direction:rtl!important}.direction-ltr{direction:ltr!important}@media (min-width:544px){.direction-sm-rtl{direction:rtl!important}.direction-sm-ltr{direction:ltr!important}}@media (min-width:768px){.direction-md-rtl{direction:rtl!important}.direction-md-ltr{direction:ltr!important}}@media (min-width:1012px){.direction-lg-rtl{direction:rtl!important}.direction-lg-ltr{direction:ltr!important}}@media (min-width:1280px){.direction-xl-rtl{direction:rtl!important}.direction-xl-ltr{direction:ltr!important}}.m-0{margin:0!important}.mt-0{margin-top:0!important}.mr-0{margin-right:0!important}.mb-0{margin-bottom:0!important}.ml-0{margin-left:0!important}.mx-0{margin-right:0!important;margin-left:0!important}.my-0{margin-top:0!important;margin-bottom:0!important}.m-1{margin:4px!important}.mt-1{margin-top:4px!important}.mr-1{margin-right:4px!important}.mb-1{margin-bottom:4px!important}.ml-1{margin-left:4px!important}.mt-n1{margin-top:-4px!important}.mr-n1{margin-right:-4px!important}.mb-n1{margin-bottom:-4px!important}.ml-n1{margin-left:-4px!important}.mx-1{margin-right:4px!important;margin-left:4px!important}.my-1{margin-top:4px!important;margin-bottom:4px!important}.m-2{margin:8px!important}.mt-2{margin-top:8px!important}.mr-2{margin-right:8px!important}.mb-2{margin-bottom:8px!important}.ml-2{margin-left:8px!important}.mt-n2{margin-top:-8px!important}.mr-n2{margin-right:-8px!important}.mb-n2{margin-bottom:-8px!important}.ml-n2{margin-left:-8px!important}.mx-2{margin-right:8px!important;margin-left:8px!important}.my-2{margin-top:8px!important;margin-bottom:8px!important}.m-3{margin:16px!important}.mt-3{margin-top:16px!important}.mr-3{margin-right:16px!important}.mb-3{margin-bottom:16px!important}.ml-3{margin-left:16px!important}.mt-n3{margin-top:-16px!important}.mr-n3{margin-right:-16px!important}.mb-n3{margin-bottom:-16px!important}.ml-n3{margin-left:-16px!important}.mx-3{margin-right:16px!important;margin-left:16px!important}.my-3{margin-top:16px!important;margin-bottom:16px!important}.m-4{margin:24px!important}.mt-4{margin-top:24px!important}.mr-4{margin-right:24px!important}.mb-4{margin-bottom:24px!important}.ml-4{margin-left:24px!important}.mt-n4{margin-top:-24px!important}.mr-n4{margin-right:-24px!important}.mb-n4{margin-bottom:-24px!important}.ml-n4{margin-left:-24px!important}.mx-4{margin-right:24px!important;margin-left:24px!important}.my-4{margin-top:24px!important;margin-bottom:24px!important}.m-5{margin:32px!important}.mt-5{margin-top:32px!important}.mr-5{margin-right:32px!important}.mb-5{margin-bottom:32px!important}.ml-5{margin-left:32px!important}.mt-n5{margin-top:-32px!important}.mr-n5{margin-right:-32px!important}.mb-n5{margin-bottom:-32px!important}.ml-n5{margin-left:-32px!important}.mx-5{margin-right:32px!important;margin-left:32px!important}.my-5{margin-top:32px!important;margin-bottom:32px!important}.m-6{margin:40px!important}.mt-6{margin-top:40px!important}.mr-6{margin-right:40px!important}.mb-6{margin-bottom:40px!important}.ml-6{margin-left:40px!important}.mt-n6{margin-top:-40px!important}.mr-n6{margin-right:-40px!important}.mb-n6{margin-bottom:-40px!important}.ml-n6{margin-left:-40px!important}.mx-6{margin-right:40px!important;margin-left:40px!important}.my-6{margin-top:40px!important;margin-bottom:40px!important}.mx-auto{margin-right:auto!important;margin-left:auto!important}@media (min-width:544px){.m-sm-0{margin:0!important}.mt-sm-0{margin-top:0!important}.mr-sm-0{margin-right:0!important}.mb-sm-0{margin-bottom:0!important}.ml-sm-0{margin-left:0!important}.mx-sm-0{margin-right:0!important;margin-left:0!important}.my-sm-0{margin-top:0!important;margin-bottom:0!important}.m-sm-1{margin:4px!important}.mt-sm-1{margin-top:4px!important}.mr-sm-1{margin-right:4px!important}.mb-sm-1{margin-bottom:4px!important}.ml-sm-1{margin-left:4px!important}.mt-sm-n1{margin-top:-4px!important}.mr-sm-n1{margin-right:-4px!important}.mb-sm-n1{margin-bottom:-4px!important}.ml-sm-n1{margin-left:-4px!important}.mx-sm-1{margin-right:4px!important;margin-left:4px!important}.my-sm-1{margin-top:4px!important;margin-bottom:4px!important}.m-sm-2{margin:8px!important}.mt-sm-2{margin-top:8px!important}.mr-sm-2{margin-right:8px!important}.mb-sm-2{margin-bottom:8px!important}.ml-sm-2{margin-left:8px!important}.mt-sm-n2{margin-top:-8px!important}.mr-sm-n2{margin-right:-8px!important}.mb-sm-n2{margin-bottom:-8px!important}.ml-sm-n2{margin-left:-8px!important}.mx-sm-2{margin-right:8px!important;margin-left:8px!important}.my-sm-2{margin-top:8px!important;margin-bottom:8px!important}.m-sm-3{margin:16px!important}.mt-sm-3{margin-top:16px!important}.mr-sm-3{margin-right:16px!important}.mb-sm-3{margin-bottom:16px!important}.ml-sm-3{margin-left:16px!important}.mt-sm-n3{margin-top:-16px!important}.mr-sm-n3{margin-right:-16px!important}.mb-sm-n3{margin-bottom:-16px!important}.ml-sm-n3{margin-left:-16px!important}.mx-sm-3{margin-right:16px!important;margin-left:16px!important}.my-sm-3{margin-top:16px!important;margin-bottom:16px!important}.m-sm-4{margin:24px!important}.mt-sm-4{margin-top:24px!important}.mr-sm-4{margin-right:24px!important}.mb-sm-4{margin-bottom:24px!important}.ml-sm-4{margin-left:24px!important}.mt-sm-n4{margin-top:-24px!important}.mr-sm-n4{margin-right:-24px!important}.mb-sm-n4{margin-bottom:-24px!important}.ml-sm-n4{margin-left:-24px!important}.mx-sm-4{margin-right:24px!important;margin-left:24px!important}.my-sm-4{margin-top:24px!important;margin-bottom:24px!important}.m-sm-5{margin:32px!important}.mt-sm-5{margin-top:32px!important}.mr-sm-5{margin-right:32px!important}.mb-sm-5{margin-bottom:32px!important}.ml-sm-5{margin-left:32px!important}.mt-sm-n5{margin-top:-32px!important}.mr-sm-n5{margin-right:-32px!important}.mb-sm-n5{margin-bottom:-32px!important}.ml-sm-n5{margin-left:-32px!important}.mx-sm-5{margin-right:32px!important;margin-left:32px!important}.my-sm-5{margin-top:32px!important;margin-bottom:32px!important}.m-sm-6{margin:40px!important}.mt-sm-6{margin-top:40px!important}.mr-sm-6{margin-right:40px!important}.mb-sm-6{margin-bottom:40px!important}.ml-sm-6{margin-left:40px!important}.mt-sm-n6{margin-top:-40px!important}.mr-sm-n6{margin-right:-40px!important}.mb-sm-n6{margin-bottom:-40px!important}.ml-sm-n6{margin-left:-40px!important}.mx-sm-6{margin-right:40px!important;margin-left:40px!important}.my-sm-6{margin-top:40px!important;margin-bottom:40px!important}.mx-sm-auto{margin-right:auto!important;margin-left:auto!important}}@media (min-width:768px){.m-md-0{margin:0!important}.mt-md-0{margin-top:0!important}.mr-md-0{margin-right:0!important}.mb-md-0{margin-bottom:0!important}.ml-md-0{margin-left:0!important}.mx-md-0{margin-right:0!important;margin-left:0!important}.my-md-0{margin-top:0!important;margin-bottom:0!important}.m-md-1{margin:4px!important}.mt-md-1{margin-top:4px!important}.mr-md-1{margin-right:4px!important}.mb-md-1{margin-bottom:4px!important}.ml-md-1{margin-left:4px!important}.mt-md-n1{margin-top:-4px!important}.mr-md-n1{margin-right:-4px!important}.mb-md-n1{margin-bottom:-4px!important}.ml-md-n1{margin-left:-4px!important}.mx-md-1{margin-right:4px!important;margin-left:4px!important}.my-md-1{margin-top:4px!important;margin-bottom:4px!important}.m-md-2{margin:8px!important}.mt-md-2{margin-top:8px!important}.mr-md-2{margin-right:8px!important}.mb-md-2{margin-bottom:8px!important}.ml-md-2{margin-left:8px!important}.mt-md-n2{margin-top:-8px!important}.mr-md-n2{margin-right:-8px!important}.mb-md-n2{margin-bottom:-8px!important}.ml-md-n2{margin-left:-8px!important}.mx-md-2{margin-right:8px!important;margin-left:8px!important}.my-md-2{margin-top:8px!important;margin-bottom:8px!important}.m-md-3{margin:16px!important}.mt-md-3{margin-top:16px!important}.mr-md-3{margin-right:16px!important}.mb-md-3{margin-bottom:16px!important}.ml-md-3{margin-left:16px!important}.mt-md-n3{margin-top:-16px!important}.mr-md-n3{margin-right:-16px!important}.mb-md-n3{margin-bottom:-16px!important}.ml-md-n3{margin-left:-16px!important}.mx-md-3{margin-right:16px!important;margin-left:16px!important}.my-md-3{margin-top:16px!important;margin-bottom:16px!important}.m-md-4{margin:24px!important}.mt-md-4{margin-top:24px!important}.mr-md-4{margin-right:24px!important}.mb-md-4{margin-bottom:24px!important}.ml-md-4{margin-left:24px!important}.mt-md-n4{margin-top:-24px!important}.mr-md-n4{margin-right:-24px!important}.mb-md-n4{margin-bottom:-24px!important}.ml-md-n4{margin-left:-24px!important}.mx-md-4{margin-right:24px!important;margin-left:24px!important}.my-md-4{margin-top:24px!important;margin-bottom:24px!important}.m-md-5{margin:32px!important}.mt-md-5{margin-top:32px!important}.mr-md-5{margin-right:32px!important}.mb-md-5{margin-bottom:32px!important}.ml-md-5{margin-left:32px!important}.mt-md-n5{margin-top:-32px!important}.mr-md-n5{margin-right:-32px!important}.mb-md-n5{margin-bottom:-32px!important}.ml-md-n5{margin-left:-32px!important}.mx-md-5{margin-right:32px!important;margin-left:32px!important}.my-md-5{margin-top:32px!important;margin-bottom:32px!important}.m-md-6{margin:40px!important}.mt-md-6{margin-top:40px!important}.mr-md-6{margin-right:40px!important}.mb-md-6{margin-bottom:40px!important}.ml-md-6{margin-left:40px!important}.mt-md-n6{margin-top:-40px!important}.mr-md-n6{margin-right:-40px!important}.mb-md-n6{margin-bottom:-40px!important}.ml-md-n6{margin-left:-40px!important}.mx-md-6{margin-right:40px!important;margin-left:40px!important}.my-md-6{margin-top:40px!important;margin-bottom:40px!important}.mx-md-auto{margin-right:auto!important;margin-left:auto!important}}@media (min-width:1012px){.m-lg-0{margin:0!important}.mt-lg-0{margin-top:0!important}.mr-lg-0{margin-right:0!important}.mb-lg-0{margin-bottom:0!important}.ml-lg-0{margin-left:0!important}.mx-lg-0{margin-right:0!important;margin-left:0!important}.my-lg-0{margin-top:0!important;margin-bottom:0!important}.m-lg-1{margin:4px!important}.mt-lg-1{margin-top:4px!important}.mr-lg-1{margin-right:4px!important}.mb-lg-1{margin-bottom:4px!important}.ml-lg-1{margin-left:4px!important}.mt-lg-n1{margin-top:-4px!important}.mr-lg-n1{margin-right:-4px!important}.mb-lg-n1{margin-bottom:-4px!important}.ml-lg-n1{margin-left:-4px!important}.mx-lg-1{margin-right:4px!important;margin-left:4px!important}.my-lg-1{margin-top:4px!important;margin-bottom:4px!important}.m-lg-2{margin:8px!important}.mt-lg-2{margin-top:8px!important}.mr-lg-2{margin-right:8px!important}.mb-lg-2{margin-bottom:8px!important}.ml-lg-2{margin-left:8px!important}.mt-lg-n2{margin-top:-8px!important}.mr-lg-n2{margin-right:-8px!important}.mb-lg-n2{margin-bottom:-8px!important}.ml-lg-n2{margin-left:-8px!important}.mx-lg-2{margin-right:8px!important;margin-left:8px!important}.my-lg-2{margin-top:8px!important;margin-bottom:8px!important}.m-lg-3{margin:16px!important}.mt-lg-3{margin-top:16px!important}.mr-lg-3{margin-right:16px!important}.mb-lg-3{margin-bottom:16px!important}.ml-lg-3{margin-left:16px!important}.mt-lg-n3{margin-top:-16px!important}.mr-lg-n3{margin-right:-16px!important}.mb-lg-n3{margin-bottom:-16px!important}.ml-lg-n3{margin-left:-16px!important}.mx-lg-3{margin-right:16px!important;margin-left:16px!important}.my-lg-3{margin-top:16px!important;margin-bottom:16px!important}.m-lg-4{margin:24px!important}.mt-lg-4{margin-top:24px!important}.mr-lg-4{margin-right:24px!important}.mb-lg-4{margin-bottom:24px!important}.ml-lg-4{margin-left:24px!important}.mt-lg-n4{margin-top:-24px!important}.mr-lg-n4{margin-right:-24px!important}.mb-lg-n4{margin-bottom:-24px!important}.ml-lg-n4{margin-left:-24px!important}.mx-lg-4{margin-right:24px!important;margin-left:24px!important}.my-lg-4{margin-top:24px!important;margin-bottom:24px!important}.m-lg-5{margin:32px!important}.mt-lg-5{margin-top:32px!important}.mr-lg-5{margin-right:32px!important}.mb-lg-5{margin-bottom:32px!important}.ml-lg-5{margin-left:32px!important}.mt-lg-n5{margin-top:-32px!important}.mr-lg-n5{margin-right:-32px!important}.mb-lg-n5{margin-bottom:-32px!important}.ml-lg-n5{margin-left:-32px!important}.mx-lg-5{margin-right:32px!important;margin-left:32px!important}.my-lg-5{margin-top:32px!important;margin-bottom:32px!important}.m-lg-6{margin:40px!important}.mt-lg-6{margin-top:40px!important}.mr-lg-6{margin-right:40px!important}.mb-lg-6{margin-bottom:40px!important}.ml-lg-6{margin-left:40px!important}.mt-lg-n6{margin-top:-40px!important}.mr-lg-n6{margin-right:-40px!important}.mb-lg-n6{margin-bottom:-40px!important}.ml-lg-n6{margin-left:-40px!important}.mx-lg-6{margin-right:40px!important;margin-left:40px!important}.my-lg-6{margin-top:40px!important;margin-bottom:40px!important}.mx-lg-auto{margin-right:auto!important;margin-left:auto!important}}@media (min-width:1280px){.m-xl-0{margin:0!important}.mt-xl-0{margin-top:0!important}.mr-xl-0{margin-right:0!important}.mb-xl-0{margin-bottom:0!important}.ml-xl-0{margin-left:0!important}.mx-xl-0{margin-right:0!important;margin-left:0!important}.my-xl-0{margin-top:0!important;margin-bottom:0!important}.m-xl-1{margin:4px!important}.mt-xl-1{margin-top:4px!important}.mr-xl-1{margin-right:4px!important}.mb-xl-1{margin-bottom:4px!important}.ml-xl-1{margin-left:4px!important}.mt-xl-n1{margin-top:-4px!important}.mr-xl-n1{margin-right:-4px!important}.mb-xl-n1{margin-bottom:-4px!important}.ml-xl-n1{margin-left:-4px!important}.mx-xl-1{margin-right:4px!important;margin-left:4px!important}.my-xl-1{margin-top:4px!important;margin-bottom:4px!important}.m-xl-2{margin:8px!important}.mt-xl-2{margin-top:8px!important}.mr-xl-2{margin-right:8px!important}.mb-xl-2{margin-bottom:8px!important}.ml-xl-2{margin-left:8px!important}.mt-xl-n2{margin-top:-8px!important}.mr-xl-n2{margin-right:-8px!important}.mb-xl-n2{margin-bottom:-8px!important}.ml-xl-n2{margin-left:-8px!important}.mx-xl-2{margin-right:8px!important;margin-left:8px!important}.my-xl-2{margin-top:8px!important;margin-bottom:8px!important}.m-xl-3{margin:16px!important}.mt-xl-3{margin-top:16px!important}.mr-xl-3{margin-right:16px!important}.mb-xl-3{margin-bottom:16px!important}.ml-xl-3{margin-left:16px!important}.mt-xl-n3{margin-top:-16px!important}.mr-xl-n3{margin-right:-16px!important}.mb-xl-n3{margin-bottom:-16px!important}.ml-xl-n3{margin-left:-16px!important}.mx-xl-3{margin-right:16px!important;margin-left:16px!important}.my-xl-3{margin-top:16px!important;margin-bottom:16px!important}.m-xl-4{margin:24px!important}.mt-xl-4{margin-top:24px!important}.mr-xl-4{margin-right:24px!important}.mb-xl-4{margin-bottom:24px!important}.ml-xl-4{margin-left:24px!important}.mt-xl-n4{margin-top:-24px!important}.mr-xl-n4{margin-right:-24px!important}.mb-xl-n4{margin-bottom:-24px!important}.ml-xl-n4{margin-left:-24px!important}.mx-xl-4{margin-right:24px!important;margin-left:24px!important}.my-xl-4{margin-top:24px!important;margin-bottom:24px!important}.m-xl-5{margin:32px!important}.mt-xl-5{margin-top:32px!important}.mr-xl-5{margin-right:32px!important}.mb-xl-5{margin-bottom:32px!important}.ml-xl-5{margin-left:32px!important}.mt-xl-n5{margin-top:-32px!important}.mr-xl-n5{margin-right:-32px!important}.mb-xl-n5{margin-bottom:-32px!important}.ml-xl-n5{margin-left:-32px!important}.mx-xl-5{margin-right:32px!important;margin-left:32px!important}.my-xl-5{margin-top:32px!important;margin-bottom:32px!important}.m-xl-6{margin:40px!important}.mt-xl-6{margin-top:40px!important}.mr-xl-6{margin-right:40px!important}.mb-xl-6{margin-bottom:40px!important}.ml-xl-6{margin-left:40px!important}.mt-xl-n6{margin-top:-40px!important}.mr-xl-n6{margin-right:-40px!important}.mb-xl-n6{margin-bottom:-40px!important}.ml-xl-n6{margin-left:-40px!important}.mx-xl-6{margin-right:40px!important;margin-left:40px!important}.my-xl-6{margin-top:40px!important;margin-bottom:40px!important}.mx-xl-auto{margin-right:auto!important;margin-left:auto!important}}.p-0{padding:0!important}.pt-0{padding-top:0!important}.pr-0{padding-right:0!important}.pb-0{padding-bottom:0!important}.pl-0{padding-left:0!important}.px-0{padding-right:0!important;padding-left:0!important}.py-0{padding-top:0!important;padding-bottom:0!important}.p-1{padding:4px!important}.pt-1{padding-top:4px!important}.pr-1{padding-right:4px!important}.pb-1{padding-bottom:4px!important}.pl-1{padding-left:4px!important}.px-1{padding-right:4px!important;padding-left:4px!important}.py-1{padding-top:4px!important;padding-bottom:4px!important}.p-2{padding:8px!important}.pt-2{padding-top:8px!important}.pr-2{padding-right:8px!important}.pb-2{padding-bottom:8px!important}.pl-2{padding-left:8px!important}.px-2{padding-right:8px!important;padding-left:8px!important}.py-2{padding-top:8px!important;padding-bottom:8px!important}.p-3{padding:16px!important}.pt-3{padding-top:16px!important}.pr-3{padding-right:16px!important}.pb-3{padding-bottom:16px!important}.pl-3{padding-left:16px!important}.px-3{padding-right:16px!important;padding-left:16px!important}.py-3{padding-top:16px!important;padding-bottom:16px!important}.p-4{padding:24px!important}.pt-4{padding-top:24px!important}.pr-4{padding-right:24px!important}.pb-4{padding-bottom:24px!important}.pl-4{padding-left:24px!important}.px-4{padding-right:24px!important;padding-left:24px!important}.py-4{padding-top:24px!important;padding-bottom:24px!important}.p-5{padding:32px!important}.pt-5{padding-top:32px!important}.pr-5{padding-right:32px!important}.pb-5{padding-bottom:32px!important}.pl-5{padding-left:32px!important}.px-5{padding-right:32px!important;padding-left:32px!important}.py-5{padding-top:32px!important;padding-bottom:32px!important}.p-6{padding:40px!important}.pt-6{padding-top:40px!important}.pr-6{padding-right:40px!important}.pb-6{padding-bottom:40px!important}.pl-6{padding-left:40px!important}.px-6{padding-right:40px!important;padding-left:40px!important}.py-6{padding-top:40px!important;padding-bottom:40px!important}@media (min-width:544px){.p-sm-0{padding:0!important}.pt-sm-0{padding-top:0!important}.pr-sm-0{padding-right:0!important}.pb-sm-0{padding-bottom:0!important}.pl-sm-0{padding-left:0!important}.px-sm-0{padding-right:0!important;padding-left:0!important}.py-sm-0{padding-top:0!important;padding-bottom:0!important}.p-sm-1{padding:4px!important}.pt-sm-1{padding-top:4px!important}.pr-sm-1{padding-right:4px!important}.pb-sm-1{padding-bottom:4px!important}.pl-sm-1{padding-left:4px!important}.px-sm-1{padding-right:4px!important;padding-left:4px!important}.py-sm-1{padding-top:4px!important;padding-bottom:4px!important}.p-sm-2{padding:8px!important}.pt-sm-2{padding-top:8px!important}.pr-sm-2{padding-right:8px!important}.pb-sm-2{padding-bottom:8px!important}.pl-sm-2{padding-left:8px!important}.px-sm-2{padding-right:8px!important;padding-left:8px!important}.py-sm-2{padding-top:8px!important;padding-bottom:8px!important}.p-sm-3{padding:16px!important}.pt-sm-3{padding-top:16px!important}.pr-sm-3{padding-right:16px!important}.pb-sm-3{padding-bottom:16px!important}.pl-sm-3{padding-left:16px!important}.px-sm-3{padding-right:16px!important;padding-left:16px!important}.py-sm-3{padding-top:16px!important;padding-bottom:16px!important}.p-sm-4{padding:24px!important}.pt-sm-4{padding-top:24px!important}.pr-sm-4{padding-right:24px!important}.pb-sm-4{padding-bottom:24px!important}.pl-sm-4{padding-left:24px!important}.px-sm-4{padding-right:24px!important;padding-left:24px!important}.py-sm-4{padding-top:24px!important;padding-bottom:24px!important}.p-sm-5{padding:32px!important}.pt-sm-5{padding-top:32px!important}.pr-sm-5{padding-right:32px!important}.pb-sm-5{padding-bottom:32px!important}.pl-sm-5{padding-left:32px!important}.px-sm-5{padding-right:32px!important;padding-left:32px!important}.py-sm-5{padding-top:32px!important;padding-bottom:32px!important}.p-sm-6{padding:40px!important}.pt-sm-6{padding-top:40px!important}.pr-sm-6{padding-right:40px!important}.pb-sm-6{padding-bottom:40px!important}.pl-sm-6{padding-left:40px!important}.px-sm-6{padding-right:40px!important;padding-left:40px!important}.py-sm-6{padding-top:40px!important;padding-bottom:40px!important}}@media (min-width:768px){.p-md-0{padding:0!important}.pt-md-0{padding-top:0!important}.pr-md-0{padding-right:0!important}.pb-md-0{padding-bottom:0!important}.pl-md-0{padding-left:0!important}.px-md-0{padding-right:0!important;padding-left:0!important}.py-md-0{padding-top:0!important;padding-bottom:0!important}.p-md-1{padding:4px!important}.pt-md-1{padding-top:4px!important}.pr-md-1{padding-right:4px!important}.pb-md-1{padding-bottom:4px!important}.pl-md-1{padding-left:4px!important}.px-md-1{padding-right:4px!important;padding-left:4px!important}.py-md-1{padding-top:4px!important;padding-bottom:4px!important}.p-md-2{padding:8px!important}.pt-md-2{padding-top:8px!important}.pr-md-2{padding-right:8px!important}.pb-md-2{padding-bottom:8px!important}.pl-md-2{padding-left:8px!important}.px-md-2{padding-right:8px!important;padding-left:8px!important}.py-md-2{padding-top:8px!important;padding-bottom:8px!important}.p-md-3{padding:16px!important}.pt-md-3{padding-top:16px!important}.pr-md-3{padding-right:16px!important}.pb-md-3{padding-bottom:16px!important}.pl-md-3{padding-left:16px!important}.px-md-3{padding-right:16px!important;padding-left:16px!important}.py-md-3{padding-top:16px!important;padding-bottom:16px!important}.p-md-4{padding:24px!important}.pt-md-4{padding-top:24px!important}.pr-md-4{padding-right:24px!important}.pb-md-4{padding-bottom:24px!important}.pl-md-4{padding-left:24px!important}.px-md-4{padding-right:24px!important;padding-left:24px!important}.py-md-4{padding-top:24px!important;padding-bottom:24px!important}.p-md-5{padding:32px!important}.pt-md-5{padding-top:32px!important}.pr-md-5{padding-right:32px!important}.pb-md-5{padding-bottom:32px!important}.pl-md-5{padding-left:32px!important}.px-md-5{padding-right:32px!important;padding-left:32px!important}.py-md-5{padding-top:32px!important;padding-bottom:32px!important}.p-md-6{padding:40px!important}.pt-md-6{padding-top:40px!important}.pr-md-6{padding-right:40px!important}.pb-md-6{padding-bottom:40px!important}.pl-md-6{padding-left:40px!important}.px-md-6{padding-right:40px!important;padding-left:40px!important}.py-md-6{padding-top:40px!important;padding-bottom:40px!important}}@media (min-width:1012px){.p-lg-0{padding:0!important}.pt-lg-0{padding-top:0!important}.pr-lg-0{padding-right:0!important}.pb-lg-0{padding-bottom:0!important}.pl-lg-0{padding-left:0!important}.px-lg-0{padding-right:0!important;padding-left:0!important}.py-lg-0{padding-top:0!important;padding-bottom:0!important}.p-lg-1{padding:4px!important}.pt-lg-1{padding-top:4px!important}.pr-lg-1{padding-right:4px!important}.pb-lg-1{padding-bottom:4px!important}.pl-lg-1{padding-left:4px!important}.px-lg-1{padding-right:4px!important;padding-left:4px!important}.py-lg-1{padding-top:4px!important;padding-bottom:4px!important}.p-lg-2{padding:8px!important}.pt-lg-2{padding-top:8px!important}.pr-lg-2{padding-right:8px!important}.pb-lg-2{padding-bottom:8px!important}.pl-lg-2{padding-left:8px!important}.px-lg-2{padding-right:8px!important;padding-left:8px!important}.py-lg-2{padding-top:8px!important;padding-bottom:8px!important}.p-lg-3{padding:16px!important}.pt-lg-3{padding-top:16px!important}.pr-lg-3{padding-right:16px!important}.pb-lg-3{padding-bottom:16px!important}.pl-lg-3{padding-left:16px!important}.px-lg-3{padding-right:16px!important;padding-left:16px!important}.py-lg-3{padding-top:16px!important;padding-bottom:16px!important}.p-lg-4{padding:24px!important}.pt-lg-4{padding-top:24px!important}.pr-lg-4{padding-right:24px!important}.pb-lg-4{padding-bottom:24px!important}.pl-lg-4{padding-left:24px!important}.px-lg-4{padding-right:24px!important;padding-left:24px!important}.py-lg-4{padding-top:24px!important;padding-bottom:24px!important}.p-lg-5{padding:32px!important}.pt-lg-5{padding-top:32px!important}.pr-lg-5{padding-right:32px!important}.pb-lg-5{padding-bottom:32px!important}.pl-lg-5{padding-left:32px!important}.px-lg-5{padding-right:32px!important;padding-left:32px!important}.py-lg-5{padding-top:32px!important;padding-bottom:32px!important}.p-lg-6{padding:40px!important}.pt-lg-6{padding-top:40px!important}.pr-lg-6{padding-right:40px!important}.pb-lg-6{padding-bottom:40px!important}.pl-lg-6{padding-left:40px!important}.px-lg-6{padding-right:40px!important;padding-left:40px!important}.py-lg-6{padding-top:40px!important;padding-bottom:40px!important}}@media (min-width:1280px){.p-xl-0{padding:0!important}.pt-xl-0{padding-top:0!important}.pr-xl-0{padding-right:0!important}.pb-xl-0{padding-bottom:0!important}.pl-xl-0{padding-left:0!important}.px-xl-0{padding-right:0!important;padding-left:0!important}.py-xl-0{padding-top:0!important;padding-bottom:0!important}.p-xl-1{padding:4px!important}.pt-xl-1{padding-top:4px!important}.pr-xl-1{padding-right:4px!important}.pb-xl-1{padding-bottom:4px!important}.pl-xl-1{padding-left:4px!important}.px-xl-1{padding-right:4px!important;padding-left:4px!important}.py-xl-1{padding-top:4px!important;padding-bottom:4px!important}.p-xl-2{padding:8px!important}.pt-xl-2{padding-top:8px!important}.pr-xl-2{padding-right:8px!important}.pb-xl-2{padding-bottom:8px!important}.pl-xl-2{padding-left:8px!important}.px-xl-2{padding-right:8px!important;padding-left:8px!important}.py-xl-2{padding-top:8px!important;padding-bottom:8px!important}.p-xl-3{padding:16px!important}.pt-xl-3{padding-top:16px!important}.pr-xl-3{padding-right:16px!important}.pb-xl-3{padding-bottom:16px!important}.pl-xl-3{padding-left:16px!important}.px-xl-3{padding-right:16px!important;padding-left:16px!important}.py-xl-3{padding-top:16px!important;padding-bottom:16px!important}.p-xl-4{padding:24px!important}.pt-xl-4{padding-top:24px!important}.pr-xl-4{padding-right:24px!important}.pb-xl-4{padding-bottom:24px!important}.pl-xl-4{padding-left:24px!important}.px-xl-4{padding-right:24px!important;padding-left:24px!important}.py-xl-4{padding-top:24px!important;padding-bottom:24px!important}.p-xl-5{padding:32px!important}.pt-xl-5{padding-top:32px!important}.pr-xl-5{padding-right:32px!important}.pb-xl-5{padding-bottom:32px!important}.pl-xl-5{padding-left:32px!important}.px-xl-5{padding-right:32px!important;padding-left:32px!important}.py-xl-5{padding-top:32px!important;padding-bottom:32px!important}.p-xl-6{padding:40px!important}.pt-xl-6{padding-top:40px!important}.pr-xl-6{padding-right:40px!important}.pb-xl-6{padding-bottom:40px!important}.pl-xl-6{padding-left:40px!important}.px-xl-6{padding-right:40px!important;padding-left:40px!important}.py-xl-6{padding-top:40px!important;padding-bottom:40px!important}}.p-responsive{padding-right:16px!important;padding-left:16px!important}@media (min-width:544px){.p-responsive{padding-right:40px!important;padding-left:40px!important}}@media (min-width:1012px){.p-responsive{padding-right:16px!important;padding-left:16px!important}}.h1{font-size:26px!important}@media (min-width:768px){.h1{font-size:32px!important}}.h2{font-size:22px!important}@media (min-width:768px){.h2{font-size:24px!important}}.h3{font-size:18px!important}@media (min-width:768px){.h3{font-size:20px!important}}.h4{font-size:16px!important}.h5{font-size:14px!important}.h6{font-size:12px!important}.h1,.h2,.h3,.h4,.h5,.h6{font-weight:600!important}.f1{font-size:26px!important}@media (min-width:768px){.f1{font-size:32px!important}}.f2{font-size:22px!important}@media (min-width:768px){.f2{font-size:24px!important}}.f3{font-size:18px!important}@media (min-width:768px){.f3{font-size:20px!important}}.f4{font-size:16px!important}@media (min-width:768px){.f4{font-size:16px!important}}.f5{font-size:14px!important}.f6{font-size:12px!important}.f00-light{font-size:40px!important;font-weight:300!important}@media (min-width:768px){.f00-light{font-size:48px!important}}.f0-light{font-size:32px!important;font-weight:300!important}@media (min-width:768px){.f0-light{font-size:40px!important}}.f1-light{font-size:26px!important;font-weight:300!important}@media (min-width:768px){.f1-light{font-size:32px!important}}.f2-light{font-size:22px!important;font-weight:300!important}@media (min-width:768px){.f2-light{font-size:24px!important}}.f3-light{font-size:18px!important;font-weight:300!important}@media (min-width:768px){.f3-light{font-size:20px!important}}.text-small{font-size:12px!important}.lead{margin-bottom:30px;font-size:20px;font-weight:300;color:#586069}.lh-condensed-ultra{line-height:1!important}.lh-condensed{line-height:1.25!important}.lh-default{line-height:1.5!important}.lh-0{line-height:0!important}.text-right{text-align:right!important}.text-left{text-align:left!important}.text-center{text-align:center!important}@media (min-width:544px){.text-sm-right{text-align:right!important}.text-sm-left{text-align:left!important}.text-sm-center{text-align:center!important}}@media (min-width:768px){.text-md-right{text-align:right!important}.text-md-left{text-align:left!important}.text-md-center{text-align:center!important}}@media (min-width:1012px){.text-lg-right{text-align:right!important}.text-lg-left{text-align:left!important}.text-lg-center{text-align:center!important}}@media (min-width:1280px){.text-xl-right{text-align:right!important}.text-xl-left{text-align:left!important}.text-xl-center{text-align:center!important}}.text-normal{font-weight:400!important}.text-bold{font-weight:600!important}.text-italic{font-style:italic!important}.text-uppercase{text-transform:uppercase!important}.text-underline{text-decoration:underline!important}.no-underline{text-decoration:none!important}.no-wrap{white-space:nowrap!important}.ws-normal{white-space:normal!important}.wb-break-all{word-break:break-all!important}.text-emphasized{font-weight:600;color:#24292e}.list-style-none{list-style:none!important}.text-shadow-dark{text-shadow:0 1px 1px rgba(27,31,35,.25),0 1px 25px rgba(27,31,35,.75)}.text-shadow-light{text-shadow:0 1px 0 rgba(255,255,255,.5)}.text-mono{font-family:SFMono-Regular,Consolas,"Liberation Mono",Menlo,Courier,monospace}.user-select-none{user-select:none!important}.d-block{display:block!important}.d-flex{display:flex!important}.d-inline{display:inline!important}.d-inline-block{display:inline-block!important}.d-inline-flex{display:inline-flex!important}.d-none{display:none!important}.d-table{display:table!important}.d-table-cell{display:table-cell!important}@media (min-width:544px){.d-sm-block{display:block!important}.d-sm-flex{display:flex!important}.d-sm-inline{display:inline!important}.d-sm-inline-block{display:inline-block!important}.d-sm-inline-flex{display:inline-flex!important}.d-sm-none{display:none!important}.d-sm-table{display:table!important}.d-sm-table-cell{display:table-cell!important}}@media (min-width:768px){.d-md-block{display:block!important}.d-md-flex{display:flex!important}.d-md-inline{display:inline!important}.d-md-inline-block{display:inline-block!important}.d-md-inline-flex{display:inline-flex!important}.d-md-none{display:none!important}.d-md-table{display:table!important}.d-md-table-cell{display:table-cell!important}}@media (min-width:1012px){.d-lg-block{display:block!important}.d-lg-flex{display:flex!important}.d-lg-inline{display:inline!important}.d-lg-inline-block{display:inline-block!important}.d-lg-inline-flex{display:inline-flex!important}.d-lg-none{display:none!important}.d-lg-table{display:table!important}.d-lg-table-cell{display:table-cell!important}}@media (min-width:1280px){.d-xl-block{display:block!important}.d-xl-flex{display:flex!important}.d-xl-inline{display:inline!important}.d-xl-inline-block{display:inline-block!important}.d-xl-inline-flex{display:inline-flex!important}.d-xl-none{display:none!important}.d-xl-table{display:table!important}.d-xl-table-cell{display:table-cell!important}}.v-hidden{visibility:hidden!important}.v-visible{visibility:visible!important}@media (max-width:544px){.hide-sm{display:none!important}}@media (min-width:544px) and(max-width:768px){.hide-md{display:none!important}}@media (min-width:768px) and(max-width:1012px){.hide-lg{display:none!important}}@media (min-width:1012px){.hide-xl{display:none!important}}.table-fixed{table-layout:fixed!important}.sr-only{position:absolute;width:1px;height:1px;padding:0;overflow:hidden;clip:rect(0,0,0,0);word-wrap:normal;border:0}.show-on-focus{position:absolute;width:1px;height:1px;margin:0;overflow:hidden;clip:rect(1px,1px,1px,1px)}.show-on-focus:focus{z-index:20;width:auto;height:auto;clip:auto}.container{width:980px;margin-right:auto;margin-left:auto}.container::before{display:table;content:""}.container::after{display:table;clear:both;content:""}.container-md{max-width:768px;margin-right:auto;margin-left:auto}.container-lg{max-width:1012px;margin-right:auto;margin-left:auto}.container-xl{max-width:1280px;margin-right:auto;margin-left:auto}.columns{margin-right:-10px;margin-left:-10px}.columns::before{display:table;content:""}.columns::after{display:table;clear:both;content:""}.column{float:left;padding-right:10px;padding-left:10px}.one-third{width:33.333333%}.two-thirds{width:66.666667%}.one-fourth{width:25%}.one-half{width:50%}.three-fourths{width:75%}.one-fifth{width:20%}.four-fifths{width:80%}.centered{display:block;float:none;margin-right:auto;margin-left:auto}.col-1{width:8.3333333333%}.col-2{width:16.6666666667%}.col-3{width:25%}.col-4{width:33.3333333333%}.col-5{width:41.6666666667%}.col-6{width:50%}.col-7{width:58.3333333333%}.col-8{width:66.6666666667%}.col-9{width:75%}.col-10{width:83.3333333333%}.col-11{width:91.6666666667%}.col-12{width:100%}@media (min-width:544px){.col-sm-1{width:8.3333333333%}.col-sm-2{width:16.6666666667%}.col-sm-3{width:25%}.col-sm-4{width:33.3333333333%}.col-sm-5{width:41.6666666667%}.col-sm-6{width:50%}.col-sm-7{width:58.3333333333%}.col-sm-8{width:66.6666666667%}.col-sm-9{width:75%}.col-sm-10{width:83.3333333333%}.col-sm-11{width:91.6666666667%}.col-sm-12{width:100%}}@media (min-width:768px){.col-md-1{width:8.3333333333%}.col-md-2{width:16.6666666667%}.col-md-3{width:25%}.col-md-4{width:33.3333333333%}.col-md-5{width:41.6666666667%}.col-md-6{width:50%}.col-md-7{width:58.3333333333%}.col-md-8{width:66.6666666667%}.col-md-9{width:75%}.col-md-10{width:83.3333333333%}.col-md-11{width:91.6666666667%}.col-md-12{width:100%}}@media (min-width:1012px){.col-lg-1{width:8.3333333333%}.col-lg-2{width:16.6666666667%}.col-lg-3{width:25%}.col-lg-4{width:33.3333333333%}.col-lg-5{width:41.6666666667%}.col-lg-6{width:50%}.col-lg-7{width:58.3333333333%}.col-lg-8{width:66.6666666667%}.col-lg-9{width:75%}.col-lg-10{width:83.3333333333%}.col-lg-11{width:91.6666666667%}.col-lg-12{width:100%}}@media (min-width:1280px){.col-xl-1{width:8.3333333333%}.col-xl-2{width:16.6666666667%}.col-xl-3{width:25%}.col-xl-4{width:33.3333333333%}.col-xl-5{width:41.6666666667%}.col-xl-6{width:50%}.col-xl-7{width:58.3333333333%}.col-xl-8{width:66.6666666667%}.col-xl-9{width:75%}.col-xl-10{width:83.3333333333%}.col-xl-11{width:91.6666666667%}.col-xl-12{width:100%}}.gutter{margin-right:-16px;margin-left:-16px}.gutter>[class*=col-]{padding-right:16px!important;padding-left:16px!important}.gutter-condensed{margin-right:-8px;margin-left:-8px}.gutter-condensed>[class*=col-]{padding-right:8px!important;padding-left:8px!important}.gutter-spacious{margin-right:-24px;margin-left:-24px}.gutter-spacious>[class*=col-]{padding-right:24px!important;padding-left:24px!important}@media (min-width:544px){.gutter-sm{margin-right:-16px;margin-left:-16px}.gutter-sm>[class*=col-]{padding-right:16px!important;padding-left:16px!important}.gutter-sm-condensed{margin-right:-8px;margin-left:-8px}.gutter-sm-condensed>[class*=col-]{padding-right:8px!important;padding-left:8px!important}.gutter-sm-spacious{margin-right:-24px;margin-left:-24px}.gutter-sm-spacious>[class*=col-]{padding-right:24px!important;padding-left:24px!important}}@media (min-width:768px){.gutter-md{margin-right:-16px;margin-left:-16px}.gutter-md>[class*=col-]{padding-right:16px!important;padding-left:16px!important}.gutter-md-condensed{margin-right:-8px;margin-left:-8px}.gutter-md-condensed>[class*=col-]{padding-right:8px!important;padding-left:8px!important}.gutter-md-spacious{margin-right:-24px;margin-left:-24px}.gutter-md-spacious>[class*=col-]{padding-right:24px!important;padding-left:24px!important}}@media (min-width:1012px){.gutter-lg{margin-right:-16px;margin-left:-16px}.gutter-lg>[class*=col-]{padding-right:16px!important;padding-left:16px!important}.gutter-lg-condensed{margin-right:-8px;margin-left:-8px}.gutter-lg-condensed>[class*=col-]{padding-right:8px!important;padding-left:8px!important}.gutter-lg-spacious{margin-right:-24px;margin-left:-24px}.gutter-lg-spacious>[class*=col-]{padding-right:24px!important;padding-left:24px!important}}@media (min-width:1280px){.gutter-xl{margin-right:-16px;margin-left:-16px}.gutter-xl>[class*=col-]{padding-right:16px!important;padding-left:16px!important}.gutter-xl-condensed{margin-right:-8px;margin-left:-8px}.gutter-xl-condensed>[class*=col-]{padding-right:8px!important;padding-left:8px!important}.gutter-xl-spacious{margin-right:-24px;margin-left:-24px}.gutter-xl-spacious>[class*=col-]{padding-right:24px!important;padding-left:24px!important}}.offset-1{margin-left:8.3333333333%!important}.offset-2{margin-left:16.6666666667%!important}.offset-3{margin-left:25%!important}.offset-4{margin-left:33.3333333333%!important}.offset-5{margin-left:41.6666666667%!important}.offset-6{margin-left:50%!important}.offset-7{margin-left:58.3333333333%!important}.offset-8{margin-left:66.6666666667%!important}.offset-9{margin-left:75%!important}.offset-10{margin-left:83.3333333333%!important}.offset-11{margin-left:91.6666666667%!important}@media (min-width:544px){.offset-sm-1{margin-left:8.3333333333%!important}.offset-sm-2{margin-left:16.6666666667%!important}.offset-sm-3{margin-left:25%!important}.offset-sm-4{margin-left:33.3333333333%!important}.offset-sm-5{margin-left:41.6666666667%!important}.offset-sm-6{margin-left:50%!important}.offset-sm-7{margin-left:58.3333333333%!important}.offset-sm-8{margin-left:66.6666666667%!important}.offset-sm-9{margin-left:75%!important}.offset-sm-10{margin-left:83.3333333333%!important}.offset-sm-11{margin-left:91.6666666667%!important}}@media (min-width:768px){.offset-md-1{margin-left:8.3333333333%!important}.offset-md-2{margin-left:16.6666666667%!important}.offset-md-3{margin-left:25%!important}.offset-md-4{margin-left:33.3333333333%!important}.offset-md-5{margin-left:41.6666666667%!important}.offset-md-6{margin-left:50%!important}.offset-md-7{margin-left:58.3333333333%!important}.offset-md-8{margin-left:66.6666666667%!important}.offset-md-9{margin-left:75%!important}.offset-md-10{margin-left:83.3333333333%!important}.offset-md-11{margin-left:91.6666666667%!important}}@media (min-width:1012px){.offset-lg-1{margin-left:8.3333333333%!important}.offset-lg-2{margin-left:16.6666666667%!important}.offset-lg-3{margin-left:25%!important}.offset-lg-4{margin-left:33.3333333333%!important}.offset-lg-5{margin-left:41.6666666667%!important}.offset-lg-6{margin-left:50%!important}.offset-lg-7{margin-left:58.3333333333%!important}.offset-lg-8{margin-left:66.6666666667%!important}.offset-lg-9{margin-left:75%!important}.offset-lg-10{margin-left:83.3333333333%!important}.offset-lg-11{margin-left:91.6666666667%!important}}@media (min-width:1280px){.offset-xl-1{margin-left:8.3333333333%!important}.offset-xl-2{margin-left:16.6666666667%!important}.offset-xl-3{margin-left:25%!important}.offset-xl-4{margin-left:33.3333333333%!important}.offset-xl-5{margin-left:41.6666666667%!important}.offset-xl-6{margin-left:50%!important}.offset-xl-7{margin-left:58.3333333333%!important}.offset-xl-8{margin-left:66.6666666667%!important}.offset-xl-9{margin-left:75%!important}.offset-xl-10{margin-left:83.3333333333%!important}.offset-xl-11{margin-left:91.6666666667%!important}}.markdown-body{font-family:-apple-system,BlinkMacSystemFont,"Segoe UI",Helvetica,Arial,sans-serif,"Apple Color Emoji","Segoe UI Emoji","Segoe UI Symbol";font-size:16px;line-height:1.5;word-wrap:break-word}.markdown-body::before{display:table;content:""}.markdown-body::after{display:table;clear:both;content:""}.markdown-body>* :first-child{margin-top:0!important}.markdown-body>* :last-child{margin-bottom:0!important}.markdown-body a:not([href]){color:inherit;text-decoration:none}.markdown-body .absent{color:#cb2431}.markdown-body .anchor{float:left;padding-right:4px;margin-left:-20px;line-height:1}.markdown-body .anchor:focus{outline:0}.markdown-body blockquote,.markdown-body dl,.markdown-body ol,.markdown-body p,.markdown-body pre,.markdown-body table,.markdown-body ul{margin-top:0;margin-bottom:16px}.markdown-body hr{height:.25em;padding:0;margin:24px 0;background-color:#e1e4e8;border:0}.markdown-body blockquote{padding:0 1em;color:#6a737d;border-left:.25em solid #dfe2e5}.markdown-body blockquote>:first-child{margin-top:0}.markdown-body blockquote>:last-child{margin-bottom:0}.markdown-body kbd{display:inline-block;padding:3px 5px;font-size:11px;line-height:10px;color:#444d56;vertical-align:middle;background-color:#fafbfc;border:solid 1px #c6cbd1;border-bottom-color:#959da5;border-radius:3px;box-shadow:inset 0 -1px 0 #959da5}.markdown-body h1,.markdown-body h2,.markdown-body h3,.markdown-body h4,.markdown-body h5,.markdown-body h6{margin-top:24px;margin-bottom:16px;font-weight:600;line-height:1.25}.markdown-body h1 .octicon-link,.markdown-body h2 .octicon-link,.markdown-body h3 .octicon-link,.markdown-body h4 .octicon-link,.markdown-body h5 .octicon-link,.markdown-body h6 .octicon-link{color:#1b1f23;vertical-align:middle;visibility:hidden}.markdown-body h1:hover .anchor,.markdown-body h2:hover .anchor,.markdown-body h3:hover .anchor,.markdown-body h4:hover .anchor,.markdown-body h5:hover .anchor,.markdown-body h6:hover .anchor{text-decoration:none}.markdown-body h1:hover .anchor .octicon-link,.markdown-body h2:hover .anchor .octicon-link,.markdown-body h3:hover .anchor .octicon-link,.markdown-body h4:hover .anchor .octicon-link,.markdown-body h5:hover .anchor .octicon-link,.markdown-body h6:hover .anchor .octicon-link{visibility:visible}.markdown-body h1 code,.markdown-body h1 tt,.markdown-body h2 code,.markdown-body h2 tt,.markdown-body h3 code,.markdown-body h3 tt,.markdown-body h4 code,.markdown-body h4 tt,.markdown-body h5 code,.markdown-body h5 tt,.markdown-body h6 code,.markdown-body h6 tt{font-size:inherit}.markdown-body h1{padding-bottom:.3em;font-size:2em;border-bottom:1px solid #eaecef}.markdown-body h2{padding-bottom:.3em;font-size:1.5em;border-bottom:1px solid #eaecef}.markdown-body h3{font-size:1.25em}.markdown-body h4{font-size:1em}.markdown-body h5{font-size:.875em}.markdown-body h6{font-size:.85em;color:#6a737d}.markdown-body ol,.markdown-body ul{padding-left:2em}.markdown-body ol.no-list,.markdown-body ul.no-list{padding:0;list-style-type:none}.markdown-body ol ol,.markdown-body ol ul,.markdown-body ul ol,.markdown-body ul ul{margin-top:0;margin-bottom:0}.markdown-body li{word-wrap:break-all}.markdown-body li>p{margin-top:16px}.markdown-body li+li{margin-top:.25em}.markdown-body dl{padding:0}.markdown-body dl dt{padding:0;margin-top:16px;font-size:1em;font-style:italic;font-weight:600}.markdown-body dl dd{padding:0 16px;margin-bottom:16px}.markdown-body table{display:block;width:100%;overflow:auto}.markdown-body table th{font-weight:600}.markdown-body table td,.markdown-body table th{padding:6px 13px;border:1px solid #dfe2e5}.markdown-body table tr{background-color:#fff;border-top:1px solid #c6cbd1}.markdown-body table tr:nth-child(2n){background-color:#f6f8fa}.markdown-body table img{background-color:transparent}.markdown-body img{max-width:100%;box-sizing:content-box;background-color:#fff}.markdown-body img[align=right]{padding-left:20px}.markdown-body img[align=left]{padding-right:20px}.markdown-body .emoji{max-width:none;vertical-align:text-top;background-color:transparent}.markdown-body span.frame{display:block;overflow:hidden}.markdown-body span.frame>span{display:block;float:left;width:auto;padding:7px;margin:13px 0 0;overflow:hidden;border:1px solid #dfe2e5}.markdown-body span.frame span img{display:block;float:left}.markdown-body span.frame span span{display:block;padding:5px 0 0;clear:both;color:#24292e}.markdown-body span.align-center{display:block;overflow:hidden;clear:both}.markdown-body span.align-center>span{display:block;margin:13px auto 0;overflow:hidden;text-align:center}.markdown-body span.align-center span img{margin:0 auto;text-align:center}.markdown-body span.align-right{display:block;overflow:hidden;clear:both}.markdown-body span.align-right>span{display:block;margin:13px 0 0;overflow:hidden;text-align:right}.markdown-body span.align-right span img{margin:0;text-align:right}.markdown-body span.float-left{display:block;float:left;margin-right:13px;overflow:hidden}.markdown-body span.float-left span{margin:13px 0 0}.markdown-body span.float-right{display:block;float:right;margin-left:13px;overflow:hidden}.markdown-body span.float-right>span{display:block;margin:13px auto 0;overflow:hidden;text-align:right}.markdown-body code,.markdown-body tt{padding:.2em .4em;margin:0;font-size:85%;background-color:rgba(27,31,35,.05);border-radius:3px}.markdown-body code br,.markdown-body tt br{display:none}.markdown-body del code{text-decoration:inherit}.markdown-body pre{word-wrap:normal}.markdown-body pre>code{padding:0;margin:0;font-size:100%;word-break:normal;white-space:pre;background:0 0;border:0}.markdown-body .highlight{margin-bottom:16px}.markdown-body .highlight pre{margin-bottom:0;word-break:normal}.markdown-body .highlight pre,.markdown-body pre{padding:16px;overflow:auto;font-size:85%;line-height:1.45;background-color:#f6f8fa;border-radius:3px}.markdown-body pre code,.markdown-body pre tt{display:inline;max-width:auto;padding:0;margin:0;overflow:visible;line-height:inherit;word-wrap:normal;background-color:transparent;border:0}.markdown-body .csv-data td,.markdown-body .csv-data th{padding:5px;overflow:hidden;font-size:12px;line-height:1;text-align:left;white-space:nowrap}.markdown-body .csv-data .blob-num{padding:10px 8px 9px;text-align:right;background:#fff;border:0}.markdown-body .csv-data tr{border-top:0}.markdown-body .csv-data th{font-weight:600;background:#f6f8fa;border-top:0}.highlight table td{padding:5px}.highlight table pre{margin:0}.highlight .cm{color:#998;font-style:italic}.highlight .cp{color:#999;font-weight:700}.highlight .c1{color:#998;font-style:italic}.highlight .cs{color:#999;font-weight:700;font-style:italic}.highlight .c,.highlight .cd{color:#998;font-style:italic}.highlight .err{color:#a61717;background-color:#e3d2d2}.highlight .gd{color:#000;background-color:#fdd}.highlight .ge{color:#000;font-style:italic}.highlight .gr{color:#a00}.highlight .gh{color:#999}.highlight .gi{color:#000;background-color:#dfd}.highlight .go{color:#888}.highlight .gp{color:#555}.highlight .gs{font-weight:700}.highlight .gu{color:#aaa}.highlight .gt{color:#a00}.highlight .kc{color:#000;font-weight:700}.highlight .kd{color:#000;font-weight:700}.highlight .kn{color:#000;font-weight:700}.highlight .kp{color:#000;font-weight:700}.highlight .kr{color:#000;font-weight:700}.highlight .kt{color:#458;font-weight:700}.highlight .k,.highlight .kv{color:#000;font-weight:700}.highlight .mf{color:#099}.highlight .mh{color:#099}.highlight .il{color:#099}.highlight .mi{color:#099}.highlight .mo{color:#099}.highlight .m,.highlight .mb,.highlight .mx{color:#099}.highlight .sb{color:#d14}.highlight .sc{color:#d14}.highlight .sd{color:#d14}.highlight .s2{color:#d14}.highlight .se{color:#d14}.highlight .sh{color:#d14}.highlight .si{color:#d14}.highlight .sx{color:#d14}.highlight .sr{color:#009926}.highlight .s1{color:#d14}.highlight .ss{color:#990073}.highlight .s{color:#d14}.highlight .na{color:teal}.highlight .bp{color:#999}.highlight .nb{color:#0086b3}.highlight .nc{color:#458;font-weight:700}.highlight .no{color:teal}.highlight .nd{color:#3c5d5d;font-weight:700}.highlight .ni{color:purple}.highlight .ne{color:#900;font-weight:700}.highlight .nf{color:#900;font-weight:700}.highlight .nl{color:#900;font-weight:700}.highlight .nn{color:#555}.highlight .nt{color:navy}.highlight .vc{color:teal}.highlight .vg{color:teal}.highlight .vi{color:teal}.highlight .nv{color:teal}.highlight .ow{color:#000;font-weight:700}.highlight .o{color:#000;font-weight:700}.highlight .w{color:#bbb}.highlight{background-color:#f8f8f8}</style>
      </head>
      <body class="bg-white">
        <div class="container-md px-3 py-3 markdown-body">
          <header class="py-5">
            <h1 class="border-0">
              <svg version="1.1" id="Layer_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" width="94px" viewBox="0 0 512 512"  xml:space="preserve"> <path fill="#4960B0" opacity="1.000000" stroke="none" d="M248.222992,221.546722 
	C249.454559,220.022095 251.119568,218.680496 251.852478,216.945236 
	C262.214386,192.411713 272.478485,167.836655 282.676514,143.234436 
	C283.855164,140.391006 285.062347,138.604034 288.690216,138.610168 
	C354.295959,138.721085 419.901917,138.692520 485.507843,138.703415 
	C486.161285,138.703522 486.814758,138.833344 489.049988,139.070267 
	C486.458832,140.287674 485.124207,140.914703 483.105316,141.768906 
	C473.658417,144.392517 464.794403,146.474258 456.156433,149.257462 
	C442.387177,153.693954 427.729797,155.654068 415.599854,164.737106 
	C409.211060,169.521088 405.761139,175.063446 405.784332,183.081573 
	C405.850708,206.017349 405.707397,228.953735 405.214539,251.910919 
	C383.554138,252.008087 362.325806,252.084198 340.752167,252.196640 
	C332.246887,251.419006 332.245331,251.419022 332.198730,243.258484 
	C332.189209,241.595413 332.200195,239.932251 332.195099,238.269150 
	C332.119232,213.493011 332.042267,188.716858 332.043884,163.730362 
	C332.122223,163.520004 332.292633,163.103943 332.657867,163.020111 
	C338.071777,161.774658 343.120483,160.613052 348.169189,159.451462 
	C345.404022,156.478058 342.625305,154.316788 339.484406,153.062653 
	C326.108429,147.721802 313.971283,152.876144 308.350281,166.112610 
	C296.200806,194.722427 284.098358,223.352219 271.950836,251.996521 
	C271.924988,252.019196 271.938049,252.086700 271.477173,252.052124 
	C254.358307,252.051636 237.700287,252.085754 220.724335,252.105576 
	C219.605042,252.349976 218.803711,252.608673 217.691895,252.595871 
	C211.885315,252.182571 206.389236,252.040802 200.730225,251.595581 
	C190.768295,229.170792 181.006912,207.032669 171.151657,184.936447 
	C167.243423,176.173920 163.126801,167.504318 158.853241,158.548828 
	C152.734787,156.877335 146.643585,153.658859 141.044083,154.361099 
	C124.976555,156.376114 123.868950,156.748199 123.950401,171.650574 
	C124.096497,198.379532 123.946312,225.110092 123.693558,251.896744 
	C123.467171,251.953506 123.011024,252.052673 122.609306,252.164413 
	C113.625755,252.216751 105.040344,251.986816 96.463554,252.167175 
	C91.920853,252.262726 91.074768,250.248962 91.098793,246.158356 
	C91.224030,224.835068 91.071968,203.510162 91.016403,182.185822 
	C91.016403,182.185822 91.097641,182.070679 91.508408,181.962585 
	C97.032997,180.712250 102.146820,179.569992 107.811432,178.304703 
	C106.716530,177.457443 105.391960,176.614014 105.466400,176.463760 
	C107.924858,171.501602 103.816406,169.097580 101.103729,167.048370 
	C94.106308,161.762421 86.654655,157.175598 77.838554,155.166656 
	C71.085892,153.627930 64.506203,151.344559 57.812111,149.530670 
	C49.545448,147.290680 41.239967,145.193954 32.951256,143.035324 
	C32.951256,143.035324 33.000980,143.006393 32.848831,142.757294 
	C32.103184,142.395004 31.509686,142.281799 30.916187,142.168610 
	C29.317169,141.429565 27.718153,140.690506 26.119135,139.951462 
	C26.134630,139.672714 26.150124,139.393967 26.165619,139.115219 
	C27.523863,138.972595 28.882065,138.705719 30.240358,138.705246 
	C89.022598,138.684570 147.804871,138.678635 206.587051,138.731094 
	C208.326782,138.732651 210.065918,139.378311 211.747131,140.178223 
	C208.186249,145.649994 204.524475,150.568359 201.299789,155.758286 
	C200.552887,156.960373 200.832840,159.279953 201.437134,160.759933 
	C204.192841,167.508728 207.192978,174.159286 210.178024,180.812515 
	C217.701599,197.581451 225.264420,214.332794 233.006470,231.392639 
	C235.832779,235.461243 239.663620,235.614883 242.231461,231.754486 
	C244.049927,229.020721 245.327347,225.927063 247.003860,222.790009 
	C247.515289,222.239548 247.869141,221.893143 248.222992,221.546722 
z"/>
<path fill="#001766" opacity="1.000000" stroke="none" 
	d="
M405.646576,251.889877 
	C405.707397,228.953735 405.850708,206.017349 405.784332,183.081573 
	C405.761139,175.063446 409.211060,169.521088 415.599854,164.737106 
	C427.729797,155.654068 442.387177,153.693954 456.156433,149.257462 
	C464.794403,146.474258 473.658417,144.392517 482.847198,141.952972 
	C481.708801,143.119476 480.227936,144.460617 478.566681,145.518402 
	C461.885925,156.139542 445.243774,166.824478 428.423676,177.221176 
	C424.428314,179.690765 422.788788,182.459946 422.852448,187.232651 
	C423.109619,206.515152 422.976379,225.803131 422.933868,245.088959 
	C422.929169,247.224014 422.582550,249.358307 421.736450,251.966080 
	C416.116974,252.642654 411.155548,252.846100 406.059448,252.758575 
	C405.832092,252.275024 405.739319,252.082458 405.646576,251.889877 
z"/>
<path fill="#011867" opacity="1.000000" stroke="none" 
	d="
M248.198761,221.330139 
	C247.869141,221.893143 247.515289,222.239548 246.677612,222.884674 
	C241.733032,225.819336 237.272278,228.455261 232.811508,231.091187 
	C225.264420,214.332794 217.701599,197.581451 210.178024,180.812515 
	C207.192978,174.159286 204.192841,167.508728 201.437134,160.759933 
	C200.832840,159.279953 200.552887,156.960373 201.299789,155.758286 
	C204.524475,150.568359 208.186249,145.649994 212.008698,140.567841 
	C216.596924,150.029999 220.879364,159.550903 225.129089,169.086411 
	C228.052109,175.645081 230.947525,182.216187 233.823166,188.795792 
	C237.369278,196.909500 240.860809,205.047134 244.421234,213.154541 
	C245.600220,215.839218 246.919434,218.462311 248.198761,221.330139 
z"/>
<path fill="#3E4147" opacity="1.000000" stroke="none" 
	d="
M406.194092,253.049561 
	C411.155548,252.846100 416.116974,252.642654 421.438232,252.274567 
	C424.029053,252.466431 426.253540,253.081192 428.492065,253.137299 
	C442.385162,253.485565 456.311218,253.268082 470.160858,254.205566 
	C475.184418,254.545609 480.027893,257.546265 484.715820,259.619995 
	C477.317139,258.287872 470.156158,256.668701 462.627319,254.924591 
	C451.175995,254.877533 440.092438,254.955383 428.546814,254.952499 
	C423.053314,254.923691 418.021942,254.975616 412.528748,254.950424 
	C406.705811,254.922745 401.344666,254.972214 395.523621,254.945648 
	C390.035736,254.918808 385.007843,254.967957 379.518890,254.944519 
	C374.031891,254.918350 369.005920,254.964752 363.516815,254.941040 
	C352.037415,254.923325 341.021149,254.975708 329.544739,254.962692 
	C325.054688,254.942139 321.024811,254.986984 316.532654,254.968170 
	C311.381195,254.953293 306.692047,255.002075 301.539185,254.982513 
	C295.718201,254.955185 290.360931,254.996201 284.541595,254.964203 
	C279.387787,254.936722 274.695984,254.982239 269.542603,254.948853 
	C264.056091,254.920380 259.031189,254.970810 253.544800,254.935074 
	C247.715149,254.904114 242.346954,254.959290 236.519989,254.933228 
	C231.042175,254.839081 226.023132,254.826202 220.695404,254.598053 
	C212.608902,254.597870 204.831100,254.812973 196.611237,254.934067 
	C193.786423,254.892715 191.403671,254.945358 188.558182,254.920532 
	C183.081512,254.901978 178.067581,254.960892 172.616318,254.935638 
	C170.124374,254.899139 168.069778,254.946823 165.566193,254.912384 
	C162.086166,254.880096 159.055145,254.929901 155.564819,254.901581 
	C151.084656,254.878021 147.063797,254.932602 142.577026,254.913727 
	C136.414505,254.896912 130.717880,254.953583 124.559845,254.922363 
	C119.408020,254.885254 114.717606,254.936020 109.577385,254.904510 
	C104.758995,254.863708 100.390396,254.905182 95.567772,254.895859 
	C88.751114,256.008026 82.388496,257.171021 75.687424,258.374207 
	C74.451050,258.565704 73.553116,258.717010 72.655190,258.868317 
	C76.442848,257.413910 80.140594,255.127823 84.039917,254.706253 
	C89.453720,254.121002 90.207123,251.515976 90.158913,246.867096 
	C89.956108,227.312561 90.062744,207.754669 90.091339,188.198074 
	C90.093979,186.390732 90.345558,184.583740 90.748978,182.481201 
	C91.071968,203.510162 91.224030,224.835068 91.098793,246.158356 
	C91.074768,250.248962 91.920853,252.262726 96.463554,252.167175 
	C105.040344,251.986816 113.625755,252.216751 122.925934,252.440262 
	C129.395966,252.743332 135.147644,252.882309 141.376663,253.063904 
	C155.274719,253.079239 168.695465,253.051987 182.576172,253.065735 
	C194.691544,253.026947 206.346954,252.947159 218.002365,252.867386 
	C218.803711,252.608673 219.605042,252.349976 221.073822,252.325562 
	C223.043533,252.750717 224.345718,253.106491 225.648132,253.107330 
	C241.087250,253.117142 256.526398,253.073990 272.436035,253.064575 
	C289.727936,253.121399 306.549347,253.166397 323.370728,253.191849 
	C331.088074,253.203522 331.095001,253.186111 331.096008,245.692719 
	C331.099396,220.543365 331.076813,195.393951 331.135132,170.244736 
	C331.140015,168.142761 331.676239,166.042023 331.965576,163.940720 
	C332.042267,188.716858 332.119232,213.493011 332.195099,238.269150 
	C332.200195,239.932251 332.189209,241.595413 332.198730,243.258484 
	C332.245331,251.419022 332.246887,251.419006 341.101044,252.407394 
	C343.103760,252.765305 344.412231,253.107956 345.720825,253.108383 
	C365.878571,253.115005 386.036346,253.077118 406.194092,253.049561 
z"/>
<path fill="#001768" opacity="1.000000" stroke="none" 
	d="
M33.105141,143.336136 
	C41.239967,145.193954 49.545448,147.290680 57.812111,149.530670 
	C64.506203,151.344559 71.085892,153.627930 77.838554,155.166656 
	C86.654655,157.175598 94.106308,161.762421 101.103729,167.048370 
	C103.816406,169.097580 107.924858,171.501602 105.466400,176.463760 
	C105.391960,176.614014 106.716530,177.457443 107.811432,178.304703 
	C102.146820,179.569992 97.032997,180.712250 91.547501,181.903992 
	C89.154160,180.284302 87.279053,178.386292 85.087379,176.982513 
	C69.035789,166.701248 52.916679,156.525421 36.833652,146.293106 
	C35.584457,145.498337 34.447922,144.526489 33.105141,143.336136 
z"/>
<path fill="#CF5487" opacity="1.000000" stroke="none" 
	d="
M10.937679,394.252075 
	C10.752625,391.201324 9.849770,387.986847 10.501943,385.127014 
	C14.061039,369.519836 18.002625,353.999878 22.161991,338.465057 
	C23.007696,340.496002 23.870478,342.500671 23.932213,344.529724 
	C24.122087,350.770264 23.847752,357.026581 24.101122,363.262634 
	C24.180210,365.209259 25.362797,367.110992 26.021908,369.446411 
	C23.775122,379.099976 23.125278,388.220245 27.812725,397.105469 
	C26.460400,398.183807 25.358194,399.071930 24.186451,399.953247 
	C24.116913,399.946442 23.995241,399.877686 23.875698,399.540192 
	C20.395300,390.946838 19.274529,390.475525 11.351196,393.991913 
	C11.203890,394.057312 11.075103,394.164429 10.937679,394.252075 
z"/>
<path fill="#7B0085" opacity="1.000000" stroke="none" 
	d="
M502.174622,275.982330 
	C505.600250,283.220184 507.237793,290.382996 504.236938,298.464264 
	C501.375977,306.168915 499.680054,314.308807 497.538452,322.275269 
	C497.201874,323.527374 497.217896,324.874237 496.613861,326.450684 
	C495.438202,324.504913 494.313934,322.327911 494.078308,320.058624 
	C493.417786,313.697266 493.124084,307.297852 492.764587,300.502869 
	C494.220154,293.403198 496.077789,286.693054 492.031097,279.898529 
	C494.392883,277.019836 496.697662,274.486664 499.261292,271.980774 
	C499.693634,272.005829 499.867096,272.003571 500.040588,272.001343 
	C500.040588,272.001343 499.985535,272.013977 500.038025,272.224152 
	C500.198334,272.752411 500.388977,273.008911 500.662445,273.203857 
	C500.662445,273.203857 500.635834,273.262085 500.752014,273.554016 
	C501.247040,274.250244 501.625885,274.654602 502.004761,275.058929 
	C502.004761,275.058929 501.979218,275.015686 502.001007,275.256989 
	C502.073425,275.659668 502.124023,275.821014 502.174622,275.982330 
z"/>
<path fill="#730085" opacity="1.000000" stroke="none" 
	d="
M492.685669,300.913452 
	C493.124084,307.297852 493.417786,313.697266 494.078308,320.058624 
	C494.313934,322.327911 495.438202,324.504913 496.500854,326.857239 
	C494.165710,337.516998 491.446808,348.033752 488.836060,358.577301 
	C488.208099,361.113403 487.938721,363.738281 486.968353,366.476868 
	C485.955963,364.963501 485.119019,363.306335 485.068756,361.625671 
	C484.896179,355.854980 485.139038,350.070587 484.913696,344.303528 
	C484.843994,342.519714 483.786163,340.774506 483.168945,338.624878 
	C483.778351,335.167877 484.399567,332.097595 485.266266,328.735748 
	C487.903076,319.267273 490.294373,310.090363 492.685669,300.913452 
z"/>
<path fill="#690084" opacity="1.000000" stroke="none" 
	d="
M483.180756,339.011627 
	C483.786163,340.774506 484.843994,342.519714 484.913696,344.303528 
	C485.139038,350.070587 484.896179,355.854980 485.068756,361.625671 
	C485.119019,363.306335 485.955963,364.963501 486.771362,366.825500 
	C485.039520,377.157013 483.668304,387.544861 476.309692,395.757965 
	C475.574890,393.129944 475.428955,390.665771 474.956207,388.265930 
	C474.538483,386.145477 473.756561,384.096771 473.098663,381.638245 
	C473.047546,380.500885 473.033173,379.741638 473.155518,378.873901 
	C473.474609,378.608734 473.591675,378.413025 473.748474,377.820221 
	C473.852661,376.965881 473.851807,376.469604 473.963684,375.593292 
	C477.111176,363.146057 480.145966,351.078827 483.180756,339.011627 
z"/>
<path fill="#AF49CD" opacity="1.000000" stroke="none" 
	d="
M462.995148,255.049530 
	C470.156158,256.668701 477.317139,258.287872 484.872772,259.930573 
	C485.267395,259.954102 485.394501,260.067139 485.649963,260.341705 
	C486.289276,260.721710 486.673065,260.827148 487.056885,260.932587 
	C487.056885,260.932587 486.996613,260.992279 487.145447,261.237427 
	C487.849884,261.685272 488.405518,261.888031 488.961151,262.090759 
	C488.961151,262.090759 488.984589,262.025513 489.036987,262.304321 
	C489.423950,262.675812 489.758514,262.768524 490.093079,262.861237 
	C490.093079,262.861237 490.007080,262.998779 490.186218,263.218628 
	C491.241547,263.972290 492.117676,264.506104 492.993835,265.039917 
	C492.993835,265.039917 493.006714,264.996216 493.053833,265.265839 
	C493.417023,265.675018 493.733093,265.814575 494.049164,265.954132 
	C494.049164,265.954132 494.001221,265.998779 494.067627,266.236511 
	C494.430664,266.637207 494.727264,266.800171 495.023865,266.963135 
	C495.023865,266.963135 494.998749,267.000916 494.945007,267.137329 
	C494.891266,267.273773 494.892395,267.602478 494.590637,267.782654 
	C492.126495,270.642029 489.964172,273.321259 487.543762,275.803467 
	C485.099976,273.934174 482.861755,271.208008 480.703796,275.763855 
	C476.606781,273.179321 472.799713,270.750610 468.653381,268.179382 
	C466.537415,267.383698 464.760773,266.730530 462.985901,265.615295 
	C462.990173,261.785309 462.992645,258.417419 462.995148,255.049530 
z"/>
<path fill="#006380" opacity="1.000000" stroke="none" 
	d="
M272.950714,425.682770 
	C262.279266,425.729156 251.607788,425.775543 240.471664,425.329102 
	C240.013962,422.285858 240.020920,419.735474 240.486053,417.136444 
	C244.964828,417.009491 248.985443,416.931183 253.471313,416.904236 
	C259.943329,416.913849 265.950104,416.872101 272.217743,416.918396 
	C272.652466,417.065308 272.826294,417.124268 272.997131,417.611115 
	C272.979645,420.586914 272.965179,423.134857 272.950714,425.682770 
z"/>
<path fill="#CE597B" opacity="1.000000" stroke="none" 
	d="
M26.040236,369.033295 
	C25.362797,367.110992 24.180210,365.209259 24.101122,363.262634 
	C23.847752,357.026581 24.122087,350.770264 23.932213,344.529724 
	C23.870478,342.500671 23.007696,340.496002 22.335489,338.212616 
	C22.149851,337.733887 22.140024,337.522736 22.375965,336.802643 
	C22.781061,335.454254 22.940386,334.614838 23.099709,333.775421 
	C23.087996,333.600677 23.076284,333.425903 23.316528,332.789612 
	C23.733875,331.443817 23.899263,330.559509 24.064651,329.675201 
	C24.135477,329.262604 24.206303,328.849976 24.568771,327.705811 
	C24.917646,326.509186 24.974878,326.044159 25.032112,325.579102 
	C25.122509,325.158752 25.212906,324.738403 25.597706,323.519714 
	C25.937414,321.915588 25.982719,321.109741 26.028025,320.303925 
	C26.294731,319.396515 26.561436,318.489105 27.365219,317.370483 
	C28.599554,318.836853 29.841839,320.496216 29.898617,322.195251 
	C30.129889,329.115875 29.898785,336.050995 30.061182,342.975555 
	C30.109325,345.028412 30.888525,347.064117 31.247814,349.505249 
	C30.439960,353.611176 29.717026,357.319550 28.757977,361.299469 
	C27.694653,364.058411 26.867441,366.545868 26.040236,369.033295 
z"/>
<path fill="#D0635F" opacity="1.000000" stroke="none" 
	d="
M34.068592,290.511993 
	C34.111904,290.165009 34.155212,289.817993 34.512032,289.075562 
	C34.825539,288.680145 34.841255,288.731201 34.841255,288.731201 
	C34.971699,288.506714 35.102146,288.282227 35.525791,287.798798 
	C35.818993,287.539886 35.864418,287.504883 35.864418,287.504883 
	C36.178329,286.602692 36.492241,285.700470 37.179901,284.354797 
	C37.709053,283.602661 37.864452,283.294037 38.019855,282.985413 
	C38.019855,282.985413 37.986603,282.986511 38.237900,282.915649 
	C38.649990,282.544861 38.810787,282.244995 38.971584,281.945099 
	C38.971588,281.945099 38.999668,281.996429 39.225929,281.907654 
	C39.620861,281.525024 39.789539,281.231140 39.958214,280.937256 
	C39.958206,280.937256 39.992466,281.001892 40.209061,281.002075 
	C40.425655,281.002289 40.909939,280.966187 41.120964,281.323059 
	C41.557755,284.796997 41.572952,287.949646 42.090385,291.017548 
	C42.388062,292.782471 43.498901,294.410248 44.195084,296.421173 
	C44.148754,297.174927 44.151047,297.607239 43.957657,298.374817 
	C42.234764,305.474579 40.707561,312.239136 39.061005,319.360962 
	C38.048553,322.511475 37.155457,325.304688 36.025253,327.746735 
	C35.532555,326.284393 35.087307,325.179413 35.050713,324.061096 
	C34.684814,312.879303 34.386185,301.695343 34.068592,290.511993 
z"/>
<path fill="#CE5E6D" opacity="1.000000" stroke="none" 
	d="
M33.876976,290.774078 
	C34.386185,301.695343 34.684814,312.879303 35.050713,324.061096 
	C35.087307,325.179413 35.532555,326.284393 35.955856,328.144501 
	C35.308372,332.868439 34.493176,336.843445 33.476524,341.124847 
	C32.627625,343.990051 31.980179,346.548889 31.332735,349.107697 
	C30.888525,347.064117 30.109325,345.028412 30.061182,342.975555 
	C29.898785,336.050995 30.129889,329.115875 29.898617,322.195251 
	C29.841839,320.496216 28.599554,318.836853 27.539944,317.052124 
	C27.215204,316.662323 27.252817,316.379639 27.553545,315.628693 
	C27.873661,314.914337 27.936497,314.669830 28.005169,314.426880 
	C29.898567,306.629974 31.791964,298.833069 33.876976,290.774078 
z"/>
<path fill="#CD6D4C" opacity="1.000000" stroke="none" 
	d="
M44.243710,296.099762 
	C43.498901,294.410248 42.388062,292.782471 42.090385,291.017548 
	C41.572952,287.949646 41.557755,284.796997 41.135124,281.052704 
	C40.907433,280.247559 40.876602,280.069580 40.845776,279.891602 
	C40.845776,279.891602 40.998180,279.986511 41.197006,279.824402 
	C41.664547,279.145447 41.933254,278.628662 42.201965,278.111847 
	C42.201965,278.111847 42.124939,278.109039 42.392418,278.079041 
	C42.835217,277.740692 43.010532,277.432312 43.185852,277.123962 
	C43.185856,277.123962 43.109879,277.125549 43.406300,277.114441 
	C44.069515,276.659637 44.436310,276.215942 44.803101,275.772278 
	C44.803101,275.772278 44.970863,275.998871 45.148689,275.845825 
	C45.518032,275.417755 45.709549,275.142792 45.901070,274.867798 
	C45.901073,274.867798 45.986084,274.980591 46.200645,274.891907 
	C46.602482,274.516449 46.789757,274.229645 46.977028,273.942841 
	C46.977024,273.942841 46.987911,273.986755 47.229767,273.923279 
	C47.657486,273.569580 47.843353,273.279419 48.029221,272.989227 
	C48.029224,272.989227 47.978638,272.976654 48.250450,272.950012 
	C48.705997,272.625061 48.889736,272.326691 49.073471,272.028351 
	C49.073471,272.028351 49.012413,272.014374 49.286728,271.988892 
	C49.746933,271.665314 49.932823,271.367157 50.118713,271.069031 
	C50.118710,271.069031 50.049103,271.065765 50.357033,271.079468 
	C51.091057,270.690918 51.517155,270.288605 51.943253,269.886322 
	C51.943249,269.886322 51.976151,269.962616 52.210068,269.901855 
	C52.636967,269.554962 52.829956,269.268829 53.022949,268.982727 
	C53.022953,268.982727 52.967274,268.972809 53.271622,268.932678 
	C53.862740,268.602997 54.149517,268.313446 54.436295,268.023926 
	C54.436298,268.023926 54.531197,267.994019 54.879417,267.925659 
	C55.503117,267.572754 55.778591,267.288147 56.054070,267.003571 
	C56.054066,267.003571 55.993805,266.987885 56.321663,267.021423 
	C57.079578,266.978088 57.509636,266.901154 57.950111,267.289185 
	C58.319801,271.542694 58.679066,275.331207 58.920761,279.358124 
	C58.473442,280.010254 58.143684,280.424042 57.484634,280.921326 
	C52.851463,286.036499 48.547588,291.068115 44.243710,296.099762 
z"/>
<path fill="#180182" opacity="1.000000" stroke="none" 
	d="
M383.028015,425.665009 
	C374.007782,425.708649 364.987549,425.752289 355.497681,425.318359 
	C355.018066,422.277832 355.008057,419.714813 355.462677,417.091370 
	C362.288147,416.965698 368.648987,416.900482 375.450806,416.885162 
	C378.259735,417.008972 380.627625,417.082886 382.998901,417.586456 
	C383.010834,420.565735 383.019440,423.115387 383.028015,425.665009 
z"/>
<path fill="#3C0084" opacity="1.000000" stroke="none" 
	d="
M437.015747,422.774689 
	C428.328461,423.782379 419.641174,424.790100 410.488098,425.314026 
	C410.012787,422.276001 410.003235,419.721771 410.252960,417.080444 
	C410.685364,416.936035 410.858521,416.878754 411.480347,416.868805 
	C420.299774,416.007324 428.670441,415.098541 437.033630,414.620300 
	C437.022644,417.625427 437.019196,420.200073 437.015747,422.774689 
z"/>
<path fill="#2A0086" opacity="1.000000" stroke="none" 
	d="
M409.993713,417.167572 
	C410.003235,419.721771 410.012787,422.276001 410.026978,425.251068 
	C401.338745,425.711395 392.645874,425.750854 383.490479,425.727661 
	C383.019440,423.115387 383.010834,420.565735 383.450897,417.530609 
	C386.941071,416.972473 389.982605,416.899872 393.487396,416.875610 
	C399.298340,417.005157 404.646027,417.086365 409.993713,417.167572 
z"/>
<path fill="#4B0083" opacity="1.000000" stroke="none" 
	d="
M437.380798,422.771912 
	C437.019196,420.200073 437.022644,417.625427 437.015045,414.532349 
	C437.003998,414.013916 436.962952,413.838959 437.300354,413.754028 
	C444.749756,409.417542 451.861755,405.166016 459.124146,401.300079 
	C459.532959,404.840698 459.791382,407.995728 460.049805,411.150757 
	C452.615143,415.023560 445.180511,418.896362 437.380798,422.771912 
z"/>
<path fill="#5D0084" opacity="1.000000" stroke="none" 
	d="
M460.382812,411.050079 
	C459.791382,407.995728 459.532959,404.840698 459.238342,401.053497 
	C459.503357,399.971497 459.804596,399.521667 460.400208,398.916992 
	C464.841553,393.180237 468.988495,387.598297 473.135437,382.016357 
	C473.756561,384.096771 474.538483,386.145477 474.956207,388.265930 
	C475.428955,390.665771 475.574890,393.129944 476.035004,395.974518 
	C471.043335,401.238373 465.879578,406.093903 460.382812,411.050079 
z"/>
<path fill="#CF814A" opacity="1.000000" stroke="none" 
	d="
M59.038330,279.119751 
	C58.679066,275.331207 58.319801,271.542694 58.159271,267.052917 
	C59.355930,265.566498 60.353851,264.781342 61.351776,263.996185 
	C61.351776,263.996185 61.494465,263.949371 61.905464,263.908203 
	C62.641304,263.564514 62.966145,263.261963 63.290981,262.959442 
	C63.290981,262.959442 63.450127,262.894409 63.868641,262.859192 
	C64.615234,262.530609 64.943314,262.237213 65.271393,261.943817 
	C65.271393,261.943817 65.434959,261.874573 65.851517,261.836426 
	C66.600815,261.517212 66.933548,261.236145 67.266281,260.955109 
	C67.266281,260.955109 67.443535,260.886047 67.871964,260.846924 
	C68.675163,260.563232 69.049942,260.318695 69.424713,260.074158 
	C69.424713,260.074158 69.586937,260.049622 70.023178,260.026062 
	C71.078598,259.668671 71.697784,259.334839 72.316971,259.000977 
	C72.316971,259.000977 72.497871,258.956543 72.576530,258.912415 
	C73.553116,258.717010 74.451050,258.565704 75.683212,258.815582 
	C76.050919,262.564423 76.084381,265.912109 75.923981,269.464417 
	C75.135971,270.086212 74.541832,270.503418 73.594299,270.993774 
	C68.506714,273.751190 63.772522,276.435455 59.038330,279.119751 
z"/>
<path fill="#04047A" opacity="1.000000" stroke="none" 
	d="
M354.998047,417.151794 
	C355.008057,419.714813 355.018066,422.277832 355.035004,425.262146 
	C347.335480,425.728058 339.628998,425.772705 331.458527,425.333252 
	C331.004578,422.291748 331.014648,419.734344 331.488831,417.127625 
	C339.301788,417.004395 346.650696,416.930450 354.249023,416.930908 
	C354.665009,417.054108 354.831512,417.102936 354.998047,417.151794 
z"/>
<path fill="#00806D" opacity="1.000000" stroke="none" 
	d="
M221.991562,425.675446 
	C215.645325,425.724060 209.299103,425.772675 202.485489,425.334839 
	C202.017685,422.292084 202.017242,419.735779 202.475113,417.125122 
	C206.950806,416.996704 210.968185,416.922577 215.421570,416.902527 
	C217.904755,417.031921 219.951920,417.107178 221.999222,417.609985 
	C221.996765,420.583466 221.994156,423.129456 221.991562,425.675446 
z"/>
<path fill="#017675" opacity="1.000000" stroke="none" 
	d="
M222.455322,425.746338 
	C221.994156,423.129456 221.996765,420.583466 222.457642,417.559082 
	C226.604782,417.005585 230.293625,416.930481 234.411926,416.905487 
	C236.570206,417.032074 238.299042,417.108551 240.027863,417.185059 
	C240.020920,419.735474 240.013962,422.285858 240.008698,425.257782 
	C234.313293,425.725281 228.616180,425.771240 222.455322,425.746338 
z"/>
<path fill="#852600" opacity="1.000000" stroke="none" 
	d="
M61.998627,425.687195 
	C56.601627,425.497742 51.204628,425.308319 45.406265,424.557831 
	C44.998814,421.040100 44.992725,418.083405 45.387894,415.150024 
	C50.859936,415.741150 55.930717,416.308929 61.247803,416.951355 
	C61.658085,417.076416 61.822063,417.126862 61.986477,417.606079 
	C61.990814,420.585663 61.994720,423.136444 61.998627,425.687195 
z"/>
<path fill="#860D3A" opacity="1.000000" stroke="none" 
	d="
M26.967766,417.036011 
	C22.959339,412.993042 18.950911,408.950104 15.187830,404.375061 
	C18.287199,402.521179 21.141218,401.199432 23.995239,399.877686 
	C23.995241,399.877686 24.116913,399.946442 24.310204,400.245483 
	C26.342010,402.648987 28.180529,404.753479 29.934011,407.253113 
	C28.888573,410.777496 27.928169,413.906769 26.967766,417.036011 
z"/>
<path fill="#815300" opacity="1.000000" stroke="none" 
	d="
M96.006569,425.696991 
	C90.656670,425.735657 85.306763,425.774353 79.489334,425.330017 
	C79.018867,422.288849 79.015945,419.730713 79.472198,417.114075 
	C84.287651,416.994415 88.643913,416.933258 93.375702,416.925873 
	C94.506500,417.052643 95.261780,417.125610 96.016052,417.626068 
	C96.012207,420.601349 96.009384,423.149170 96.006569,425.696991 
z"/>
<path fill="#863700" opacity="1.000000" stroke="none" 
	d="
M79.013016,417.172546 
	C79.015945,419.730713 79.018867,422.288849 79.027466,425.269348 
	C73.664734,425.732147 68.296318,425.772614 62.463268,425.750122 
	C61.994720,423.136444 61.990814,420.585663 62.450474,417.548157 
	C67.607361,416.997253 72.300682,416.933105 77.329399,416.926453 
	C78.114204,417.046814 78.563614,417.109680 79.013016,417.172546 
z"/>
<path fill="#775E00" opacity="1.000000" stroke="none" 
	d="
M96.468414,425.763672 
	C96.009384,423.149170 96.012207,420.601349 96.455353,417.573364 
	C99.260132,417.017975 101.624588,416.942749 104.431732,416.918579 
	C107.243942,417.044556 109.613457,417.119446 111.986496,417.621796 
	C111.992218,420.595337 111.994408,423.141449 111.996605,425.687531 
	C106.974487,425.735138 101.952370,425.782715 96.468414,425.763672 
z"/>
<path fill="#587E00" opacity="1.000000" stroke="none" 
	d="
M141.992172,425.694305 
	C137.303574,425.736420 132.614990,425.778503 127.463882,425.332672 
	C126.988045,422.292572 126.974709,419.740417 127.224518,417.105865 
	C127.662354,416.967407 127.837051,416.911377 128.471039,416.905701 
	C132.945374,416.923187 136.960449,416.890228 141.229782,416.941650 
	C141.654190,417.080292 141.824341,417.134552 141.995117,417.616821 
	C141.994537,420.594635 141.993362,423.144470 141.992172,425.694305 
z"/>
<path fill="#686F00" opacity="1.000000" stroke="none" 
	d="
M126.961380,417.188263 
	C126.974709,419.740417 126.988045,422.292572 127.002258,425.266418 
	C122.309212,425.731934 117.615288,425.775757 112.458984,425.753540 
	C111.994408,423.141449 111.992218,420.595337 112.386826,417.568848 
	C113.855644,417.013611 114.927666,416.938782 116.455399,416.914185 
	C120.261192,417.039032 123.611290,417.113647 126.961380,417.188263 
z"/>
<path fill="#004F82" opacity="1.000000" stroke="none" 
	d="
M273.416199,425.754639 
	C272.965179,423.134857 272.979645,420.586914 273.461975,417.562134 
	C278.631470,417.106934 283.333099,417.128601 288.027405,417.580383 
	C288.000427,420.567230 287.980713,423.123962 287.960999,425.680664 
	C283.267883,425.729279 278.574768,425.777893 273.416199,425.754639 
z"/>
<path fill="#003881" opacity="1.000000" stroke="none" 
	d="
M288.425201,425.753113 
	C287.980713,423.123962 288.000427,420.567230 288.004883,417.504089 
	C287.989624,416.997620 287.936493,416.847382 288.401672,416.908722 
	C293.231445,416.922516 297.596039,416.875000 302.227966,416.918274 
	C302.673645,417.069244 302.851990,417.129486 303.025146,417.617737 
	C303.005859,420.591095 302.991730,423.136444 302.977631,425.681763 
	C298.281555,425.729675 293.585480,425.777618 288.425201,425.753113 
z"/>
<path fill="#00247F" opacity="1.000000" stroke="none" 
	d="
M303.440857,425.750793 
	C302.991730,423.136444 303.005859,420.591095 303.478241,417.570374 
	C307.284607,417.010071 310.632660,416.925140 314.382416,416.895355 
	C315.861359,417.028015 316.938660,417.105530 318.012878,417.611938 
	C317.997925,420.589844 317.985962,423.138855 317.974030,425.687866 
	C313.284027,425.731842 308.594055,425.775818 303.440857,425.750793 
z"/>
<path fill="#2C8530" opacity="1.000000" stroke="none" 
	d="
M176.978180,425.794952 
	C172.958130,425.801666 168.938095,425.808380 164.459457,425.325134 
	C164.000961,422.285278 164.001038,419.735352 164.339935,417.127014 
	C165.131729,416.999786 165.584702,416.930939 166.476273,416.910400 
	C169.276245,416.923553 171.637619,416.888367 174.371460,416.907593 
	C175.492294,417.036530 176.240662,417.111053 176.987396,417.617065 
	C176.983231,420.630676 176.980698,423.212830 176.978180,425.794952 
z"/>
<path fill="#00147B" opacity="1.000000" stroke="none" 
	d="
M318.435028,425.755371 
	C317.985962,423.138855 317.997925,420.589844 318.467590,417.564087 
	C322.275970,417.001831 325.626587,416.916351 329.317169,416.895996 
	C330.113007,417.033051 330.568848,417.104980 331.024719,417.176910 
	C331.014648,419.734344 331.004578,422.291748 330.993469,425.269867 
	C326.960327,425.734650 322.928162,425.778748 318.435028,425.755371 
z"/>
<path fill="#0D8558" opacity="1.000000" stroke="none" 
	d="
M202.016800,417.179474 
	C202.017242,419.735779 202.017685,422.292084 202.022919,425.270691 
	C197.987915,425.733246 193.948090,425.773560 189.448257,425.329895 
	C188.952438,422.292816 188.916626,419.739655 189.163574,417.106079 
	C189.635254,416.973389 189.824142,416.921082 190.463242,416.921173 
	C193.937790,416.938141 196.962097,416.902771 200.324203,416.923157 
	C201.113586,417.045776 201.565201,417.112610 202.016800,417.179474 
z"/>
<path fill="#24853C" opacity="1.000000" stroke="none" 
	d="
M188.880814,417.186523 
	C188.916626,419.739655 188.952438,422.292816 188.988113,425.267975 
	C185.291138,425.768219 181.594315,425.846466 177.437820,425.859802 
	C176.980698,423.212830 176.983231,420.630676 177.445862,417.562195 
	C181.564240,417.112732 185.222534,417.149628 188.880814,417.186523 
z"/>
<path fill="#3E881D" opacity="1.000000" stroke="none" 
	d="
M164.001114,417.185425 
	C164.001038,419.735352 164.000961,422.285278 164.001602,425.256104 
	C160.307312,425.720978 156.612289,425.764893 152.460419,425.320496 
	C152.004837,422.282410 152.006088,419.732635 152.432770,417.131775 
	C154.572952,417.008514 156.287735,416.936279 158.429123,416.911255 
	C160.570862,417.034119 162.285995,417.109772 164.001114,417.185425 
z"/>
<path fill="#BE146D" opacity="1.000000" stroke="none" 
	d="
M23.875694,399.540192 
	C21.141218,401.199432 18.287199,402.521179 15.129074,404.036133 
	C13.512409,401.148010 12.199850,398.066620 10.912482,394.618652 
	C11.075103,394.164429 11.203890,394.057312 11.351196,393.991913 
	C19.274529,390.475525 20.395300,390.946838 23.875694,399.540192 
z"/>
<path fill="#871522" opacity="1.000000" stroke="none" 
	d="
M27.162556,417.310303 
	C27.928169,413.906769 28.888573,410.777496 30.220312,407.418121 
	C32.382992,408.383453 34.174332,409.578918 36.164291,410.955048 
	C36.579746,411.416840 36.796581,411.697937 37.014290,412.414429 
	C36.687599,415.889221 36.360035,418.928650 36.032475,421.968109 
	C33.140766,420.506927 30.249056,419.045746 27.162556,417.310303 
z"/>
<path fill="#4B860B" opacity="1.000000" stroke="none" 
	d="
M152.007339,417.182831 
	C152.006088,419.732635 152.004837,422.282410 152.004639,425.253113 
	C148.968628,425.724457 145.931564,425.774963 142.443329,425.759888 
	C141.993362,423.144470 141.994537,420.594635 142.435822,417.564514 
	C145.239487,417.013519 147.603043,416.942810 150.306000,416.931335 
	C151.099365,417.054657 151.553360,417.118744 152.007339,417.182831 
z"/>
<path fill="#851E08" opacity="1.000000" stroke="none" 
	d="
M36.285667,422.216614 
	C36.360035,418.928650 36.687599,415.889221 37.365112,412.484497 
	C40.150620,412.992828 42.586174,413.866486 45.009312,414.836456 
	C44.996891,414.932770 44.986633,415.126740 44.986633,415.126740 
	C44.992725,418.083405 44.998814,421.040100 45.006062,424.438782 
	C42.184437,424.075562 39.361652,423.270325 36.285667,422.216614 
z"/>
<path fill="#3E4147" opacity="1.000000" stroke="none" 
	d="
M60.969929,264.000854 
	C60.353851,264.781342 59.355930,265.566498 58.148849,266.587952 
	C57.509636,266.901154 57.079578,266.978088 56.321381,267.052582 
	C57.524853,266.035278 59.056469,265.020416 60.969929,264.000854 
z"/>
<path fill="#3E4147" opacity="1.000000" stroke="none" 
	d="
M492.912964,264.718811 
	C492.117676,264.506104 491.241547,263.972290 490.231384,263.149841 
	C491.008942,263.373322 491.920502,263.885498 492.912964,264.718811 
z"/>
<path fill="#CF5487" opacity="1.000000" stroke="none" 
	d="
M25.919352,320.531525 
	C25.982719,321.109741 25.937414,321.915588 25.889591,322.944641 
	C25.861609,322.364960 25.836143,321.562042 25.919352,320.531525 
z"/>
<path fill="#CF5487" opacity="1.000000" stroke="none" 
	d="
M23.900528,329.893127 
	C23.899263,330.559509 23.733875,331.443817 23.459940,332.569427 
	C23.479731,331.910858 23.608067,331.010956 23.900528,329.893127 
z"/>
<path fill="#CF5487" opacity="1.000000" stroke="none" 
	d="
M22.939899,333.980499 
	C22.940386,334.614838 22.781061,335.454254 22.527960,336.524353 
	C22.549484,335.898560 22.664785,335.042084 22.939899,333.980499 
z"/>
<path fill="#CF5487" opacity="1.000000" stroke="none" 
	d="
M24.897778,325.716064 
	C24.974878,326.044159 24.917646,326.509186 24.837521,327.138245 
	C24.797567,326.819183 24.780508,326.336121 24.897778,325.716064 
z"/>
<path fill="#3E4147" opacity="1.000000" stroke="none" 
	d="
M51.635246,269.898499 
	C51.517155,270.288605 51.091057,270.690918 50.358139,271.114319 
	C50.476627,270.727173 50.901932,270.318939 51.635246,269.898499 
z"/>
<path fill="#3E4147" opacity="1.000000" stroke="none" 
	d="
M501.918976,274.781677 
	C501.625885,274.654602 501.247040,274.250244 500.769684,273.580688 
	C501.058533,273.711792 501.445862,274.108093 501.918976,274.781677 
z"/>
<path fill="#3E4147" opacity="1.000000" stroke="none" 
	d="
M71.955315,258.983154 
	C71.697784,259.334839 71.078598,259.668671 70.091652,259.980896 
	C70.347145,259.627960 70.970406,259.296631 71.955315,258.983154 
z"/>
<path fill="#CE597B" opacity="1.000000" stroke="none" 
	d="
M27.883240,314.510376 
	C27.936497,314.669830 27.873661,314.914337 27.794458,315.275208 
	C27.587322,315.142975 27.583673,314.877594 27.883240,314.510376 
z"/>
<path fill="#001768" opacity="1.000000" stroke="none" 
	d="
M31.118120,142.382477 
	C31.509686,142.281799 32.103184,142.395004 32.840630,142.784882 
	C32.429741,142.906479 31.874895,142.751419 31.118120,142.382477 
z"/>
<path fill="#3E4147" opacity="1.000000" stroke="none" 
	d="
M44.505901,275.817383 
	C44.436310,276.215942 44.069515,276.659637 43.408070,277.152374 
	C43.478512,276.755127 43.843605,276.308807 44.505901,275.817383 
z"/>
<path fill="#3E4147" opacity="1.000000" stroke="none" 
	d="
M488.837952,261.808289 
	C488.405518,261.888031 487.849884,261.685272 487.170898,261.202759 
	C487.603271,261.123901 488.159027,261.324860 488.837952,261.808289 
z"/>
<path fill="#3E4147" opacity="1.000000" stroke="none" 
	d="
M497.896240,269.104279 
	C498.289398,269.474426 498.682556,269.844574 499.068756,270.576599 
	C499.061798,270.938477 498.773834,271.188110 498.531616,271.059692 
	C497.956879,270.497528 497.624359,270.063812 497.442871,269.498535 
	C497.593933,269.367035 497.896240,269.104279 497.896240,269.104279 
z"/>
<path fill="#3E4147" opacity="1.000000" stroke="none" 
	d="
M41.914734,278.220093 
	C41.933254,278.628662 41.664547,279.145447 41.118546,279.781952 
	C41.103333,279.377197 41.365417,278.852783 41.914734,278.220093 
z"/>
<path fill="#3E4147" opacity="1.000000" stroke="none" 
	d="
M494.892395,267.602478 
	C494.892395,267.602478 494.891266,267.273773 494.965149,267.127014 
	C495.553925,267.193665 496.068817,267.407104 496.621765,268.011963 
	C496.659821,268.403351 496.406006,268.714935 496.161530,268.521484 
	C495.575500,268.086182 495.233948,267.844330 494.892395,267.602478 
z"/>
<path fill="#3E4147" opacity="1.000000" stroke="none" 
	d="
M49.860939,271.141846 
	C49.932823,271.367157 49.746933,271.665314 49.292580,272.019684 
	C49.217133,271.788849 49.410145,271.501740 49.860939,271.141846 
z"/>
<path fill="#3E4147" opacity="1.000000" stroke="none" 
	d="
M54.124630,268.081543 
	C54.149517,268.313446 53.862740,268.602997 53.273941,268.960846 
	C53.252262,268.732483 53.532616,268.435822 54.124630,268.081543 
z"/>
<path fill="#3E4147" opacity="1.000000" stroke="none" 
	d="
M499.996216,271.750671 
	C499.867096,272.003571 499.693634,272.005829 499.199402,271.791046 
	C498.878693,271.574005 498.773834,271.188110 498.773834,271.188110 
	C498.773834,271.188110 499.061798,270.938477 499.207336,270.812866 
	C499.552521,270.958191 499.752167,271.229095 499.996216,271.750671 
z"/>
<path fill="#3E4147" opacity="1.000000" stroke="none" 
	d="
M52.768108,269.043030 
	C52.829956,269.268829 52.636967,269.554962 52.176315,269.877625 
	C52.110191,269.643921 52.311733,269.373627 52.768108,269.043030 
z"/>
<path fill="#CE5E6D" opacity="1.000000" stroke="none" 
	d="
M34.846191,288.691833 
	C34.841255,288.731201 34.825539,288.680145 34.847466,288.672333 
	C34.869396,288.664520 34.851128,288.652435 34.846191,288.691833 
z"/>
<path fill="#3E4147" opacity="1.000000" stroke="none" 
	d="
M496.786621,268.247437 
	C497.223450,268.211853 497.476013,268.406647 497.783661,268.890137 
	C497.896240,269.104279 497.593933,269.367035 497.280273,269.361023 
	C496.757935,269.160767 496.571045,268.947418 496.406006,268.714935 
	C496.406006,268.714935 496.659821,268.403351 496.786621,268.247437 
z"/>
<path fill="#CE5E6D" opacity="1.000000" stroke="none" 
	d="
M35.817204,287.446228 
	C35.864418,287.504883 35.818993,287.539886 35.827408,287.552399 
	C35.835819,287.564911 35.769989,287.387573 35.817204,287.446228 
z"/>
<path fill="#3E4147" opacity="1.000000" stroke="none" 
	d="
M62.965897,263.010071 
	C62.966145,263.261963 62.641304,263.564514 61.968956,263.868103 
	C61.961239,263.599701 62.301025,263.330231 62.965897,263.010071 
z"/>
<path fill="#3E4147" opacity="1.000000" stroke="none" 
	d="
M40.610649,279.980927 
	C40.876602,280.069580 40.907433,280.247559 40.924099,280.695862 
	C40.909939,280.966187 40.425655,281.002289 40.184158,280.974274 
	C40.086945,280.654266 40.231232,280.362244 40.610649,279.980927 
z"/>
<path fill="#3E4147" opacity="1.000000" stroke="none" 
	d="
M493.977173,265.695190 
	C493.733093,265.814575 493.417023,265.675018 493.033264,265.275574 
	C493.278748,265.155884 493.591949,265.296051 493.977173,265.695190 
z"/>
<path fill="#3E4147" opacity="1.000000" stroke="none" 
	d="
M489.985565,262.624146 
	C489.758514,262.768524 489.423950,262.675812 489.006653,262.321106 
	C489.241974,262.168457 489.560028,262.277740 489.985565,262.624146 
z"/>
<path fill="#3E4147" opacity="1.000000" stroke="none" 
	d="
M64.948105,261.987183 
	C64.943314,262.237213 64.615234,262.530609 63.943031,262.816101 
	C63.940884,262.549011 64.282852,262.289795 64.948105,261.987183 
z"/>
<path fill="#3E4147" opacity="1.000000" stroke="none" 
	d="
M39.705482,281.011261 
	C39.789539,281.231140 39.620861,281.525024 39.198906,281.896484 
	C39.114670,281.677826 39.283710,281.381561 39.705482,281.011261 
z"/>
<path fill="#3E4147" opacity="1.000000" stroke="none" 
	d="
M66.942932,260.989807 
	C66.933548,261.236145 66.600815,261.517212 65.928238,261.791687 
	C65.932121,261.531586 66.275856,261.278046 66.942932,260.989807 
z"/>
<path fill="#3E4147" opacity="1.000000" stroke="none" 
	d="
M494.972351,266.706482 
	C494.727264,266.800171 494.430664,266.637207 494.089661,266.212311 
	C494.337128,266.116882 494.628967,266.283356 494.972351,266.706482 
z"/>
<path fill="#3E4147" opacity="1.000000" stroke="none" 
	d="
M55.760010,267.057007 
	C55.778591,267.288147 55.503117,267.572754 54.914497,267.890411 
	C54.889553,267.652466 55.177750,267.381439 55.760010,267.057007 
z"/>
<path fill="#3E4147" opacity="1.000000" stroke="none" 
	d="
M48.817032,272.099670 
	C48.889736,272.326691 48.705997,272.625061 48.253021,272.975952 
	C48.176052,272.742676 48.368324,272.456818 48.817032,272.099670 
z"/>
<path fill="#3E4147" opacity="1.000000" stroke="none" 
	d="
M486.889771,260.675629 
	C486.673065,260.827148 486.289276,260.721710 485.733276,260.358948 
	C485.948303,260.207306 486.335510,260.312988 486.889771,260.675629 
z"/>
<path fill="#3E4147" opacity="1.000000" stroke="none" 
	d="
M42.930771,277.209534 
	C43.010532,277.432312 42.835217,277.740692 42.391968,278.117554 
	C42.307922,277.889099 42.491806,277.592133 42.930771,277.209534 
z"/>
<path fill="#3E4147" opacity="1.000000" stroke="none" 
	d="
M69.083954,260.078247 
	C69.049942,260.318695 68.675163,260.563232 67.954353,260.799377 
	C67.986610,260.554779 68.364899,260.318542 69.083954,260.078247 
z"/>
<path fill="#3E4147" opacity="1.000000" stroke="none" 
	d="
M502.295105,275.858154 
	C502.124023,275.821014 502.073425,275.659668 501.977356,275.248535 
	C502.093170,275.243835 502.254364,275.488892 502.295105,275.858154 
z"/>
<path fill="#3E4147" opacity="1.000000" stroke="none" 
	d="
M38.732834,282.044189 
	C38.810787,282.244995 38.649990,282.544861 38.239830,282.932129 
	C38.158344,282.727448 38.326218,282.435364 38.732834,282.044189 
z"/>
<path fill="#3E4147" opacity="1.000000" stroke="none" 
	d="
M45.644661,274.908508 
	C45.709549,275.142792 45.518032,275.417755 45.068760,275.731232 
	C45.003418,275.496216 45.195835,275.222687 45.644661,274.908508 
z"/>
<path fill="#3E4147" opacity="1.000000" stroke="none" 
	d="
M46.721710,273.998871 
	C46.789757,274.229645 46.602482,274.516449 46.149696,274.843079 
	C46.078251,274.606873 46.272324,274.330902 46.721710,273.998871 
z"/>
<path fill="#3E4147" opacity="1.000000" stroke="none" 
	d="
M47.768066,273.047424 
	C47.843353,273.279419 47.657486,273.569580 47.208099,273.916748 
	C47.132027,273.684326 47.319469,273.394989 47.768066,273.047424 
z"/>
<path fill="#3E4147" opacity="1.000000" stroke="none" 
	d="
M500.668396,272.944763 
	C500.388977,273.008911 500.198334,272.752411 500.041870,272.196167 
	C500.220215,272.200592 500.447266,272.443146 500.668396,272.944763 
z"/>
<path fill="#3E4147" opacity="1.000000" stroke="none" 
	d="
M37.789978,283.106384 
	C37.864452,283.294037 37.709053,283.602661 37.308125,284.015442 
	C37.228436,283.822174 37.394272,283.524750 37.789978,283.106384 
z"/>
<path fill="#001768" opacity="1.000000" stroke="none" 
	d="
M271.976685,251.973862 
	C284.098358,223.352219 296.200806,194.722427 308.350281,166.112610 
	C313.971283,152.876144 326.108429,147.721802 339.484406,153.062653 
	C342.625305,154.316788 345.404022,156.478058 348.169189,159.451462 
	C343.120483,160.613052 338.071777,161.774658 332.585449,162.715927 
	C331.373291,162.163559 329.998749,161.436584 329.917053,161.560669 
	C329.105560,162.793365 328.439453,164.137787 327.859528,165.504623 
	C316.311920,192.720901 304.720032,219.918777 293.320953,247.197205 
	C291.816345,250.797760 289.914368,252.469223 285.926147,252.183090 
	C281.295166,251.850830 276.628082,252.021484 271.976685,251.973862 
z"/>
<path fill="#020303" opacity="1.000000" stroke="none" 
	d="
M271.950836,251.996521 
	C276.628082,252.021484 281.295166,251.850830 285.926147,252.183090 
	C289.914368,252.469223 291.816345,250.797760 293.320953,247.197205 
	C304.720032,219.918777 316.311920,192.720901 327.859528,165.504623 
	C328.439453,164.137787 329.105560,162.793365 329.917053,161.560669 
	C329.998749,161.436584 331.373291,162.163559 332.220215,162.799774 
	C332.292633,163.103943 332.122223,163.520004 332.043884,163.730362 
	C331.676239,166.042023 331.140015,168.142761 331.135132,170.244736 
	C331.076813,195.393951 331.099396,220.543365 331.096008,245.692719 
	C331.095001,253.186111 331.088074,253.203522 323.370728,253.191849 
	C306.549347,253.166397 289.727936,253.121399 272.444122,252.824463 
	C271.981689,252.564529 271.938049,252.086700 271.938049,252.086700 
	C271.938049,252.086700 271.924988,252.019196 271.950836,251.996521 
z"/>
<path fill="#001768" opacity="1.000000" stroke="none" 
	d="
M123.919952,251.839981 
	C123.946312,225.110092 124.096497,198.379532 123.950401,171.650574 
	C123.868950,156.748199 124.976555,156.376114 141.044083,154.361099 
	C146.643585,153.658859 152.734787,156.877335 158.703262,158.889572 
	C155.329330,164.115921 150.396118,166.403366 144.700928,167.846313 
	C140.294296,167.167740 141.845612,170.388077 141.825760,171.984894 
	C141.675385,184.082993 141.835571,196.184723 141.716293,208.283493 
	C141.572601,222.857803 141.248932,237.430328 140.535431,251.986038 
	C134.685104,251.925629 129.302521,251.882797 123.919952,251.839981 
z"/>
<path fill="#001D84" opacity="1.000000" stroke="none" 
	d="
M145.034088,167.998077 
	C150.396118,166.403366 155.329330,164.115921 158.955078,159.133163 
	C163.126801,167.504318 167.243423,176.173920 171.151657,184.936447 
	C181.006912,207.032669 190.768295,229.170792 200.275497,251.630508 
	C193.980408,251.994507 187.977097,252.020096 181.731918,251.793655 
	C173.073990,232.554611 164.608932,213.589111 156.263687,194.571014 
	C152.400085,185.766205 148.770020,176.858917 145.034088,167.998077 
z"/>
<path fill="#001D84" opacity="1.000000" stroke="none" 
	d="
M233.006470,231.392639 
	C237.272278,228.455261 241.733032,225.819336 246.520050,223.088730 
	C245.327347,225.927063 244.049927,229.020721 242.231461,231.754486 
	C239.663620,235.614883 235.832779,235.461243 233.006470,231.392639 
z"/>
<path fill="#1F2333" opacity="1.000000" stroke="none" 
	d="
M406.059448,252.758575 
	C386.036346,253.077118 365.878571,253.115005 345.720825,253.108383 
	C344.412231,253.107956 343.103760,252.765305 341.446350,252.371078 
	C362.325806,252.084198 383.554138,252.008087 405.214539,251.910919 
	C405.739319,252.082458 405.832092,252.275024 406.059448,252.758575 
z"/>
<path fill="#1F2333" opacity="1.000000" stroke="none" 
	d="
M271.477173,252.052124 
	C271.938049,252.086700 271.981689,252.564529 271.973633,252.804642 
	C256.526398,253.073990 241.087250,253.117142 225.648132,253.107330 
	C224.345718,253.106491 223.043533,252.750717 221.391754,252.339859 
	C237.700287,252.085754 254.358307,252.051636 271.477173,252.052124 
z"/>
<path fill="#000B30" opacity="1.000000" stroke="none" 
	d="
M181.973801,252.045685 
	C187.977097,252.020096 193.980408,251.994507 200.438416,251.933960 
	C206.389236,252.040802 211.885315,252.182571 217.691895,252.595871 
	C206.346954,252.947159 194.691544,253.026947 182.536652,252.821472 
	C182.037155,252.536209 181.973801,252.045700 181.973801,252.045685 
z"/>
<path fill="#000B30" opacity="1.000000" stroke="none" 
	d="
M123.693558,251.896744 
	C129.302521,251.882797 134.685104,251.925629 140.514374,252.240952 
	C140.940491,252.682739 140.919922,252.852020 140.899338,253.021286 
	C135.147644,252.882309 129.395966,252.743332 123.327652,252.328522 
	C123.011024,252.052673 123.467171,251.953506 123.693558,251.896744 
z"/>
<path fill="#000000" opacity="1.000000" stroke="none" 
	d="
M141.376663,253.063904 
	C140.919922,252.852020 140.940491,252.682739 140.982117,252.258545 
	C141.248932,237.430328 141.572601,222.857803 141.716293,208.283493 
	C141.835571,196.184723 141.675385,184.082993 141.825760,171.984894 
	C141.845612,170.388077 140.294296,167.167740 144.700928,167.846313 
	C148.770020,176.858917 152.400085,185.766205 156.263687,194.571014 
	C164.608932,213.589111 173.073990,232.554611 181.731918,251.793671 
	C181.973801,252.045700 182.037155,252.536209 182.076675,252.780472 
	C168.695465,253.051987 155.274719,253.079239 141.376663,253.063904 
z"/>
<path fill="#944ACC" opacity="1.000000" stroke="none" 
	d="
M462.627319,254.924591 
	C462.992645,258.417419 462.990173,261.785309 462.532471,265.597351 
	C459.051392,266.083374 456.025482,266.125275 452.532440,266.121826 
	C446.049042,266.103180 440.032776,266.129883 433.602478,266.106140 
	C431.802734,265.982208 430.417053,265.908783 429.028381,265.388123 
	C429.019928,261.638367 429.014435,258.335785 429.008911,255.033234 
	C440.092438,254.955383 451.175995,254.877533 462.627319,254.924591 
z"/>
<path fill="#524CC7" opacity="1.000000" stroke="none" 
	d="
M330.004883,255.028076 
	C341.021149,254.975708 352.037415,254.923325 363.520691,255.394928 
	C363.995331,259.227234 364.002930,262.535583 363.591705,265.896057 
	C361.769470,266.027130 360.366089,266.106140 358.498901,266.140808 
	C349.365692,266.118500 340.696259,266.140533 331.685181,266.097443 
	C330.885437,265.960388 330.427368,265.888458 329.975037,265.370361 
	C329.988770,261.625488 329.996826,258.326782 330.004883,255.028076 
z"/>
<path fill="#4CD0B4" opacity="1.000000" stroke="none" 
	d="
M197.053284,255.028076 
	C204.831100,254.812973 212.608902,254.597870 220.692001,255.067413 
	C220.986069,259.115875 220.974854,262.479706 220.501328,265.892212 
	C214.359222,266.021210 208.679443,266.101593 202.574890,266.128784 
	C200.444458,266.003387 198.738785,265.931183 197.029678,265.410217 
	C197.035278,261.650360 197.044281,258.339203 197.053284,255.028076 
z"/>
<path fill="#CE964A" opacity="1.000000" stroke="none" 
	d="
M76.117844,269.259796 
	C76.084381,265.912109 76.050919,262.564423 76.021667,258.775360 
	C82.388496,257.171021 88.751114,256.008026 95.565369,255.355164 
	C96.017113,259.201233 96.017220,262.537231 95.571655,265.924255 
	C88.789948,267.070160 82.453888,268.164978 76.117844,269.259796 
z"/>
<path fill="#A4CB4B" opacity="1.000000" stroke="none" 
	d="
M125.021248,255.010239 
	C130.717880,254.953583 136.414505,254.896912 142.570282,255.369537 
	C143.042252,259.215668 143.055069,262.532501 142.682861,265.901367 
	C141.529190,266.027466 140.760513,266.101532 139.532532,266.123474 
	C135.057129,266.107300 131.041061,266.143311 126.686371,266.116577 
	C125.893616,265.987030 125.439484,265.920135 124.988937,265.404541 
	C125.002090,261.640656 125.011673,258.325439 125.021248,255.010239 
z"/>
<path fill="#764AD0" opacity="1.000000" stroke="none" 
	d="
M395.983551,255.021667 
	C401.344666,254.972214 406.705811,254.922745 412.531891,255.402740 
	C412.985962,259.230011 412.975067,262.527802 412.984222,265.913757 
	C413.004242,266.001892 413.050812,266.176636 412.581848,266.129456 
	C406.746552,266.000793 401.380219,265.919342 396.010254,265.390320 
	C395.998901,261.635712 395.991241,258.328705 395.983551,255.021667 
z"/>
<path fill="#4AB6C2" opacity="1.000000" stroke="none" 
	d="
M236.978775,255.014481 
	C242.346954,254.959290 247.715149,254.904114 253.542725,255.388519 
	C254.001541,259.236206 254.000946,262.544312 253.542374,265.905273 
	C249.394852,266.033295 245.705322,266.108398 241.598129,266.129181 
	C239.777557,266.001190 238.374664,265.927521 236.974640,265.405212 
	C236.977936,261.642517 236.978348,258.328491 236.978775,255.014481 
z"/>
<path fill="#4A86CD" opacity="1.000000" stroke="none" 
	d="
M285.003632,255.037216 
	C290.360931,254.996201 295.718201,254.955185 301.536804,255.433075 
	C302.008453,259.243195 302.018799,262.534393 301.563721,265.872070 
	C296.410187,266.008148 291.722076,266.097717 286.691437,266.120056 
	C285.889496,265.979034 285.430084,265.905243 284.976929,265.384583 
	C284.989990,261.637543 284.996826,258.337372 285.003632,255.037216 
z"/>
<path fill="#47C5B9" opacity="1.000000" stroke="none" 
	d="
M236.519989,254.933228 
	C236.978348,258.328491 236.977936,261.642517 236.517990,265.454681 
	C232.036179,266.028168 228.013885,266.103485 223.614624,266.125641 
	C222.479660,265.996155 221.721649,265.919830 220.963638,265.843536 
	C220.974854,262.479706 220.986069,259.115875 221.000702,255.282684 
	C226.023132,254.826202 231.042175,254.839081 236.519989,254.933228 
z"/>
<path fill="#68D08C" opacity="1.000000" stroke="none" 
	d="
M173.053650,255.019821 
	C178.067581,254.960892 183.081512,254.901978 188.552383,255.375885 
	C189.001526,259.227478 188.993729,262.546265 188.545288,265.910889 
	C185.744034,266.029938 183.383438,266.103119 180.580841,266.125732 
	C177.778564,265.998657 175.418320,265.922180 173.051010,265.397675 
	C173.047195,261.639709 173.050430,258.329773 173.053650,255.019821 
z"/>
<path fill="#5C4BCC" opacity="1.000000" stroke="none" 
	d="
M364.010498,265.843933 
	C364.002930,262.535583 363.995331,259.227234 363.983826,255.465027 
	C369.005920,254.964752 374.031891,254.918350 379.523315,255.398193 
	C379.992767,259.234558 379.996765,262.544678 379.536987,265.909637 
	C374.052277,265.924286 369.031372,265.884125 364.010498,265.843933 
z"/>
<path fill="#834ACF" opacity="1.000000" stroke="none" 
	d="
M412.964172,265.825592 
	C412.975067,262.527802 412.985962,259.230011 412.993713,255.479889 
	C418.021942,254.975616 423.053314,254.923691 428.546814,254.952484 
	C429.014435,258.335785 429.019928,261.638367 428.561279,265.445374 
	C423.052765,265.908417 418.008484,265.867004 412.964172,265.825592 
z"/>
<path fill="#684BCF" opacity="1.000000" stroke="none" 
	d="
M380.000793,265.854797 
	C379.996765,262.544678 379.992767,259.234558 379.984344,255.470779 
	C385.007843,254.967957 390.035736,254.918808 395.523621,254.945648 
	C395.991241,258.328705 395.998901,261.635712 395.572693,265.443909 
	C393.084351,266.022217 391.029907,266.099365 388.529175,266.130371 
	C385.388824,266.007721 382.694794,265.931244 380.000793,265.854797 
z"/>
<path fill="#4AABCF" opacity="1.000000" stroke="none" 
	d="
M254.000366,265.852356 
	C254.000946,262.544312 254.001541,259.236206 254.004211,255.474670 
	C259.031189,254.970810 264.056091,254.920380 269.541016,255.401611 
	C269.990356,259.235748 269.979645,262.538208 269.506958,265.889160 
	C264.030121,265.909210 259.015259,265.880798 254.000366,265.852356 
z"/>
<path fill="#4A71CB" opacity="1.000000" stroke="none" 
	d="
M302.029144,265.825623 
	C302.018799,262.534393 302.008453,259.243195 302.000488,255.501404 
	C306.692047,255.002075 311.381195,254.953293 316.532104,255.420013 
	C316.986633,259.230957 316.979431,262.526428 316.510529,265.869781 
	C311.353027,266.011383 306.657288,266.105103 301.978943,266.105591 
	C301.996399,266.012390 302.029144,265.825623 302.029144,265.825623 
z"/>
<path fill="#B1B84A" opacity="1.000000" stroke="none" 
	d="
M124.559845,254.922363 
	C125.011673,258.325439 125.002090,261.640656 124.539536,265.458191 
	C121.062637,266.034637 118.038712,266.108765 114.600037,266.130615 
	C112.797775,266.004974 111.410248,265.931610 110.021835,265.408875 
	C110.023026,261.635254 110.025101,258.311035 110.027176,254.986786 
	C114.717606,254.936020 119.408020,254.885254 124.559845,254.922363 
z"/>
<path fill="#4A9ACF" opacity="1.000000" stroke="none" 
	d="
M269.968933,265.840698 
	C269.979645,262.538208 269.990356,259.235748 270.002625,255.480515 
	C274.695984,254.982239 279.387787,254.936722 284.541595,254.964203 
	C284.996826,258.337372 284.989990,261.637543 284.524658,265.432007 
	C280.710327,266.009491 277.354523,266.092651 273.597870,266.122559 
	C272.121002,265.993073 271.044952,265.916870 269.968933,265.840698 
z"/>
<path fill="#BDAB49" opacity="1.000000" stroke="none" 
	d="
M109.577377,254.904510 
	C110.025101,258.311035 110.023026,261.635254 109.577240,265.459656 
	C106.758530,266.036224 104.383514,266.112640 101.582161,266.140076 
	C99.442986,266.018433 97.730148,265.945831 96.017319,265.873199 
	C96.017220,262.537231 96.017113,259.201233 96.019409,255.405960 
	C100.390396,254.905182 104.758995,254.863708 109.577377,254.904510 
z"/>
<path fill="#8BCB5D" opacity="1.000000" stroke="none" 
	d="
M143.067902,265.849335 
	C143.055069,262.532501 143.042252,259.215668 143.036163,255.443024 
	C147.063797,254.932602 151.084656,254.878021 155.560211,255.358276 
	C156.017105,259.216675 156.019318,262.540192 155.604309,265.913879 
	C153.796188,266.035919 152.405304,266.107788 150.572693,266.132538 
	C147.776627,266.006744 145.422256,265.928040 143.067902,265.849335 
z"/>
<path fill="#4A63C5" opacity="1.000000" stroke="none" 
	d="
M316.972260,265.821899 
	C316.979431,262.526428 316.986633,259.230957 316.994385,255.483658 
	C321.024811,254.986984 325.054688,254.942139 329.544739,254.962677 
	C329.996826,258.326782 329.988770,261.625488 329.519836,265.420837 
	C325.378326,266.006104 321.697662,266.094696 317.755859,266.092834 
	C317.320557,265.942230 317.146423,265.882080 316.972260,265.821899 
z"/>
<path fill="#80CD6A" opacity="1.000000" stroke="none" 
	d="
M156.021545,265.863739 
	C156.019318,262.540192 156.017105,259.216675 156.019501,255.436432 
	C159.055145,254.929901 162.086166,254.880096 165.562332,255.367981 
	C166.015945,259.224792 166.024445,262.543915 165.617767,265.916840 
	C163.820374,266.041626 162.438110,266.112640 160.637833,266.130676 
	C158.820389,266.006378 157.420959,265.935059 156.021545,265.863739 
z"/>
<path fill="#56C89F" opacity="1.000000" stroke="none" 
	d="
M188.985947,265.865021 
	C188.993729,262.546265 189.001526,259.227478 189.015121,255.453369 
	C191.403671,254.945358 193.786423,254.892715 196.611237,254.934082 
	C197.044281,258.339203 197.035278,261.650360 196.601685,265.467163 
	C194.459595,266.046082 192.742065,266.119293 190.685440,266.131775 
	C189.892883,266.002350 189.439407,265.933685 188.985947,265.865021 
z"/>
<path fill="#77D07A" opacity="1.000000" stroke="none" 
	d="
M166.032928,265.863037 
	C166.024445,262.543915 166.015945,259.224792 166.011322,255.450104 
	C168.069778,254.946823 170.124374,254.899139 172.616318,254.935638 
	C173.050430,258.329773 173.047195,261.639709 172.671783,265.453979 
	C171.540207,266.032318 170.780838,266.106323 169.623169,266.127136 
	C168.160904,266.003632 167.096924,265.933350 166.032928,265.863037 
z"/>
<path fill="#860D3A" opacity="1.000000" stroke="none" 
	d="
M26.021904,369.446411 
	C26.867441,366.545868 27.694653,364.058411 28.954752,361.658813 
	C29.586378,369.139709 29.951895,376.533417 29.921011,383.925476 
	C29.902626,388.326111 29.261103,392.724182 28.688648,397.078796 
	C28.477573,397.034210 28.062845,396.915222 28.062845,396.915222 
	C23.125278,388.220245 23.775122,379.099976 26.021904,369.446411 
z"/>
<path fill="#CE5E6D" opacity="1.000000" stroke="none" 
	d="
M27.812725,397.105469 
	C28.062845,396.915222 28.477573,397.034210 28.769157,397.376526 
	C29.351068,398.259674 29.641394,398.800446 30.057302,399.627808 
	C32.452969,402.614532 34.723057,405.314667 36.868179,408.282532 
	C36.484035,409.291656 36.224850,410.033051 35.965668,410.774414 
	C34.174332,409.578918 32.382992,408.383453 30.305347,407.023010 
	C28.180529,404.753479 26.342010,402.648987 24.379742,400.252289 
	C25.358194,399.071930 26.460400,398.183807 27.812725,397.105469 
z"/>
<path fill="#BA48CF" opacity="1.000000" stroke="none" 
	d="
M480.993805,275.919708 
	C482.861755,271.208008 485.099976,273.934174 487.765564,276.051819 
	C489.488312,277.746124 490.731201,278.995087 491.974091,280.244049 
	C496.077789,286.693054 494.220154,293.403198 492.764587,300.502869 
	C490.294373,310.090363 487.903076,319.267273 485.017853,328.440399 
	C484.016144,326.220764 483.048004,323.997681 483.082581,321.790314 
	C483.212341,313.512756 483.669586,305.240356 484.315125,296.807861 
	C491.083710,294.040558 491.427032,293.418274 488.831696,288.504639 
	C487.147736,285.483856 485.573547,282.786011 483.864868,279.795654 
	C482.818176,278.308624 481.905975,277.114166 480.993805,275.919708 
z"/>
<path fill="#A406B9" opacity="1.000000" stroke="none" 
	d="
M492.031097,279.898529 
	C490.731201,278.995087 489.488312,277.746124 488.023621,276.248840 
	C489.964172,273.321259 492.126495,270.642029 494.590637,267.782654 
	C495.233948,267.844330 495.575500,268.086182 496.161530,268.521484 
	C496.571045,268.947418 496.757935,269.160767 497.129242,269.492554 
	C497.624359,270.063812 497.956879,270.497528 498.531616,271.059692 
	C498.773834,271.188110 498.878693,271.574005 498.940552,271.763733 
	C496.697662,274.486664 494.392883,277.019836 492.031097,279.898529 
z"/>
<path fill="#AF49CD" opacity="1.000000" stroke="none" 
	d="
M484.004059,296.966003 
	C483.669586,305.240356 483.212341,313.512756 483.082581,321.790314 
	C483.048004,323.997681 484.016144,326.220764 484.772339,328.731964 
	C484.399567,332.097595 483.778351,335.167877 483.168945,338.624878 
	C480.145966,351.078827 477.111176,363.146057 473.651031,375.386108 
	C472.816467,373.844574 472.091949,372.137146 472.054230,370.414673 
	C471.912292,363.933777 472.166077,357.441010 471.901489,350.967773 
	C471.805237,348.612183 470.673248,346.298889 469.972412,343.527161 
	C470.204468,342.263885 470.477936,341.439789 470.803772,340.525787 
	C470.856140,340.435852 470.914276,340.025055 470.900452,339.578979 
	C471.164764,338.297485 471.442841,337.462067 471.776428,336.521667 
	C471.831940,336.416656 471.891998,335.946625 471.864380,335.541626 
	C474.671600,323.538300 477.506439,311.939972 480.471130,300.080780 
	C481.735352,298.868622 482.869690,297.917328 484.004059,296.966003 
z"/>
<path fill="#A34ACB" opacity="1.000000" stroke="none" 
	d="
M470.013794,343.966309 
	C470.673248,346.298889 471.805237,348.612183 471.901489,350.967773 
	C472.166077,357.441010 471.912292,363.933777 472.054230,370.414673 
	C472.091949,372.137146 472.816467,373.844574 473.538300,375.766113 
	C473.851807,376.469604 473.852661,376.965881 473.639587,377.948364 
	C473.283478,378.612274 473.147888,378.794891 473.018799,378.982391 
	C473.033173,379.741638 473.047546,380.500885 473.098633,381.638245 
	C468.988495,387.598297 464.841553,393.180237 460.187683,398.564148 
	C459.063599,394.178833 458.446442,389.991486 457.919525,385.458923 
	C459.325836,381.754761 460.946564,378.479919 461.900635,375.021179 
	C464.745361,364.708282 467.328522,354.323212 470.013794,343.966309 
z"/>
<path fill="#AF49CD" opacity="1.000000" stroke="none" 
	d="
M473.155548,378.873901 
	C473.147888,378.794891 473.283478,378.612274 473.534515,378.306396 
	C473.591675,378.413025 473.474609,378.608734 473.155548,378.873901 
z"/>
<path fill="#690084" opacity="1.000000" stroke="none" 
	d="
M480.703796,275.763855 
	C481.905975,277.114166 482.818176,278.308624 483.860168,280.196350 
	C484.972687,285.768921 481.133057,287.122711 477.768188,288.827026 
	C474.627869,285.525238 471.762207,282.420776 468.917603,278.843933 
	C468.956696,275.021667 468.974670,271.671783 468.992676,268.321899 
	C472.799713,270.750610 476.606781,273.179321 480.703796,275.763855 
z"/>
<path fill="#5D0084" opacity="1.000000" stroke="none" 
	d="
M468.653381,268.179382 
	C468.974670,271.671783 468.956696,275.021667 468.570984,278.715790 
	C463.466766,277.785675 458.730194,276.511322 453.920563,274.830231 
	C453.564850,271.671387 453.282196,268.919250 452.999573,266.167145 
	C456.025482,266.125275 459.051392,266.083374 462.530701,266.059418 
	C464.760773,266.730530 466.537415,267.383698 468.653381,268.179382 
z"/>
<path fill="#4AB6C2" opacity="1.000000" stroke="none" 
	d="
M240.486053,417.136414 
	C238.299042,417.108551 236.570206,417.032074 234.415726,416.458191 
	C233.982391,412.370636 233.974716,408.780457 234.424545,405.065735 
	C240.929703,405.025696 246.977356,405.110260 253.021225,405.641510 
	C253.013657,409.676453 253.009857,413.264648 253.006042,416.852875 
	C248.985443,416.931183 244.964828,417.009491 240.486053,417.136414 
z"/>
<path fill="#4AABCF" opacity="1.000000" stroke="none" 
	d="
M253.471313,416.904236 
	C253.009857,413.264648 253.013657,409.676453 253.472992,405.520142 
	C259.951691,405.034821 265.974854,405.117554 271.993988,405.646332 
	C271.978912,409.671722 271.967865,413.251068 271.956848,416.830383 
	C265.950104,416.872101 259.943329,416.913849 253.471313,416.904236 
z"/>
<path fill="#4A9ACF" opacity="1.000000" stroke="none" 
	d="
M272.217743,416.918396 
	C271.967865,413.251068 271.978912,409.671722 272.445068,405.516724 
	C277.935120,405.024200 282.970001,405.107330 287.997070,405.637207 
	C287.971680,409.671783 287.954071,413.259583 287.936493,416.847382 
	C287.936493,416.847382 287.989624,416.997620 288.012146,417.073944 
	C283.333099,417.128601 278.631470,417.106934 273.464996,417.134247 
	C272.826294,417.124268 272.652466,417.065308 272.217743,416.918396 
z"/>
<path fill="#871522" opacity="1.000000" stroke="none" 
	d="
M29.931719,399.341248 
	C29.641394,398.800446 29.351068,398.259674 28.980232,397.421143 
	C29.261103,392.724182 29.902626,388.326111 29.921011,383.925476 
	C29.951895,376.533417 29.586378,369.139709 29.190865,361.387329 
	C29.717026,357.319550 30.439960,353.611176 31.247814,349.505249 
	C31.980179,346.548889 32.627625,343.990051 33.725594,341.480896 
	C34.451862,348.069153 34.545929,354.622803 35.084255,361.139709 
	C35.332653,364.146759 36.449413,367.082092 37.120049,370.450073 
	C34.370510,378.832031 34.273712,386.623474 38.436100,394.144226 
	C35.380016,395.920135 32.655865,397.630707 29.931719,399.341248 
z"/>
<path fill="#852600" opacity="1.000000" stroke="none" 
	d="
M44.195084,296.421173 
	C48.547588,291.068115 52.851463,286.036499 57.706558,281.277649 
	C58.980389,284.658051 59.702999,287.765594 60.264313,291.138214 
	C57.673882,296.740417 54.950836,301.967529 52.899010,307.445984 
	C50.882099,312.831238 49.546589,318.471741 47.593513,323.792664 
	C46.850861,321.900909 46.115726,320.226685 46.061001,318.530518 
	C45.897015,313.448120 46.154301,308.349762 45.912575,303.273529 
	C45.828362,301.504944 44.767929,299.782898 44.153336,298.039581 
	C44.151047,297.607239 44.148754,297.174927 44.195084,296.421173 
z"/>
<path fill="#861915" opacity="1.000000" stroke="none" 
	d="
M37.172447,370.049927 
	C36.449413,367.082092 35.332653,364.146759 35.084255,361.139709 
	C34.545929,354.622803 34.451862,348.069153 33.927052,341.174500 
	C34.493176,336.843445 35.308372,332.868439 36.192963,328.495667 
	C37.155457,325.304688 38.048553,322.511475 39.368469,319.575989 
	C40.195988,321.130127 40.900558,322.819153 40.942318,324.524384 
	C41.086964,330.431152 40.862141,336.348663 41.080105,342.250946 
	C41.154007,344.252228 42.124634,346.220428 42.608757,348.615234 
	C40.745510,356.034485 38.958981,363.042206 37.172447,370.049927 
z"/>
<path fill="#851E08" opacity="1.000000" stroke="none" 
	d="
M42.685482,348.203735 
	C42.124634,346.220428 41.154007,344.252228 41.080105,342.250946 
	C40.862141,336.348663 41.086964,330.431152 40.942318,324.524384 
	C40.900558,322.819153 40.195988,321.130127 39.487823,319.218689 
	C40.707561,312.239136 42.234764,305.474579 43.957653,298.374817 
	C44.767929,299.782898 45.828362,301.504944 45.912575,303.273529 
	C46.154301,308.349762 45.897015,313.448120 46.061001,318.530518 
	C46.115726,320.226685 46.850861,321.900909 47.675430,324.208374 
	C46.279099,332.622284 44.482292,340.413025 42.685482,348.203735 
z"/>
<path fill="#863700" opacity="1.000000" stroke="none" 
	d="
M60.425621,290.873169 
	C59.702999,287.765594 58.980389,284.658051 58.035851,281.194153 
	C58.143684,280.424042 58.473442,280.010254 58.920761,279.358124 
	C63.772522,276.435455 68.506714,273.751190 73.793274,271.329468 
	C74.953041,274.066711 75.560440,276.541382 75.919342,279.262329 
	C70.589119,283.296783 65.507370,287.084991 60.425621,290.873169 
z"/>
<path fill="#5C4BCC" opacity="1.000000" stroke="none" 
	d="
M355.462677,417.091370 
	C354.831512,417.102936 354.665009,417.054108 354.248901,416.482391 
	C354.006165,412.348480 354.013031,408.737396 354.475708,405.017639 
	C361.610199,404.993561 368.288849,405.078186 374.975586,405.611206 
	C374.992401,409.651520 375.001129,413.243408 375.009827,416.835266 
	C368.648987,416.900482 362.288147,416.965698 355.462677,417.091370 
z"/>
<path fill="#684BCF" opacity="1.000000" stroke="none" 
	d="
M375.450806,416.885162 
	C375.001129,413.243408 374.992401,409.651520 375.434540,405.492645 
	C381.580963,405.006073 387.276520,405.086517 392.979980,405.615051 
	C393.000000,409.651184 393.012054,413.239197 393.024139,416.827209 
	C389.982605,416.899872 386.941071,416.972473 383.447540,417.100952 
	C380.627625,417.082886 378.259735,417.008972 375.450806,416.885162 
z"/>
<path fill="#834ACF" opacity="1.000000" stroke="none" 
	d="
M437.022583,414.101837 
	C428.670441,415.098541 420.299774,416.007324 411.473145,416.423553 
	C411.000000,412.345886 410.982788,408.760773 411.424530,405.055176 
	C419.858917,404.193390 427.834381,403.452057 435.843781,403.164764 
	C436.239471,407.025513 436.601196,410.432220 436.962952,413.838959 
	C436.962952,413.838959 437.003998,414.013916 437.022583,414.101837 
z"/>
<path fill="#764AD0" opacity="1.000000" stroke="none" 
	d="
M410.965576,405.175659 
	C410.982788,408.760773 411.000000,412.345886 411.024414,416.376251 
	C410.858521,416.878754 410.685364,416.936035 410.252960,417.080444 
	C404.646027,417.086365 399.298340,417.005157 393.487396,416.875610 
	C393.012054,413.239197 393.000000,409.651184 393.438507,405.496948 
	C399.581268,405.012360 405.273407,405.094025 410.965576,405.175659 
z"/>
<path fill="#944ACC" opacity="1.000000" stroke="none" 
	d="
M437.300354,413.754028 
	C436.601196,410.432220 436.239471,407.025513 436.058838,402.890259 
	C444.734161,398.422058 451.837616,392.846832 457.829254,385.804169 
	C458.446442,389.991486 459.063599,394.178833 459.893311,398.718994 
	C459.804596,399.521667 459.503357,399.971497 459.087952,400.667908 
	C451.861755,405.166016 444.749756,409.417542 437.300354,413.754028 
z"/>
<path fill="#815300" opacity="1.000000" stroke="none" 
	d="
M76.167831,279.016052 
	C75.560440,276.541382 74.953041,274.066711 74.146667,271.256348 
	C74.541832,270.503418 75.135971,270.086212 75.923973,269.464417 
	C82.453888,268.164978 88.789948,267.070160 95.571655,265.924255 
	C97.730148,265.945831 99.442986,266.018433 101.577850,266.572327 
	C101.997879,269.663666 101.995865,272.273743 101.562111,274.948669 
	C92.632584,275.244171 84.040733,274.888184 76.167831,279.016052 
z"/>
<path fill="#514EBF" opacity="1.000000" stroke="none" 
	d="
M354.019897,405.126343 
	C354.013031,408.737396 354.006165,412.348480 353.999451,416.408020 
	C346.650696,416.930450 339.301788,417.004395 331.488831,417.127625 
	C330.568848,417.104980 330.113007,417.033051 329.323608,416.449219 
	C329.003906,412.330719 329.017761,408.724121 329.482239,404.993164 
	C337.961914,404.954651 345.990906,405.040497 354.019897,405.126343 
z"/>
<path fill="#47C5B9" opacity="1.000000" stroke="none" 
	d="
M233.967041,405.190308 
	C233.974716,408.780457 233.982391,412.370636 233.986267,416.408081 
	C230.293625,416.930481 226.604782,417.005585 222.457504,417.131592 
	C219.951920,417.107178 217.904755,417.031921 215.424957,416.455872 
	C214.996902,412.371094 215.001495,408.787018 215.458298,405.075623 
	C221.929367,405.028961 227.948196,405.109619 233.967041,405.190308 
z"/>
<path fill="#4CD0B4" opacity="1.000000" stroke="none" 
	d="
M215.006073,405.203003 
	C215.001495,408.787018 214.996902,412.371094 214.988937,416.401794 
	C210.968185,416.922577 206.950806,416.996704 202.475113,417.125122 
	C201.565201,417.112610 201.113586,417.045776 200.326813,416.474854 
	C200.025894,412.376312 200.060135,408.781769 200.538391,405.074524 
	C205.656982,405.042206 210.331528,405.122589 215.006073,405.203003 
z"/>
<path fill="#C9714A" opacity="1.000000" stroke="none" 
	d="
M61.001495,416.876740 
	C55.930717,416.308929 50.859936,415.741150 45.387894,415.150024 
	C44.986633,415.126740 44.996891,414.932770 45.003334,414.445679 
	C44.996181,412.652069 44.982594,411.345551 45.123909,409.738953 
	C45.592960,407.311005 49.987198,405.178040 45.293293,402.712891 
	C45.494732,401.706909 45.673801,401.044403 46.246094,400.509460 
	C51.420849,402.129272 56.202377,403.621582 60.988869,405.565887 
	C60.996387,409.637512 60.998943,413.257141 61.001495,416.876740 
z"/>
<path fill="#CF814A" opacity="1.000000" stroke="none" 
	d="
M61.247799,416.951355 
	C60.998943,413.257141 60.996387,409.637512 61.446251,405.453613 
	C66.921799,404.984528 71.944923,405.079742 76.976906,405.622986 
	C76.988510,409.670319 76.991257,413.269623 76.994003,416.868958 
	C72.300682,416.933105 67.607361,416.997253 62.450043,417.119324 
	C61.822063,417.126862 61.658085,417.076416 61.247799,416.951355 
z"/>
<path fill="#CE964A" opacity="1.000000" stroke="none" 
	d="
M77.329399,416.926453 
	C76.991257,413.269623 76.988510,409.670319 77.434616,405.506897 
	C82.949402,405.216339 88.015327,405.489838 93.065674,406.233948 
	C93.033455,410.093750 93.016823,413.482910 93.000183,416.872070 
	C88.643913,416.933258 84.287651,416.994415 79.472198,417.114075 
	C78.563614,417.109680 78.114204,417.046814 77.329399,416.926453 
z"/>
<path fill="#C9A048" opacity="1.000000" stroke="none" 
	d="
M93.375702,416.925903 
	C93.016823,413.482910 93.033455,410.093750 93.436966,406.067047 
	C97.202934,405.343964 100.582016,405.258362 103.966103,405.621033 
	C103.977089,409.668701 103.983070,413.268097 103.989044,416.867523 
	C101.624588,416.942749 99.260132,417.017975 96.456375,417.145874 
	C95.261780,417.125610 94.506500,417.052643 93.375702,416.925903 
z"/>
<path fill="#BDAB49" opacity="1.000000" stroke="none" 
	d="
M104.431740,416.918579 
	C103.983070,413.268097 103.977089,409.668701 104.417175,405.497620 
	C108.569077,405.006256 112.274918,405.086517 115.982513,405.615417 
	C115.989403,409.664001 115.994545,413.263947 115.999687,416.863922 
	C114.927666,416.938782 113.855644,417.013611 112.383301,417.141418 
	C109.613457,417.119446 107.243942,417.044556 104.431740,416.918579 
z"/>
<path fill="#A4CB4B" opacity="1.000000" stroke="none" 
	d="
M140.975510,416.857269 
	C136.960449,416.890228 132.945374,416.923187 128.465103,416.458191 
	C128.006592,412.367188 128.013290,408.774170 128.467957,405.062012 
	C132.935532,405.022034 136.955154,405.101166 140.976685,405.627991 
	C140.977585,409.669525 140.976547,413.263397 140.975510,416.857269 
z"/>
<path fill="#B1B84A" opacity="1.000000" stroke="none" 
	d="
M128.019974,405.181091 
	C128.013290,408.774170 128.006592,412.367188 128.005829,416.407776 
	C127.837051,416.911377 127.662354,416.967407 127.224518,417.105865 
	C123.611290,417.113647 120.261192,417.039032 116.455399,416.914185 
	C115.994545,413.263947 115.989403,409.664001 116.432289,405.494537 
	C120.593536,405.010406 124.306755,405.095764 128.019974,405.181091 
z"/>
<path fill="#99CB4E" opacity="1.000000" stroke="none" 
	d="
M141.229782,416.941650 
	C140.976547,413.263397 140.977585,409.669525 141.413940,405.502472 
	C144.538101,405.007172 147.226944,405.085052 149.927551,405.611755 
	C149.948425,409.664429 149.957520,413.268250 149.966614,416.872101 
	C147.603043,416.942810 145.239487,417.013519 142.435211,417.136536 
	C141.824341,417.134552 141.654190,417.080292 141.229782,416.941650 
z"/>
<path fill="#4A86CD" opacity="1.000000" stroke="none" 
	d="
M288.401672,416.908722 
	C287.954071,413.259583 287.971680,409.671783 288.444733,405.505707 
	C293.278931,404.999451 297.657684,405.071442 302.025269,405.592957 
	C301.996307,409.637451 301.978455,413.232483 301.960632,416.827484 
	C297.596039,416.875000 293.231445,416.922516 288.401672,416.908722 
z"/>
<path fill="#4A71CB" opacity="1.000000" stroke="none" 
	d="
M302.227966,416.918274 
	C301.978455,413.232483 301.996307,409.637451 302.465302,405.460388 
	C306.618073,404.965759 310.319641,405.053192 314.014771,405.590576 
	C313.999084,409.640411 313.989929,413.240295 313.980743,416.840210 
	C310.632660,416.925140 307.284607,417.010071 303.483398,417.142334 
	C302.851990,417.129486 302.673645,417.069244 302.227966,416.918274 
z"/>
<path fill="#4A63C5" opacity="1.000000" stroke="none" 
	d="
M314.382416,416.895325 
	C313.989929,413.240295 313.999084,409.640411 314.463409,405.463776 
	C319.622894,404.963837 324.327271,405.040680 329.031616,405.117493 
	C329.017761,408.724121 329.003906,412.330719 328.983643,416.384094 
	C325.626587,416.916351 322.275970,417.001831 318.470642,417.135162 
	C316.938660,417.105530 315.861359,417.028015 314.382416,416.895325 
z"/>
<path fill="#68D08C" opacity="1.000000" stroke="none" 
	d="
M189.163574,417.106079 
	C185.222534,417.149628 181.564240,417.112732 177.447510,417.130707 
	C176.240662,417.111053 175.492294,417.036530 174.374542,416.460175 
	C174.014114,412.365204 174.023041,408.772064 174.481400,405.056763 
	C179.967422,405.011932 185.003998,405.089233 190.030548,405.615112 
	C190.018021,409.665436 190.015518,413.267120 190.013016,416.868805 
	C189.824142,416.921082 189.635254,416.973389 189.163574,417.106079 
z"/>
<path fill="#80CD6A" opacity="1.000000" stroke="none" 
	d="
M164.339935,417.127014 
	C162.285995,417.109772 160.570862,417.034119 158.427948,416.462830 
	C157.988831,412.363220 157.977478,408.759216 158.401382,405.034302 
	C161.218445,404.997559 163.600250,405.081696 165.987061,405.614502 
	C166.007263,409.662750 166.022476,413.262421 166.037674,416.862061 
	C165.584702,416.930939 165.131729,416.999786 164.339935,417.127014 
z"/>
<path fill="#77D07A" opacity="1.000000" stroke="none" 
	d="
M166.476273,416.910400 
	C166.022476,413.262421 166.007263,409.662750 166.422012,405.494629 
	C169.245285,405.010376 171.638626,405.094635 174.031952,405.178894 
	C174.023041,408.772064 174.014114,412.365204 174.002090,416.405792 
	C171.637619,416.888367 169.276245,416.923553 166.476273,416.910400 
z"/>
<path fill="#56C89F" opacity="1.000000" stroke="none" 
	d="
M190.463242,416.921173 
	C190.015518,413.267120 190.018021,409.665436 190.468048,405.493073 
	C193.975159,405.010681 197.034775,405.098969 200.094360,405.187256 
	C200.060135,408.781769 200.025894,412.376312 199.989044,416.419128 
	C196.962097,416.902771 193.937790,416.938141 190.463242,416.921173 
z"/>
<path fill="#8BCB5D" opacity="1.000000" stroke="none" 
	d="
M157.966141,405.155212 
	C157.977478,408.759216 157.988831,412.363220 158.001343,416.415649 
	C156.287735,416.936279 154.572952,417.008514 152.432770,417.131775 
	C151.553360,417.118744 151.099365,417.054657 150.306000,416.931335 
	C149.957520,413.268250 149.948425,409.664429 150.367310,405.488129 
	C153.185577,404.995544 155.575867,405.075378 157.966141,405.155212 
z"/>
<path fill="#D0635F" opacity="1.000000" stroke="none" 
	d="
M44.969002,410.039001 
	C44.982594,411.345551 44.996181,412.652069 45.015755,414.349365 
	C42.586174,413.866486 40.150620,412.992828 37.364243,412.049133 
	C36.796581,411.697937 36.579746,411.416840 36.164284,410.955078 
	C36.224850,410.033051 36.484035,409.291656 37.280342,408.278442 
	C38.912552,408.087646 40.007641,408.168701 41.305725,408.480774 
	C42.662148,409.154205 43.815575,409.596619 44.969002,410.039001 
z"/>
<path fill="#3C0084" opacity="1.000000" stroke="none" 
	d="
M412.984192,265.913757 
	C418.008484,265.867004 423.052765,265.908417 428.564209,265.892578 
	C430.417053,265.908783 431.802734,265.982208 433.598969,266.516327 
	C434.346619,269.610107 434.683746,272.243195 434.554138,274.942688 
	C427.395355,274.965881 420.703369,274.922729 413.969360,274.487915 
	C413.635162,271.456360 413.342987,268.816498 413.050812,266.176636 
	C413.050812,266.176636 413.004242,266.001892 412.984192,265.913757 
z"/>
<path fill="#4B0083" opacity="1.000000" stroke="none" 
	d="
M435.020874,274.876282 
	C434.683746,272.243195 434.346619,269.610107 434.013000,266.566772 
	C440.032776,266.129883 446.049042,266.103180 452.532440,266.121826 
	C453.282196,268.919250 453.564850,271.671387 453.451660,274.840149 
	C447.044189,275.129974 441.032562,275.003143 435.020874,274.876282 
z"/>
<path fill="#180182" opacity="1.000000" stroke="none" 
	d="
M379.536987,265.909637 
	C382.694794,265.931244 385.388824,266.007721 388.534302,266.563599 
	C388.994293,269.657227 389.002777,272.271393 388.545166,274.948853 
	C378.722870,274.973999 369.366669,274.935852 359.967407,274.505066 
	C359.603790,271.469971 359.283234,268.827545 358.962677,266.185120 
	C360.366089,266.106140 361.769470,266.027130 363.591675,265.896057 
	C369.031372,265.884125 374.052277,265.924286 379.536987,265.909637 
z"/>
<path fill="#04047A" opacity="1.000000" stroke="none" 
	d="
M358.498901,266.140808 
	C359.283234,268.827545 359.603790,271.469971 359.501160,274.565491 
	C350.047150,274.979187 341.016296,274.939789 331.987244,274.461792 
	C332.001617,271.402985 332.014252,268.782745 332.026855,266.162537 
	C340.696259,266.140533 349.365692,266.118500 358.498901,266.140808 
z"/>
<path fill="#00147B" opacity="1.000000" stroke="none" 
	d="
M331.685181,266.097412 
	C332.014252,268.782745 332.001617,271.402985 331.525024,274.513947 
	C326.370453,274.967163 321.679840,274.929596 317.006226,274.493042 
	C317.354431,271.457153 317.685730,268.820221 318.017029,266.183319 
	C321.697662,266.094696 325.378326,266.006104 329.514160,265.867004 
	C330.427368,265.888458 330.885437,265.960388 331.685181,266.097412 
z"/>
<path fill="#00806D" opacity="1.000000" stroke="none" 
	d="
M220.501328,265.892212 
	C221.721649,265.919830 222.479660,265.996155 223.616425,266.557068 
	C223.994186,269.651733 223.993179,272.261871 223.552551,274.938721 
	C216.409286,274.968262 209.705673,274.931000 203.000153,274.455902 
	C202.998734,271.406036 202.999191,268.793976 202.999649,266.181946 
	C208.679443,266.101593 214.359222,266.021210 220.501328,265.892212 
z"/>
<path fill="#0D8558" opacity="1.000000" stroke="none" 
	d="
M202.574890,266.128784 
	C202.999191,268.793976 202.998734,271.406036 202.543839,274.524048 
	C198.397095,274.977905 194.704803,274.925812 191.011505,274.437744 
	C191.015198,271.398682 191.019867,268.795624 191.024536,266.192535 
	C192.742065,266.119293 194.459595,266.046082 196.605103,265.915924 
	C198.738785,265.931183 200.444458,266.003387 202.574890,266.128784 
z"/>
<path fill="#587E00" opacity="1.000000" stroke="none" 
	d="
M127.025002,266.179291 
	C131.041061,266.143311 135.057129,266.107300 139.536316,266.557251 
	C140.004486,269.660675 140.009521,272.278168 139.553207,274.958923 
	C135.059860,274.978119 131.027863,274.934052 126.996033,274.452637 
	C127.005806,271.403320 127.015404,268.791290 127.025002,266.179291 
z"/>
<path fill="#686F00" opacity="1.000000" stroke="none" 
	d="
M126.686371,266.116577 
	C127.015404,268.791290 127.005806,271.403320 126.539413,274.516083 
	C122.385818,274.970886 118.689018,274.924927 114.992966,274.442383 
	C115.000740,271.398132 115.007767,268.790527 115.014786,266.182892 
	C118.038712,266.108765 121.062637,266.034637 124.535957,265.906860 
	C125.439484,265.920135 125.893616,265.987030 126.686371,266.116577 
z"/>
<path fill="#4B860B" opacity="1.000000" stroke="none" 
	d="
M140.014557,274.895691 
	C140.009521,272.278168 140.004486,269.660675 139.995651,266.609375 
	C140.760513,266.101532 141.529190,266.027466 142.682877,265.901367 
	C145.422256,265.928040 147.776627,266.006744 150.569702,266.562744 
	C151.011459,269.651428 151.014481,272.262878 150.561050,274.938568 
	C146.741257,274.967133 143.377899,274.931396 140.014557,274.895691 
z"/>
<path fill="#2A0086" opacity="1.000000" stroke="none" 
	d="
M389.011261,274.885620 
	C389.002777,272.271393 388.994293,269.657227 388.980652,266.609802 
	C391.029907,266.099365 393.084351,266.022217 395.576324,265.891479 
	C401.380219,265.919342 406.746552,266.000793 412.581848,266.129456 
	C413.342987,268.816498 413.635162,271.456360 413.503235,274.551941 
	C405.056519,274.966980 397.033905,274.926300 389.011261,274.885620 
z"/>
<path fill="#006380" opacity="1.000000" stroke="none" 
	d="
M269.506958,265.889160 
	C271.044952,265.916870 272.121002,265.993073 273.595886,266.553772 
	C273.982239,269.650513 273.969757,272.262695 273.496582,274.936096 
	C262.691040,274.956482 252.346237,274.915710 242.001923,274.437988 
	C242.006866,271.395203 242.011322,268.789368 242.015778,266.183502 
	C245.705322,266.108398 249.394852,266.033295 253.542374,265.905273 
	C259.015259,265.880798 264.030121,265.909210 269.506958,265.889160 
z"/>
<path fill="#017675" opacity="1.000000" stroke="none" 
	d="
M241.598114,266.129181 
	C242.011322,268.789368 242.006866,271.395203 241.537384,274.502777 
	C235.378967,274.960297 229.685577,274.916138 223.992188,274.871979 
	C223.993179,272.261871 223.994186,269.651733 223.993393,266.610229 
	C228.013885,266.103485 232.036179,266.028168 236.515106,265.903320 
	C238.374664,265.927521 239.777557,266.001190 241.598114,266.129181 
z"/>
<path fill="#003881" opacity="1.000000" stroke="none" 
	d="
M287.033997,266.187286 
	C291.722076,266.097717 296.410187,266.008148 301.563721,265.872070 
	C302.029144,265.825623 301.996399,266.012390 301.987732,266.538086 
	C301.984558,269.675201 301.990112,272.286652 301.532227,274.952271 
	C296.373016,274.965668 291.677307,274.924896 286.985474,274.446564 
	C287.004242,271.401794 287.019135,268.794525 287.033997,266.187286 
z"/>
<path fill="#004F82" opacity="1.000000" stroke="none" 
	d="
M286.691437,266.120056 
	C287.019135,268.794525 287.004242,271.401794 286.526367,274.501953 
	C282.028046,274.954895 277.992676,274.914886 273.957306,274.874878 
	C273.969757,272.262695 273.982239,269.650513 273.996704,266.607056 
	C277.354523,266.092651 280.710327,266.009491 284.518433,265.878906 
	C285.430084,265.905243 285.889496,265.979034 286.691437,266.120056 
z"/>
<path fill="#24853C" opacity="1.000000" stroke="none" 
	d="
M170.021454,266.180359 
	C170.780838,266.106323 171.540207,266.032318 172.678833,265.901978 
	C175.418320,265.922180 177.778564,265.998657 180.577682,266.558533 
	C181.021820,269.651825 181.027084,272.261780 180.574997,274.938751 
	C176.755508,274.963806 173.393387,274.921875 170.028564,274.442780 
	C170.024399,271.397186 170.022919,268.788788 170.021454,266.180359 
z"/>
<path fill="#16864E" opacity="1.000000" stroke="none" 
	d="
M181.032349,274.871735 
	C181.027084,272.261780 181.021820,269.651825 181.019684,266.609100 
	C183.383438,266.103119 185.744034,266.029938 188.545288,265.910889 
	C189.439407,265.933685 189.892883,266.002350 190.685440,266.131775 
	C191.019867,268.795624 191.015198,271.398682 190.560303,274.503662 
	C187.084183,274.960968 184.058273,274.916351 181.032349,274.871735 
z"/>
<path fill="#00247F" opacity="1.000000" stroke="none" 
	d="
M301.995667,274.898071 
	C301.990112,272.286652 301.984558,269.675201 301.970276,266.631287 
	C306.657288,266.105103 311.353027,266.011383 316.510529,265.869781 
	C317.146423,265.882080 317.320557,265.942230 317.755859,266.092834 
	C317.685730,268.820221 317.354431,271.457153 316.543427,274.545959 
	C311.374329,274.964600 306.684998,274.931335 301.995667,274.898071 
z"/>
<path fill="#766500" opacity="1.000000" stroke="none" 
	d="
M114.600037,266.130615 
	C115.007767,268.790527 115.000740,271.398132 114.534103,274.505371 
	C110.047615,274.964600 106.020729,274.924194 101.993851,274.883789 
	C101.995865,272.273743 101.997879,269.663666 102.004196,266.621338 
	C104.383514,266.112640 106.758530,266.036224 109.578133,265.909058 
	C111.410248,265.931610 112.797775,266.004974 114.600037,266.130615 
z"/>
<path fill="#3E881D" opacity="1.000000" stroke="none" 
	d="
M151.017487,274.874298 
	C151.014481,272.262878 151.011459,269.651428 151.011414,266.609802 
	C152.405304,266.107788 153.796188,266.035919 155.604309,265.913879 
	C157.420959,265.935059 158.820389,266.006378 160.628632,266.562134 
	C161.041031,269.656464 161.044617,272.266357 160.591583,274.937134 
	C157.095810,274.956757 154.056641,274.915527 151.017487,274.874298 
z"/>
<path fill="#2C8530" opacity="1.000000" stroke="none" 
	d="
M161.048218,274.876251 
	C161.044617,272.266357 161.041031,269.656464 161.046661,266.615112 
	C162.438110,266.112640 163.820374,266.041626 165.617767,265.916840 
	C167.096924,265.933350 168.160904,266.003632 169.623169,266.127136 
	C170.022919,268.788788 170.024399,271.397186 169.579239,274.507080 
	C166.437805,274.964447 163.743011,274.920349 161.048218,274.876251 
z"/>
<path fill="#C03427" opacity="1.000000" stroke="none" 
	d="
M41.102722,408.249756 
	C40.007641,408.168701 38.912552,408.087646 37.405304,408.010681 
	C34.723057,405.314667 32.452969,402.614532 30.057301,399.627808 
	C32.655865,397.630707 35.380016,395.920135 38.648968,394.413696 
	C41.413467,396.539185 43.633167,398.460571 45.852867,400.381927 
	C45.673801,401.044403 45.494732,401.706909 44.964115,402.843323 
	C43.442616,404.961426 42.272667,406.605621 41.102722,408.249756 
z"/>
<path fill="#7B0085" opacity="1.000000" stroke="none" 
	d="
M478.042786,289.024292 
	C481.133057,287.122711 484.972687,285.768921 483.994659,280.488892 
	C485.573547,282.786011 487.147736,285.483856 488.639862,288.807190 
	C485.671631,290.622284 482.785461,291.811890 479.671783,292.778564 
	C478.977112,291.378571 478.509949,290.201416 478.042786,289.024292 
z"/>
<path fill="#A406B9" opacity="1.000000" stroke="none" 
	d="
M479.899292,293.001465 
	C482.785461,291.811890 485.671631,290.622284 488.749664,289.130127 
	C491.427032,293.418274 491.083710,294.040558 484.315125,296.807861 
	C482.869690,297.917328 481.735352,298.868622 480.390808,299.714294 
	C480.086853,297.406250 479.993073,295.203857 479.899292,293.001465 
z"/>
<path fill="#020303" opacity="1.000000" stroke="none" 
	d="
M479.671783,292.778595 
	C479.993073,295.203857 480.086853,297.406250 480.260986,299.975098 
	C477.506439,311.939972 474.671600,323.538300 471.733582,335.613861 
	C471.495514,336.297455 471.525696,336.475983 471.720947,336.626678 
	C471.442841,337.462067 471.164764,338.297485 470.773163,339.632385 
	C470.525970,340.324249 470.556549,340.485535 470.751404,340.615723 
	C470.477936,341.439789 470.204468,342.263885 469.972412,343.527161 
	C467.328522,354.323212 464.745361,364.708282 461.900635,375.021179 
	C460.946564,378.479919 459.325836,381.754761 457.919525,385.458923 
	C451.837616,392.846832 444.734161,398.422058 436.024872,402.436218 
	C427.834381,403.452057 419.858917,404.193390 411.424530,405.055176 
	C405.273407,405.094025 399.581268,405.012360 393.430603,405.048828 
	C387.276520,405.086517 381.580963,405.006073 375.426453,405.044189 
	C368.288849,405.078186 361.610199,404.993561 354.475739,405.017639 
	C345.990906,405.040497 337.961914,404.954651 329.482269,404.993164 
	C324.327271,405.040680 319.622894,404.963837 314.469910,405.013855 
	C310.319641,405.053192 306.618073,404.965759 302.476440,405.010864 
	C297.657684,405.071442 293.278931,404.999451 288.452515,405.058960 
	C282.970001,405.107330 277.935120,405.024200 272.449158,405.070679 
	C265.974854,405.117554 259.951691,405.034821 253.476746,405.073425 
	C246.977356,405.110260 240.929703,405.025696 234.424561,405.065704 
	C227.948196,405.109619 221.929367,405.028961 215.458313,405.075653 
	C210.331528,405.122589 205.656982,405.042206 200.538391,405.074524 
	C197.034775,405.098969 193.975159,405.010681 190.478058,405.044434 
	C185.003998,405.089233 179.967422,405.011932 174.481400,405.056763 
	C171.638626,405.094635 169.245285,405.010376 166.417023,405.045990 
	C163.600250,405.081696 161.218445,404.997559 158.401382,405.034302 
	C155.575867,405.075378 153.185577,404.995544 150.355560,405.039307 
	C147.226944,405.085052 144.538101,405.007172 141.412003,405.054810 
	C136.955154,405.101166 132.935532,405.022034 128.467957,405.062012 
	C124.306755,405.095764 120.593536,405.010406 116.430542,405.045898 
	C112.274918,405.086517 108.569077,405.006256 104.412170,405.049377 
	C100.582016,405.258362 97.202934,405.343964 93.452560,405.596436 
	C88.015327,405.489838 82.949402,405.216339 77.425758,405.058899 
	C71.944923,405.079742 66.921799,404.984528 61.441292,405.001587 
	C56.202377,403.621582 51.420849,402.129272 46.246094,400.509460 
	C43.633167,398.460571 41.413467,396.539185 38.980904,394.348328 
	C34.273712,386.623474 34.370510,378.832031 37.120049,370.450073 
	C38.958981,363.042206 40.745510,356.034485 42.608765,348.615234 
	C44.482292,340.413025 46.279099,332.622284 47.993988,324.415894 
	C49.546589,318.471741 50.882099,312.831238 52.899010,307.445984 
	C54.950836,301.967529 57.673882,296.740417 60.264317,291.138214 
	C65.507370,287.084991 70.589119,283.296783 75.919342,279.262329 
	C84.040733,274.888184 92.632584,275.244171 101.562111,274.948669 
	C106.020729,274.924194 110.047615,274.964600 114.533356,274.941986 
	C118.689018,274.924927 122.385818,274.970886 126.539246,274.953430 
	C131.027863,274.934052 135.059860,274.978119 139.553207,274.958923 
	C143.377899,274.931396 146.741257,274.967133 150.561035,274.938568 
	C154.056641,274.915527 157.095810,274.956757 160.591583,274.937134 
	C163.743011,274.920349 166.437805,274.964447 169.581940,274.944244 
	C173.393387,274.921875 176.755508,274.963806 180.574997,274.938751 
	C184.058273,274.916351 187.084183,274.960968 190.561310,274.939636 
	C194.704803,274.925812 198.397095,274.977905 202.545715,274.961884 
	C209.705673,274.931000 216.409286,274.968262 223.552551,274.938721 
	C229.685577,274.916138 235.378967,274.960297 241.536896,274.939697 
	C252.346237,274.915710 262.691040,274.956482 273.496582,274.936066 
	C277.992676,274.914886 282.028046,274.954895 286.522491,274.939484 
	C291.677307,274.924896 296.373016,274.965668 301.532196,274.952271 
	C306.684998,274.931335 311.374329,274.964600 316.526489,274.944946 
	C321.679840,274.929596 326.370453,274.967163 331.523254,274.952545 
	C341.016296,274.939789 350.047150,274.979187 359.544220,274.958130 
	C369.366669,274.935852 378.722870,274.973999 388.545166,274.948883 
	C397.033905,274.926300 405.056519,274.966980 413.545258,274.943604 
	C420.703369,274.922729 427.395355,274.965881 434.554138,274.942657 
	C441.032562,275.003143 447.044189,275.129974 453.524750,275.246887 
	C458.730194,276.511322 463.466766,277.785675 468.549927,279.188171 
	C471.762207,282.420776 474.627869,285.525238 477.768188,288.827026 
	C478.509949,290.201416 478.977112,291.378571 479.671783,292.778595 
M53.651737,315.152374 
	C53.432659,315.329865 53.280399,315.552979 53.075935,316.596588 
	C52.079021,322.054932 52.091930,322.066620 59.887764,322.018616 
	C61.927288,322.006378 63.966816,321.994171 66.940811,322.047943 
	C70.053749,322.072388 73.180489,322.290924 76.276031,322.070770 
	C79.919395,321.811646 83.535698,321.172150 87.488632,321.316498 
	C87.539230,322.447937 87.589836,323.579376 87.312805,325.414368 
	C86.707008,329.276215 84.466553,333.211273 88.179955,337.506683 
	C91.069588,340.955658 93.959221,344.404602 96.294853,348.173737 
	C94.825623,349.397980 93.356392,350.622223 91.225868,352.016174 
	C79.985405,359.551544 76.015953,371.048035 74.067429,383.622131 
	C74.026268,383.887756 74.656326,384.257385 75.901436,384.732605 
	C81.364189,384.765686 86.840195,384.579712 92.285049,384.908813 
	C95.916809,385.128357 97.095474,383.473969 97.961487,380.305908 
	C98.992111,376.535675 100.723984,372.957123 102.708115,368.907013 
	C106.468346,365.590332 110.228584,362.273682 114.754379,358.818268 
	C118.840187,358.050446 122.925995,357.282593 127.932869,356.670013 
	C133.281754,356.623627 138.630630,356.577240 144.747330,356.703217 
	C147.496811,357.797150 150.246292,358.891083 153.313248,360.581757 
	C155.096176,363.467194 156.879120,366.352661 158.686050,369.997009 
	C158.959366,371.448517 159.232681,372.900055 159.164673,375.150848 
	C158.781265,378.322449 158.397858,381.494019 158.931824,384.806610 
	C163.297806,384.731232 167.663788,384.655884 172.881363,384.719635 
	C175.312057,384.205902 179.510605,384.267242 179.894333,383.087646 
	C183.022537,373.471008 186.477936,363.624786 179.973862,353.262939 
	C179.283676,352.489777 178.593491,351.716644 177.564789,350.430786 
	C177.048309,348.976410 176.531830,347.522034 176.699890,345.909210 
	C179.821716,343.682587 182.943542,341.455933 186.666824,338.892181 
	C189.058624,334.592896 191.450409,330.293610 194.073227,325.237183 
	C196.645752,315.766235 199.218277,306.295288 202.105835,296.608612 
	C202.430466,296.410187 202.755096,296.211731 203.397659,296.693207 
	C203.506104,298.152191 203.614532,299.611145 203.865494,301.813782 
	C205.880585,306.136505 207.895691,310.459229 209.969925,315.628021 
	C209.365677,318.668976 208.352264,321.697815 208.261581,324.754028 
	C208.150146,328.508453 208.809235,332.285797 209.588150,336.449921 
	C210.038971,337.308472 210.489792,338.167023 211.082718,339.707886 
	C216.665588,349.598694 226.147903,353.401794 236.402466,356.167480 
	C238.604523,356.761383 240.543747,358.329834 242.268448,359.891663 
	C242.184402,360.241180 242.100357,360.590698 241.630417,361.604340 
	C239.988083,368.071442 238.285431,374.524384 236.760025,381.018951 
	C236.490982,382.164429 236.962616,383.483856 238.009750,384.845825 
	C243.803253,384.834076 249.598038,384.745972 255.389679,384.844055 
	C258.115021,384.890228 259.548584,384.056885 260.155823,381.135071 
	C261.533813,374.504456 263.196198,367.924377 265.016327,361.400055 
	C265.483002,359.727234 266.966370,358.338074 268.782379,356.815704 
	C274.844025,355.080292 280.905701,353.344879 287.633118,351.466644 
	C293.105652,348.030945 298.578217,344.595245 304.664917,340.866791 
	C308.039703,336.058716 312.660309,331.683746 314.515503,326.347351 
	C317.812439,316.864044 319.433533,306.798126 321.509399,296.144043 
	C316.352539,296.093964 311.195679,296.043884 305.179962,295.757141 
	C302.696136,296.156555 299.240662,294.041199 298.216187,298.271118 
	C296.316620,306.114441 294.512390,313.980835 292.095490,322.222900 
	C288.702332,326.403809 285.309204,330.584717 281.198181,334.895599 
	C277.441010,336.545654 273.683838,338.195740 269.076782,339.762970 
	C268.281769,340.028503 267.486755,340.294067 266.287292,340.408295 
	C265.902527,340.585754 265.517792,340.763245 264.210571,340.781097 
	C260.802155,340.868073 257.393707,340.955048 253.238068,340.792145 
	C248.412323,339.054474 243.586578,337.316803 238.636337,335.108368 
	C238.119797,334.671387 237.603256,334.234375 236.809464,333.163910 
	C233.504181,329.440369 232.368835,325.433868 233.833542,320.377350 
	C236.044189,312.745789 237.628479,304.932800 240.052597,296.822174 
	C240.670135,296.557312 241.287674,296.292480 241.953583,296.685150 
	C241.969421,297.124054 241.985260,297.562988 241.627533,298.623718 
	C241.140244,301.016113 240.652939,303.408539 239.819275,306.507050 
	C238.600342,311.276184 237.381409,316.045319 235.961304,321.601532 
	C239.183517,321.760315 241.591782,321.878998 244.835510,322.042480 
	C246.229004,322.013367 247.622498,321.984222 249.936874,322.025299 
	C251.598236,322.055420 253.288849,321.897583 254.915482,322.150787 
	C259.824036,322.914795 262.468384,320.934113 264.123718,316.201416 
	C266.750732,308.690613 270.035645,301.409973 273.513245,293.533905 
	C274.338989,291.356140 275.164734,289.178375 276.439331,286.541290 
	C276.930054,285.369293 277.420746,284.197296 278.234436,282.421753 
	C278.596863,281.246216 278.959290,280.070679 279.568665,278.094116 
	C272.889984,278.094116 266.878906,278.094116 259.948700,278.034668 
	C244.334396,278.087189 228.720093,278.139709 212.157761,278.065216 
	C207.894867,278.033264 203.631241,277.936981 199.369263,277.985260 
	C193.757202,278.048828 193.398499,278.745422 196.144150,284.630798 
	C196.717575,285.765472 197.290985,286.900177 197.997864,288.676758 
	C198.374039,289.457214 198.750198,290.237671 199.153610,291.636658 
	C199.445572,292.161102 199.737534,292.685516 199.286743,293.579346 
	C194.199921,293.732361 189.103531,293.748535 184.030746,294.102753 
	C181.866699,294.253876 179.751923,295.110870 177.130722,296.154938 
	C175.921341,297.872498 174.711960,299.590057 172.882202,301.062805 
	C168.193893,298.076416 163.505569,295.090057 158.492279,291.566437 
	C157.603119,291.039062 156.713943,290.511688 155.463440,289.485321 
	C154.032074,288.597900 152.600708,287.710480 150.743973,286.296692 
	C147.878983,284.849121 145.014008,283.401550 141.934189,281.220551 
	C140.271469,280.149323 138.684357,278.332367 136.931076,278.154633 
	C132.647751,277.720398 128.287537,278.044495 123.028618,277.988800 
	C114.039177,277.974884 105.049004,278.021637 96.060707,277.912842 
	C93.073540,277.876709 90.838234,278.655304 89.237511,281.968353 
	C80.442657,287.574982 71.647804,293.181610 62.185947,298.990356 
	C54.819630,301.943207 54.671951,308.621277 53.989159,315.017731 
	C53.989159,315.017731 54.014103,314.956482 53.651737,315.152374 
M444.865540,322.021454 
	C446.583130,321.996002 448.300720,321.970581 450.951019,322.018097 
	C456.948181,322.046783 462.954895,322.267334 468.935791,321.969666 
	C470.437439,321.894928 471.856323,320.157257 473.743408,318.621857 
	C473.538788,316.404663 474.163452,312.945465 472.997986,312.167328 
	C463.895569,306.089752 454.449219,300.527252 444.887451,294.190125 
	C443.312866,293.089569 441.738251,291.989014 440.084198,290.853882 
	C440.084198,290.853882 440.009827,290.809387 439.737946,290.438354 
	C439.500092,290.225189 439.222290,290.102081 438.342438,289.765656 
	C437.222687,289.149292 436.102966,288.532928 434.752014,287.599091 
	C434.548340,287.414520 434.309052,287.321869 433.598785,287.040070 
	C433.436768,286.980103 433.274780,286.920105 432.686005,286.346771 
	C429.831696,284.674774 426.977417,283.002777 423.654999,280.702606 
	C421.859344,279.798676 420.116760,278.276672 418.257202,278.116943 
	C414.138275,277.763184 409.960632,278.093689 404.896423,278.070862 
	C384.135559,278.038971 363.371887,278.187408 342.615631,277.861481 
	C336.655243,277.767853 331.572174,278.529938 327.281158,283.897156 
	C326.870667,284.087219 326.460144,284.277283 325.679962,284.509003 
	C325.431580,284.609985 325.270020,284.789276 324.645203,285.421692 
	C323.228790,286.495148 321.812347,287.568634 319.743896,288.762909 
	C317.904572,289.989655 316.065216,291.216400 313.820923,292.713257 
	C315.017731,293.421692 315.522949,293.908966 316.105774,294.033691 
	C318.837585,294.618164 323.308075,294.351288 323.940582,295.796478 
	C324.930908,298.059174 323.341400,301.456848 322.823547,304.369995 
	C322.679077,305.182556 322.460236,305.981903 321.973724,307.536102 
	C321.349457,309.946503 320.697418,312.350128 320.106140,314.768585 
	C318.412445,321.696198 318.706024,322.044769 326.942444,322.022278 
	C331.958954,322.009766 336.975433,321.997223 342.900330,322.044617 
	C345.935608,322.034393 348.970917,322.024170 352.932678,322.046692 
	C370.175232,322.046387 387.417755,322.047729 404.660309,322.044037 
	C407.325470,322.043488 409.858582,321.732849 409.840790,318.214569 
	C409.822754,314.654114 407.062714,315.051666 404.797302,315.050323 
	C384.857086,315.038544 364.916901,315.073761 344.140198,315.046143 
	C342.741089,315.077667 341.341980,315.109222 339.110779,315.092651 
	C337.009796,314.392517 334.908813,313.692383 333.509308,313.005768 
	C333.739777,312.974640 333.970215,312.943512 334.601837,312.845673 
	C334.601837,312.845673 334.985657,312.711090 335.910858,312.817413 
	C345.618835,312.758575 355.326813,312.699768 365.959747,312.763550 
	C374.648315,312.719543 383.336853,312.675537 392.951019,312.756805 
	C398.035858,312.791870 403.130249,312.661560 408.200226,312.953979 
	C409.915924,313.052948 411.569885,314.221222 412.863068,315.586182 
	C411.401276,322.010681 409.578186,328.143585 401.155273,329.208618 
	C400.407867,329.412140 399.660461,329.615662 398.248383,329.723602 
	C397.817902,329.830170 397.387390,329.936737 396.106964,329.849884 
	C394.348511,329.977478 392.590088,330.105042 389.941559,330.000671 
	C376.980286,330.997528 364.019043,331.994385 350.280853,332.954590 
	C344.128479,335.861450 337.976105,338.768341 331.156372,341.870789 
	C328.624481,345.429016 325.056702,348.649719 323.765717,352.612213 
	C320.594910,362.344543 318.441498,372.410919 316.001160,382.372833 
	C315.844879,383.010742 316.732544,383.904327 318.048187,384.789032 
	C328.701141,384.727234 339.354065,384.665436 350.934052,384.743347 
	C357.966583,384.695160 364.999115,384.647003 372.956024,384.727722 
	C380.642853,384.684662 388.329712,384.641602 396.942719,384.728577 
	C403.034485,384.761505 409.134369,384.975037 415.212494,384.703186 
	C416.775879,384.633270 419.209656,383.342072 419.622223,382.081329 
	C420.886627,378.217529 421.363312,374.095978 422.064056,370.026520 
	C422.064056,370.026520 422.101959,370.113953 422.531281,369.945587 
	C422.749786,369.699738 422.833923,369.414307 422.992950,368.634735 
	C423.037231,368.473938 423.081482,368.313110 423.241058,367.482788 
	C421.665741,367.216522 420.092285,366.733704 418.514801,366.720062 
	C409.902100,366.645660 401.288239,366.649994 392.675110,366.695862 
	C376.780914,366.780548 360.886963,366.912781 344.486633,366.492279 
	C344.357758,360.239716 345.778381,354.778778 352.819489,351.709137 
	C358.887390,351.038391 364.955322,350.367645 371.949951,349.799286 
	C378.631134,349.537201 385.312317,349.275085 392.871002,349.052948 
	C400.263763,347.446350 407.656525,345.839722 415.757538,344.068542 
	C424.934875,340.464081 431.733643,334.554626 434.210175,324.635864 
	C436.502350,315.455475 438.641937,306.236938 441.026520,296.586395 
	C441.026520,296.586395 441.086639,296.107330 441.553864,296.097473 
	C441.553864,296.097473 442.008850,295.988739 442.473053,296.341553 
	C442.737640,296.626282 443.002258,296.910980 443.139984,297.970978 
	C442.382141,301.652740 441.624268,305.334534 440.501007,309.644318 
	C439.940277,311.711609 439.320282,313.764923 438.830139,315.848846 
	C437.510620,321.459137 437.886719,321.883636 444.865540,322.021454 
M293.546143,309.510620 
	C293.546143,308.629089 293.546143,307.747559 293.546143,306.031494 
	C285.291077,311.591431 277.688843,316.711670 270.086639,321.831879 
	C272.339600,322.600250 274.192139,322.301819 276.055115,322.099091 
	C278.193512,321.866333 280.339294,321.586853 282.485046,321.557343 
	C290.194397,321.451202 290.275085,321.432465 292.338409,314.070099 
	C292.696381,312.792755 292.990173,311.497406 293.546143,309.510620 
z"/>
<path fill="#A34ACB" opacity="1.000000" stroke="none" 
	d="
M470.803772,340.525787 
	C470.556549,340.485535 470.525970,340.324249 470.786987,340.078461 
	C470.914276,340.025055 470.856140,340.435852 470.803772,340.525787 
z"/>
<path fill="#A34ACB" opacity="1.000000" stroke="none" 
	d="
M471.776428,336.521667 
	C471.525696,336.475983 471.495514,336.297455 471.761200,336.018860 
	C471.891998,335.946625 471.831940,336.416656 471.776428,336.521667 
z"/>
<path fill="#CD6D4C" opacity="1.000000" stroke="none" 
	d="
M41.305721,408.480804 
	C42.272667,406.605621 43.442616,404.961426 44.941742,403.186829 
	C49.987198,405.178040 45.592960,407.311005 45.123909,409.738953 
	C43.815575,409.596619 42.662148,409.154205 41.305721,408.480804 
z"/>
<path fill="#04047A" opacity="1.000000" stroke="none" 
	d="
M352.006104,351.773651 
	C345.778381,354.778778 344.357758,360.239716 344.751892,366.949158 
	C345.017120,367.406006 345.055054,367.785828 344.786163,368.005981 
	C342.049591,370.401855 339.581879,372.577606 335.972107,375.760284 
	C341.688019,376.339661 345.842346,376.760742 349.997803,377.598907 
	C350.001617,380.211884 350.004303,382.407776 350.007019,384.603668 
	C339.354065,384.665436 328.701141,384.727234 317.765503,384.484863 
	C323.282471,380.681763 327.370514,374.070709 334.747498,374.698792 
	C334.747498,368.912872 334.747498,363.439789 334.839630,357.611816 
	C337.760040,349.796387 343.087402,345.408783 350.999603,344.582672 
	C351.338287,347.239014 351.672180,349.506317 352.006104,351.773651 
z"/>
<path fill="#232D53" opacity="1.000000" stroke="none" 
	d="
M327.906250,283.630951 
	C331.572174,278.529938 336.655243,277.767853 342.615631,277.861481 
	C363.371887,278.187408 384.135559,278.038971 405.370728,278.510925 
	C405.893494,280.306396 405.941986,281.661743 405.980469,283.362427 
	C405.948029,284.168579 405.925629,284.629364 405.441162,285.066406 
	C381.511658,285.019745 358.044006,285.032776 334.577057,284.915741 
	C332.351349,284.904663 330.129761,284.078644 327.906250,283.630951 
z"/>
<path fill="#001766" opacity="1.000000" stroke="none" 
	d="
M273.042206,294.031952 
	C270.035645,301.409973 266.750732,308.690613 264.123718,316.201416 
	C262.468384,320.934113 259.824036,322.914795 254.915482,322.150787 
	C253.288849,321.897583 251.598236,322.055420 249.515564,321.577026 
	C249.034088,316.067322 248.973923,311.005890 249.083923,305.632507 
	C251.218643,300.555908 253.183197,295.791290 255.358673,291.013184 
	C255.569595,290.999725 255.990479,290.954010 256.241364,291.249390 
	C258.648468,292.028076 260.784576,292.653656 262.965546,292.961426 
	C266.308228,293.433228 269.681763,293.686157 273.042206,294.031952 
z"/>
<path fill="#3F5297" opacity="1.000000" stroke="none" 
	d="
M322.275513,306.787292 
	C322.460236,305.981903 322.679077,305.182556 322.823547,304.369995 
	C323.341400,301.456848 324.930908,298.059174 323.940582,295.796478 
	C323.308075,294.351288 318.837585,294.618164 316.105774,294.033691 
	C315.522949,293.908966 315.017731,293.421692 313.820923,292.713257 
	C316.065216,291.216400 317.904572,289.989655 320.581909,288.781738 
	C333.056549,289.195068 344.690582,289.773682 356.330475,289.936890 
	C370.489655,290.135406 384.654266,290.043854 398.815399,289.933014 
	C401.608826,289.911194 404.397064,289.231964 407.388153,289.004578 
	C407.826141,289.386292 408.045471,289.635468 408.347656,290.178040 
	C408.931030,291.302765 409.413269,292.150116 409.434387,293.031555 
	C386.821259,293.087677 364.668915,293.066193 342.517639,293.209015 
	C340.616638,293.221252 338.722626,294.323639 336.839905,294.953461 
	C336.854431,294.987335 336.926575,294.972260 336.588165,295.101349 
	C335.124298,298.761261 333.998840,302.292114 332.476929,305.868225 
	C330.054901,306.295990 328.029327,306.678528 325.631958,307.009766 
	C324.265259,306.901428 323.270416,306.844360 322.275513,306.787292 
z"/>
<path fill="#3C0084" opacity="1.000000" stroke="none" 
	d="
M440.848694,297.035217 
	C438.641937,306.236938 436.502350,315.455475 434.210175,324.635864 
	C431.733643,334.554626 424.934875,340.464081 415.393707,343.687805 
	C415.010834,340.594086 414.991791,337.881134 415.184021,335.023041 
	C415.606628,334.613770 415.818024,334.349640 416.326294,333.917175 
	C419.046600,329.507782 422.764648,325.514435 423.632935,320.975922 
	C425.648193,310.442505 430.859650,302.790619 440.018616,297.574646 
	C440.304871,297.411591 440.572418,297.215759 440.848694,297.035217 
z"/>
<path fill="#006380" opacity="1.000000" stroke="none" 
	d="
M267.982635,356.818604 
	C266.966370,358.338074 265.483002,359.727234 265.016327,361.400055 
	C263.196198,367.924377 261.533813,374.504456 260.155823,381.135071 
	C259.548584,384.056885 258.115021,384.890228 255.389679,384.844055 
	C249.598038,384.745972 243.803253,384.834076 237.761505,384.554230 
	C241.025116,381.563354 244.536942,378.864105 248.412598,376.076569 
	C249.682816,374.575104 251.017441,373.273041 251.418442,371.728607 
	C252.845093,366.233887 253.953888,360.656647 255.439514,354.878448 
	C258.876862,350.613129 263.346710,350.138550 268.007294,350.601593 
	C267.999878,352.950134 267.991272,354.884369 267.982635,356.818604 
z"/>
<path fill="#000B30" opacity="1.000000" stroke="none" 
	d="
M344.976685,315.095093 
	C364.916901,315.073761 384.857086,315.038544 404.797302,315.050323 
	C407.062714,315.051666 409.822754,314.654114 409.840790,318.214569 
	C409.858582,321.732849 407.325470,322.043488 404.660309,322.044037 
	C387.417755,322.047729 370.175232,322.046387 352.313538,321.724823 
	C349.455170,319.300323 347.215942,317.197693 344.976685,315.095093 
z"/>
<path fill="#3D54A8" opacity="1.000000" stroke="none" 
	d="
M158.817261,292.103668 
	C163.505569,295.090057 168.193893,298.076416 173.266876,301.541809 
	C173.005600,305.593994 172.359665,309.167206 171.337646,312.797852 
	C162.963837,310.529297 154.966125,308.203308 146.846619,305.576050 
	C143.133987,302.151642 139.543152,299.028503 135.947906,295.536438 
	C135.916611,294.423401 135.889725,293.679291 136.088333,292.880371 
	C136.313828,292.825562 136.770584,292.743317 137.086578,292.807098 
	C137.613922,292.909973 137.825256,292.949036 138.153687,293.293152 
	C139.681244,294.106110 141.082397,295.007355 142.504120,295.041077 
	C145.592133,295.114258 148.985977,293.861084 151.712326,294.772583 
	C155.365768,295.994080 156.987076,294.395020 158.817261,292.103668 
z"/>
<path fill="#4959C3" opacity="1.000000" stroke="none" 
	d="
M334.747498,357.966705 
	C334.747498,363.439789 334.747498,368.912872 334.747498,374.698792 
	C327.370514,374.070709 323.282471,380.681763 317.308655,384.429810 
	C316.732544,383.904327 315.844879,383.010742 316.001160,382.372833 
	C318.441498,372.410919 320.594910,362.344543 323.765717,352.612213 
	C325.056702,348.649719 328.624481,345.429016 331.607513,342.195862 
	C332.375092,345.914368 332.555817,349.328186 333.062805,352.692871 
	C333.334290,354.494537 334.167664,356.211517 334.747498,357.966705 
z"/>
<path fill="#364782" opacity="1.000000" stroke="none" 
	d="
M407.187714,288.855927 
	C404.397064,289.231964 401.608826,289.911194 398.815399,289.933014 
	C384.654266,290.043854 370.489655,290.135406 356.330475,289.936890 
	C344.690582,289.773682 333.056549,289.195068 320.907928,288.721313 
	C321.812347,287.568634 323.228790,286.495148 325.086914,285.176819 
	C325.747620,284.827850 325.921265,284.672974 326.049652,284.467346 
	C326.460144,284.277283 326.870667,284.087219 327.593689,283.764038 
	C330.129761,284.078644 332.351349,284.904663 334.577057,284.915741 
	C358.044006,285.032776 381.511658,285.019745 405.588776,285.366486 
	C406.528198,286.745544 406.857971,287.800720 407.187714,288.855927 
z"/>
<path fill="#017675" opacity="1.000000" stroke="none" 
	d="
M239.478973,297.196899 
	C237.628479,304.932800 236.044189,312.745789 233.833542,320.377350 
	C232.368835,325.433868 233.504181,329.440369 236.589325,333.572388 
	C233.816589,336.252533 231.264008,338.524231 228.411469,340.753357 
	C227.725891,340.801666 227.340240,340.892548 226.972382,340.997925 
	C226.990173,341.012390 227.025330,341.041809 227.111343,340.664185 
	C226.944931,339.500824 226.841232,338.622101 226.416992,337.943817 
	C222.272552,331.317200 222.602417,324.389435 223.623215,316.865356 
	C224.735565,308.666565 229.262405,303.834564 235.615540,299.782959 
	C236.863815,298.986908 237.927292,297.901062 239.183502,296.999878 
	C239.291000,297.050903 239.478973,297.196899 239.478973,297.196899 
z"/>
<path fill="#00247F" opacity="1.000000" stroke="none" 
	d="
M321.755676,296.975922 
	C319.433533,306.798126 317.812439,316.864044 314.515503,326.347351 
	C312.660309,331.683746 308.039703,336.058716 304.263184,340.594543 
	C303.424347,336.660126 302.987244,332.997894 302.492615,328.964661 
	C304.006012,322.810699 305.576965,317.027802 307.392120,310.983582 
	C308.710938,308.944275 309.446625,306.786041 310.928619,305.464905 
	C314.345062,302.419220 318.123871,299.780029 321.755676,296.975922 
z"/>
<path fill="#834ACF" opacity="1.000000" stroke="none" 
	d="
M440.937622,296.810791 
	C440.572418,297.215759 440.304871,297.411591 440.018616,297.574646 
	C430.859650,302.790619 425.648193,310.442505 423.632935,320.975922 
	C422.764648,325.514435 419.046600,329.507782 416.278778,333.493805 
	C415.102814,327.035797 412.877228,320.640747 418.446869,315.309448 
	C418.603485,315.159515 418.197784,314.422150 418.326141,313.753174 
	C419.940948,313.065552 421.283905,312.583466 422.461823,312.160583 
	C422.302399,306.238190 417.269928,306.656738 414.002258,304.434021 
	C413.955353,301.411835 413.908997,298.850342 414.293854,296.232300 
	C423.512268,296.152924 432.299438,296.130127 441.086639,296.107330 
	C441.086639,296.107330 441.026520,296.586395 440.937622,296.810791 
z"/>
<path fill="#017675" opacity="1.000000" stroke="none" 
	d="
M242.604034,359.449341 
	C240.543747,358.329834 238.604523,356.761383 236.402466,356.167480 
	C226.147903,353.401794 216.665588,349.598694 211.375977,339.260803 
	C214.726089,337.934296 217.782959,337.054840 221.028198,336.444580 
	C223.152832,338.156433 225.089081,339.599121 227.025330,341.041809 
	C227.025330,341.041809 226.990173,341.012390 227.106842,341.288910 
	C228.125641,342.105316 229.027740,342.645172 230.033966,343.364502 
	C230.325119,343.755859 230.550812,343.911774 231.067368,344.268982 
	C237.590591,348.368103 245.987274,348.397522 251.768509,355.983917 
	C248.181747,357.340210 245.392883,358.394775 242.604034,359.449341 
z"/>
<path fill="#4A7BC9" opacity="1.000000" stroke="none" 
	d="
M307.147949,311.244904 
	C305.576965,317.027802 304.006012,322.810699 302.216370,329.149170 
	C300.014862,331.848694 298.032043,333.992676 296.040466,335.669586 
	C296.020691,333.415100 296.390289,331.517731 295.913055,329.864899 
	C295.116638,327.106812 293.778473,324.505127 292.668427,321.837616 
	C294.512390,313.980835 296.316620,306.114441 298.216187,298.271118 
	C299.240662,294.041199 302.696136,296.156555 305.597717,296.339600 
	C306.392975,301.696320 306.770477,306.470612 307.147949,311.244904 
z"/>
<path fill="#45B3C4" opacity="1.000000" stroke="none" 
	d="
M242.436249,359.670502 
	C245.392883,358.394775 248.181747,357.340210 251.768509,355.983917 
	C245.987274,348.397522 237.590591,348.368103 231.459305,344.239563 
	C236.356796,343.189056 238.171234,339.907837 238.760834,335.579102 
	C243.586578,337.316803 248.412323,339.054474 253.616486,341.377625 
	C254.390961,346.345612 254.787003,350.728149 255.183044,355.110657 
	C253.953888,360.656647 252.845093,366.233887 251.418442,371.728607 
	C251.017441,373.273041 249.682816,374.575104 248.402863,375.600189 
	C248.019104,372.764648 247.806931,370.297607 248.042175,367.873993 
	C248.484604,363.315735 246.449921,361.144043 242.016312,360.940216 
	C242.100357,360.590698 242.184402,360.241180 242.436249,359.670502 
z"/>
<path fill="#232D53" opacity="1.000000" stroke="none" 
	d="
M213.105789,278.192200 
	C228.720093,278.139709 244.334396,278.087189 260.288269,278.339722 
	C260.408356,279.417419 260.188873,280.190063 259.776703,281.231201 
	C259.011444,282.700531 258.438873,283.901276 257.409821,285.078369 
	C243.258987,285.050781 229.564590,285.046844 215.643295,285.041016 
	C215.416382,285.039093 214.962997,285.018982 214.907227,284.702179 
	C214.540741,283.587616 214.230026,282.789886 213.815231,281.680115 
	C213.509354,280.309448 213.307571,279.250824 213.105789,278.192200 
z"/>
<path fill="#815300" opacity="1.000000" stroke="none" 
	d="
M102.152023,369.295532 
	C100.723984,372.957123 98.992111,376.535675 97.961487,380.305908 
	C97.095474,383.473969 95.916809,385.128357 92.285049,384.908813 
	C86.840195,384.579712 81.364189,384.765686 75.628342,384.406891 
	C83.051064,379.401947 89.708305,373.750610 93.418999,364.915558 
	C95.530891,363.023163 97.364052,361.295624 99.489777,359.888977 
	C100.572235,363.238434 101.362129,366.266998 102.152023,369.295532 
z"/>
<path fill="#524CC7" opacity="1.000000" stroke="none" 
	d="
M334.985657,312.711090 
	C334.985657,312.711090 334.601837,312.845673 334.368134,312.485535 
	C335.255463,307.123718 336.376495,302.122040 337.873749,296.872375 
	C347.169952,296.506958 356.089966,296.389557 365.010681,296.697388 
	C364.994934,299.690216 364.978485,302.257782 364.986542,304.916321 
	C365.011047,305.007294 365.050385,305.191528 364.580688,305.144775 
	C353.699615,304.946503 342.815765,302.987427 334.985657,312.711090 
z"/>
<path fill="#001766" opacity="1.000000" stroke="none" 
	d="
M87.163742,320.697601 
	C83.535698,321.172150 79.919395,321.811646 76.276031,322.070770 
	C73.180489,322.290924 70.053749,322.072388 66.483429,321.616241 
	C66.671776,318.074921 67.317497,314.965271 68.097084,311.647217 
	C68.466995,311.203674 68.731956,311.007629 69.351013,310.859985 
	C70.460793,310.524109 71.245392,310.178955 72.415298,309.841797 
	C78.783363,308.513824 84.766121,307.177856 90.699661,306.140808 
	C89.488213,311.192352 88.325981,315.944977 87.163742,320.697601 
z"/>
<path fill="#2A3663" opacity="1.000000" stroke="none" 
	d="
M62.852943,298.788239 
	C71.647804,293.181610 80.442657,287.574982 89.888176,282.093262 
	C91.321594,282.422607 92.108292,282.818604 92.886513,282.802551 
	C103.218384,282.590057 113.549065,282.319794 123.930023,282.379608 
	C124.054764,283.114960 124.129532,283.534607 124.276733,284.217346 
	C124.537956,284.989380 124.726746,285.498291 124.452187,286.003723 
	C116.656517,285.997192 109.318443,286.177032 101.993271,285.946655 
	C91.954842,285.630951 82.739075,288.071686 74.868240,294.259430 
	C68.600090,299.187195 62.440502,304.473053 60.870537,313.299377 
	C60.465973,313.726685 60.206722,313.944855 59.574257,314.127075 
	C58.449024,314.111389 57.697010,314.131622 56.983795,313.761475 
	C58.966049,308.510101 60.909492,303.649170 62.852943,298.788239 
z"/>
<path fill="#4257A1" opacity="1.000000" stroke="none" 
	d="
M445.109070,294.805725 
	C454.449219,300.527252 463.895569,306.089752 472.997986,312.167328 
	C474.163452,312.945465 473.538788,316.404663 473.166901,318.727997 
	C465.431030,316.769348 458.271698,314.704590 450.894928,312.462524 
	C450.139160,312.112793 449.600800,311.940308 449.257751,311.486023 
	C451.676788,308.360748 451.005737,305.668823 448.975830,303.093109 
	C447.353271,301.034332 445.668274,299.024750 444.040039,296.671082 
	C444.415710,295.834473 444.762390,295.320099 445.109070,294.805725 
z"/>
<path fill="#24853C" opacity="1.000000" stroke="none" 
	d="
M180.238068,353.827301 
	C186.477936,363.624786 183.022537,373.471008 179.894333,383.087646 
	C179.510605,384.267242 175.312057,384.205902 172.450378,384.234009 
	C171.650345,380.816589 171.281281,377.884827 171.055511,374.593933 
	C171.448181,369.863525 171.697556,365.492188 172.142059,360.839111 
	C174.970810,358.314026 177.604431,356.070648 180.238068,353.827301 
z"/>
<path fill="#CE964A" opacity="1.000000" stroke="none" 
	d="
M93.140259,365.080383 
	C89.708305,373.750610 83.051064,379.401947 75.164261,384.329834 
	C74.656326,384.257385 74.026268,383.887756 74.067429,383.622131 
	C76.015953,371.048035 79.985405,359.551544 91.582336,352.399780 
	C92.339294,356.882416 92.739777,360.981384 93.140259,365.080383 
z"/>
<path fill="#514EBF" opacity="1.000000" stroke="none" 
	d="
M334.839630,357.611816 
	C334.167664,356.211517 333.334290,354.494537 333.062805,352.692871 
	C332.555817,349.328186 332.375092,345.914368 331.941193,342.098083 
	C337.976105,338.768341 344.128479,335.861450 350.944763,333.224121 
	C352.076965,336.614319 352.545227,339.734924 352.746826,343.001648 
	C351.985046,343.496368 351.489929,343.845001 350.994812,344.193665 
	C343.087402,345.408783 337.760040,349.796387 334.839630,357.611816 
z"/>
<path fill="#5A4BC2" opacity="1.000000" stroke="none" 
	d="
M353.013489,342.855591 
	C352.545227,339.734924 352.076965,336.614319 351.333252,333.242462 
	C364.019043,331.994385 376.980286,330.997528 390.038025,330.297028 
	C388.015808,330.748871 385.898041,331.024689 383.778381,331.039673 
	C372.890747,331.116638 374.104156,330.471771 373.694214,341.172089 
	C372.609497,341.640625 371.792389,341.922791 370.515747,342.157532 
	C364.375305,342.358582 358.694397,342.607086 353.013489,342.855591 
z"/>
<path fill="#764AD0" opacity="1.000000" stroke="none" 
	d="
M418.054291,313.958679 
	C418.197784,314.422150 418.603485,315.159515 418.446869,315.309448 
	C412.877228,320.640747 415.102814,327.035797 415.981873,333.662170 
	C415.818024,334.349640 415.606628,334.613770 414.850586,335.126068 
	C408.540619,336.863159 402.775360,338.352051 397.006836,339.397949 
	C396.988037,335.984406 396.972473,333.013824 396.956909,330.043274 
	C397.387390,329.936737 397.817902,329.830170 398.867554,329.829834 
	C400.229004,329.757507 400.971283,329.578949 401.713593,329.400391 
	C409.578186,328.143585 411.401276,322.010681 413.396698,315.181732 
	C415.304993,314.504425 416.679626,314.231567 418.054291,313.958679 
z"/>
<path fill="#764AD0" opacity="1.000000" stroke="none" 
	d="
M423.125763,368.152283 
	C423.081482,368.313110 423.037231,368.473938 422.689819,368.962585 
	C422.152740,369.516785 422.057831,369.791290 422.101959,370.113953 
	C422.101959,370.113953 422.064056,370.026520 421.766296,370.136414 
	C415.079742,376.891327 407.039001,377.892944 398.433441,377.025635 
	C397.627838,376.944458 396.795990,377.123566 395.564178,377.131317 
	C393.770111,377.004059 392.388245,376.927307 391.006836,376.438599 
	C391.335602,373.383423 391.663879,370.740265 392.457825,368.035278 
	C402.990936,368.033081 413.058350,368.092682 423.125763,368.152283 
z"/>
<path fill="#2A0086" opacity="1.000000" stroke="none" 
	d="
M418.326141,313.753174 
	C416.679626,314.231567 415.304993,314.504425 413.591187,314.839050 
	C411.569885,314.221222 409.915924,313.052948 408.200226,312.953979 
	C403.130249,312.661560 398.035858,312.791870 392.482910,312.285583 
	C391.999664,309.605377 391.984589,307.396454 392.310303,305.119476 
	C393.108185,304.978058 393.565247,304.904694 394.487152,304.878906 
	C401.302277,304.915924 407.652557,304.905304 414.002838,304.894714 
	C417.269928,306.656738 422.302399,306.238190 422.461823,312.160583 
	C421.283905,312.583466 419.940948,313.065552 418.326141,313.753174 
z"/>
<path fill="#684BCF" opacity="1.000000" stroke="none" 
	d="
M396.531921,329.946594 
	C396.972473,333.013824 396.988037,335.984406 396.650299,339.513611 
	C394.853973,340.444092 393.410950,340.815948 391.504639,341.140625 
	C385.348206,341.057526 379.655029,341.021606 373.961853,340.985718 
	C374.104156,330.471771 372.890747,331.116638 383.778381,331.039673 
	C385.898041,331.024689 388.015808,330.748871 390.483032,330.412994 
	C392.590088,330.105042 394.348511,329.977478 396.531921,329.946594 
z"/>
<path fill="#2A0086" opacity="1.000000" stroke="none" 
	d="
M395.976379,377.181824 
	C396.795990,377.123566 397.627838,376.944458 398.433441,377.025635 
	C407.039001,377.892944 415.079742,376.891327 421.807404,370.160461 
	C421.363312,374.095978 420.886627,378.217529 419.622223,382.081329 
	C419.209656,383.342072 416.775879,384.633270 415.212494,384.703186 
	C409.134369,384.975037 403.034485,384.761505 396.475037,384.256226 
	C395.997040,381.583191 395.986694,379.382507 395.976379,377.181824 
z"/>
<path fill="#1F2333" opacity="1.000000" stroke="none" 
	d="
M444.998260,294.497925 
	C444.762390,295.320099 444.415710,295.834473 443.855377,296.726929 
	C443.641724,297.104950 443.266846,297.195709 443.266846,297.195709 
	C443.002258,296.910980 442.737640,296.626282 441.886993,295.950684 
	C439.000488,295.380402 436.700317,295.049164 434.399506,295.044403 
	C401.874878,294.976837 369.350098,294.953583 336.825378,294.919586 
	C338.722626,294.323639 340.616638,293.221252 342.517639,293.209015 
	C364.668915,293.066193 386.821259,293.087677 409.875977,293.066162 
	C412.829468,293.088440 414.880249,293.110199 417.179260,293.132843 
	C417.427521,293.133728 417.921997,293.088867 418.394379,293.105530 
	C424.753235,293.379517 430.641541,293.812653 436.524628,293.750610 
	C437.747589,293.737762 438.951172,291.890381 440.163666,290.888458 
	C441.738251,291.989014 443.312866,293.089569 444.998260,294.497925 
z"/>
<path fill="#180182" opacity="1.000000" stroke="none" 
	d="
M391.969482,305.187500 
	C391.984589,307.396454 391.999664,309.605377 392.020081,312.222931 
	C383.336853,312.675537 374.648315,312.719543 365.490723,312.292786 
	C365.031281,309.611877 365.040833,307.401703 365.050385,305.191528 
	C365.050385,305.191528 365.011047,305.007294 365.455750,304.959442 
	C374.590118,305.003571 383.279816,305.095551 391.969482,305.187500 
z"/>
<path fill="#16864E" opacity="1.000000" stroke="none" 
	d="
M193.842194,325.994293 
	C191.450409,330.293610 189.058624,334.592896 186.211685,338.658142 
	C185.136322,333.567566 184.516098,328.711060 183.926712,323.456848 
	C184.980347,318.371826 186.003143,313.684479 187.254593,308.780212 
	C188.656906,307.373444 189.830566,306.183624 191.155502,305.381836 
	C191.539093,310.735413 191.632812,315.713379 192.076248,320.660004 
	C192.239090,322.476288 193.229355,324.218353 193.842194,325.994293 
z"/>
<path fill="#10027B" opacity="1.000000" stroke="none" 
	d="
M364.580688,305.144775 
	C365.040833,307.401703 365.031281,309.611877 365.028259,312.231506 
	C355.326813,312.699768 345.618835,312.758575 335.448242,312.764252 
	C342.815765,302.987427 353.699615,304.946503 364.580688,305.144775 
z"/>
<path fill="#2A0086" opacity="1.000000" stroke="none" 
	d="
M391.967926,341.187805 
	C393.410950,340.815948 394.853973,340.444092 396.653564,339.956604 
	C402.775360,338.352051 408.540619,336.863159 414.639313,335.271210 
	C414.991791,337.881134 415.010834,340.594086 415.039581,343.770081 
	C407.656525,345.839722 400.263763,347.446350 392.432373,348.595520 
	C391.985138,345.821320 391.976532,343.504547 391.967926,341.187805 
z"/>
<path fill="#180182" opacity="1.000000" stroke="none" 
	d="
M395.564209,377.131317 
	C395.986694,379.382507 395.997040,381.583191 396.011963,384.191223 
	C388.329712,384.641602 380.642853,384.684662 372.487061,384.256989 
	C372.007996,381.580933 371.997894,379.375580 372.453674,377.109924 
	C378.948517,376.983246 384.977417,376.916901 391.006348,376.850555 
	C392.388245,376.927307 393.770111,377.004059 395.564209,377.131317 
z"/>
<path fill="#4257A1" opacity="1.000000" stroke="none" 
	d="
M293.429871,309.860504 
	C292.990173,311.497406 292.696381,312.792755 292.338409,314.070099 
	C290.275085,321.432465 290.194397,321.451202 282.485046,321.557343 
	C280.339294,321.586853 278.193512,321.866333 276.055115,322.099091 
	C274.192139,322.301819 272.339600,322.600250 270.086639,321.831879 
	C277.688843,316.711670 285.291077,311.591431 293.546143,306.031494 
	C293.546143,307.747559 293.546143,308.629089 293.429871,309.860504 
z"/>
<path fill="#3E881D" opacity="1.000000" stroke="none" 
	d="
M158.662048,369.238098 
	C156.879120,366.352661 155.096176,363.467194 153.192947,359.882019 
	C153.753815,356.103241 154.434967,353.024231 155.418610,349.992126 
	C156.486847,350.317169 157.252640,350.595306 158.266449,351.099976 
	C160.938446,353.978516 163.362411,356.630524 165.842194,359.622070 
	C166.754120,362.283691 167.610245,364.605743 168.101700,366.921692 
	C164.712036,367.689758 161.687042,368.463928 158.662048,369.238098 
z"/>
<path fill="#180182" opacity="1.000000" stroke="none" 
	d="
M391.504639,341.140625 
	C391.976532,343.504547 391.985138,345.821320 391.993622,348.575531 
	C385.312317,349.275085 378.631134,349.537201 371.481567,349.334595 
	C371.000519,346.648254 370.987915,344.426605 370.975311,342.204987 
	C371.792389,341.922791 372.609497,341.640625 373.694214,341.172089 
	C379.655029,341.021606 385.348206,341.057526 391.504639,341.140625 
z"/>
<path fill="#003881" opacity="1.000000" stroke="none" 
	d="
M296.049255,336.136627 
	C298.032043,333.992676 300.014862,331.848694 302.273926,329.520203 
	C302.987244,332.997894 303.424347,336.660126 303.956116,340.740936 
	C298.578217,344.595245 293.105652,348.030945 287.305359,351.120911 
	C286.997864,348.245728 287.018188,345.716278 287.342834,343.021759 
	C290.447876,340.616669 293.248566,338.376648 296.049255,336.136627 
z"/>
<path fill="#10027B" opacity="1.000000" stroke="none" 
	d="
M371.987793,377.170258 
	C371.997894,379.375580 372.007996,381.580933 372.024841,384.192535 
	C364.999115,384.647003 357.966583,384.695160 350.470520,384.673523 
	C350.004303,382.407776 350.001617,380.211884 350.460022,377.544617 
	C355.289764,376.996918 359.658356,376.920624 364.466919,376.890503 
	C367.267181,377.014496 369.627472,377.092377 371.987793,377.170258 
z"/>
<path fill="#4A86CD" opacity="1.000000" stroke="none" 
	d="
M296.040466,335.669586 
	C293.248566,338.376648 290.447876,340.616669 287.030121,343.078125 
	C285.620422,343.573639 284.827820,343.847748 284.030304,343.684509 
	C283.322266,340.419983 282.619171,337.592804 281.916046,334.765625 
	C285.309204,330.584717 288.702332,326.403809 292.381958,322.030273 
	C293.778473,324.505127 295.116638,327.106812 295.913055,329.864899 
	C296.390289,331.517731 296.020691,333.415100 296.040466,335.669586 
z"/>
<path fill="#4AB6C2" opacity="1.000000" stroke="none" 
	d="
M241.823364,361.272278 
	C246.449921,361.144043 248.484604,363.315735 248.042175,367.873993 
	C247.806931,370.297607 248.019104,372.764648 248.039032,375.688446 
	C244.536942,378.864105 241.025116,381.563354 237.302750,384.492798 
	C236.962616,383.483856 236.490982,382.164429 236.760025,381.018951 
	C238.285431,374.524384 239.988083,368.071442 241.823364,361.272278 
z"/>
<path fill="#4AABCF" opacity="1.000000" stroke="none" 
	d="
M255.439514,354.878448 
	C254.787003,350.728149 254.390961,346.345612 253.990112,341.502563 
	C257.393707,340.955048 260.802155,340.868073 264.874878,340.865051 
	C265.923370,340.819183 266.307526,340.689392 266.691711,340.559601 
	C267.486755,340.294067 268.281769,340.028503 269.517334,340.259705 
	C269.972717,343.459595 269.987579,346.162750 269.737183,349.007111 
	C268.983276,349.494659 268.494690,349.840973 268.006104,350.187286 
	C263.346710,350.138550 258.876862,350.613129 255.439514,354.878448 
z"/>
<path fill="#00147B" opacity="1.000000" stroke="none" 
	d="
M200.029495,293.209961 
	C199.737534,292.685516 199.445572,292.161102 199.501282,291.241516 
	C205.530777,290.231628 211.212631,289.616913 217.061401,289.285675 
	C217.852158,290.732269 218.475967,291.895416 218.733154,293.116821 
	C212.605560,295.070587 213.205566,300.523529 211.475769,304.862854 
	C208.657852,303.594177 206.190414,302.332153 203.722977,301.070129 
	C203.614532,299.611145 203.506104,298.152191 203.211151,296.342834 
	C203.024658,295.992493 203.010788,296.050964 203.261154,295.997864 
	C203.643661,295.637024 203.775787,295.329285 203.720154,294.764618 
	C202.364761,294.075104 201.197128,293.642517 200.029495,293.209961 
z"/>
<path fill="#10027B" opacity="1.000000" stroke="none" 
	d="
M370.515747,342.157532 
	C370.987915,344.426605 371.000519,346.648254 371.018188,349.283386 
	C364.955322,350.367645 358.887390,351.038391 352.412781,351.741394 
	C351.672180,349.506317 351.338287,347.239014 350.999573,344.582642 
	C351.489929,343.845001 351.985046,343.496368 352.746826,343.001648 
	C358.694397,342.607086 364.375305,342.358582 370.515747,342.157532 
z"/>
<path fill="#292E34" opacity="1.000000" stroke="none" 
	d="
M211.826233,304.869507 
	C213.205566,300.523529 212.605560,295.070587 219.190704,293.149353 
	C226.936203,293.159027 233.857513,293.194489 240.993561,293.469818 
	C241.440598,294.482330 241.672913,295.255005 241.905212,296.027649 
	C241.287674,296.292480 240.670135,296.557312 239.765778,297.009521 
	C239.478973,297.196899 239.291000,297.050903 238.914734,296.662750 
	C231.428940,296.306946 224.319382,296.339325 217.209839,296.371704 
	C215.486816,302.563019 213.765091,308.754730 212.039383,314.945312 
	C211.772308,315.903412 211.377731,316.839844 211.229095,317.814758 
	C210.486603,322.684784 209.806488,327.564331 209.075089,332.799561 
	C209.075592,334.123505 209.105423,335.088348 209.135254,336.053223 
	C208.809235,332.285797 208.150146,328.508453 208.261581,324.754028 
	C208.352264,321.697815 209.365677,318.668976 210.056168,314.940796 
	C210.703690,311.125580 211.264954,307.997528 211.826233,304.869507 
z"/>
<path fill="#001252" opacity="1.000000" stroke="none" 
	d="
M326.003784,307.061066 
	C328.029327,306.678528 330.054901,306.295990 332.481384,306.221375 
	C332.615082,307.667603 332.347809,308.805878 332.097626,310.224915 
	C332.322113,311.020538 332.529541,311.535370 332.737549,312.287018 
	C332.738159,312.523804 332.807831,312.992249 332.807831,312.992249 
	C334.908813,313.692383 337.009796,314.392517 339.575378,315.469543 
	C340.690613,317.892517 341.341278,319.938599 341.991943,321.984680 
	C336.975433,321.997223 331.958954,322.009766 326.475220,321.574005 
	C326.006561,316.437500 326.005157,311.749298 326.003784,307.061066 
z"/>
<path fill="#766500" opacity="1.000000" stroke="none" 
	d="
M102.430069,369.101257 
	C101.362129,366.266998 100.572235,363.238434 99.789375,359.698120 
	C101.529526,357.452972 103.262634,355.719604 105.266045,353.783020 
	C107.964546,352.029053 110.392746,350.478333 113.042648,349.271912 
	C113.505852,352.729797 113.747337,355.843414 113.988823,358.957001 
	C110.228584,362.273682 106.468346,365.590332 102.430069,369.101257 
z"/>
<path fill="#587E00" opacity="1.000000" stroke="none" 
	d="
M143.979507,356.530823 
	C138.630630,356.577240 133.281754,356.623627 127.469467,356.182617 
	C127.008408,353.187714 127.010742,350.680206 127.458092,348.117493 
	C130.603592,347.992523 133.304062,347.922791 136.444824,347.907104 
	C139.246902,348.038116 141.608719,348.115082 143.973267,348.614807 
	C143.977158,351.535339 143.978333,354.033081 143.979507,356.530823 
z"/>
<path fill="#8B6001" opacity="1.000000" stroke="none" 
	d="
M96.848854,347.853577 
	C93.959221,344.404602 91.069588,340.955658 88.051102,336.851074 
	C87.966911,335.963409 88.011589,335.731354 88.426605,335.507904 
	C94.663155,333.192322 99.749626,334.303192 104.029510,339.319519 
	C103.317482,342.076904 102.604012,344.488586 101.520920,346.909790 
	C99.717155,347.230743 98.283005,347.542175 96.848854,347.853577 
z"/>
<path fill="#C9A048" opacity="1.000000" stroke="none" 
	d="
M96.571854,348.013672 
	C98.283005,347.542175 99.717155,347.230743 101.835892,347.093994 
	C103.345573,349.507874 104.170654,351.747070 104.995743,353.986237 
	C103.262634,355.719604 101.529526,357.452972 99.496811,359.377197 
	C97.364052,361.295624 95.530891,363.023163 93.418991,364.915558 
	C92.739777,360.981384 92.339294,356.882416 91.912987,352.314941 
	C93.356392,350.622223 94.825623,349.397980 96.571854,348.013672 
z"/>
<path fill="#292E34" opacity="1.000000" stroke="none" 
	d="
M87.326187,321.007050 
	C88.325981,315.944977 89.488213,311.192352 90.762314,305.738403 
	C91.437134,302.354248 92.000076,299.671478 92.672623,296.711792 
	C92.954292,295.653503 93.126366,294.872101 93.684021,293.978821 
	C102.116035,293.646759 110.163574,293.303497 118.207352,293.376404 
	C119.117661,293.384613 120.006744,295.736267 120.714706,296.885803 
	C119.988121,296.862488 119.452499,296.954559 118.768860,297.000732 
	C118.620834,296.954834 118.316299,296.897095 118.004044,296.581177 
	C112.458244,296.232941 107.224709,296.200653 101.570480,296.090759 
	C97.021904,295.299347 95.015274,296.713379 94.138489,301.162292 
	C92.551247,309.216034 90.156006,317.110504 87.984024,324.980896 
	C87.869949,324.890289 87.640442,324.710815 87.640442,324.710815 
	C87.589836,323.579376 87.539230,322.447937 87.326187,321.007050 
z"/>
<path fill="#004F82" opacity="1.000000" stroke="none" 
	d="
M268.007294,350.601593 
	C268.494690,349.840973 268.983276,349.494659 270.134369,349.059998 
	C275.209625,347.355011 279.622437,345.738403 284.035217,344.121826 
	C284.827820,343.847748 285.620422,343.573639 286.725769,343.243195 
	C287.018188,345.716278 286.997864,348.245728 286.972473,351.192322 
	C280.905701,353.344879 274.844025,355.080292 268.382507,356.817139 
	C267.991272,354.884369 267.999878,352.950134 268.007294,350.601593 
z"/>
<path fill="#001766" opacity="1.000000" stroke="none" 
	d="
M451.112335,312.639801 
	C458.271698,314.704590 465.431030,316.769348 472.951813,319.008972 
	C471.856323,320.157257 470.437439,321.894928 468.935791,321.969666 
	C462.954895,322.267334 456.948181,322.046783 450.497131,321.570374 
	C450.399597,318.295044 450.755981,315.467407 451.112335,312.639801 
z"/>
<path fill="#4A9ACF" opacity="1.000000" stroke="none" 
	d="
M284.030304,343.684509 
	C279.622437,345.738403 275.209625,347.355011 270.399658,348.918762 
	C269.987579,346.162750 269.972717,343.459595 269.942261,340.301147 
	C273.683838,338.195740 277.441010,336.545654 281.557129,334.830627 
	C282.619171,337.592804 283.322266,340.419983 284.030304,343.684509 
z"/>
<path fill="#0D8558" opacity="1.000000" stroke="none" 
	d="
M193.957703,325.615723 
	C193.229355,324.218353 192.239090,322.476288 192.076248,320.660004 
	C191.632812,315.713379 191.539093,310.735413 191.347198,305.111755 
	C194.611084,301.925842 197.834549,299.397980 201.240799,296.852173 
	C201.423599,296.834229 201.790817,296.824341 201.790802,296.824341 
	C199.218277,306.295288 196.645752,315.766235 193.957703,325.615723 
z"/>
<path fill="#2C8530" opacity="1.000000" stroke="none" 
	d="
M176.015350,346.067657 
	C176.531830,347.522034 177.048309,348.976410 177.359009,350.708313 
	C173.817932,352.616394 170.482620,354.246887 166.960419,355.580231 
	C162.863541,350.437347 163.909760,346.098053 168.457611,342.022949 
	C170.845169,340.618591 172.897522,339.273651 175.040619,338.323425 
	C175.426025,341.168030 175.720688,343.617828 176.015350,346.067657 
z"/>
<path fill="#1F2848" opacity="1.000000" stroke="none" 
	d="
M123.880035,282.063904 
	C113.549065,282.319794 103.218384,282.590057 92.886513,282.802551 
	C92.108292,282.818604 91.321594,282.422607 90.221420,281.976471 
	C90.838234,278.655304 93.073540,277.876709 96.060707,277.912842 
	C105.049004,278.021637 114.039177,277.974884 123.498184,278.424561 
	C123.938515,279.928192 123.909271,280.996063 123.880035,282.063904 
z"/>
<path fill="#4257A1" opacity="1.000000" stroke="none" 
	d="
M241.929398,296.356384 
	C241.672913,295.255005 241.440598,294.482330 241.293686,293.194519 
	C245.968628,292.128448 250.558197,291.577545 255.147751,291.026642 
	C253.183197,295.791290 251.218643,300.555908 248.854309,305.626923 
	C248.454498,305.933289 247.997971,305.879425 247.835938,305.593140 
	C245.782974,302.871857 243.892029,300.436890 242.001099,298.001892 
	C241.985260,297.562988 241.969421,297.124054 241.929398,296.356384 
z"/>
<path fill="#686F00" opacity="1.000000" stroke="none" 
	d="
M127.013077,348.172668 
	C127.010742,350.680206 127.008408,353.187714 127.008926,356.104980 
	C122.925995,357.282593 118.840187,358.050446 114.371597,358.887634 
	C113.747337,355.843414 113.505852,352.729797 113.251678,349.037842 
	C113.830147,348.260864 114.421310,348.062225 115.372238,347.824646 
	C118.487640,347.807892 121.243294,347.830048 124.374153,347.904327 
	C125.503937,348.028503 126.258507,348.100586 127.013077,348.172668 
z"/>
<path fill="#24853C" opacity="1.000000" stroke="none" 
	d="
M176.357620,345.988434 
	C175.720688,343.617828 175.426025,341.168030 175.199432,338.038879 
	C176.547195,335.683289 177.826874,334.007019 179.382721,332.110413 
	C181.071228,329.211578 182.483551,326.533081 183.895874,323.854553 
	C184.516098,328.711060 185.136322,333.567566 185.910950,338.826691 
	C182.943542,341.455933 179.821716,343.682587 176.357620,345.988434 
z"/>
<path fill="#4A71CB" opacity="1.000000" stroke="none" 
	d="
M307.392151,310.983582 
	C306.770477,306.470612 306.392975,301.696320 306.027161,296.457916 
	C311.195679,296.043884 316.352539,296.093964 321.632538,296.559998 
	C318.123871,299.780029 314.345062,302.419220 310.928619,305.464905 
	C309.446625,306.786041 308.710938,308.944275 307.392151,310.983582 
z"/>
<path fill="#001252" opacity="1.000000" stroke="none" 
	d="
M273.277710,293.782928 
	C269.681763,293.686157 266.308228,293.433228 262.965546,292.961426 
	C260.784576,292.653656 258.648468,292.028076 256.280151,290.903076 
	C256.675964,288.785339 257.283905,287.309296 258.252258,286.052856 
	C264.405273,286.515198 270.197906,286.757904 275.990509,287.000610 
	C275.164734,289.178375 274.338989,291.356140 273.277710,293.782928 
z"/>
<path fill="#3E4147" opacity="1.000000" stroke="none" 
	d="
M336.839905,294.953461 
	C369.350098,294.953583 401.874878,294.976837 434.399506,295.044403 
	C436.700317,295.049164 439.000488,295.380402 441.654907,295.774292 
	C442.008850,295.988739 441.553864,296.097473 441.320251,296.102417 
	C432.299438,296.130127 423.512268,296.152924 413.906891,296.166870 
	C406.726929,296.195038 400.365143,296.232086 393.538727,296.204956 
	C383.719391,296.184570 374.364655,296.228333 365.009949,296.272095 
	C356.089966,296.389557 347.169952,296.506958 337.789795,296.603455 
	C337.195282,296.045776 337.060913,295.509033 336.926575,294.972260 
	C336.926575,294.972260 336.854431,294.987335 336.839905,294.953461 
z"/>
<path fill="#374986" opacity="1.000000" stroke="none" 
	d="
M440.123932,290.871155 
	C438.951172,291.890381 437.747589,293.737762 436.524628,293.750610 
	C430.641541,293.812653 424.753235,293.379517 418.335419,292.876648 
	C417.804077,292.631165 417.633759,292.191132 417.769745,291.861298 
	C418.888702,290.558502 419.871704,289.585571 421.261963,288.589355 
	C425.483734,287.997437 429.298279,287.428772 433.112793,286.860107 
	C433.274780,286.920105 433.436768,286.980103 433.943604,287.322327 
	C434.491119,287.773010 434.722687,287.876984 434.983215,287.916565 
	C436.102966,288.532928 437.222687,289.149292 438.770172,290.092224 
	C439.433685,290.621429 439.704346,290.751648 440.009827,290.809387 
	C440.009827,290.809387 440.084198,290.853882 440.123932,290.871155 
z"/>
<path fill="#000B30" opacity="1.000000" stroke="none" 
	d="
M123.930016,282.379578 
	C123.909271,280.996063 123.938515,279.928192 123.963013,278.461853 
	C128.287537,278.044495 132.647751,277.720398 136.931076,278.154633 
	C138.684357,278.332367 140.271469,280.149323 141.907623,281.801239 
	C141.644623,282.615845 141.408173,282.849762 140.833588,283.094971 
	C139.661423,283.700897 138.827393,284.295471 137.660889,284.902222 
	C136.884933,284.919495 136.441437,284.924561 135.637909,284.742859 
	C131.586700,284.355469 127.895500,284.154877 124.204300,283.954285 
	C124.129532,283.534607 124.054764,283.114960 123.930016,282.379578 
z"/>
<path fill="#020E3A" opacity="1.000000" stroke="none" 
	d="
M244.000031,321.997681 
	C241.591782,321.878998 239.183517,321.760315 235.961304,321.601532 
	C237.381409,316.045319 238.600342,311.276184 240.342743,306.197632 
	C241.567032,305.975250 242.267853,306.062347 243.061844,306.510010 
	C243.436676,311.912903 243.718353,316.955292 244.000031,321.997681 
z"/>
<path fill="#020E3A" opacity="1.000000" stroke="none" 
	d="
M212.631775,278.128723 
	C213.307571,279.250824 213.509354,280.309448 213.446304,281.767303 
	C207.462982,282.776581 201.744476,283.386627 196.025986,283.996674 
	C193.398499,278.745422 193.757202,278.048828 199.369263,277.985260 
	C203.631241,277.936981 207.894867,278.033264 212.631775,278.128723 
z"/>
<path fill="#4B860B" opacity="1.000000" stroke="none" 
	d="
M144.363419,356.617035 
	C143.978333,354.033081 143.977158,351.535339 144.375244,348.560974 
	C145.850525,348.012390 146.926559,347.940430 148.379150,347.928345 
	C150.875854,348.640564 152.996002,349.292877 155.116150,349.945221 
	C154.434967,353.024231 153.753815,356.103241 153.034210,359.583618 
	C150.246292,358.891083 147.496811,357.797150 144.363419,356.617035 
z"/>
<path fill="#364782" opacity="1.000000" stroke="none" 
	d="
M443.203430,297.583344 
	C443.266846,297.195709 443.641724,297.104950 443.826355,297.049133 
	C445.668274,299.024750 447.353271,301.034332 448.975830,303.093109 
	C451.005737,305.668823 451.676788,308.360748 448.909637,311.402313 
	C446.955963,311.336304 445.545654,311.072113 443.904175,310.594635 
	C442.737488,309.926331 441.801941,309.471313 440.866425,309.016296 
	C441.624268,305.334534 442.382141,301.652740 443.203430,297.583344 
z"/>
<path fill="#000B30" opacity="1.000000" stroke="none" 
	d="
M259.969391,280.962677 
	C260.188873,280.190063 260.408356,279.417419 260.747803,278.369446 
	C266.878906,278.094116 272.889984,278.094116 279.568665,278.094116 
	C278.959290,280.070679 278.596863,281.246216 277.614319,282.717102 
	C273.202271,283.007263 269.392120,283.220337 265.625946,282.906189 
	C263.699799,282.745544 261.852386,281.640778 259.969391,280.962677 
z"/>
<path fill="#000B30" opacity="1.000000" stroke="none" 
	d="
M405.990479,283.017120 
	C405.941986,281.661743 405.893494,280.306396 405.825958,278.548096 
	C409.960632,278.093689 414.138275,277.763184 418.257202,278.116943 
	C420.116760,278.276672 421.859344,279.798676 423.724884,281.243011 
	C423.001129,282.292084 422.207458,282.800751 420.967468,283.278778 
	C415.677582,283.171112 410.834045,283.094116 405.990479,283.017120 
z"/>
<path fill="#020E3A" opacity="1.000000" stroke="none" 
	d="
M325.631958,307.009766 
	C326.005157,311.749298 326.006561,316.437500 326.009521,321.550568 
	C318.706024,322.044769 318.412445,321.696198 320.106140,314.768585 
	C320.697418,312.350128 321.349457,309.946503 322.124634,307.161682 
	C323.270416,306.844360 324.265259,306.901428 325.631958,307.009766 
z"/>
<path fill="#001252" opacity="1.000000" stroke="none" 
	d="
M244.417770,322.020081 
	C243.718353,316.955292 243.436676,311.912903 243.480270,306.464905 
	C245.203018,305.999329 246.600494,305.939362 247.997971,305.879425 
	C247.997971,305.879425 248.454498,305.933289 248.684113,305.938873 
	C248.973923,311.005890 249.034088,316.067322 249.055130,321.541931 
	C247.622498,321.984222 246.229004,322.013367 244.417770,322.020081 
z"/>
<path fill="#2C8530" opacity="1.000000" stroke="none" 
	d="
M170.912216,374.953033 
	C171.281281,377.884827 171.650345,380.816589 172.024597,384.164429 
	C167.663788,384.655884 163.297806,384.731232 158.692688,384.510529 
	C161.664322,381.492676 164.875107,378.770905 168.365295,375.920288 
	C169.400528,375.511993 170.156372,375.232513 170.912216,374.953033 
z"/>
<path fill="#3E4147" opacity="1.000000" stroke="none" 
	d="
M423.183411,367.817535 
	C413.058350,368.092682 402.990936,368.033081 391.994263,367.967621 
	C382.371613,368.005585 373.678223,368.049408 364.521362,368.026917 
	C357.723602,367.902313 351.389343,367.844086 345.055054,367.785828 
	C345.055054,367.785828 345.017120,367.406006 345.005005,367.215576 
	C360.886963,366.912781 376.780914,366.780548 392.675110,366.695862 
	C401.288239,366.649994 409.902100,366.645660 418.514801,366.720062 
	C420.092285,366.733704 421.665741,367.216522 423.183411,367.817535 
z"/>
<path fill="#020E3A" opacity="1.000000" stroke="none" 
	d="
M259.776703,281.231201 
	C261.852386,281.640778 263.699799,282.745544 265.625946,282.906189 
	C269.392120,283.220337 273.202271,283.007263 277.452820,283.018860 
	C277.420746,284.197296 276.930054,285.369293 276.214905,286.770935 
	C270.197906,286.757904 264.405273,286.515198 258.246277,285.870331 
	C257.879883,285.468201 257.866272,285.102020 257.866272,285.102020 
	C258.438873,283.901276 259.011444,282.700531 259.776703,281.231201 
z"/>
<path fill="#3F5297" opacity="1.000000" stroke="none" 
	d="
M158.654770,291.835052 
	C156.987076,294.395020 155.365768,295.994080 151.712326,294.772583 
	C148.985977,293.861084 145.592133,295.114258 142.504120,295.041077 
	C141.082397,295.007355 139.681244,294.106110 138.509171,293.144775 
	C140.645752,292.333405 142.533463,291.769073 144.444885,291.672089 
	C146.616562,291.561920 148.809433,291.869507 150.957306,292.019531 
	C150.921509,292.043579 151.004578,292.007019 151.314178,291.890198 
	C153.024109,291.177002 154.424438,290.580658 155.824783,289.984314 
	C156.713943,290.511688 157.603119,291.039062 158.654770,291.835052 
z"/>
<path fill="#80CD6A" opacity="1.000000" stroke="none" 
	d="
M168.085876,376.049133 
	C164.875107,378.770905 161.664322,381.492676 158.234009,384.440033 
	C158.397858,381.494019 158.781265,378.322449 159.604950,374.669556 
	C162.378433,373.472382 164.711639,372.756470 167.043854,372.395508 
	C167.390549,373.850037 167.738205,374.949585 168.085876,376.049133 
z"/>
<path fill="#001252" opacity="1.000000" stroke="none" 
	d="
M444.135376,310.807922 
	C445.545654,311.072113 446.955963,311.336304 448.714355,311.684143 
	C449.600800,311.940308 450.139160,312.112793 450.894928,312.462524 
	C450.755981,315.467407 450.399597,318.295044 450.030762,321.533905 
	C448.300720,321.970581 446.583130,321.996002 444.432281,321.546631 
	C444.044464,317.650513 444.089935,314.229218 444.135376,310.807922 
z"/>
<path fill="#001252" opacity="1.000000" stroke="none" 
	d="
M196.085068,284.313721 
	C201.744476,283.386627 207.462982,282.776581 213.550400,282.079346 
	C214.230026,282.789886 214.540741,283.587616 214.736145,284.967590 
	C213.688629,286.103638 212.792786,287.054230 211.817963,287.143646 
	C207.178558,287.569122 202.517654,287.760315 197.864410,288.034851 
	C197.290985,286.900177 196.717575,285.765472 196.085068,284.313721 
z"/>
<path fill="#0AA5A9" opacity="1.000000" stroke="none" 
	d="
M238.698578,335.343750 
	C238.171234,339.907837 236.356796,343.189056 231.207108,343.982361 
	C230.550812,343.911774 230.325119,343.755859 229.889465,343.065826 
	C229.331039,341.990448 229.021240,341.393219 228.711426,340.795959 
	C231.264008,338.524231 233.816589,336.252533 236.727936,333.889099 
	C237.603256,334.234375 238.119797,334.671387 238.698578,335.343750 
z"/>
<path fill="#001252" opacity="1.000000" stroke="none" 
	d="
M59.947468,314.163025 
	C60.206722,313.944855 60.465973,313.726685 61.218636,313.248352 
	C62.807693,312.628265 63.903336,312.268311 65.369850,311.930939 
	C66.481560,311.920929 67.222389,311.888306 67.963226,311.855652 
	C67.317497,314.965271 66.671776,318.074921 66.016190,321.583252 
	C63.966816,321.994171 61.927288,322.006378 59.485626,321.602173 
	C59.371479,318.844818 59.659470,316.503937 59.947468,314.163025 
z"/>
<path fill="#202328" opacity="1.000000" stroke="none" 
	d="
M171.713715,312.740387 
	C172.359665,309.167206 173.005600,305.593994 173.577057,301.664185 
	C174.711960,299.590057 175.921341,297.872498 177.475006,295.999023 
	C177.819275,295.843109 178.029892,296.030853 177.971619,296.429810 
	C177.368225,299.459229 176.823105,302.089691 176.116074,305.040588 
	C173.952957,312.240448 171.951767,319.119934 169.911652,325.562805 
	C169.912384,323.940521 169.952057,322.754822 169.981415,321.190643 
	C170.551971,318.121552 171.132843,315.430969 171.713715,312.740387 
z"/>
<path fill="#39B64B" opacity="1.000000" stroke="none" 
	d="
M167.147324,355.877411 
	C170.482620,354.246887 173.817932,352.616394 177.528259,350.964661 
	C178.593491,351.716644 179.283676,352.489777 180.105957,353.545105 
	C177.604431,356.070648 174.970810,358.314026 171.911591,360.605652 
	C170.023285,359.400360 168.560547,358.146820 167.098785,356.638733 
	C167.115631,356.215271 167.131485,356.046326 167.147324,355.877411 
z"/>
<path fill="#374986" opacity="1.000000" stroke="none" 
	d="
M150.993088,291.995483 
	C148.809433,291.869507 146.616562,291.561920 144.444885,291.672089 
	C142.533463,291.769073 140.645752,292.333405 138.392059,292.839722 
	C137.825256,292.949036 137.613922,292.909973 137.137878,292.441040 
	C136.909592,291.008270 136.945999,290.005310 137.283524,288.895325 
	C138.381653,288.491211 139.178650,288.194183 140.353851,287.915833 
	C144.211151,287.563995 147.690247,287.193512 151.169342,286.823059 
	C152.600708,287.710480 154.032074,288.597900 155.644104,289.734802 
	C154.424438,290.580658 153.024109,291.177002 151.311890,291.886658 
	C151.000000,292.000000 150.993088,291.995483 150.993088,291.995483 
z"/>
<path fill="#000B30" opacity="1.000000" stroke="none" 
	d="
M443.904175,310.594635 
	C444.089935,314.229218 444.044464,317.650513 444.003265,321.531555 
	C437.886719,321.883636 437.510620,321.459137 438.830139,315.848846 
	C439.320282,313.764923 439.940277,311.711609 440.683716,309.330322 
	C441.801941,309.471313 442.737488,309.926331 443.904175,310.594635 
z"/>
<path fill="#0AA5A9" opacity="1.000000" stroke="none" 
	d="
M209.361694,336.251587 
	C209.105423,335.088348 209.075592,334.123505 209.506821,332.734802 
	C213.934280,332.635803 218.811783,330.397339 220.839813,336.175415 
	C217.782959,337.054840 214.726089,337.934296 211.304932,338.919678 
	C210.489792,338.167023 210.038971,337.308472 209.361694,336.251587 
z"/>
<path fill="#001766" opacity="1.000000" stroke="none" 
	d="
M197.931137,288.355804 
	C202.517654,287.760315 207.178558,287.569122 211.817963,287.143646 
	C212.792786,287.054230 213.688629,286.103638 214.791931,285.284424 
	C214.962997,285.018982 215.416382,285.039093 215.714539,285.374146 
	C216.306625,286.806854 216.600555,287.904541 216.894470,289.002228 
	C211.212631,289.616913 205.530777,290.231628 199.487640,290.932251 
	C198.750198,290.237671 198.374039,289.457214 197.931137,288.355804 
z"/>
<path fill="#1F2848" opacity="1.000000" stroke="none" 
	d="
M62.519444,298.889282 
	C60.909492,303.649170 58.966049,308.510101 56.723747,313.938293 
	C55.592705,314.667633 54.760513,314.829712 53.928322,314.991791 
	C54.671951,308.621277 54.819630,301.943207 62.519444,298.889282 
z"/>
<path fill="#2A3663" opacity="1.000000" stroke="none" 
	d="
M421.413788,283.309448 
	C422.207458,282.800751 423.001129,282.292084 423.958923,281.557098 
	C426.977417,283.002777 429.831696,284.674774 432.899414,286.603455 
	C429.298279,287.428772 425.483734,287.997437 421.272217,288.257904 
	C420.850403,287.269043 420.825562,286.588379 420.880981,285.582458 
	C421.112061,284.607910 421.262939,283.958679 421.413788,283.309448 
z"/>
<path fill="#202328" opacity="1.000000" stroke="none" 
	d="
M199.658112,293.394653 
	C201.197128,293.642517 202.364761,294.075104 203.554779,294.921631 
	C203.367981,295.557922 203.179184,295.796387 203.010788,296.050964 
	C203.010788,296.050964 203.024658,295.992493 203.052185,296.002899 
	C202.755096,296.211731 202.430466,296.410187 201.948334,296.716492 
	C201.790817,296.824341 201.423599,296.834229 200.983887,296.509857 
	C195.724014,296.169006 190.903824,296.152527 185.642365,296.049622 
	C182.810699,295.985748 180.420288,296.008301 178.029892,296.030853 
	C178.029892,296.030853 177.819275,295.843109 177.717010,295.745117 
	C179.751923,295.110870 181.866699,294.253876 184.030746,294.102753 
	C189.103531,293.748535 194.199921,293.732361 199.658112,293.394653 
z"/>
<path fill="#001766" opacity="1.000000" stroke="none" 
	d="
M211.475769,304.862854 
	C211.264954,307.997528 210.703690,311.125580 210.026611,314.517792 
	C207.895691,310.459229 205.880585,306.136505 203.794235,301.441956 
	C206.190414,302.332153 208.657852,303.594177 211.475769,304.862854 
z"/>
<path fill="#39B64B" opacity="1.000000" stroke="none" 
	d="
M167.044846,372.040558 
	C164.711639,372.756470 162.378433,373.472382 159.775604,374.269897 
	C159.232681,372.900055 158.959366,371.448517 158.674042,369.617554 
	C161.687042,368.463928 164.712036,367.689758 168.267944,367.221893 
	C170.350235,369.862610 169.304245,371.187408 167.044846,372.040558 
z"/>
<path fill="#020E3A" opacity="1.000000" stroke="none" 
	d="
M53.958740,315.004761 
	C54.760513,314.829712 55.592705,314.667633 56.684944,314.328735 
	C57.697010,314.131622 58.449024,314.111389 59.574253,314.127075 
	C59.659470,316.503937 59.371479,318.844818 59.049221,321.577515 
	C52.091930,322.066620 52.079021,322.054932 53.286625,316.081482 
	C53.683979,315.375275 53.856243,315.171967 54.014103,314.956482 
	C54.014103,314.956482 53.989159,315.017731 53.958740,315.004761 
z"/>
<path fill="#2A3663" opacity="1.000000" stroke="none" 
	d="
M150.956665,286.559875 
	C147.690247,287.193512 144.211151,287.563995 140.265442,287.679993 
	C139.884323,286.595001 139.969818,285.764435 140.231766,284.727966 
	C140.662720,284.042603 140.917221,283.563110 141.171722,283.083649 
	C141.408173,282.849762 141.644623,282.615845 142.015045,282.167938 
	C145.014008,283.401550 147.878983,284.849121 150.956665,286.559875 
z"/>
<path fill="#020E3A" opacity="1.000000" stroke="none" 
	d="
M342.446136,322.014648 
	C341.341278,319.938599 340.690613,317.892517 339.991394,315.493591 
	C341.341980,315.109222 342.741089,315.077667 344.558441,315.070618 
	C347.215942,317.197693 349.455170,319.300323 351.850281,321.708435 
	C348.970917,322.024170 345.935608,322.034393 342.446136,322.014648 
z"/>
<path fill="#374986" opacity="1.000000" stroke="none" 
	d="
M247.835938,305.593140 
	C246.600494,305.939362 245.203018,305.999329 243.387115,306.104370 
	C242.267853,306.062347 241.567032,305.975250 240.515915,305.844543 
	C240.652939,303.408539 241.140244,301.016113 241.814316,298.312805 
	C243.892029,300.436890 245.782974,302.871857 247.835938,305.593140 
z"/>
<path fill="#1F2333" opacity="1.000000" stroke="none" 
	d="
M336.588165,295.101349 
	C337.060913,295.509033 337.195282,296.045776 337.413574,296.851440 
	C336.376495,302.122040 335.255463,307.123718 334.167542,312.518921 
	C333.970215,312.943512 333.739777,312.974640 333.158569,312.999023 
	C332.807831,312.992249 332.738159,312.523804 332.722900,312.002747 
	C332.498596,310.969208 332.289551,310.456696 332.080536,309.944183 
	C332.347809,308.805878 332.615082,307.667603 332.877869,306.176117 
	C333.998840,302.292114 335.124298,298.761261 336.588165,295.101349 
z"/>
<path fill="#292E34" opacity="1.000000" stroke="none" 
	d="
M88.056259,335.499268 
	C88.011589,335.731354 87.966911,335.963409 87.874527,336.545532 
	C84.466553,333.211273 86.707008,329.276215 87.476624,325.062592 
	C87.640442,324.710815 87.869949,324.890289 87.976128,325.431091 
	C88.073624,329.147675 88.064941,332.323486 88.056259,335.499268 
z"/>
<path fill="#5A4BC2" opacity="1.000000" stroke="none" 
	d="
M401.434448,329.304504 
	C400.971283,329.578949 400.229004,329.757507 399.199890,329.877625 
	C399.660461,329.615662 400.407867,329.412140 401.434448,329.304504 
z"/>
<path fill="#4A9ACF" opacity="1.000000" stroke="none" 
	d="
M266.489502,340.483948 
	C266.307526,340.689392 265.923370,340.819183 265.336121,340.944824 
	C265.517792,340.763245 265.902527,340.585754 266.489502,340.483948 
z"/>
<path fill="#232D53" opacity="1.000000" stroke="none" 
	d="
M325.864807,284.488159 
	C325.921265,284.672974 325.747620,284.827850 325.361938,284.989410 
	C325.270020,284.789276 325.431580,284.609985 325.864807,284.488159 
z"/>
<path fill="#1F2333" opacity="1.000000" stroke="none" 
	d="
M439.873901,290.623871 
	C439.704346,290.751648 439.433685,290.621429 439.051208,290.243896 
	C439.222290,290.102081 439.500092,290.225189 439.873901,290.623871 
z"/>
<path fill="#2A3663" opacity="1.000000" stroke="none" 
	d="
M434.867615,287.757812 
	C434.722687,287.876984 434.491119,287.773010 434.161316,287.462860 
	C434.309052,287.321869 434.548340,287.414520 434.867615,287.757812 
z"/>
<path fill="#2A0086" opacity="1.000000" stroke="none" 
	d="
M422.316620,370.029785 
	C422.057831,369.791290 422.152740,369.516785 422.585205,369.189850 
	C422.833923,369.414307 422.749786,369.699738 422.316620,370.029785 
z"/>
<path fill="#1F2848" opacity="1.000000" stroke="none" 
	d="
M53.832920,315.054443 
	C53.856243,315.171967 53.683979,315.375275 53.346138,315.694000 
	C53.280399,315.552979 53.432659,315.329865 53.832920,315.054443 
z"/>
<path fill="#524CC7" opacity="1.000000" stroke="none" 
	d="
M344.786163,368.005981 
	C351.389343,367.844086 357.723602,367.902313 364.437469,368.409882 
	C364.553680,371.520935 364.290344,374.182617 364.026978,376.844330 
	C359.658356,376.920624 355.289764,376.996918 350.458923,377.127502 
	C345.842346,376.760742 341.688019,376.339661 335.972107,375.760284 
	C339.581879,372.577606 342.049591,370.401855 344.786163,368.005981 
z"/>
<path fill="#001252" opacity="1.000000" stroke="none" 
	d="
M420.967468,283.278748 
	C421.262939,283.958679 421.112061,284.607910 420.508423,285.614868 
	C416.119263,287.281921 412.182892,288.591309 408.246521,289.900696 
	C408.045471,289.635468 407.826141,289.386292 407.388153,289.004578 
	C406.857971,287.800720 406.528198,286.745544 406.050842,285.390259 
	C405.925629,284.629364 405.948029,284.168579 405.980469,283.362427 
	C410.834045,283.094116 415.677582,283.171112 420.967468,283.278748 
z"/>
<path fill="#374986" opacity="1.000000" stroke="none" 
	d="
M217.061417,289.285675 
	C216.600555,287.904541 216.306625,286.806854 215.941452,285.376038 
	C229.564590,285.046844 243.258987,285.050781 257.409821,285.078369 
	C257.866272,285.102020 257.879883,285.468201 257.885864,285.650757 
	C257.283905,287.309296 256.675964,288.785339 256.029236,290.607697 
	C255.990479,290.954010 255.569595,290.999725 255.358673,291.013184 
	C250.558197,291.577545 245.968628,292.128448 241.078949,292.954651 
	C233.857513,293.194489 226.936203,293.159027 219.557327,293.091064 
	C218.475967,291.895416 217.852158,290.732269 217.061417,289.285675 
z"/>
<path fill="#011867" opacity="1.000000" stroke="none" 
	d="
M408.347656,290.178040 
	C412.182892,288.591309 416.119263,287.281921 420.428162,285.940125 
	C420.825562,286.588379 420.850403,287.269043 420.864990,288.281189 
	C419.871704,289.585571 418.888702,290.558502 417.631104,291.992065 
	C417.189301,292.663147 417.047455,292.889557 416.931030,293.131958 
	C414.880249,293.110199 412.829468,293.088440 410.337097,293.032074 
	C409.413269,292.150116 408.931030,291.302765 408.347656,290.178040 
z"/>
<path fill="#001766" opacity="1.000000" stroke="none" 
	d="
M171.337631,312.797852 
	C171.132843,315.430969 170.551971,318.121552 169.526932,321.334656 
	C155.723053,321.901001 142.363358,321.944855 129.002838,321.555054 
	C128.992004,316.144928 128.981949,311.168457 129.316162,306.132141 
	C130.119980,305.997101 130.579544,305.921906 131.502014,305.885437 
	C136.966095,305.908539 141.967255,305.892914 146.968399,305.877319 
	C154.966125,308.203308 162.963837,310.529297 171.337631,312.797852 
z"/>
<path fill="#4960B0" opacity="1.000000" stroke="none" 
	d="
M146.846619,305.576050 
	C141.967255,305.892914 136.966095,305.908539 131.400970,305.545593 
	C130.229645,301.411987 129.622299,297.656952 129.326614,293.966797 
	C130.994659,294.498749 132.351059,294.965851 134.072083,295.557861 
	C134.941910,295.756958 135.447098,295.831146 135.952301,295.905334 
	C139.543152,299.028503 143.133987,302.151642 146.846619,305.576050 
z"/>
<path fill="#00247F" opacity="1.000000" stroke="none" 
	d="
M133.707458,295.432953 
	C132.351059,294.965851 130.994659,294.498749 129.309799,293.737305 
	C128.981339,293.442932 128.942932,292.983826 129.282394,292.885162 
	C132.075363,291.525116 134.528885,290.263763 136.982391,289.002380 
	C136.945999,290.005310 136.909592,291.008270 136.821884,292.377258 
	C136.770584,292.743317 136.313828,292.825562 135.845505,293.029663 
	C134.820602,293.966827 134.264023,294.699890 133.707458,295.432953 
z"/>
<path fill="#374986" opacity="1.000000" stroke="none" 
	d="
M134.072083,295.557861 
	C134.264023,294.699890 134.820602,293.966827 135.620010,293.084473 
	C135.889725,293.679291 135.916611,294.423401 135.947906,295.536438 
	C135.447098,295.831146 134.941910,295.756958 134.072083,295.557861 
z"/>
<path fill="#47C5B9" opacity="1.000000" stroke="none" 
	d="
M221.028198,336.444580 
	C218.811783,330.397339 213.934280,332.635803 209.536148,332.375732 
	C209.806488,327.564331 210.486603,322.684784 211.229095,317.814758 
	C211.377731,316.839844 211.772308,315.903412 212.039383,314.945312 
	C213.765091,308.754730 215.486816,302.563019 217.209839,296.371704 
	C224.319382,296.339325 231.428940,296.306946 238.807251,296.611725 
	C237.927292,297.901062 236.863815,298.986908 235.615540,299.782959 
	C229.262405,303.834564 224.735565,308.666565 223.623215,316.865356 
	C222.602417,324.389435 222.272552,331.317200 226.416992,337.943817 
	C226.841232,338.622101 226.944931,339.500824 227.111343,340.664185 
	C225.089081,339.599121 223.152832,338.156433 221.028198,336.444580 
z"/>
<path fill="#47C5B9" opacity="1.000000" stroke="none" 
	d="
M228.411484,340.753357 
	C229.021240,341.393219 229.331039,341.990448 229.785339,342.886383 
	C229.027740,342.645172 228.125641,342.105316 227.089066,341.274414 
	C227.340240,340.892548 227.725891,340.801666 228.411484,340.753357 
z"/>
<path fill="#764AD0" opacity="1.000000" stroke="none" 
	d="
M394.003357,296.269104 
	C400.365143,296.232086 406.726929,296.195038 413.475677,296.223450 
	C413.908997,298.850342 413.955353,301.411835 414.002258,304.434021 
	C407.652557,304.905304 401.302277,304.915924 394.481873,304.449707 
	C394.008942,301.404938 394.006134,298.837036 394.003357,296.269104 
z"/>
<path fill="#684BCF" opacity="1.000000" stroke="none" 
	d="
M393.538727,296.204956 
	C394.006134,298.837036 394.008942,301.404938 394.017029,304.402100 
	C393.565247,304.904694 393.108185,304.978058 392.310303,305.119507 
	C383.279816,305.095551 374.590118,305.003571 365.431244,304.868469 
	C364.978485,302.257782 364.994934,299.690216 365.010681,296.697357 
	C374.364655,296.228333 383.719391,296.184570 393.538727,296.204956 
z"/>
<path fill="#3F5297" opacity="1.000000" stroke="none" 
	d="
M128.942932,292.983826 
	C128.942932,292.983826 128.981339,293.442932 128.998154,293.672424 
	C129.622299,297.656952 130.229645,301.411987 130.938049,305.506836 
	C130.579544,305.921906 130.119980,305.997101 128.882660,306.084229 
	C126.070099,306.091919 124.035332,306.087738 121.659721,306.023315 
	C120.630966,305.896027 119.943047,305.828949 119.270523,305.387024 
	C119.825836,302.341858 120.365753,299.671570 120.905670,297.001251 
	C120.006744,295.736267 119.117661,293.384613 118.207352,293.376404 
	C110.163574,293.303497 102.116035,293.646759 93.255127,293.961792 
	C81.681221,295.535400 73.859032,301.109344 69.025841,310.850677 
	C68.731956,311.007629 68.466995,311.203674 68.097084,311.647217 
	C67.222389,311.888306 66.481560,311.920929 65.406654,311.568176 
	C69.401810,299.245270 78.855904,292.532501 90.390114,290.311218 
	C101.695251,288.134125 113.512436,288.615967 125.328125,288.090729 
	C126.028099,288.800201 126.504845,289.349762 127.041267,290.214264 
	C127.714943,291.347412 128.328934,292.165619 128.942932,292.983826 
z"/>
<path fill="#4960B0" opacity="1.000000" stroke="none" 
	d="
M92.563026,296.988678 
	C92.000076,299.671478 91.437134,302.354248 90.811539,305.439484 
	C84.766121,307.177856 78.783363,308.513824 72.507462,309.525269 
	C77.104767,301.976685 83.522446,297.297455 92.563026,296.988678 
z"/>
<path fill="#4257A1" opacity="1.000000" stroke="none" 
	d="
M92.672623,296.711792 
	C83.522446,297.297455 77.104767,301.976685 72.122162,309.517273 
	C71.245392,310.178955 70.460793,310.524109 69.351013,310.859985 
	C73.859032,301.109344 81.681221,295.535400 92.869545,294.073669 
	C93.126366,294.872101 92.954292,295.653503 92.672623,296.711792 
z"/>
<path fill="#364782" opacity="1.000000" stroke="none" 
	d="
M125.104889,287.930817 
	C113.512436,288.615967 101.695251,288.134125 90.390114,290.311218 
	C78.855904,292.532501 69.401810,299.245270 65.035782,311.545563 
	C63.903336,312.268311 62.807693,312.628265 61.363953,313.039246 
	C62.440502,304.473053 68.600090,299.187195 74.868240,294.259430 
	C82.739075,288.071686 91.954842,285.630951 101.993271,285.946655 
	C109.318443,286.177032 116.656517,285.997192 124.498657,286.323303 
	C125.040611,287.074493 125.072754,287.502655 125.104889,287.930817 
z"/>
<path fill="#020E3A" opacity="1.000000" stroke="none" 
	d="
M125.328125,288.090729 
	C125.072754,287.502655 125.040611,287.074493 124.962006,286.326782 
	C124.726746,285.498291 124.537956,284.989380 124.276733,284.217346 
	C127.895500,284.154877 131.586700,284.355469 135.437973,285.028687 
	C132.725891,286.967285 129.853745,288.433319 126.981583,289.899323 
	C126.504845,289.349762 126.028099,288.800201 125.328125,288.090729 
z"/>
<path fill="#77D07A" opacity="1.000000" stroke="none" 
	d="
M167.043854,372.395508 
	C169.304245,371.187408 170.350235,369.862610 168.632614,367.227966 
	C167.610245,364.605743 166.754120,362.283691 166.008652,359.323730 
	C166.445480,358.088318 166.771652,357.490784 167.097809,356.893250 
	C168.560547,358.146820 170.023285,359.400360 171.716492,360.887390 
	C171.697556,365.492188 171.448181,369.863525 171.055511,374.593933 
	C170.156372,375.232513 169.400528,375.511993 168.365280,375.920288 
	C167.738205,374.949585 167.390549,373.850037 167.043854,372.395508 
z"/>
<path fill="#684BCF" opacity="1.000000" stroke="none" 
	d="
M364.466919,376.890503 
	C364.290344,374.182617 364.553680,371.520935 364.900940,368.476257 
	C373.678223,368.049408 382.371613,368.005585 391.528564,368.029419 
	C391.663879,370.740265 391.335602,373.383423 391.006836,376.438599 
	C384.977417,376.916901 378.948517,376.983246 372.453674,377.109924 
	C369.627472,377.092377 367.267181,377.014496 364.466919,376.890503 
z"/>
<path fill="#2A3663" opacity="1.000000" stroke="none" 
	d="
M417.179260,293.132812 
	C417.047455,292.889557 417.189301,292.663147 417.495117,292.321899 
	C417.633759,292.191132 417.804077,292.631165 417.863037,292.860016 
	C417.921997,293.088867 417.427521,293.133728 417.179260,293.132812 
z"/>
<path fill="#68D08C" opacity="1.000000" stroke="none" 
	d="
M177.971619,296.429810 
	C180.420288,296.008301 182.810699,295.985748 185.624969,296.497498 
	C186.374527,301.020233 186.700241,305.008667 187.025940,308.997131 
	C186.003143,313.684479 184.980347,318.371826 183.926727,323.456848 
	C182.483551,326.533081 181.071228,329.211578 179.278366,331.677490 
	C178.592316,324.713562 178.399445,317.954193 177.916748,311.215515 
	C177.759674,309.022552 176.845749,306.883759 176.277985,304.720184 
	C176.823105,302.089691 177.368225,299.459229 177.971619,296.429810 
z"/>
<path fill="#56C89F" opacity="1.000000" stroke="none" 
	d="
M187.254593,308.780212 
	C186.700241,305.008667 186.374527,301.020233 186.066238,296.583923 
	C190.903824,296.152527 195.724014,296.169006 200.801086,296.527802 
	C197.834549,299.397980 194.611084,301.925842 191.195923,304.723755 
	C189.830566,306.183624 188.656906,307.373444 187.254593,308.780212 
z"/>
<path fill="#80CD6A" opacity="1.000000" stroke="none" 
	d="
M167.098785,356.638733 
	C166.771652,357.490784 166.445480,358.088318 165.952850,358.984192 
	C163.362411,356.630524 160.938446,353.978516 158.261200,350.648376 
	C157.671387,345.372650 157.334854,340.775055 157.320923,336.008789 
	C159.745026,334.882507 161.846542,333.924896 163.973267,332.981323 
	C163.998459,332.995392 163.982544,332.939911 164.293365,332.942352 
	C165.008438,332.852448 165.412704,332.760101 165.849060,333.116699 
	C166.628235,336.404510 167.375320,339.243439 168.122406,342.082336 
	C163.909760,346.098053 162.863541,350.437347 166.960419,355.580231 
	C167.131485,356.046326 167.115631,356.215271 167.098785,356.638733 
z"/>
<path fill="#8BCB5D" opacity="1.000000" stroke="none" 
	d="
M156.998322,336.177429 
	C157.334854,340.775055 157.671387,345.372650 158.013184,350.421875 
	C157.252640,350.595306 156.486847,350.317169 155.418610,349.992126 
	C152.996002,349.292877 150.875854,348.640564 148.379288,347.486664 
	C147.991913,343.767273 147.980927,340.549500 148.372879,337.211639 
	C151.516647,336.786865 154.257492,336.482147 156.998322,336.177429 
z"/>
<path fill="#020303" opacity="1.000000" stroke="none" 
	d="
M203.261154,295.997864 
	C203.179184,295.796387 203.367981,295.557922 203.742554,295.178589 
	C203.775787,295.329285 203.643661,295.637024 203.261154,295.997864 
z"/>
<path fill="#020303" opacity="1.000000" stroke="none" 
	d="
M332.097626,310.224915 
	C332.289551,310.456696 332.498596,310.969208 332.722290,311.765991 
	C332.529541,311.535370 332.322113,311.020538 332.097626,310.224915 
z"/>
<path fill="#BDAB49" opacity="1.000000" stroke="none" 
	d="
M115.012482,347.863617 
	C114.421310,348.062225 113.830147,348.260864 113.029961,348.693542 
	C110.392746,350.478333 107.964546,352.029053 105.266045,353.783020 
	C104.170654,351.747070 103.345573,349.507874 102.205521,347.084503 
	C102.604012,344.488586 103.317482,342.076904 104.018417,339.329742 
	C104.005875,338.994293 103.983253,339.012787 104.301132,339.183350 
	C108.981285,343.081757 111.334709,339.552856 113.920876,337.220276 
	C114.299446,341.058228 114.655968,344.460938 115.012482,347.863617 
z"/>
<path fill="#A4CB4B" opacity="1.000000" stroke="none" 
	d="
M127.458092,348.117462 
	C126.258507,348.100586 125.503937,348.028503 124.376884,347.451294 
	C124.015549,343.545349 124.026688,340.144501 124.492569,336.722595 
	C127.378098,336.979370 129.808884,337.257172 132.534943,337.637665 
	C133.881210,337.885925 134.932220,338.031555 135.988434,338.616699 
	C135.997253,341.988525 136.000900,344.920776 136.004547,347.853058 
	C133.304062,347.922791 130.603592,347.992523 127.458092,348.117462 
z"/>
<path fill="#99CB4E" opacity="1.000000" stroke="none" 
	d="
M136.444824,347.907104 
	C136.000900,344.920776 135.997253,341.988525 136.413818,338.572205 
	C139.496323,337.899078 142.158646,337.710052 145.206299,337.417175 
	C146.384415,337.319489 147.177185,337.325592 147.969940,337.331665 
	C147.980927,340.549500 147.991913,343.767273 148.002747,347.426758 
	C146.926559,347.940430 145.850525,348.012390 144.372513,348.138184 
	C141.608719,348.115082 139.246902,348.038116 136.444824,347.907104 
z"/>
<path fill="#C9A048" opacity="1.000000" stroke="none" 
	d="
M88.426598,335.507904 
	C88.064941,332.323486 88.073624,329.147675 88.090210,325.521667 
	C90.156006,317.110504 92.551247,309.216034 94.138489,301.162292 
	C95.015274,296.713379 97.021904,295.299347 101.572571,296.538086 
	C102.669289,301.371948 103.343224,305.680878 104.010696,310.395081 
	C103.362656,313.515442 102.711433,316.228333 102.081390,318.946136 
	C100.567101,325.478485 99.720566,331.947266 103.972778,338.181335 
	C103.972755,338.643677 103.978004,338.828247 103.983253,339.012787 
	C103.983253,339.012787 104.005875,338.994293 104.016968,338.984070 
	C99.749626,334.303192 94.663155,333.192322 88.426598,335.507904 
z"/>
<path fill="#000000" opacity="1.000000" stroke="none" 
	d="
M120.714706,296.885803 
	C120.365753,299.671570 119.825836,302.341858 119.080032,305.738647 
	C117.678078,311.350189 116.482025,316.235229 115.077675,321.971039 
	C118.149422,321.971039 120.082787,321.971039 122.452255,321.998352 
	C124.926788,322.013336 126.965218,322.001038 129.003647,321.988708 
	C142.363358,321.944855 155.723053,321.901001 169.537231,321.713135 
	C169.952057,322.754822 169.912384,323.940521 169.866867,325.781067 
	C169.861023,326.435974 169.670715,326.840332 169.398788,326.988678 
	C168.726105,328.046326 168.325348,328.955658 167.927383,329.902161 
	C167.930176,329.939392 167.855682,329.943878 167.636917,330.020599 
	C167.141632,330.280640 166.983902,330.537048 166.944397,330.906189 
	C166.943802,330.945831 166.864548,330.943756 166.651947,330.994934 
	C166.159454,331.186554 165.983597,331.409149 165.883423,331.789734 
	C165.855042,331.865540 165.693161,331.862701 165.420135,331.878662 
	C164.758911,332.243011 164.370728,332.591461 163.982544,332.939911 
	C163.982544,332.939911 163.998459,332.995392 163.562256,332.954285 
	C147.145126,336.584778 131.167038,337.090057 115.138100,332.870483 
	C115.083054,332.870422 115.030098,332.773895 114.964935,332.570923 
	C114.732430,332.113556 114.497643,331.967834 114.171524,331.914734 
	C114.147621,331.898651 114.101593,331.863983 114.084274,331.673370 
	C113.683746,331.332550 113.300545,331.182343 112.622513,330.742249 
	C112.204842,328.318604 111.577850,326.066559 112.045700,324.071289 
	C114.167229,315.023468 116.597641,306.048096 118.916878,297.046631 
	C119.452499,296.954559 119.988121,296.862488 120.714706,296.885803 
z"/>
<path fill="#766500" opacity="1.000000" stroke="none" 
	d="
M118.768860,297.000732 
	C116.597641,306.048096 114.167229,315.023468 112.045700,324.071289 
	C111.577850,326.066559 112.204842,328.318604 112.760750,330.955017 
	C113.496407,331.593079 113.798996,331.728516 114.101593,331.863983 
	C114.101593,331.863983 114.147621,331.898651 114.136841,332.118958 
	C114.126068,332.339264 114.057098,332.747406 113.687088,332.820007 
	C110.204071,334.562897 107.091064,336.233215 103.978058,337.903534 
	C99.720566,331.947266 100.567101,325.478485 102.081390,318.946136 
	C102.711433,316.228333 103.362656,313.515442 104.236038,310.145020 
	C105.605522,307.960144 106.512352,306.159271 107.927147,304.955322 
	C111.261406,302.117920 114.837837,299.565063 118.316299,296.897095 
	C118.316299,296.897095 118.620834,296.954834 118.768860,297.000732 
z"/>
<path fill="#BDAB49" opacity="1.000000" stroke="none" 
	d="
M118.004044,296.581177 
	C114.837837,299.565063 111.261406,302.117920 107.927147,304.955322 
	C106.512352,306.159271 105.605522,307.960144 104.242493,309.739777 
	C103.343224,305.680878 102.669289,301.371948 101.993263,296.615662 
	C107.224709,296.200653 112.458244,296.232941 118.004044,296.581177 
z"/>
<path fill="#77D07A" opacity="1.000000" stroke="none" 
	d="
M169.670715,326.840332 
	C169.670715,326.840332 169.861023,326.435974 169.905792,326.217682 
	C171.951767,319.119934 173.952957,312.240448 176.116089,305.040588 
	C176.845749,306.883759 177.759674,309.022552 177.916748,311.215515 
	C178.399445,317.954193 178.592316,324.713562 179.002182,331.897827 
	C177.826874,334.007019 176.547195,335.683289 175.108704,337.644104 
	C172.897522,339.273651 170.845169,340.618591 168.457611,342.022949 
	C167.375320,339.243439 166.628235,336.404510 165.840973,332.911835 
	C165.800797,332.258057 165.693161,331.862701 165.693161,331.862701 
	C165.693161,331.862701 165.855042,331.865540 166.123413,331.790009 
	C166.735031,331.571533 166.892624,331.314606 166.864548,330.943756 
	C166.864548,330.943756 166.943802,330.945831 167.188675,330.865784 
	C167.757599,330.597107 167.898315,330.316498 167.855682,329.943878 
	C167.855682,329.943878 167.930176,329.939392 168.224930,329.795105 
	C168.903366,328.714020 169.287033,327.777161 169.670715,326.840332 
z"/>
<path fill="#B1B84A" opacity="1.000000" stroke="none" 
	d="
M124.037827,336.743652 
	C124.026688,340.144501 124.015549,343.545349 124.001671,347.399231 
	C121.243294,347.830048 118.487640,347.807892 115.372238,347.824646 
	C114.655968,344.460938 114.299446,341.058228 114.052574,336.917969 
	C114.429047,335.331482 114.695885,334.482574 115.328705,333.729736 
	C118.475731,334.798401 121.256783,335.771027 124.037827,336.743652 
z"/>
<path fill="#011867" opacity="1.000000" stroke="none" 
	d="
M127.041260,290.214264 
	C129.853745,288.433319 132.725891,286.967285 135.797989,285.215454 
	C136.441437,284.924561 136.884933,284.919495 138.003479,284.926971 
	C139.137436,284.937622 139.596390,284.935760 140.055328,284.933868 
	C139.969818,285.764435 139.884323,286.595001 139.887238,287.661377 
	C139.178650,288.194183 138.381653,288.491211 137.283524,288.895325 
	C134.528885,290.263763 132.075363,291.525116 129.282394,292.885162 
	C128.328934,292.165619 127.714943,291.347412 127.041260,290.214264 
z"/>
<path fill="#020E3A" opacity="1.000000" stroke="none" 
	d="
M140.231781,284.727966 
	C139.596390,284.935760 139.137436,284.937622 138.335922,284.914734 
	C138.827393,284.295471 139.661423,283.700897 140.833588,283.094971 
	C140.917221,283.563110 140.662720,284.042603 140.231781,284.727966 
z"/>
<path fill="#374986" opacity="1.000000" stroke="none" 
	d="
M151.002289,292.003510 
	C151.004578,292.007019 150.921509,292.043579 150.957306,292.019531 
	C150.993088,291.995483 151.000000,292.000000 151.002289,292.003510 
z"/>
<path fill="#001252" opacity="1.000000" stroke="none" 
	d="
M129.002838,321.555054 
	C126.965218,322.001038 124.926788,322.013336 122.539261,321.595978 
	C122.126961,316.138702 122.063759,311.111145 122.000557,306.083557 
	C124.035332,306.087738 126.070099,306.091919 128.538391,306.144043 
	C128.981949,311.168457 128.992004,316.144928 129.002838,321.555054 
z"/>
<path fill="#020E3A" opacity="1.000000" stroke="none" 
	d="
M121.659721,306.023315 
	C122.063759,311.111145 122.126961,316.138702 122.103157,321.568665 
	C120.082787,321.971039 118.149422,321.971039 115.077675,321.971039 
	C116.482025,316.235229 117.678078,311.350189 119.064636,306.113495 
	C119.943047,305.828949 120.630966,305.896027 121.659721,306.023315 
z"/>
<path fill="#202328" opacity="1.000000" stroke="none" 
	d="
M124.492569,336.722595 
	C121.256783,335.771027 118.475731,334.798401 115.378250,333.536804 
	C115.061829,333.247864 115.193146,332.870575 115.193146,332.870575 
	C131.167038,337.090057 147.145126,336.584778 163.537048,332.940247 
	C161.846542,333.924896 159.745026,334.882507 157.320923,336.008789 
	C154.257492,336.482147 151.516647,336.786865 148.372894,337.211609 
	C147.177185,337.325592 146.384415,337.319489 144.767044,337.325134 
	C140.041519,337.402924 136.140594,337.468964 132.239670,337.534973 
	C129.808884,337.257172 127.378098,336.979370 124.492569,336.722595 
z"/>
<path fill="#202328" opacity="1.000000" stroke="none" 
	d="
M165.420135,331.878662 
	C165.693161,331.862701 165.800797,332.258057 165.808899,332.462891 
	C165.412704,332.760101 165.008438,332.852448 164.293365,332.942352 
	C164.370728,332.591461 164.758911,332.243011 165.420135,331.878662 
z"/>
<path fill="#A7930C" opacity="1.000000" stroke="none" 
	d="
M115.138100,332.870483 
	C115.193146,332.870575 115.061829,333.247864 115.012276,333.440796 
	C114.695885,334.482574 114.429047,335.331482 114.030518,336.482697 
	C111.334709,339.552856 108.981285,343.081757 104.301132,339.183350 
	C103.978004,338.828247 103.972755,338.643677 103.972778,338.181335 
	C107.091064,336.233215 110.204071,334.562897 113.930038,332.866608 
	C114.543007,332.840607 115.030098,332.773895 115.030098,332.773895 
	C115.030098,332.773895 115.083054,332.870422 115.138100,332.870483 
z"/>
<path fill="#8BCB5D" opacity="1.000000" stroke="none" 
	d="
M132.534943,337.637634 
	C136.140594,337.468964 140.041519,337.402924 144.381714,337.428955 
	C142.158646,337.710052 139.496323,337.899078 136.408615,338.132660 
	C134.932220,338.031555 133.881210,337.885925 132.534943,337.637634 
z"/>
<path fill="#202328" opacity="1.000000" stroke="none" 
	d="
M169.398788,326.988678 
	C169.287033,327.777161 168.903366,328.714020 168.222137,329.757904 
	C168.325348,328.955658 168.726105,328.046326 169.398788,326.988678 
z"/>
<path fill="#202328" opacity="1.000000" stroke="none" 
	d="
M114.084274,331.673370 
	C113.798996,331.728516 113.496407,331.593079 113.055573,331.244873 
	C113.300545,331.182343 113.683746,331.332550 114.084274,331.673370 
z"/>
<path fill="#202328" opacity="1.000000" stroke="none" 
	d="
M167.636917,330.020599 
	C167.898315,330.316498 167.757599,330.597107 167.189270,330.826172 
	C166.983902,330.537048 167.141632,330.280640 167.636917,330.020599 
z"/>
<path fill="#202328" opacity="1.000000" stroke="none" 
	d="
M114.964935,332.570923 
	C115.030098,332.773895 114.543007,332.840607 114.300049,332.794006 
	C114.057098,332.747406 114.126068,332.339264 114.160744,332.135040 
	C114.497643,331.967834 114.732430,332.113556 114.964935,332.570923 
z"/>
<path fill="#202328" opacity="1.000000" stroke="none" 
	d="
M166.651947,330.994934 
	C166.892624,331.314606 166.735031,331.571533 166.151779,331.714172 
	C165.983597,331.409149 166.159454,331.186554 166.651947,330.994934 
z"/>
</svg><xsl:value-of select="/rss/channel/title"/>
            </h1>
            <p><xsl:value-of select="/rss/channel/description"/></p>
            <a class="head_link" target="_blank">
              <xsl:attribute name="href">
                <xsl:value-of select="/rss/channel/link"/>
              </xsl:attribute>
              Visit Website &#x2192;
            </a>
          </header>
          <h2>Recent Blog Posts</h2>
          <xsl:for-each select="/rss/channel/item">
            <div class="pb-5">
              <h3 class="mb-0">
                <a target="_blank">
                  <xsl:attribute name="href">
                    <xsl:value-of select="link"/>
                  </xsl:attribute>
                  <xsl:value-of select="title"/>
                </a>
              </h3>
              <small class="text-gray">
                Published: <xsl:value-of select="pubDate" />
              </small>
			  <p>
			  	<xsl:value-of select="description" />
			  </p>
            </div>
          </xsl:for-each>
        </div>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>