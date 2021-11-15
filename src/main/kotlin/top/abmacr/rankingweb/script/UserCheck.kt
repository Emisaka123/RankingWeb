package top.abmacr.rankingweb.script

import top.abmacr.rankingweb.dao.UserDao
import top.abmacr.rankingweb.database.DatabaseUtil
import javax.servlet.annotation.WebServlet
import javax.servlet.http.HttpServlet
import javax.servlet.http.HttpServletRequest
import javax.servlet.http.HttpServletResponse

@WebServlet(name = "userCheck", value = ["/userCheck"])
class UserCheck : HttpServlet() {
    public override fun doGet(request: HttpServletRequest, response: HttpServletResponse) {
        request.characterEncoding = "utf-8"
        response.characterEncoding = "utf-8"
        val action = request.getParameter("action").toString()
        when (action) {
            "updateOjId" -> updateOjId(request,response)
            "updateUserPassword" -> updateUserPassword(request,response)
        }
    }

    private fun updateOjId(request: HttpServletRequest, response: HttpServletResponse) {
        val userSno: String = request.getParameter("userSno")
        val ojName: String = request.getParameter("ojName")
        val newId: String = request.getParameter("newId")
        val out = response.writer
        if (UserDao.updateOjId(userSno,ojName,newId)) {
            out.println("<h3>ID�������</h3>")
            out.println("<h3>��ID:$newId</h3>")
        }else {
            out.println("<h3>ID����ʧ��</h3>")
        }
        out.flush()
        out.close()
    }

    private fun updateUserPassword(request: HttpServletRequest, response: HttpServletResponse) {
        val userSno: String = request.getParameter("userSno")
        val oldPassword = request.getParameter("oldPassword")
        val newPassword = request.getParameter("newPassword")
        val confirmPassword = request.getParameter("confirmPassword")
        val out = response.writer
        out.println("<h3>1$oldPassword</h3>")
        out.println("<h3>2$newPassword</h3>")
        out.println("<h3>3$confirmPassword</h3>")
        if (newPassword != confirmPassword) {
            out.println("<h3>�������ȷ�����벻ͬ��<h3>")
        }else if (UserDao.updateUserPassword(userSno,oldPassword,newPassword)) {
            out.println("<h3>����������</h3>")
        }else {
            out.println("<h3>�������ʧ��</h3>")
            out.println("<h3>��������Ϊԭ��������������δ֪ԭ��</h3>")
        }
        out.flush()
        out.close()
    }
}