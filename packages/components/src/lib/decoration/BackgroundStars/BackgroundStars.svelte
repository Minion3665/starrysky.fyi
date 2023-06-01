<script lang="ts">
	import seedrandom from 'seedrandom';

	let random = seedrandom('backgroundstars');

	let parts: [number, number][] = Array(50)
		.fill(0)
		.map(() => {
			return [random(), random()];
		});
</script>

<div class="star-container">
	{#each parts as part}
		<div
			class="bg-amber-400 star"
			style="top: {part[0] * 100}vh; left: {part[1] * 100}vw; animation-delay: {(part[0] +
				part[1]) *
				2500}ms;"
		/>
	{/each}
</div>

<style>
	@keyframes twinkle {
		0% {
			opacity: 0;
		}
		50% {
			opacity: 1;
		}
		100% {
			opacity: 0;
		}
	}

	@keyframes rotate {
		0% {
			transform: rotate(0deg);
		}
		100% {
			transform: rotate(360deg);
		}
	}

	div.star {
		position: absolute;
		width: 1px;
		height: 1px;
		transition: top 0.5s ease-in-out, left 0.5s ease-in-out;
		animation: twinkle 10s infinite;
		opacity: 0;
	}

	div.star-container {
		position: fixed;
		top: 0;
		left: 0;
		width: 100%;
		height: 100%;
		animation: rotate 240s infinite linear;
		z-index: -1;
	}
</style>
