<script>
	import { Card, CardContent, CardHeader, CardTitle } from '$components/ui/card';
	import Prompt from './prompt.svelte';
	import Result from './result.svelte';

	import { format } from 'date-fns';

	let pageLoad = format(new Date(), 'E MMM d HH:mm:ss y');
</script>

<svelte:head>
	<title>A starry Sky</title>
</svelte:head>

<div class="mx-auto rounded-md p-8 lg:w-[1024px]">
	<Result>
		<h1 class="dim pb-5">A starry Sky</h1>
		<p class="dim">
			Last login: {pageLoad} from 127.0.0.1
		</p>
	</Result>
	<Prompt><h2>whoami</h2></Prompt>
	<Result>
		<p>
			I'm Skyler, a transgender developer from the UK. It's nice to meet you! I love my Blåhaj,
			writing and contributing to open source software, my Blåhaj and playing games with my
			friends. Also my Blåhaj.
		</p>
		<p>
			My pronouns are she/her.
		</p>
		<p>
			In my spare time I <!--<a href="https://blog.starrysky.fyi">write posts for my blog</a>, -->write
			small bits of open source software, maintain packages on
			<a href="https://github.com/NixOS/nixpkgs">nixpkgs</a>, hack around on my NixOS system and
			play videogames with (or sometimes without) my friends.
		</p>
		<p>
			Professionally, I work at <a href="https://www.collabora.com/">Collabora Productivity</a>
			making <a href="https://www.collaboraoffice.com/">LibreOffice work online</a>.
		</p>
		<p>
			If you'd like to talk, I'd love to hear from you. Come find me on
			<a href="https://matrix.to/#/@minion:tchncs.de">Matrix</a>!
		</p>
	</Result>
	<Prompt>unalias whoami</Prompt>
	<Prompt>nix run github:Minion3665/links</Prompt>
	<Result>
		<!--<h2 class="pt-3 pb-2">Explore this website</h2>
		<div class="mb-5 flex flex-wrap gap-5 md:flex-nowrap">
			<a
				class="reset transition-color block grow underline decoration-cyan-300/30 hover:decoration-cyan-400 md:basis-1/2"
				href="https://blog.starrysky.fyi"
			>
				<Card
					class="h-full shadow-white/50 transition-shadow hover:shadow-md hover:shadow-cyan-400"
				>
					<CardHeader>
						<CardTitle>Read my blog</CardTitle>
					</CardHeader>
					<CardContent>
						<p>I write posts focusing on tech, life and suchlike.</p>
					</CardContent>
				</Card>
			</a>
			<a
				class="reset transition-color block grow underline decoration-cyan-300/30 hover:decoration-cyan-400 md:basis-1/2"
				href="/projects"
			>
				<Card
					class="h-full shadow-white/50 transition-shadow hover:shadow-md hover:shadow-cyan-400"
				>
					<CardHeader>
						<CardTitle>See my projects</CardTitle>
					</CardHeader>
					<CardContent>
						<p>
							Tiny websites and apps to do specific tasks take your fancy? I sure hope so because
							that's most of what I make.
						</p>
					</CardContent>
				</Card>
			</a>
		</div>-->
		<h2>Find me on other sites</h2>
		<ul>
			<li><a href="https://keyoxide.org/F27E3E5922772E7A">KeyOxide</a></li>
			<li><a href="https://github.com/Minion3665">GitHub</a></li>
			<li><a href="https://matrix.to/#/@minion:tchncs.de">Matrix</a></li>
			<li><a href="https://tech.lgbt/@minion3665" rel="me">The Fediverse</a></li>
			<li><a href="https://www.linkedin.com/in/minion3665/">LinkedIn</a></li>
			<li><a href="mailto:sky@a.starrysky.fyi">Good ol' email</a></li>
		</ul>
	</Result>
	<Prompt><span class="animate-pulse">█</span></Prompt>
</div>
