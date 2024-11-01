// Generated by CoffeeScript 2.7.0
(function() {
  // src/ariaChecker.coffee
  var ariaCheck;

  ariaCheck = function(element) {
    if (element.hasAttribute("role")) {
      return null;
    } else {
      console.warn("Missing ARIA role:", element);
      return "Element is missing ARIA role.";
    }
  };

  module.exports = {ariaCheck};

}).call(this);