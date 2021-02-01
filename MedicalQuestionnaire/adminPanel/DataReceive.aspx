<%@ Page Title="" Language="C#" MasterPageFile="~/adminPanel/admin.Master" AutoEventWireup="true" CodeBehind="DataReceive.aspx.cs" Inherits="MedicalQuestionnaire.adminPanel.DataReceive" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    
          <div id="okta-login-container"></div>

        <div id="page-wrapper" style="display: none;">
            <div id="page-inner">
                <div class="row"> 
                    <div class="col-lg-12">
                     <h2>Patients Information</h2>   
                    </div>
                </div>              
                     
                  <hr />
<%--                <input type="hidden" id="moneyEditTypeID" value=""/>
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
                       </div>--%>
<%--              <div class="col-lg-12">
                   
                <div class="col-lg-6" id="scopeTitle">
                    <label for="MoneyType"></label>
                    <input type="text" id="MoneyType" class ="form-control" placeholder="Search" onkeypress="insertChar();"/>
                    <span class="help-block" id="validateText" style="display:none;">Please fill the money type here</span>

                                    </div>--%>

              <%--        <div class="col-lg-2" id="divBtnAdd">
                    <label for="btnAddMoneyType"></label>
                    <input type="button" id="btnAddMoneyType" value="Submit" class ="btn-info form-control" onclick="addMoneyType();"/>
                                        </div>
                     <div class="col-lg-2">
                     <label for="BtnCancle"></label>
                    <input type="button" id="BtnCancle" value="Cancel" class ="btn-warning form-control" onclick="this.CountryTitle.reset(); return false;"/>
                                       </div>

                           <div class="col-lg-2"  id="divBtnEdit" style="display:none;">
                    <label for="btneEditMoneyType"></label>
                    <input type="button" id="btnEditMoneyType" value="Edit" class ="btn-info form-control" onclick="editMoneyType();"/>

                 --%>

            <%--  </div>

              </div>
              </div>--%>

                <div class="row" >

                    <div class="col col-lg-12" id="scopeMoneyTypeData" style="margin-top:3%;"> 

                      
                    </div>
                </div>
              </div>
              </div>

      <!-- widget stuff here -->
    <script src="https://ok1static.oktacdn.com/assets/js/sdk/okta-signin-widget/2.16.0/js/okta-sign-in.min.js" type="text/javascript"></script>
    <link href="https://ok1static.oktacdn.com/assets/js/sdk/okta-signin-widget/2.16.0/css/okta-sign-in.min.css" type="text/css" rel="stylesheet"/>
    <link href="https://ok1static.oktacdn.com/assets/js/sdk/okta-signin-widget/2.16.0/css/okta-theme.css" type="text/css" rel="stylesheet"/>

                <script type="text/javascript"  >


                    var oktaSignIn = new OktaSignIn({
                        baseUrl: "https://dev-08164427.okta.com",
                        clientId: "0oa4of8n37ZbL3Ypx5d6",
                        authParams: {
                            issuer: "https://dev-08164427.okta.com/oauth2/default",
                            responseType: ['token', 'id_token'],
                            display: 'page'
                        }
                    });

                    if (oktaSignIn.token.hasTokensInUrl()) {
                        oktaSignIn.token.parseTokensFromUrl(
                            // If we get here, the user just logged in.
                            function success(res) {
                                var accessToken = res[0];
                                var idToken = res[1];

                                oktaSignIn.tokenManager.add('accessToken', accessToken);
                                oktaSignIn.tokenManager.add('idToken', idToken);

                                window.location.hash = '';
                              //  document.getElementById("messageBox").innerHTML = "Hello, " + idToken.claims.email + "! You just logged in! :)";
                                console.log('You just logged in! ');

                                $("#page-wrapper").show();
                                fetchUserData();

                            },
                            function error(err) {
                                console.log('1 error ' + err);
                                $("#page-wrapper").hide();

                                console.log(err);
                            }
                        );
                    } else {
                        oktaSignIn.session.get(function (res) {
                            console.log('1 You are *still* logged in! ' + res.status);
                            // If we get here, the user is already signed in.
                            if (res.status === 'ACTIVE') {
                                console.log('message');
                               // document.getElementById("messageBox").innerHTML = "Hello, " + res.login + "! You are *still* logged in! :)";
                                console.log('You are *still* logged in!');
                                $("#page-wrapper").show();
                                fetchUserData();
                                return;
                            }
                            oktaSignIn.renderEl(
                                { el: '#okta-login-container' },
                                function success(res) {
                                    console.log('1 success ' + res);

                                },
                                function error(err) {
                                    console.log('error ' + err);
                                    $("#page-wrapper").hide();
                                    console.log(err);
                                }
                            );
                        });
                    }


                    $(document).ready(function () {
                        // alert();

                       // fetchUserData();
                    //    $("#page-wrapper").hide();

                    });

                    function fetchUserData() {

                        $.ajax({
                            url: 'DataReceive.aspx/readUsersData',
                            contentType: 'application/json;charset=utf-8',
                            method: 'post',
                            data: {},
                            success: function (data) {

                              //  alert(data.d.length);

                                $("#scopeMoneyTypeData").html("");
                                var tableContent = "";
                                tableContent += '<table class="table table-boardered table-hover" style="text-align:center;direction:ltr;">';
                                tableContent += '<tr style="font-weight:bold; background-color:darkseagreen">  <td> Row</td>  <td> Name</td> <td> Family</td> <td> Medical Number</td> <td> Medical Number</td> </tr >';
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
                    function clickUser(userId) {

                        //alert(userId);
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
                    function removeUser(id) {
                        if (confirm("Are you sure for deleting this user?")) {

                            $.ajax({
                                url: 'DataReceive.aspx/removeUser',
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
