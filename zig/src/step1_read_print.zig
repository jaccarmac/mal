const readLine = @import("std").io.readLine;
const warn = @import("std").debug.warn;

pub fn main() void {
    var buf: [1000]u8 = undefined;
    while (true) {
        warn("user> ");
        if (readLine(buf[0..])) |len| warn("{}\n", rep(buf[0..len]))
        else |err| switch(err) {
            error.InputTooLong => {
                warn("input too long\n");
                flushStdIn();
            },
            error.EndOfFile => break,
            error.StdInUnavailable => {
                warn("stdin unavailable\n");
                break;
            },
        }
    }
    warn("Bye!\n");
}

fn READ(str: []const u8) []const u8 {
    return str;
}

fn EVAL(str: []const u8) []const u8 {
    return str;
}

fn PRINT(str: []const u8) []const u8 {
    return str;
}

fn rep(input: []const u8) []const u8 {
    return PRINT(EVAL(READ(input)));
}

fn flushStdIn() void {
    var buf: [100]u8 = undefined;
    while (true) {
        _ = readLine(buf[0..]) catch |err| switch(err) {
            error.InputTooLong => continue,
            else => return,
        };
        return;
    }
}
