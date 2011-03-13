<html>
    <head>
        <title>Welcome to Grails</title>
        <meta name="layout" content="main" />
    </head>
    <body>
        <div id="pageBody">
            <ul id="top-level-menu">
                <li class="big-button" id="btn-score-match">Score Match</li>
                <li class="big-button" id="btn-results">Results</li>
            </ul>
            <div id="controllerList" class="dialog">
                <h2>Available Controllers:</h2>
                <ul>
                    <g:each var="c" in="${grailsApplication.controllerClasses.sort { it.fullName } }">
                        <li class="controller"><g:link controller="${c.logicalPropertyName}">${c.fullName}</g:link></li>
                    </g:each>
                </ul>
            </div>
        </div>
    </body>
</html>
