const Builder = @import("std").build.Builder;

pub fn build(b: *Builder) void {
    const mode = b.standardReleaseOptions();

    const exe = b.addExecutable("step0_repl", "src/step0_repl.zig");
    exe.setBuildMode(mode);

    b.default_step.dependOn(&exe.step);
}
