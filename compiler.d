module dash.api.compiler;

import dash.api.config;

enum CompilerType {
    ldcGit,
    dmdGit
}

struct CompilerInfo {
    string name;
    CompilerType type;
    Config[] config;
}
