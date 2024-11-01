# src/ariaChecker.coffee

ariaCheck = (element) ->
  if element.hasAttribute("role") then null
  else
    console.warn("Missing ARIA role:", element)
    "Element is missing ARIA role."

module.exports = { ariaCheck }
