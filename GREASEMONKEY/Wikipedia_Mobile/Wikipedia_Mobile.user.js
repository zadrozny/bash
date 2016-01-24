// ==UserScript==
// @name        Wikipedia Mobile
// @namespace   https://en.wikipedia.org/wiki/*
// @description Redirects Wikipedia desktop site to mobile site (which looks cleaner)
// @include     https://en.wikipedia.org/wiki/*
// @version     1
// @grant       none
// ==/UserScript==
current = window.location.href 
var sub = current.replace("https://en.wikipedia.org/wiki/", "https://en.m.wikipedia.org/wiki/");
window.location.replace(sub)