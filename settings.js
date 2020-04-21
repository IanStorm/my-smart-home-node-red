module.exports = {
	contextStorage: {
		default: "memoryOnly",
		memoryOnly: { module: "memory" },
	},
	credentialSecret: process.env.NODE_RED_CREDENTIAL_SECRET,
	disableEditor: true,
	editorTheme: {
		projects: {
			enabled: false,
		},
	},
	flowFilePretty: true,
	logging: {
		console: {
			level: "info",
			metrics: false,
			audit: false,
		},
	},
}
