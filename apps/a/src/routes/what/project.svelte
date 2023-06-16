<script lang="ts">
	export let name: string;

	export let lost: boolean = false;
	export let offline: boolean = false;
	export let archived: boolean = false;
	export let online: boolean = false;

	type themes = 'online' | 'archived' | 'offline' | 'lost';
	function get_theme(
		_online: boolean,
		_archived: boolean,
		_offline: boolean,
		_lost: boolean
	): themes {
		if (_lost) return 'lost';
		if (_offline) return 'offline';
		if (_archived) return 'archived';
		return 'online';
	}

	let theme: themes;
	$: theme = get_theme(online, archived, offline, lost);

	export let homepage: string | undefined = undefined;
</script>

<a
	href={homepage}
	class="flex flex-col w-64 grow rounded-md p-3 border border-2 hover:border-white transition-all"
	class:border-emerald-600={theme === 'online'}
	class:border-yellow-600={theme === 'archived'}
	class:border-rose-600={theme === 'offline'}
	class:border-gray-700={theme === 'lost'}
>
	<p><span class="title">{name}</span> ({theme})</p>
	<p><slot /></p>
</a>

<style lang="postcss">

</style>
