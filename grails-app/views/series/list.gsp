
<%@ page import="visifoos.Series" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'series.label', default: 'Series')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="default.list.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="list">
                <table>
                    <thead>
                        <tr>
                        
                            <g:sortableColumn property="id" title="${message(code: 'series.id.label', default: 'Id')}" />
                        
                            <g:sortableColumn property="description" title="${message(code: 'series.description.label', default: 'Description')}" />
                        
                            <g:sortableColumn property="endDate" title="${message(code: 'series.endDate.label', default: 'End Date')}" />
                        
                            <g:sortableColumn property="startDate" title="${message(code: 'series.startDate.label', default: 'Start Date')}" />
                        
                            <g:sortableColumn property="title" title="${message(code: 'series.title.label', default: 'Title')}" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${seriesInstanceList}" status="i" var="seriesInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${seriesInstance.id}">${fieldValue(bean: seriesInstance, field: "id")}</g:link></td>
                        
                            <td>${fieldValue(bean: seriesInstance, field: "description")}</td>
                        
                            <td><g:formatDate date="${seriesInstance.endDate}" /></td>
                        
                            <td><g:formatDate date="${seriesInstance.startDate}" /></td>
                        
                            <td>${fieldValue(bean: seriesInstance, field: "title")}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${seriesInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
