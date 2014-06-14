module dash.api.benchmark;

import dash.api.config;

struct BenchmarkTask {
    string id;
    string scmUrl;
    string scmRevision;
    Config[] config;
}

struct TestPhase {
    string name;
    int exitCode;
    string errorOutput;
    double[][string] resultSamples;
}

struct TestResult {
    string name;
    TestPhase[] phases;
}

struct BenchmarkResult {
    string taskId;
    string name;
    TestResult[] tests;
    string[string] testEnvData;
}
