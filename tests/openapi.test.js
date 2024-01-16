const fs = require('fs');

describe('openapi specification', () => {
    it('file should be present in root directory', () => {
        const fileExists = fs.existsSync('./openapi.yaml')
        expect(fileExists).toBe(true);
    });
});
