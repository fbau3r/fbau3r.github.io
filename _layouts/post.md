---
layout: default
---

<script>
	var idcomments_acct = '283dfc0427d7936b937c9ffa30a8b588';
	var idcomments_post_id;
	var idcomments_post_url;
</script>

{% include authordata.html %}
<abbr style="margin-left: 15px;">
	<script type="text/javascript" src="http://www.intensedebate.com/js/genericLinkWrapperV2.js"></script>
</abbr>

<div class="post">
{{ content }}
</div>

<div class="more">
	{% if page.next %}<a href="{{ page.next.url }}">« <i>{{ page.next.title }}</i></a> |{% endif %}
	<a href="{{site.baseurl }}p/">Inhalt</a>
	{% if page.previous %}| <a href="{{ page.previous.url }}"><i>{{ page.previous.title }}</i> »</a>{% endif %}
</div>

<div class="comments">
	<span id="IDCommentsPostTitle" style="display:none"></span>
	<script type='text/javascript' src='http://www.intensedebate.com/js/genericCommentWrapperV2.js'></script>
</div>
