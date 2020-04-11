module.exports = {
	credentialSecret: process.env.NODE_RED_CREDENTIAL_SECRET,
	disableEditor: true,
	flowFilePretty: true,
	logging: {
		console: {
			level: "info",
			metrics: false,
			audit: false,
		},
	},
}
