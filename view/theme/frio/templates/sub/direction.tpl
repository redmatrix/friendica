{{if $direction.direction > 0}}
<span class="direction">
	&bull;
	{{if $direction.direction == 1}}
		<i class="fa fa-inbox" aria-hidden="true" title="{{$direction.title}}"></i>
	{{elseif $direction.direction == 2}}
		<i class="fa fa-download" aria-hidden="true" title="{{$direction.title}}"></i>
	{{elseif $direction.direction == 3}}
		<i class="fa fa-retweet" aria-hidden="true" title="{{$direction.title}}"></i>
	{{elseif $direction.direction == 4}}
		<i class="fa fa-hashtag" aria-hidden="true" title="{{$direction.title}}"></i>
	{{elseif $direction.direction == 5}}
		<i class="fa fa-comment-o" aria-hidden="true" title="{{$direction.title}}"></i>
	{{elseif $direction.direction == 6}}
		<i class="fa fa-check" aria-hidden="true" title="{{$direction.title}}"></i>
	{{elseif $direction.direction == 7}}
		<i class="fa fa-at" aria-hidden="true" title="{{$direction.title}}"></i>
	{{/if}}
</span>
{{/if}}
