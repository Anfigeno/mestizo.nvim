local M = {}

local claves_hl_web_devicons = {
	rojo = {
		"Toml",
		"Java",
		"Pdf",
		"Rb",
		"PackageJson",
		"Scss",
		"Sass",
	},
	verde = {
		"Zsh",
		"Zshenv",
		"Zshprofile",
		"Zshrc",
		"Tex",
		"Csv",
		"Vim",
		"Vue",
	},
	amarillo = {
		"Js",
		"Cjs",
		"Mjs",
		"Py",
		"Pyi",
		"Json",
		"Json5",
		"Jsonc",
		"Env",
		"License",
	},
	azul = {
		"Lua",
		"TypeScript",
		"TSConfig",
		"Css",
		"C",
	},
	magenta = {
		"Hurl",
		"Cs",
	},
	cian = {
		"Go",
	},
	rosa = {
		"PackageLockJson",
	},
	lima = {
		"Xlsx",
	},
	naranja = {
		"Zip",
		"Gz",
		"Pyc",
		"Pyd",
		"Pyo",
		"Svg",
		"Cjs",
		"Mobi",
		"Favicon",
		"Svelte",
		"SvelteConfig",
		"GitIgnore",
		"Rs",
		"Git",
		"GitCommit",
		"GitLogo",
	},
	celete = {
		"TailwindConfig",
		"Docx",
		"Nix",
		"TypeScriptDeclaration",
	},
	fucsia = {
		"Astro",
		"Png",
		"Jpg",
		"Jpeg",
		"Webp",
	},
	turquesa = {
		"Jsx",
		"Tsx",
		"Cpp",
	},
	tope = {
		"Md",
		"Sql",
	},
	reflejo = {
		"Txt",
		"Yml",
	},
}

M.grupos = {}

---@param colores Colores
function M.obtener(colores)
	for clave, _ in pairs(claves_hl_web_devicons) do
		for i, _ in ipairs(claves_hl_web_devicons[clave]) do
			local hl = claves_hl_web_devicons[clave][i]

			M.grupos["DevIcon" .. hl] = { fg = colores[clave], bg = "NONE" }
		end
	end

	return M.grupos
end

return M
