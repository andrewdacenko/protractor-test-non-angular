exports.config = {
  // The address of a running selenium server.
  seleniumAddress: 'http://localhost:4444/wd/hub',

  // Capabilities to be passed to the webdriver instance.
  capabilities: {
    'browserName': 'chrome'
  },

  // Spec patterns are relative to the location of the spec file. They may
  // include glob patterns.
  specs: ['tests/**/*Spec.coffee'],

  suites: {
    homepage: 'tests/e2e/homepage/**/*Spec.coffee',
    search: ['tests/e2e/contact_search/**/*Spec.coffee',
      'tests/e2e/venue_search/**/*Spec.coffee']
  },

  onPrepare: function() {
    global.dv = browser.driver;
    global.isAngularSite = function(flag) {
      browser.ignoreSynchronization = !flag;
    };
    isAngularSite(false);
  },

  // Options to be passed to Jasmine-node.
  jasmineNodeOpts: {
    showColors: true, // Use colors in the command line report.
  }
};