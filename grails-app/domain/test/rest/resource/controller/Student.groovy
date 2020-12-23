package test.rest.resource.controller

import grails.rest.Resource

@Resource(uri='/students')
class Student {

    String firstName
    String lastName
    Integer age

    static constraints = {
    }
}
