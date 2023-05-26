local jdtls_dir = vim.fn.stdpath('data') .. '/mason/packages/jdtls'
local config_dir

if vim.fn.has('mac') == 1 then
	config_dir = jdtls_dir .. '/config_mac'
elseif vim.fn.has('unix') == 1 then
	config_dir = jdtls_dir .. '/config_linux'
elseif vim.fn.has('win32') == 1 then
	config_dir = jdtls_dir .. '/config_win'
end

local plugins_dir = jdtls_dir .. '/plugins/'
local jar_path = plugins_dir .. 'org.eclipse.equinox.launcher_*.jar'

local root_markers = {".git", "bin", "lib", "src"}
local root_dir = require("jdtls.setup").find_root(root_markers)
if root_dir == "" then
	return
end

local project_name = vim.fn.fnamemodify(vim.fn.getcwd(), ':p:h:t')
local workspace_dir = vim.fn.stdpath('data') .. '/site/java/workspace-root/' .. project_name
os.execute("mkdir " .. workspace_dir)

-- Main Config
local config = {

	-- The command that starts the language server
	-- see https://github.com/eclipse/eclipse.jdt.ls#running-from-the-command-line
	cmd = {
		'java',
		'-Declipse.application=org.eclipse.jdt.ls.core.id1',
		'-Dosgi.bundles.defaultStartLevel=4',
		'-Declipse.product=org.eclipse.jdt.ls.core.product',
		'-Dlog.protocol=true',
		'-Dlog.level=ALL',
		'-Xms1g',
		'--add-modules=ALL-SYSTEM',
		'--add-opens', 'java.base/java.util=ALL-UNNAMED',
		'--add-opens', 'java.base/java.lang=ALL-UNNAMED',
		'-jar', jar_path,
		'-configuration', config_dir,
		'-data', workspace_dir,
	},

	root_dir = root_dir,

	settings = {
		java = {
			-- home = '/usr/local/Cellar/openjdk/20.0.1/libexec/openjdk.jdk/Contents/Home/'
			home = '$JAVA_HOME',
			eclipse = {
				downloadSources = true,
			},
			configuration = {
				updateBuildConfiguration = "interactive",
				runtimes = {
					{
						name = "OpenJDK 20.0.1",
						path = "usr/local/Cellar/openjdk/20.0.1/libexec/openjdk.jdk/Contents/Home",
					},
				},
			},
			maven = {
				downloadSources = true,
			},
			implementationsCodeLens = {
				enabled = true,
			},
			referencesCodeLens = {
				enabled = true,
			},
			references = {
				includeDecompiledSources = true,
			},
			format = {
				enabled = true,
				settings = {
					url = vim.fn.stdpath "config" .. "/lang-servers/intellij-java-google-style.xml",
					profile = "GoogleStyle",
				},
			},
		},
		signatureHelp = {
			enabled = true,
		},
		completion = {
			favoriteStaticMembers = {
				"org.hamcrest.MatcherAssert.assertThat",
				"org.hamcrest.Matchers.*",
				"org.hamcrest.CoreMatchers.*",
				"org.junit.jupiter.api.Assertions.*",
				"java.util.Objects.requireNonNull",
				"java.util.Objects.requireNonNullElse",
				"org.mockito.Mockito.*",
			},
			importOrder = {
				"java",
				"javax",
				"com",
				"org",
			},
		},
		sources = {
			organizeImports = {
				starThreshold = 9999,
				staticStarThreshold = 9999,
			},
		},
		codeGeneration = {
			toString = {
				template = "${object.className}{${member.name()}=${member.value}, ${otherMembers}}",
			},
			useBlocks = true,
		},
		flags = {
			allow_incremental_sync = true,
		},
		init_options = {
			bundles = {},
		}
	}
}

config['on_attach'] = function(client, bufnr)
	require'keymaps'.map_java_keys(bufnr)
end

require('jdtls').start_or_attach(config)
