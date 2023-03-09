const express = require('express')
const app = express()

app.get('/', (req, res) => {
	return res.json({
		message: 'Hello World'
	})
})

app.listen(8080, () => console.log(`Server started at port 8080`))
