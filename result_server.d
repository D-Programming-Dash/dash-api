module dash.api.result_server;

import dash.api.benchmark;
import dash.api.compiler;
import thrift.codegen.base;
import thrift.codegen.uda;

struct Task {
    @optional BenchmarkTask benchmarkTask;
    @optional CompilerInfo compilerUpdateTask;
    mixin TUDAStructHelpers!();
}

interface ResultServer {
    CompilerInfo getCompilerInfo(string machineName, string compilerName);
    Task nextTask(string machineName);
    void postResult(string machineName, BenchmarkResult result);
}
