export const actions = {
	default: async ({ request }: { request: any }) => {
		const data = await request.formData();
		const message = data.get("message");
		const pastMessages = data.get("pastMessages");
		const reset = data.get("reset");

		if (!reset) {
			return { message, pastMessages, reset: false };
		} else {
			return { message: "", pastMessages: null, reset: true };
		}
	}
}
