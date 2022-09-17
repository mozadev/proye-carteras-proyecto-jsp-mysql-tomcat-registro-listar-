<%-- 
    Document   : consultaCarteraManual
    Created on : 8/01/2022, 08:34:29 PM
    Author     : user
--%>

<%@page import="DAO.carteras"%>
<%@page import="java.util.ArrayList"%>
<%@page import="EMPRESA.PATRONDAO.BEAN.TipoCarteraBean"%>
<%!ArrayList<carteras> listaregion; %>
<%!ArrayList<carteras> listartipos;%>
<%listaregion = (ArrayList<carteras>) request.getAttribute("listaregion");%>
<%listartipos = (ArrayList<carteras>) request.getAttribute("listartipos");%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link   href="<%=request.getContextPath()%>/css/screen.css"  rel="stylesheet"  type="text/css"   >
        <title>Documento sin t&iacute;tulo</title>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script type="text/javascript">

            function regresar() {
                document.form.action = "<%=request.getContextPath()%>/CarteraServlet";
                document.form.method = "GET";
                document.form.opcion.value = "REGRESAR2";
                document.form.submit();
            }


            function buscar() {
                var txttipocartera1 = document.form.txttipocartera.value;


                if (txttipocartera1.length == 0) {
                    alert("Elige el tipo de Cartera por Favor");
                    document.form.txttipocartera.focus();
                    return;
                } else {
                    document.form.action = "<%=request.getContextPath()%>/CarteraServlet";
                    document.form.method = "GET";
                    document.form.opcion.value = "COMBOXBUSCAR";

                    document.form.submit();

                }

            }
            $(function () {
                $('.FondoTabla').click(function (e) {
                    if ($(this).hasClass('row-selected')) {
                        $(this).addClass('other-clic')
                    } else {
                        cleanTr()
                        $(this).addClass('row-selected')
                    }
                })


                function cleanTr() {
                    $('.row-selected').each(function (index, element) {
                        $(element).removeClass('row-selected')
                        $(element).removeClass('other-clic')
                    })
                }
            })

        </script>

    </head>

    <body>

        <form name="form">
            <input type="hidden"   name="opcion" value="">

            <table  align="center"  border="2" class="FondoTabla" >
                <tr>
                    <td colspan="5"  style="color:white;background-color:#2E468F;font-weight: 600" class="tituloTabla">Listado de Carteras Hechas a Mano</td>
                </tr>
                <tr>


                    <td class="tituloFormulario" style="color:#2E468F;font-weight: bold">Tipo :</td>
                    <td  class="tituloFormulario"><select name="txttipocartera"  class="input_text" >


                            <option  value=""  selected >------------------------</option>


                            <%  for (carteras obj2 : listartipos) {%>

                            <option  value="<%=obj2.getCODTIPOCARTERA()%>"><%=obj2.getTIPOCARTERA2()%></option>

                            <%          }         %>
                        </select>    </td>
                </tr>
                <tr>
                    <td colspan="3"  align="center">
                        <input type="button"  style="color:#2E468F;font-weight: bold" value="Buscar"  class="boton"   onclick="buscar()"/>
                    </td>
                </tr>

            </table >
            <table    align="center" border="2">
                <tr style="color:white;background-color:#2E468F;font-weight: 600" >
                    <td  class="tituloTabla">C&oacute;digo Cartera   </td>
                    <td class="tituloTabla">Descripcion</td>
                    <td class="tituloTabla">Tipo  Cartera</td>
                    <td class="tituloTabla">Precio</td>
                    <td class="tituloTabla">Fecha de Registro</td>
                </tr>

                <%   if (request.getAttribute("BUSCAR") != null) {


                %>
                <% for (carteras obj : listaregion) {%>
                <tr class="FondoTabla" >

                    <td><%=obj.getCODCARTERA()%></td>
                    <td><%=obj.getNOMCARTERA()%></td>
                    <td><%=obj.getTIPOCARTERA()%></td>
                    <td><%=obj.getPRECIO()%></td>
                    <td><%=obj.getFECHA()%></td>


                </tr>
                <%}%>
                <%}%>
                <tr>
                    <td colspan="5"  align="center">
                        <input type="button" style="color:#2E468F;font-weight: bold"  value="Regresar"  class="boton"   onclick="regresar()"/>
                    </td>
                </tr>

            </table >


        </form>
    </body>
</html>

