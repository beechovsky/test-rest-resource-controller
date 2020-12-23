package test.rest.resource.controller

import grails.rest.Resource

@Resource(uri="/books")
class Student {

    String firstName
    String lastName
    Integer age

    static constraints = {
    }
}
