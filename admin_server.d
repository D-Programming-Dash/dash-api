module dash.api.admin_server;

import dash.api.benchmark;
import dash.api.compiler;
import dash.api.config;

interface AdminServer {
    void addMachine(string name, string description);

    void addBenchmarkBundle(string name, string sourceJson);

    void addCompiler(string name, string description, string sourceJson,
        CompilerType type);

    void addRunConfig(string compiler, string name, string description,
        Config[] config);
}
