<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="Password.aspx.cs" Inherits="MedicalQuestionnaire.Password" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <div class="page-wrapper bg-gra-02 p-t-130 p-b-100 font-poppins">
        <div class="wrapper wrapper--w780">
            <div class="card card-4">
                <div class="card-body" id="questionnaire_format">
                    <% var user = getUserDetails();%>
                    <h2 class="title">Create Your Account</h2>
                    <form method="POST">
                        <div class="row row-space">
                           <label class="label">The questionnaire has been submitted successfully. Please enter a password for creating your account</label>
                            <div class="col-2">
                                <div class="input-group"> 
                                     <br />
                                     <label class="label">Email</label>
                                    <input class="input--style-4" id="email" type="email" name="email" value="<%=user.Email%>">
                                </div>
                               </div>
                               </div>
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">New Password</label>
                                    <input class="input--style-4" type="password" id="password1" name="password1">
                                </div>
                            </div>
                          <div class="col-2">
                                <div class="input-group">
                                    <label class="label">Confirm New Password</label>
                                    <input class="input--style-4" type="password" id="password2" name="password2">
                                </div>
                            </div>
                          <div class="p-t-15">
                                    <br />
                                    <br />
                                    <button class="btn btn--radius-2 btn--blue" id="submit-_button" onclick="submit_button_click(<%=user.ID%>)" type="button">Submit</button>
                                    <%--<asp:RadioButton ID="Submit_Button" runat="server" Text="Button" OnCheckedChanged="Submit_Button_CheckedChanged" />--%>
<%--                                    <asp:Button ID="Submit_Button" runat="server" Style="display: none;" Text="Button" OnClick="btnSubmitButton_Click" />--%>
                                </div>
                        </div>
            </div>
        </div>
    </div>

    <!-- Jquery JS-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <!-- Vendor JS-->
    <script src="vendor/select2/select2.min.js"></script>
    <script src="vendor/datepicker/moment.min.js"></script>
    <script src="vendor/datepicker/daterangepicker.js"></script>

    <!-- Main JS-->
    <script src="js/global.js"></script>

    <script type='text/javascript' src="js/jquery.mycart.js"></script>
    <script type="text/javascript">

        var txtpassword1;
        var txtpassword2;



        $(document).ready(function () {

            txtpassword1 = document.getElementById('password1');
            txtpassword2 = document.getElementById('password2');



        });


        function submit_button_click(userId) {


            if (txtpassword2.value != txtpassword1.value) {

                alert("The password you Entered is not the same!");
            }
            else {

                var login = {};


                login.UserId = userId;
                login.Username = '<%=user.Email%>';
                login.Password = txtpassword1.value;
                alert(login.Username);
                alert(login.UserId);

                // this is ok for user
                $.ajax({
                    url: 'Password.aspx/addRegisterationPassword',
                    contentType: 'application/json;charset=utf-8',
                    method: 'post',
                    data: '{login:' + JSON.stringify(login) + '}',
                    success: function () {

                        alert("Your Account Registered Successfully");

                    },
                    error: function (er) {
                        alert(er);

                    },
                });
            }

         
        }
         
            </script>

</asp:Content>
