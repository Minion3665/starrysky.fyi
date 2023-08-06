<script lang="ts">
	export let user = 'sky';
	export let host = 'a.starrysky.fyi';
	export let dir = '~';
	export let root = false;

	let promptchar: string;
	$: promptchar = root ? '#' : '$';
</script>

<span class="font-mono">
	<span class="text-gray-400 hidden sm:inline">[</span><!--
 --><span
		class="gradient-text from-green-600 to-green-500">{user}</span
	><!--
 --><span class="text-gray-400 hidden sm:inline">@</span><!--
 --><span
		class="gradient-text from-green-500 to-green-400 hidden sm:inline">{host}</span
	><!--
 --><span class="text-gray-400">:</span><!--
 --><span
		class="gradient-text from-cyan-400 to-cyan-500">{dir}</span
	><!--
 --><span class="text-gray-400 hidden sm:inline">]</span><!--
 --><span
		class="gradient-text from-green-500 to-green-600">{promptchar}</span
	>
</span><span class="font-mono"><slot /></span><br />
