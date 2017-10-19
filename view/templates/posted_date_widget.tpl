<script>

function showHideDates() {
	if( $('#posted-date-dropdown').is(':visible')) {
		$('#posted-date-dropdown').hide();
		$('#posted-date-collapse').html(window.showMore);

	} else {
		$('#posted-date-dropdown').show();
		$('#posted-date-collapse').html(window.showFewer);
	}
}

function dateSubmit(dateurl) {
	window.location.href = dateurl;
}

</script>


<div id="datebrowse-sidebar" class="widget">
	<h3>{{$title}}</h3>
	<ul id="posted-date-selector" class="datebrowse-ul">
		{{foreach $dates as $y => $arr}}
		{{if $y == $cutoff_year}}
		</ul>
		<div id="posted-date-dropdown" style="display: none;">
		<ul id="posted-date-selector-drop" class="datebrowse-ul">
		{{/if}} 
		<li id="posted-date-selector-year-{{$y}}" class="tool">
			<a class="datebrowse-link" href="#" onclick="openClose('posted-date-selector-{{$y}}'); return false;">{{$y}}</a>
		</li>
		<li id="posted-date-selector-{{$y}}" class="tool posted-date-selector-months" style="display: none;">
			<ul class="datebrowse-ul">
				{{foreach $arr as $d}}
				<li class="tool">
					<a class="datebrowse-link" href="#" onclick="dateSubmit('{{$url}}/{{$d.1}}/{{$d.2}}'); return false;">{{$d.0}}</a>
				</li>
				{{/foreach}}
			</ul>
		</li>
		{{/foreach}}
		{{if $cutoff}}
		</ul>
		</div>
		<ul class="datebrowse-ul">
			<li onclick="showHideDates(); return false;" id="posted-date-collapse" class="fakelink tool">{{$showmore}}</li>
		</ul>
		{{else}}
	</ul>
	{{/if}}
</div>
