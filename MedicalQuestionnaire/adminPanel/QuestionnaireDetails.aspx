<%@ Page Title="" Language="C#" MasterPageFile="~/adminPanel/admin.Master" AutoEventWireup="true" CodeBehind="QuestionnaireDetails.aspx.cs" Inherits="MedicalQuestionnaire.adminPanel.QuestionnaireDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

         <% var user = getUserDetails();%>
                    <% var questionnaire = getQuestionnaireDetail(); %>
    
        <div id="page-wrapper" >
            <div id="page-inner">
                <div class="row"> 
                    <div class="col-lg-12">
                     <h2><%= user.Name%> <%= user.Family%></h2>   
                    </div>
                </div>              
                     
                  <hr />
                <input type="hidden" id="moneyEditTypeID" value=""/>
                   <div class="row">
                       <div id="progress" style="display:none;">

                           <img src="../images/progress.gif"/>
                           <span > Is submiting the data</span><br />
                       </div>
                       <div class="alert-success"  id="saveSuccess" style="padding:1%;display:none;">
                           <span>It submited successfully</span><br />
                       </div>
                         <div class="alert-danger"  id="saveError"  style="padding:1%; display:none;">
                           <span">Error in submiting</span><br />
                       </div>
              

              <div class="col-lg-12">
                   
                <div class="col-lg-6" id="scopeTitle">
                         <label style="font-weight: bold;">Name :   </label>
                        <label style="font-weight: normal;" ><%= user.Name%></label>

                    <div >
                        <label style="font-weight: bold;">Family :  </label>
                        <label style="font-weight: normal;"><%= user.Family%></label>
                        </div>
                    <div >
                        <label style="font-weight: bold;">MedicareNumber :  </label>
                        <label style="font-weight: normal;" ><%= user.MedicareNumber%></label>
                        </div>
                       <div >
                        <label style="font-weight: bold;">Gender :  </label>
                        <label style="font-weight: normal;"  ><%= user.Gender%></label>
                        </div>
                       <div >
                        <label style="font-weight: bold;">Birthday :  </label>
                        <label style="font-weight: normal;" ><%= user.Birthday%></label>
                        </div>
                    <div>
                     <label style="font-weight: bold;">Email :  </label>
                        <label style="font-weight: normal;" ><%= user.Email%></label>
                        </div>
                   <div>
                    <label style="font-weight: bold;">ExpirationDate :  </label>
                        <label  style="font-weight: normal;"><%= user.ExpirationDate%></label>
                       </div>
                    <div>
                     <label style="font-weight: bold;" >PhoneNumber :  </label>
                        <label style="font-weight: normal;"><%= user.PhoneNumber%></label>
                        </div>

                     <div>
                         <br />
                     <label style="font-weight: bold;" >Questionnaire Date :  </label>
                        <label style="font-weight: normal;"><%= questionnaire.Date%></label>
                        </div>
                          <div>
                      <label style="font-weight: bold;" >Questionnaire Language :  </label>
                        <label style="font-weight: normal;"><%= questionnaire.LanguageType%></label>
                        </div>
                    <br />
                    <br />
                     <div>
