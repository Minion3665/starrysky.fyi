<script>
	import Button from '$components/ui/button/Button.svelte';
</script>

<p class="pt-[40vh] p-10">
	We hope that our services help you to make something as
	<span class="gradient-text from-indigo-500 to-violet-400">beautiful</span> as the
	<span class="gradient-text from-amber-400 to-amber-300">stars</span>
	in the
	<span class="gradient-text from-cyan-400 to-cyan-500">sky</span>
</p>

<p class="m-10 mt-0">
	Because I, at least, <span class="gradient-text from-red-400 to-red-500">love</span> that which is <span
		class="gradient-text from-green-500 to-green-400">beautiful</span
	>
</p>

<p class="m-10 pl-10">
	- <span class="gradient-text from-pink-400 to-pink-300">A Starry Sky</span>
</p>

<div class="flex flex-col items-center justify-center gap-2 m-10">
	<Button href="/who" variant="outline">Who are you?</Button>
	<Button href="https://www.youtube.com/watch?v=dQw4w9WgXcQ">What do you make?</Button>
</div>

<style lang="postcss">
	h1 {
		font-size: 3rem;
		font-family: Roboto;
		font-weight: bold;
	}

	span.gradient-text {
		background-clip: text;
		-webkit-text-fill-color: transparent;
		@apply bg-gradient-to-r font-bold;
	}

	.title {
		text-align: center;
	}
</style>
