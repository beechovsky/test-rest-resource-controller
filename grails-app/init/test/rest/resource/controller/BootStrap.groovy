package test.rest.resource.controller

class BootStrap {

    def init = { servletContext ->
        new Student(firstName: 'Jeff', lastName: 'Bucklew', age: 41).save()
        new Student(firstName: 'Teddy', lastName: 'Skidoo', age: 23).save()
    }
    def destroy = {
    }
}