<%--                     <label style="font-weight: bold;" >PhoneNumber :  </label>--%>
<%--                        <label style="font-weight: normal;" id="answercontent"></label>--%>
<%--                         <span> style="font-weight: normal;"><%= questionnaire.QuestionnaireAnswer%></span>--%>
<%--              <asp:Label ID="Label2" runat="server" Text="<%=questionnaire.QuestionnaireAnswer %>"></asp:Label>--%>
<%--                    <asp:Label ID="Label1" runat="server" Text="<%=questionnaire.QuestionnaireAnswer%>"></asp:Label>--%>
                         <asp:Label ID="Answercontent" runat="server" Width="800" Height="600"></asp:Label>
                        </div>
                    <div class="row" >

                    <div class="col col-lg-12" id="scopeMoneyTypeData" style="margin-top:3%;"> 

                      
                    </div>
                    <%string urlMediacalFile = "../" + questionnaire.ReferralImage; 
                     string urlReferalFile = "../" + questionnaire.ReferralImage; %>

                    <br />
                    <br />

                        <div> 
                    <label style="font-weight: bold;" >MedicalFiles :  </label>
                                                <br />
                     <img src="<%=urlMediacalFile%>" width="480" style="padding-left: 50px;" class="img-responsive" />
                         </div>
                                                                  <br />

                      <div> 
                      <label style="font-weight: bold;" >ReferalFiles :  </label> 
                                              <br />
              <img src="<%=urlReferalFile%>" width="480" style="padding-left: 50px;" class="img-responsive" />
                       </div>
                              </div>
                              </div>
                </div>
              </div>
    </div>
    </div>               
                <script type="text/javascript"  >

                    $(document).ready(function () {


<%-- var a = '<%=questionnaire.QuestionnaireAnswer%>';--%>

                  //      document.getElementById('answercontent').val('<%=questionnaire.QuestionnaireAnswer%>');

                        //document.getElementById('answercontent').innerHTML = a;
                    //    document.getElementById('answercontent').innerHTML = 'dfuhuh0';
                     });



                    function showQuestionnaires(data) {
                        alert('ok');
                        $("#scopeMoneyTypeData").html("");
                        var tableContent = "";
                        tableContent += '<table class="table table-boardered table-hover" style="text-align:center;direction:ltr;">';
                        tableContent += '<tr style="font-weight:bold; background-color:darkseagreen">  <td> Row</td>  <td> Name</td> <td> Family</td> <td> Medical Number</td> <td> Medical Number</td> </tr >';
                        alert(data.d[0].Name);
                        for (var i = 0; i < data.d.length; i++) {
                            var j = i + 1;
                            //tableContent += '<tr> <td> ' + j + '</td> <td> ' + data.d[i].Name + '</td> <td> ' + data.d[i].Family + '</td> <td> ' + data.d[i].MedicareNumber + '</td> <td> <i class="glyphicon glyphicon-remove" style="color: red;cursor:pointer;" onclick="removeMoneyType(' + data.d[i].ID + ');"></i> &nbsp; <i class="glyphicon glyphicon-edit" style="color:green;cursor:pointer;" onclick="clickEditMoneyType(' + data.d[i].ID + ",'" + data.d[i].Name + "'" + '); "> </i> </td> </tr>';
                            tableContent += '<tr> <td> ' + '<i class="glyphicon glyphicon-edit" style="color: red;cursor:pointer;" onclick="clickUser(' + data.d[i].ID + ');"></i>' + j + '</td> <td> ' + data.d[i].Name + '</td> <td> ' + data.d[i].Family + '</td> <td> ' + data.d[i].MedicareNumber + '</td> <td> <i class="glyphicon glyphicon-remove" style="color: red;cursor:pointer;" onclick="removeUser(' + data.d[i].ID + ');"></i></td> </tr>';
                        }
                        tableContent += '</table>';
                        $("#scopeMoneyTypeData").html(tableContent);


                    }



                    function fetchUserData() {

                        $.ajax({
                            url: 'DataReceive.aspx/readUsersData',
                            contentType: 'application/json;charset=utf-8',
                            method: 'post',
                            data: {},
                            success: function (data) {
                                alert('ok');

                                //alert(data.d[0].Name);

                                $("#scopeMoneyTypeData").html("");
                                var tableContent = "";
                                tableContent += '<table class="table table-boardered table-hover" style="text-align:center;direction:ltr;">';
                                tableContent += '<tr style="font-weight:bold; background-color:darkseagreen">  <td> Row</td>  <td> Name</td> <td> Family</td> <td> Medical Number</td> <td> Medical Number</td> </tr >';
                                alert(data.d[0].Name);
                                for (var i = 0; i < data.d.length; i++) {
                                    var j = i + 1;
                                    //tableContent += '<tr> <td> ' + j + '</td> <td> ' + data.d[i].Name + '</td> <td> ' + data.d[i].Family + '</td> <td> ' + data.d[i].MedicareNumber + '</td> <td> <i class="glyphicon glyphicon-remove" style="color: red;cursor:pointer;" onclick="removeMoneyType(' + data.d[i].ID + ');"></i> &nbsp; <i class="glyphicon glyphicon-edit" style="color:green;cursor:pointer;" onclick="clickEditMoneyType(' + data.d[i].ID + ",'" + data.d[i].Name + "'" + '); "> </i> </td> </tr>';
                                    tableContent += '<tr> <td> ' + '<i class="glyphicon glyphicon-edit" style="color: red;cursor:pointer;" onclick="clickUser(' + data.d[i].ID + ');"></i>' + j + '</td> <td> ' + data.d[i].Name + '</td> <td> ' + data.d[i].Family + '</td> <td> ' + data.d[i].MedicareNumber + '</td> <td> <i class="glyphicon glyphicon-remove" style="color: red;cursor:pointer;" onclick="removeUser(' + data.d[i].ID + ');"></i></td> </tr>';
                                }
                                tableContent += '</table>';
                                $("#scopeMoneyTypeData").html(tableContent);

                            },
                            error: function (er) {
                                alert(er);
                            },


                        });

                    }
                    function clickQuestionnaire(userId) {

                        alert(userId);
                        window.open("UserDetails.aspx?pid=" + userId, "_blank");
                    }
                    function addMoneyType() {
                        var txtMoneyType = $("#MoneyType").val();
                        if (txtMoneyType == "") {

                            $("#scopeTitle").attr("class", "col-lg-6 has-error");
                            $("#validateText").css({ "display": "block" });
                            return false;
                        }
                        else {
                            $("#progress").show();
                            var moneyArray = {};
                            moneyArray.moneyType1 = $("#MoneyType").val();
                            $.ajax({
                                url: 'MoneyTypePage.aspx/addMoneyType',
                                contentType: 'application/json;charset=utf-8',
                                method: 'post',
                                data: '{moneyType:' + JSON.stringify(moneyArray) + '}',
                                success: function () {
                                    $("#MoneyType").val = "";
                                    $("#progress").hide();
                                    //alert("ok");
                                    $("#saveSuccess").show();
                                    fetchUserData();
                                },
                                error: function (er) {
                                    //alert(er);
                                    $("#saveError").show();
                                },


                            });
                        }
                    }
                    function insertChar() {
                        $("#scopeTitle").attr("class", "col-lg-6");
                        $("#validateText").css({ "display": "none" });
                        return false;
                    }
                    function removeQuestionnaire(id) {
                        if (confirm("Are you sure for deleting this Questionnaire?")) {

                            $.ajax({
                                url: 'MoneyTypePage.aspx/removeUser',
                                contentType: 'application/json;charset=utf-8',
                                method: 'post',
                                data: '{userId:' + id + '}',
                                success: function () {
                                    fetchUserData();
                                },
                                error: function (er) {
                                    alert(er);
                                },


                            });
                        }
                        else
                            return false;

                    }
                    function clickEditMoneyType(id, moneyType) {

                        $("#MoneyType").val(moneyType);
                        $("#divBtnAdd").hide();
                        $("#divBtnEdit").show();
                        $("#moneyEditTypeID").val(id);

                        //  alert(moneyType);   

                    }
                    function editMoneyType() {
                        console.log("heooo");

                        var title = $("#MoneyType").val();
                        var id = $("#moneyEditTypeID").val();

                        console.log("heooo2");
                        console.log("t : " + title + "  " + id);

                        console.log(id);


                        $.ajax({
                            url: 'MoneyTypePage.aspx/editMoneyType',
                            contentType: 'application/json;charset=utf-8',
                            method: 'post',
                            data: JSON.stringify({ moneyTypeId: id, moneyTypeTitle: title }),
                            success: function () {
                                fetchUserData();

                                $("#MoneyType").val("");
                                $("#divBtnAdd").show();
                                $("#divBtnEdit").hide();
                                $("#moneyEditTypeID").val("");
                            },
                            error: function (er) {
                                alert(er);
                            },


                        });
                    }
                </script>
</asp:Content>
