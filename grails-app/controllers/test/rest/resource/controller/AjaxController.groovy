package test.rest.resource.controller

// Since I cannot access the existing create Student view,
// I've created a new controller supporting a view from which
// I make an ajax call to student/save
class AjaxController {
    def saveStudent() {
        render view: 'create'
    }
}
