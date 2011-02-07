

<%@ page import="visifoos.Player" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'player.label', default: 'Player')}" />
        <title><g:message code="default.create.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="default.create.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${playerInstance}">
            <div class="errors">
                <g:renderErrors bean="${playerInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form action="save" >
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="bio"><g:message code="player.bio.label" default="Bio" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: playerInstance, field: 'bio', 'errors')}">
                                    <g:textField name="bio" value="${playerInstance?.bio}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="city"><g:message code="player.city.label" default="City" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: playerInstance, field: 'city', 'errors')}">
                                    <g:textField name="city" value="${playerInstance?.city}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="email"><g:message code="player.email.label" default="Email" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: playerInstance, field: 'email', 'errors')}">
                                    <g:textField name="email" value="${playerInstance?.email}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="name"><g:message code="player.name.label" default="Name" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: playerInstance, field: 'name', 'errors')}">
                                    <g:textField name="name" value="${playerInstance?.name}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="state"><g:message code="player.state.label" default="State" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: playerInstance, field: 'state', 'errors')}">
                                    <g:textField name="state" value="${playerInstance?.state}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="website"><g:message code="player.website.label" default="Website" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: playerInstance, field: 'website', 'errors')}">
                                    <g:textField name="website" value="${playerInstance?.website}" />
                                </td>
                            </tr>
                        
                        </tbody>
                    </table>
                </div>
                <div class="buttons">
                    <span class="button"><g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" /></span>
                </div>
            </g:form>
        </div>
    </body>
</html>
