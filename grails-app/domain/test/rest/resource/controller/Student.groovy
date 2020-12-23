package test.rest.resource.controller

import grails.rest.Resource

//https://docs.grails.org/latest/guide/REST.html#domainResources
@Resource(uri="/students")
class Student {

    String firstName
    String lastName
    Integer age

    static constraints = {
    }
}
