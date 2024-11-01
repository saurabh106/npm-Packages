# src/auditTool.coffee

{ contrastRatio } = require "./contrastChecker"
{ ariaCheck } = require "./ariaChecker"
{ checkTabIndex } = require "./keyboardChecker"

audit = ->
  console.log("Running accessibility audit...")

  elements = document.querySelectorAll("*")

  for element in elements
    if element.tagName is "IMG"
      ariaCheck(element)

    if element.hasAttribute("style")
      bgColor = window.getComputedStyle(element).backgroundColor
      textColor = window.getComputedStyle(element).color
      ratio = contrastRatio(hexToRgb(bgColor), hexToRgb(textColor))
      if ratio < 4.5
        console.warn("Low contrast detected:", element)

    checkTabIndex(element)

console.log("Accessibility Audit Complete.")
audit()
