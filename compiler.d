module dash.api.compiler;

import dash.api.config;

enum CompilerType {
    ldcGit,
    dmdGit,
    gdcGit
}

struct CompilerInfo {
    string name;
    CompilerType type;
    Config[] config;
}
