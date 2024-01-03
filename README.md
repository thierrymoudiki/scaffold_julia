# Julia package scaffolding

In a fresh directory, make `script.sh` executable (at the **command line**): 

```bash
chmod +x script.sh
```

Then run: 

```bash
./script.sh
```

Must have (if package's name is `Calculator`) the following **folders' structure**: 

```bash
t@Air-de-T scaffold_julia % tree
├── Calculator.jl
│   ├── Project.toml
│   ├── src
│   │   ├── Calculator.jl
│   │   ├── add.jl
│   │   └── subtract.jl
│   └── test
│       └── runtests.jl
├── README.md
└── script.sh
```

Install using Julia console (in Julia's `Pkg` REPL, see https://pkgdocs.julialang.org/v1/getting-started/#Basic-Usage and https://en.wikibooks.org/wiki/Introducing_Julia/Modules_and_packages): 

```julia
]
add https://github.com/username/Calculator.git
```

Environments: 

https://pkgdocs.julialang.org/v1/getting-started/#Getting-Started-with-Environments

https://pkgdocs.julialang.org/v1/environments/

Registering: 

https://pkgdocs.julialang.org/v1/creating-packages/#Registering-packages

Note to self: 

https://stackoverflow.com/questions/65814036/a-python-as-equivalent-in-julia
