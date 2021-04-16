<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="Confirmation.aspx.cs" Inherits="MedicalQuestionnaire.Confirmation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="page-wrapper bg-gra-02 p-t-130 p-b-100 font-poppins">
        <div class="wrapper wrapper--w780">
            <div class="card card-4">
                <div class="card-body" id="questionnaire_format">
                    <h2 class="title">Your Questionnaire Successfully Recieved</h2>
                    <form method="POST">
                        <div class="row row-space">
                           <label class="label">Thank you for filling the questionnaire, please return the tablet to the secretary</label>
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

      //      txtpassword1 = document.getElementById('password1');
        //    txtpassword2 = document.getElementById('password2');



        });


        function submit_button_click(userId) {


            if (txtpassword2.value != txtpassword1.value) {

                alert("The password you Entered is not the same!");
            }
            else {

                var login = {};


                login.UserId = userId;
                login.Password = txtpassword1.value;
             //   alert(login.Username);
             //   alert(login.UserId);

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
