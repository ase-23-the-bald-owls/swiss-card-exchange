import { defineConfig } from 'cypress';
import path from 'path';

export default defineConfig({
  env: {
    codeCoverage: {
      url: '/api/__coverage__',
    },
  },

  e2e: {
    baseUrl: 'http://localhost:3000/',
    supportFile: 'cypress/support/e2e.ts',
    // the screenshots dont work well with larger screens
    viewportWidth: 1900,
    viewportHeight: 1200,
    setupNodeEvents(on, config) {
      // eslint-disable-next-line @typescript-eslint/no-var-requires
      require('@cypress/code-coverage/task')(on, config);
      return config;
    },
  },

  component: {
    devServer: {
      framework: 'next',
      bundler: 'webpack',
      webpackConfig: {
        resolve: {
          alias: {
            '@': path.resolve(__dirname, 'src'),
          },
        },
      },
    },
    setupNodeEvents(on, config) {
      // eslint-disable-next-line @typescript-eslint/no-var-requires
      require('@cypress/code-coverage/task')(on, config);
      return config;
    },
  },
});
