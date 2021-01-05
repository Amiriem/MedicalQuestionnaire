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
                                    <input class="input--style-4" id="email" type="email" name="email">
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
                                    <button class="btn btn--radius-2 btn--blue" id="submit-_button" onclick="submit_button_click()" type="button">Submit</button>
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

        var txtusername;
        var txtpassword;



        $(document).ready(function () {

            txtusername = document.getElementById('username');
            txtpassword = document.getElementById('password');



        });


        function submit_button_click() {


            // this is ok for user
            $.ajax({
                url: 'Default.aspx/addUser',
                contentType: 'application/json;charset=utf-8',
                method: 'post',
                data: '{user:' + JSON.stringify(userArray) + '}',
                success: function () {
                    //$("#MoneyType").val = "";
                    //$("#progress").hide();
                    alert("ok");
                    //$("#saveSuccess").show();
                    //fetchMoneyTypeData();
                },
                error: function (er) {
                    alert(er);
                    //$("#saveError").show();
                },
            });
        }


        function getDataUrl(img) {
            // Create canvas
            const canvas = document.createElement('canvas');
            const ctx = canvas.getContext('2d');
            // Set width and height
            canvas.width = img.width;
            canvas.height = img.height;
            // Draw the image
            ctx.drawImage(img, 0, 0);
            return canvas.toDataURL();

            //return canvas.toDataURL('image/jpeg');
        }


        function toDataURLs(src) {
            var image = new Image();
            image.crossOrigin = 'Anonymous';

            image.onload = function () {
                var canvas = document.createElement('canvas');
                var context = canvas.getContext('2d');
                canvas.height = this.naturalHeight;
                canvas.width = this.naturalWidth;
                context.drawImage(this, 0, 0);
                var dataURL = canvas.toDataURL('image/jpeg');
                console.log(dataURL);
                return dataURL;
            };

            image.src = src;
        }

        function makeid(length) {
            var result = '';
            var characters = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789';
            var charactersLength = characters.length;
            for (var i = 0; i < length; i++) {
                result += characters.charAt(Math.floor(Math.random() * charactersLength));
            }
            return result;
        }
        function getBase64Images(img) {
            // Create an empty canvas element
            var canvas = document.createElement("canvas");
            canvas.width = img.width;
            canvas.height = img.height;

            // Copy the image contents to the canvas
            var ctx = canvas.getContext("2d");
            ctx.drawImage(img, 0, 0);

            // Get the data-URL formatted image
            // Firefox supports PNG and JPEG. You could check img.src to
            // guess the original format, but be aware the using "image/jpg"
            // will re-encode the image.
            var dataURL = canvas.toDataURL("image/png");
            alert(dataURL);
            return dataURL.replace(/^data:image\/(png|jpg);base64,/, "");
        }
        function getBase64Image(imgElem) {
            // imgElem must be on the same server otherwise a cross-origin error will be thrown "SECURITY_ERR: DOM Exception 18"
            var canvas = document.createElement("canvas");
            canvas.width = imgElem.clientWidth;
            canvas.height = imgElem.clientHeight;
            var ctx = canvas.getContext("2d");
            ctx.drawImage(imgElem, 0, 0);
            var dataURL = canvas.toDataURL("image/png");
            return dataURL.replace(/^data:image\/(png|jpg);base64,/, "");
        }

        function _getBase64Image(img) {
            // Create an empty canvas element
            var canvas = document.createElement("canvas");
            canvas.width = img.width;
            canvas.height = img.height;
            console.log(canvas.width);
            // Copy the image contents to the canvas
            var ctx = canvas.getContext("2d");
            ctx.drawImage(img, 0, 0);

            // Get the data-URL formatted image
            // Firefox supports PNG and JPEG. You could check img.src to
            // guess the original format, but be aware the using "image/jpg"
            // will re-encode the image.
            var dataURL = canvas.toDataURL("image/png");

            return dataURL.replace(/^data:image\/(png|jpg);base64,/, "");
        }

            </script>

</asp:Content>
