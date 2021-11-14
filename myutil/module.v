module myutil

fn init() {
	println('called myutil init!')
}

// To export a function we have to use `pub`
pub fn say_hi() {
	println('hello from myutil!')
}
