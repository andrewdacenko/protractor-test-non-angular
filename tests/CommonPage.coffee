class CommonPage
  hover: (locator) ->
    browser.actions()
      .mouseMove locator
      .perform()
  
module.exports = CommonPage