fn entry(a: *addrspace(.gs) i32) *addrspace(.fs) i32 {
    return a;
}
pub fn main() void {
    _ = entry;
}

// error
// output_mode=Exe
// backend=stage2,llvm
// target=x86_64-linux,x86_64-macos
//
// :2:12: error: expected *addrspace(.fs) i32, found *addrspace(.gs) i32