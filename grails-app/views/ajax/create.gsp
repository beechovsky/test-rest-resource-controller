<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main" />
    <g:set var="entityName" value="${message(code: 'student.label', default: 'Student')}" />
    <title><g:message code="default.create.label" args="[entityName]" /></title>

</head>
<body>
<a href="#create-student" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        <li><g:link class="list" action="index" controller="student"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
    </ul>
</div>
<div role="main">
    <h1><g:message code="default.create.label" args="[entityName]" /></h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <g:hasErrors bean="${this.student}">
        <ul class="errors" role="alert">
            <g:eachError bean="${this.student}" var="error">
                <li><g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if><g:message error="${error}"/></li>
            </g:eachError>
        </ul>
    </g:hasErrors>
    <button class="save" id="save-button" name="save-button">Save a Student</button>
</div>
<script type="text/javascript">
        $(function () {
            $("#save-button").click(function () {
                console.log('CLICKED');
                $.ajax({
                    type: "POST",
                    url: 'http://localhost:8080/student/save',
                    data: {
                        "firstName": "Old",
                        "lastName": "Dude",
                        "age": 98
                    },
                    success: function (result) {
                        alert('SAVED');
                        console.log(result);
                    },
                    error: function (result) {
                        alert('ERROR');
                        console.log(result);
                    }
                });
            });
        });
    </script>
</body>
</html>
