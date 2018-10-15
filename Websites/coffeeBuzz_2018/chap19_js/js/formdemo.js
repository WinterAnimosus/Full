'use strict';
var $ = function(id)
{
	return document.getElementById(id);
};

var processEntries = function()
{
	// alert('processEntries');'
	var email = $('email_address').value;
	var phone = $('phone').value;
	var country = $('country').value;

	console.log('email: ' + email);
	console.log('phone: ' + phone);
	console.log('country: ' + country);

	var terms = $('terms').checked;
	console.log('terms: ' + terms);

	var isValid = true;

	if(email==='')
	{
		$('email_address').nextElementSibling.firstChild.nodeValue = '*Email is required*';
		isValid = false;
	}else{
		$('email_address').nextElementSibling.firstChild.nodeValue = '';
	}
	if(phone==='')
	{
		$('phone').nextElementSibling.firstChild.nodeValue = '*Phone is required*';
		isValid = false;
	}else{
		$('phone').nextElementSibling.firstChild.nodeValue = '';
	}
	if(country==='')
	{
		$('country').nextElementSibling.firstChild.nodeValue = '*Please select a country*';
		isValid = false;
	}else{
		$('country').nextElementSibling.firstChild.nodeValue = '';
	}
	if(terms===false)
	{
		$('terms').nextElementSibling.firstChild.nodeValue = '*You must accept*';
		isValid = false;
	}else{
		$('terms').nextElementSibling.firstChild.nodeValue = '';
	}

	if(isValid===true)
	{
		$('registration_form').submit();
	}
};

var resetForm = function()
{
	// alert('Reset Form');
	$('registration_form').reset();

	$('email_address').nextElementSibling.firstChild.nodeValue = '*';
	$('phone').nextElementSibling.firstChild.nodeValue = '*';
	$('country').nextElementSibling.firstChild.nodeValue = '*';
	$('terms').nextElementSibling.firstChild.nodeValue = '*';
	$('email_address').focus();
};

window.onload = function()
{
	// alert('Windows has loaded');
	$('email_address').focus();
	$('register').onclick = processEntries;
	$('reset_form').onclick = resetForm;
};