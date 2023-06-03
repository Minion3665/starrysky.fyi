<script>
	import { BackgroundStars } from '$components/decoration/BackgroundStars';
	import '../app.postcss';
</script>

<slot />

<BackgroundStars starCount={20} />
