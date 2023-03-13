import { defineConfig } from 'cypress';

export default defineConfig({
  env: {
    codeCoverage: {
      url: '/api/__coverage__',
    },
  },

  e2e: {
    baseUrl: 'http://localhost:3000/',
    supportFile: 'cypress/support/e2e.ts',
    setupNodeEvents(on, config) {
      // eslint-disable-next-line @typescript-eslint/no-var-requires
      require('@cypress/code-coverage/task')(on, config);
      return config;
    },
  },
});
