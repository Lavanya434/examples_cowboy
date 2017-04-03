{application, 'examples_cowboy', [
	{description, "New project"},
	{vsn, "0.1.0"},
	{modules, ['examples_cowboy_app','examples_cowboy_sup','my_handler']},
	{registered, [examples_cowboy_sup]},
	{applications, [kernel,stdlib,cowboy]},
	{mod, {examples_cowboy_app, []}},
	{env, []}
]}.