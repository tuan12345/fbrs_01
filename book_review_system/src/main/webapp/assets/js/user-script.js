$(function() {
	$('table').on('click', '.delete_user', function(event) {
		xoa = $(this).parent().parent();
		var parentOjb = $(this).closest('.rename');
		id = parentOjb.find('.user_id').text();
		$.ajax({
			url : 'users/'+id,
			type : 'DELETE',
			success : function(data) {
				xoa.remove();
				alert(data);
			},
			error : function(e) {
				alert("User have data referenc in onther table can't delete!");
				console.log(e);
			}
		})
	});

	$('table').on('click', '.edit_user', function(event) {
		// get data from table r
		var parentOjb = $(this).closest('.rename');
		var id = parentOjb.find('.user_id').text();
//		var full_name = parentOjb.find('.user_full_name').text();
//		var email = parentOjb.find('.user_email').text();
//		var role = parentOjb.find('.user_role').text();
//		// set value to edit form
//		$('#myModal').modal('show');
//		$('#cuser_id').val(id);
//		$('#cname').val(full_name);
//		$("#cemail").val(email);
//		if (role == 'ADMIN') {
//			$('#crole').val(1);
//		} else {
//			$('#crole').val(2);
//		}
		console.log('edit User');
		$.ajax({
			url : 'users/'+id,
			type : 'GET',
			success : function(data) {
				console.log(data);
			},
			error : function(e) {
				console.log(e);
			}
		})
		
	});
	// Update User
	$("#save_user").click(function() {
		vid = $('#cuser_id').val();
		vname = $('#cname').val();
		vemail = $('#cemail').val();
		vrole = $('#crole').val();
		var user = {
			"id" : vid,
			"name" : vname,
			"email" : vemail,
			"role" : {
				"id": vrole 
			}
		}
		console.log(user);
		$.ajax({
			url : 'users',
			dataType : 'json',
			type : 'POST',
			contentType : 'application/json; charset=utf-8',
			data : JSON.stringify(user),
			success : function(data) {
				alert(data);
			},
			error : function(e) {
				alert(e.responseText);
			}
		})
		$('#myModal').modal('hide');
		$('#reload').load(location.href + " #reload>*");
	});
});