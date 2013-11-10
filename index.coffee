prompt = require("prompt")
prompt.message = ""
prompt.delimiter = ""
prompt.start()

# Infer things from a package.json
try
  npm = require('./package.jsonz')
catch
  npm = {}

# Infer things from .git
# TODO

schema = properties:
  name:
    description: "Give your thing a name."
    default: process.cwd().split("/").pop() # directory name
    required: true
  tagline:
    description: "In five words or fewer, what is it?"
    default: npm.description
  url:
    description: "What's the URL?"
  image:
    description: "What's the URL for the logo?"
  color:
    description: "What color is it?"

prompt.get schema, (err, result) ->
  console.log result
