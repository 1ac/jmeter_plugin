<%@ taglib prefix="stats" tagdir="/WEB-INF/tags/graph" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--@elvariable id="jmeterGraphs" type="java.util.Collection<jmeter_runner.server.build_statistics.types.JMCompositeVT>"--%>

<script type="text/javascript">
    <%--example only--%>
    BS.Chart.Styles.bar = {
        series: {
            stack : true,
            line: {show: true, fill: true, step: false}
        }
    }
</script>

<c:forEach items="${jmeterGraphs}" var="graph">
    <stats:buildGraph id="${graph.key}" valueType="${graph.key}" defaultFilter="showFailed" height="200" width="1000"/>
</c:forEach>
