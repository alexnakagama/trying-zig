const std = @import("std");

const disk_analyzer = @import("disk_analyzer");

pub fn main(init: std.process.Init) !void {
    const arena = init.arena.allocator();
    const args = try init.minimal.args.toSlice(arena);

    if (args.len < 2) {
        std.debug.print("Usage: disk-analyzer <path>\n", .{});
        return;
    }

    const executable_path = args[0];
    const path = args[1];

    std.debug.print("Executable path: {s}\n", .{executable_path});
    std.debug.print("Path: {s}\n", .{path});
}
