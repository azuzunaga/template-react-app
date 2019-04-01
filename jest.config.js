module.exports = {
  setupFilesAfterEnv: ['<rootDir>__tests__/setup/setupEnzyme.js'],
  testPathIgnorePatterns: [
    '<rootDir>/__tests__/setup/',
    '<rootDir>/node_modules/',
    '<rootDir>/src/',
  ],
  transform: {
    '^.+\\.jsx?$': 'babel-jest',
  },
};
