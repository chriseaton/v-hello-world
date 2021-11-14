import myutil

const (
	world = 'terra'
)

fn main() {
	println('hello world')
	args()
	println(add(byte(3), 33))
	println(sub(100, 50))

	mut butter_beans := 0x44
	butter_beans = 4
	println(butter_beans)

	cuts := 'ride the 🚀'[0..8]
	println('cuts= $cuts, runes= $cuts.runes(); sum= ${sum(1, 2, 3, 4)}')

	animal := '$cuts moose'
	println(animal)
	mut u := User{
		age: 20
	}
	u.age = 35
	println(u.can_register())
	u.register()

	eprintln('error print!')
	myutil.say_hi()
}

fn sum(a ...int) int {
	mut total := 0
	for x in a {
		total += x
	}
	return total
}

struct User {
mut:
	age           int  [required]
	is_registered bool
}

fn (u User) can_register() bool {
	return u.age > 16
}

fn (mut u User) register() {
	u.is_registered = true
}
