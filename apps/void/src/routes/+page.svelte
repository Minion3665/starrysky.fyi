<script lang="ts">
	import Button from '$components/ui/button/Button.svelte';
	import Input from '$components/ui/input/Input.svelte';
	import { onMount } from 'svelte';
	import { flip } from 'svelte/animate';
	import { fade } from 'svelte/transition';

	export let form;

	let messageInput: HTMLInputElement;
	function focusMessageInput() {
		messageInput.focus();
	}

	let systemMessage =
		'Welcome to the void. Everything you put here is completely private. Messages will fade as they go up the page and disappear after a few minutes, or you can refresh the page to clear them too. Let out your frustrations and watch them slip away into the void...';
	const resetMessage =
		"Poof: it's gone; hopefully you feel a little better after letting your frustrations out. If there's something you still need to vent about feel free to continue. I'm still here to listen...";
	let messages: string[] = [];
	let currentlyTyped: string = '';

	if (form?.pastMessages) {
		messages = form?.pastMessages.toString().split('\n');
	}

	if (form?.message) {
		messages.push(form?.message.toString());
	}

	if (form?.reset) {
		systemMessage = resetMessage;
	}

	onMount(focusMessageInput);
</script>

<svelte:head>
	<title>The void</title>
	<meta name="description" content="Have worries or frustrations? Let them out into the void" />
	<meta property="og:title" content="The void" />
	<meta property="og:description" content="Have worries or frustrations? Let them out into the void" />
	<meta property="og:type" content="website" />
	<meta name="theme-color" content="#030711" />
	<meta name="keywords" content="void, vent, stress" />
</svelte:head>

<form
	on:submit|preventDefault={() => {
		if (currentlyTyped) {
			messages.push(currentlyTyped);
			messages = messages;
			currentlyTyped = '';
		}
		focusMessageInput();
	}}
	method="post"
	class="p-2 flex flex-col h-full gap-2 justify-end pt-0"
>
	<div class="flex p-2 pt-0 flex-col justify-end w-full pastMessages">
		{#each (messages.length === 0 ? [systemMessage] : ['']).concat(messages) as message, index (`${index} ${message}`)}
			<p class:message="{index !== 0}" transition:fade={{ duration: 100 }} animate:flip={{ duration: 100 }}>
				<span class="message">{message}</span>
			</p>
		{/each}
		<input type="hidden" value={messages.join('\n')} name="pastMessages" />
	</div>

	<div class="flex w-full gap-2 z-10">
		<Input
			bind:element={messageInput}
			bind:value={currentlyTyped}
			name="message"
			placeholder="Write down your worries, and let them slip into the void"
		/>
		<Button type="submit">Send</Button>
		<Button
			name="reset"
			value="reset"
			on:click={() => {
				currentlyTyped = '';
				systemMessage = resetMessage;
				messages = [];
				focusMessageInput();
			}}>Clean</Button
		>
	</div>
</form>

<style lang="postcss">
	div.pastMessages::after {
		content: '';
		position: absolute;
		top: 0;
		left: 0;
		z-index: 1;
		width: 100%;
		height: 100%;
		background: linear-gradient(0deg, rgba(0, 0, 0, 0) 0%, rgba(0, 0, 0, 1) 100%);
		pointer-events: none;
	}

	@keyframes message-fade-out {
		0% {
			opacity: 1;
		}
		100% {
			opacity: 0;
		}
	}

	p.message {
		overflow-wrap: break-word;
	}

	span.message {
		animation: message-fade-out 150s ease-in-out forwards;
	}
</style>
