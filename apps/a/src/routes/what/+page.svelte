<script>
	import { Button } from '$components/ui/button';
	import Project from './project.svelte';
</script>

<div class="p-10 text-8xl tracking-tight">What do you make?</div>
<div class="flex flex-wrap items-stretch justify-evenly justify-items-stretch gap-8 p-8">
	<Project name="a.starrysky.fyi" online
		>a.starrysky.fyi is a website to help me display my projects in an accessible and explorable
		format</Project
	>
	<Project name="The Void" homepage="https://void.starrysky.fyi"
		>Sometimes you need to talk but there's nobody who wants to listen. Let out your frustrations
		and watch them slip away into the void... Ported from React to Svelte to be the first project on
		starrysky.fyi</Project
	>
	<Project name="The older Void" homepage="https://void.crawling.us" archived
		>A former version of The Void. While I recommend you use the new version, there's nothing
		stopping you from writing here
	</Project>
	<Project name="GITForum (Git Issue Tracker Forum)" offline
		>A "forum" where posts were created as GitHub Issues. Fetching and rendering posts was entirely
		client side, however a CORS proxy was needed to get GitHub oauth tokens</Project
	>
	<Project name="a.starrysky.fyi"
		>a.starrysky.fyi is a website to help me display my projects in an accessible and explorable
		format</Project
	>
	<Project name="Make a website" lost
		>One of my first projects ever, made for a secondary school open day. You could sign up and be
		given a page where you could write HTML. Perhaps it's just as well this one's lost, as I hadn't
		yet learned not to store passwords in plaintext</Project
	>
</div>

<div class="flex justify-center p-10">
	<Button href="/">Back home</Button>
</div>
