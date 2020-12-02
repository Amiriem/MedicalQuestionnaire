<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="MedicalQuestionnaire.Default1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="page-wrapper bg-gra-02 p-t-130 p-b-100 font-poppins">
        <div class="wrapper wrapper--w780">
            <div class="card card-4">
                <div class="card-body">
                    <h2 class="title">Background Information</h2>
                    <form method="POST">
                        <div class="row row-space">
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">first name</label>
                                    <input class="input--style-4" type="text" id="first_name" name="first_name">
                                </div>
                            </div>
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">last name</label>
                                    <input class="input--style-4" type="text" id="last_name" name="last_name">
                                </div>
                            </div>
                        </div>
                        <div class="row row-space">
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">Birthday</label>
                                    <div class="input-group-icon">
                                        <input class="input--style-4 js-datepicker" type="text" id="birthday" name="birthday">
                                        <i class="zmdi zmdi-calendar-note input-icon js-btn-calendar"></i>
                                    </div>
                                </div>
                            </div>
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">Gender</label>
                                    <div class="p-t-10">
                                        <label class="radio-container m-r-45">
                                            Male
                                            <input type="radio" checked="checked" id="gender" name="gender">
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
                        <div class="row row-space">
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">Medicare Number</label>
                                    <input class="input--style-4" type="text" id="medicare_number" name="medicare_number">
                                </div>
                            </div>
                            <div class="col-2" style="padding-top: 40px;">
                                <label class="radio-container">
                                    Yes
                                        <input type="radio" id="yes_medicare_card" checked="checked" name="_medicare_card" onclick="yes_medicare_card_changed(this)">
                                    <span class="checkmark"></span>
                                </label>
                                <label class="radio-container">
                                    No Medicare Card
                                        <input type="radio" id="no_medicare_card" name="_medicare_card" onclick="no_medicare_card_changed(this)">
                                    <span class="checkmark"></span>
                                </label>
                            </div>
                        </div>
                        <div class="row row-space">
                            <div class="col-2 m-r-45">
                                <div class="input-group">
                                    <label class="label">Email</label>
                                    <input class="input--style-4" type="email" name="email">
                                </div>
                            </div>
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">Phone Number</label>
                                    <input class="input--style-4" type="text" name="phone">
                                </div>
                            </div>
                        </div>
                        <div class="input-group">
                            <label class="label">Subject</label>
                            <div class="rs-select2 js-select-simple select--no-search">
                                <select name="subject">
                                    <option disabled="disabled" selected="selected">Choose option</option>
                                    <option>Subject 1</option>
                                    <option>Subject 2</option>
                                    <option>Subject 3</option>
                                </select>
                                <div class="select-dropdown"></div>
                            </div>
                        </div>
                        <div class="input-group">
                            <label class="label">Subject</label>
                            <div class="rs-select2 js-select-simple select--no-search">
                                <select name="subject">
                                    <option disabled="disabled" selected="selected">Choose option</option>
                                    <option>Subject 1</option>
                                    <option>Subject 2</option>
                                    <option>Subject 3</option>
                                </select>
                                <div class="select-dropdown"></div>
                            </div>
                        </div>
                        <div class="p-t-15">
                            <button class="btn btn--radius-2 btn--blue" type="submit">Submit</button>
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

        $(document).ready(function () {

            // alert();
        });

        function no_medicare_card_changed(termsCheckBox) {

            if (termsCheckBox.checked) {
                $("#medicare_number").prop("disabled", true);
                $("#medicare_number").prop("style", "background-color: #D3D3D3;");
                $("#medicare_number").val("");
            } else {
                $("#medicare_number").prop("disabled", false);
                $("#medicare_number").prop("style", "background-color: #fafafa;");
            }
        }
        function yes_medicare_card_changed(termsCheckBox) {

            if (termsCheckBox.checked) {
                $("#medicare_number").prop("disabled", false);
                $("#medicare_number").prop("style", "background-color: #fafafa;");
            } else {
                $("#medicare_number").prop("disabled", true);
                $("#medicare_number").prop("style", "background-color: #D3D3D3;");
                $("#medicare_number").val("");
            }
        }

    </script>

</asp:Content>
