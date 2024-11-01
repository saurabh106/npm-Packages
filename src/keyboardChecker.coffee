# src/keyboardChecker.coffee

checkTabIndex = (element) ->
  if element.tabIndex < 0
    console.warn("Inaccessible element:", element)
    "Element is not accessible via keyboard."

module.exports = { checkTabIndex }
