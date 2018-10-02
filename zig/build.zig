const Builder = @import("std").build.Builder;

pub fn build(b: *Builder) void {
    addStep(b, "step0_repl");
    addStep(b, "step1_read_print");
}

fn addStep(b: *Builder, comptime name: []const u8) void {
    const mode = b.standardReleaseOptions();
    const exe = b.addExecutable(name, "src/" ++ name ++ ".zig");
    exe.setBuildMode(mode);
    b.default_step.dependOn(&exe.step);
}
