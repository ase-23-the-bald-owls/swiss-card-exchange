module.exports = (on, config) => {
  // eslint-disable-next-line @typescript-eslint/no-var-requires
  require('@cypress/code-coverage/task')(on, config);
  // eslint-disable-next-line @typescript-eslint/no-var-requires
  on('file:preprocessor', require('@cypress/code-coverage/use-babelrc'));
  return config;
};
