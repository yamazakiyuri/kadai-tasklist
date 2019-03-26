<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:import url="../layout/app.jsp">
    <c:param name="content">
        <c:choose>
            <c:when test="${task != null}">
        <h2>id : ${task.id}のタスク詳細ページ</h2>

        <table>
            <tbody>
                <tr>
                    <th>作成日時</th>
                    <td><c:out value="${task.created_at}" /></td>
                </tr>
                <tr>
                    <th>更新日時</th>
                    <td><c:out value="${task.updated_at}" /></td>
                </tr>
                <tr>
                    <th>タスクの内容</th>
                    <td><c:out value="${task.content}" /></td>
                </tr>
            </tbody>
        </table>

        <p><a href="${pageContext.request.contextPath}/index">一覧に戻る</a></p>
        <p><a href="${pageContext.request.contextPath}/edit?id=${task.id}">このタスクを編集する</a></p>

    </c:when>
        <c:otherwise>
          <h2>お探しのデータは見つかりませんでした。</h2>
         <p><a href="${pageContext.request.contextPath}/index">一覧に戻る</a></p>
        </c:otherwise>
      </c:choose>
    </c:param>
</c:import>