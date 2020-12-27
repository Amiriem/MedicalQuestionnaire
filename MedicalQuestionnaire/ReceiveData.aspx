<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="ReceiveData.aspx.cs" Inherits="MedicalQuestionnaire.ReceiveData" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="page-wrapper bg-gra-02 p-t-130 p-b-100 font-poppins">
        <div class="wrapper wrapper--w780">
            <div class="card card-4">
                <div class="card-body">
                    <h2 class="title">Receive Patients Information</h2>
                    <form method="POST">
                        <div class="row row-space">                        
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">Gender</label>
                                    <div class="p-t-10">
                                        <label class="radio-container m-r-45">
                                            Male
                                            <input type="radio" checked="checked" id="gender_Male" name="gender">
                                            <span class="checkmark"></span>
                                        </label>
                                        <label class="radio-container">
                                            Female
                                            <input type="radio" id="gender_Female" name="gender">
                                            <span class="checkmark"></span>
                                        </label>
                                        <label class="radio-container">
                                            Other/Prefer not to answer
                                            <input type="radio" id="gender_Other" name="gender">
                                            <span class="checkmark"></span>
                                        </label>
                                    </div>
                                </div>
                            </div>
                        </div>

                         
                                <div class="p-t-15">
                                    <br />
                                    <br />
                                    <button class="btn btn--radius-2 btn--blue" id="submit-_button" onclick="download_button_click()" type="button">Download</button>
                                    <%--<asp:RadioButton ID="Submit_Button" runat="server" Text="Button" OnCheckedChanged="Submit_Button_CheckedChanged" />--%>
<%--                                    <asp:Button ID="Submit_Button" runat="server" Style="display: none;" Text="Button" OnClick="btnSubmitButton_Click" />--%>
                                    <asp:Button ID="DownloadButton" runat="server" Text="Button" OnClick="btnDownloadButton_Click"/>
                                    <asp:Panel ID="panelPDF" runat="server"></asp:Panel>
                                </div>
                    </form>
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

        function download_button_click() {


            alert("ok");


            $.ajax({
                url: 'ReceiveData.aspx/CreatePDF',
                contentType: 'application/json;charset=utf-8',
                method: 'post',
                //processData: false,
                //data: '{questionnaireForm:' + JSON.stringify(questionnaireArray) + '}',
                success: function () {
                    //$("#MoneyType").val = "";
                    //$("#progress").hide();
                    alert("success");
                    //$("#saveSuccess").show();
                    //fetchMoneyTypeData();
                },
                error: function (er) {
                    alert('error');
                    //$("#saveError").show();
                },

            });
        }

    </script>

</asp:Content>
