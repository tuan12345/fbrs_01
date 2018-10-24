$(document).ready(function() {
	var $listTitle = $('#list-title').data('list-title');
	$listTitle  = $listTitle.replace("[","");
	$listTitle  = $listTitle.replace("]","");
	var list_title = $listTitle.split(',')
	_search(list_title);
	function _search(arr) {
		$("#search").autocomplete({
			source :arr
		});
		
	}
});