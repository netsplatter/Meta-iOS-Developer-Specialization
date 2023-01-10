// Task 1
var dairy = ['cheese', 'sour cream', 'milk', 'yogurt', 'ice cream', 'milkshake']
function logDairy() {
    for(item of dairy) {
        console.log(item)
    }
}
logDairy()

// Task 2
const animal = {
    canJump: true
}
const bird = Object.create(animal) 
bird.canFly = true
bird.hasFeathers = true

function birdCan() {
    for ([key, value] of Object.entries(bird)) {
        console.log(`${key}: ${value}`);
    }
}
birdCan()

// Task 3
function animalCan() {
    const merged = Object.assign({}, bird, animal);
    const entries = Object.entries(merged)

    for (const [key, value] of entries) {
        console.log(`${key}: ${value}`);
      }
}
animalCan()