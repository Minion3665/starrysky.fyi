<script lang="ts">
	import {
		Card,
		CardTitle,
		CardHeader,
		CardContent,
		CardDescription,
		CardFooter
	} from '$components/ui/card';

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

<a href={homepage} class="w-64 grow">
	<Card class="grid h-full flex-col">
		<CardHeader>
			<CardTitle>{name}</CardTitle>
		</CardHeader>
		<CardContent>
			<CardDescription><slot /></CardDescription>
		</CardContent>
		<CardFooter class="self-end">{theme}</CardFooter>
	</Card>
</a>

<style lang="postcss">
</style>
