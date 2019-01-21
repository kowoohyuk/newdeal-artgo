$(function(){
	getMainFavorList();
	getImExhibList();
});

function getMainFavorList(){
	$.ajax({
		url: '/member/favor.do',
		type: 'GET',
		contentType : 'application/json;charset=UTF-8',
		dataType : 'json',
		success: function(data){
			makeMainFavorList(data);
		}
	});
}

function makeMainFavorList(favors){
	let output = '';
	let flist = favors.favorlist;
	let len = flist.length;
	for(let i = 0; i< len; i++){
		output += '<a href="/exhibit/view.do?bno='+flist[i].bno+'" class="post-tag" style="color: black;">';
		output += flist[i].title+'&nbsp;'+ flist[i].place+'&nbsp;'+flist[i].startDate+'~'+flist[i].endDate+'</a>';
	}
	$('#mainFavorDiv').append(output);
}

function getImExhibList(){
	$.ajax({
		url: '/exhibit/Imlist.do',
		type: 'GET',
		contentType : 'application/json;charset=UTF-8',
		dataType : 'json',
		success: function(data){
			makeImExhibList(data);
		}
	});
}

function makeImExhibList(exhib){
	let output = '';
	let exlist = exhib.exhibitionlist;
	let len = exlist.length;
	for(let i = 0; i< len; i++){
		output += '<a href="/exhibit/view.do?bno='+exlist[i].bno+'" class="post-tag" style="color: black;">';
		output += exlist[i].title+'&nbsp;'+ exlist[i].place+'&nbsp;'+exlist[i].endDate+'까지</a>';
	}
	$('#mainExhibDiv').append(output);
}
