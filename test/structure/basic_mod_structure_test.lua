local helper = require('./test/helper')

describe("Tinker", function()

    it("should have all minimum required files for a mod", function()
        assert.is_true(helper.file_exists('./src/init.lua'))
        assert.is_true(helper.file_exists('./src/depends.txt'))
        assert.is_true(helper.file_exists('./src/description.txt'))
        assert.is_true(helper.file_exists('./src/mod.conf'))
    end)

end)