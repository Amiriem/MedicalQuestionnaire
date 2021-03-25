<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="MedicalQuestionnaire.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="page-wrapper bg-gra-02 p-t-130 p-b-100 font-poppins" id="Main-Form" style="pointer-events:auto ;" >

        <button class="btn btn--radius-2" type="button" style="width: 65px; margin-left: 80px" onclick="clickSpanishTranslation()">
            <img src="Images/spanish-flag.png" style="width: 65px;" />
        </button>

        <button class="btn btn--radius-2" type="button" style="width: 65px; margin-left: 40px" onclick="clickFrenchTranslation()">
            <img src="Images/french-flag.png" style="width: 65px;" />
        </button>

        <button class="btn btn--radius-2" type="button" style="width: 65px; margin-left: 40px" onclick="clickChineseTranslation()">
            <img src="Images/chinese-flag.png" style="width: 65px;" />
        </button>

        <button class="btn btn--radius-2" type="button" style="width: 65px; margin-left: 40px" onclick="clickEnglishTranslation()">
            <img src="Images/english-flag.png" style="width: 65px;" />
        </button>

       <%-- <div class="wrapper wrapper--w780">

            <label class="label" id="" style="position: fixed;">Please wait and do not close the page till </label>
        </div>--%>


        <div class="wrapper wrapper--w780">
            <div class="card card-4">
                <div class="card-body" id="questionnaire_format">
                    <h2 class="title">Background Information</h2>
                    <button class="btn">Button</button>

                    <form method="POST">
                        <div class="row row-space">
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label" id="first_name_text">first name</label>
                                    <input class="input--style-4" type="text" id="first_name" name="first_name">
                                </div>
                            </div>
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label" id="last_name_text">last name</label>
                                    <input class="input--style-4" type="text" id="last_name" name="last_name">
                                </div>
                            </div>
                        </div>
                        <div class="row row-space">
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label" id="Birthday_text">Birthday</label>
                                    <div class="input-group-icon">
                                        <input class="input--style-4 js-datepicker" type="text" id="birthday" name="birthday">
                                        <i class="zmdi zmdi-calendar-note input-icon js-btn-calendar"></i>
                                    </div>
                                </div>
                            </div>
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label" id="Gender_text">Gender</label>
                                    <div class="p-t-10">
                                        <label class="radio-container m-r-45">
                                            <label id="Male_text">Male</label>
                                            <input type="radio" checked="checked" id="gender_Male" name="gender">
                                            <span class="checkmark"></span>
                                        </label>
                                        <label class="radio-container">
                                            <label id="Female_text">Female</label>
                                            <input type="radio" id="gender_Female" name="gender">
                                            <span class="checkmark"></span>
                                        </label>
                                        <label class="radio-container">
                                            <label id="Other_gender_text">Other/Prefer not to answer</label>
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
                                    <label class="label" id="MedicareNumber_text">Medicare Number</label>
                                    <input class="input--style-4" type="text" id="medicare_number" name="medicare_number">
                                </div>
                            </div>
                            <div class="col-2" style="padding-top: 40px;">
                                <label class="radio-container">
                                    <label id="yes_medicalnumber_text">Yes</label>
                                    <input type="radio" id="yes_medicare_card" checked="checked" name="_medicare_card" onclick="yes_medicare_card_changed(this)">
                                    <span class="checkmark"></span>
                                </label>
                                <label class="radio-container" style="left: 0px;">
                                    <label id="No_medicalnumber_text">No Medicare Card</label>
                                    <input type="radio" id="no_medicare_card" name="_medicare_card" onclick="no_medicare_card_changed(this)">
                                    <span class="checkmark"></span>
                                </label>
                            </div>
                            <div class="input-group" style="display: none;" id="expiration_date_Box">
                                <label class="label" id="Expiration_Date_text">Expiration Date</label>
                                <div class="input-group-icon">
                                    <input class="input--style-4 js-datepicker" style="margin-right: 70px;" type="text" id="expiration_date" name="expiration_date">
                                    <i class="zmdi zmdi-calendar-note input-icon js-btn-calendar"></i>
                                </div>
                            </div>
                        </div>
                        <div class="row row-space">
                            <div class="col-2 m-r-45">
                                <div class="input-group">
                                    <label class="label" id="email_text">Email</label>
                                    <input class="input--style-4" id="email" type="email" name="email">
                                </div>
                            </div>
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label" id="PhoneNumber_text">Phone Number</label>
                                    <input class="input--style-4" id="phone_number" type="text" name="phone">
                                </div>
                            </div>
                        </div>

                        <div class="col-2">
                            <div class="input-group" id="family_Doctor_Box" style="display: block;">
                                <label class="label" style="width: 500px;" id="family_Doctor_text">What is the name of your family Doctor?</label>
                                <div class="rs-select2 js-select-simple select--no-search">
                                    <input class="input--style-4" type="text" id="family_Doctor" name="family_Doctor">
                                </div>
                            </div>
                        </div>

                        <div class="input-group">
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label" id="working_text">Are you working now?</label>
                                    <div class="p-t-10">
                                        <label class="radio-container m-r-45">
                                            <label id="yes_working_text">Yes</label>
                                            <input type="radio" checked="checked" id="yes_working_question" name="working_question" onclick="yes_offworking_changed(this)">
                                            <span class="checkmark"></span>
                                        </label>
                                        <label class="radio-container" style="width: 250px;">
                                            <label id="no_working_text">No; Retired</label>
                                            <input type="radio" id="no_working_question" name="working_question" onclick="no_offworking_changed(this)">
                                            <span class="checkmark"></span>
                                        </label>
                                        <label class="radio-container" style="width: 250px;">
                                            <label id="never_working_text">Never</label>
                                            <input type="radio" id="never_working_question" name="working_question" onclick="never_offworking_changed(this)">
                                            <span class="checkmark"></span>
                                        </label>
                                    </div>
                                </div>
                            </div>
                            <div class="input-group" style="display: none;" id="date_offwork_Box">
                                <label class="label" id="no_offwork_text">If no, since when have you been off work?</label>
                                <div class="input-group-icon">
                                    <input class="input--style-4 js-datepicker" style="margin-right: 70px;" type="text" id="date_offwork" name="expiration_date">
                                    <i class="zmdi zmdi-calendar-note input-icon js-btn-calendar"></i>
                                </div>
                            </div>
                            <div class="input-group" style="display: none;" id="never_offwork_Box">
                                <label class="label" id="never_work_text">If Never, Please Select One of the Following ​Options?</label>
                                <div class="rs-select2 js-select-simple select--no-search">
                                    <select name="subject" id="never_work_option">
                                        <option disabled="disabled" id="never_workoption0_text" selected="selected">----</option>
                                        <option id="never_workoption1_text" value="">Student</option>
                                        <option id="never_workoption2_text" value="">Housewife/Househusband</option>
                                        <option id="never_workoption3_text" value="">Other</option>
                                    </select>
                                    <div class="select-dropdown"></div>
                                </div>
                            </div>
                            <div class="input-group" style="display: block;" id="living_activities_Box">
                                <label class="label" id="living_profession_text">What do you do for a living/what is your profession?</label>
                                <div class="rs-select2 js-select-simple select--no-search">
                                    <select name="subject" id="living_activities">
                                        <option disabled="disabled" id="living_option_0" selected="selected">----</option>
                                        <option id="living_option_1" value="Accountant">Accountant</option>
                                        <option id="living_option_2" value="Actor/Actress">Actor/Actress</option>
                                        <option id="living_option_3" value="Architect">Architect</option>
                                        <option id="living_option_4" value="Author">Author</option>
                                        <option id="living_option_5" value="Baker">Baker</option>
                                        <option id="living_option_6" value="Bricklayer">Bricklayer</option>
                                        <option id="living_option_7" value="Bus driver">Bus driver</option>
                                        <option id="living_option_8" value="Butcher">Butcher</option>
                                        <option id="living_option_9" value="Carpenter">Carpenter</option>
                                        <option id="living_option_10" value="Cleaner">Cleaner</option>
                                        <option id="living_option_11" value="Chef/Cook">Chef/Cook</option>
                                        <option id="living_option_12" value="Dentist">Dentist</option>
                                        <option id="living_option_13" value="Doctor">Doctor</option>
                                        <option id="living_option_14" value="Refuse collector">Refuse collector</option>
                                        <option id="living_option_15" value="Electrician">Electrician</option>
                                        <option id="living_option_16" value="Engineer">Engineer</option>
                                        <option id="living_option_17" value="Factory worker">Factory worker</option>
                                        <option id="living_option_18" value="Farmer">Farmer</option>
                                        <option id="living_option_19" value="Fireman/Fire fighter">Fireman/Fire fighter</option>
                                        <option id="living_option_20" value="Fisherman">Fisherman</option>
                                        <option id="living_option_21" value="Florist">Florist</option>
                                        <option id="living_option_22" value="Gardener">Gardener</option>
                                        <option id="living_option_23" value="Hairdresser">Hairdresser</option>
                                        <option id="living_option_24" value="Journalist">Journalist</option>
                                        <option id="living_option_25" value="Lawyer">Lawyer</option>
                                        <option id="living_option_26" value="Librarian">Librarian</option>
                                        <option id="living_option_27" value="Mechanic">Mechanic</option>
                                        <option id="living_option_28" value="Model">Model</option>
                                        <option id="living_option_29" value="Nurse">Nurse</option>
                                        <option id="living_option_30" value="Optician">Optician</option>
                                        <option id="living_option_31" value="Orderly">Orderly</option>
                                        <option id="living_option_32" value="Painter">Painter</option>
                                        <option id="living_option_33" value="Pharmacist">Pharmacist</option>
                                        <option id="living_option_34" value="Photographer">Photographer</option>
                                        <option id="living_option_35" value="Pilot">Pilot</option>
                                        <option id="living_option_36" value="Plumber">Plumber</option>
                                        <option id="living_option_37" value="Politician">Politician</option>
                                        <option id="living_option_38" value="Policeman/Policewoman">Policeman/Policewoman</option>
                                        <option id="living_option_39" value="Postman">Postman</option>
                                        <option id="living_option_40" value="Real estate agent">Real estate agent</option>
                                        <option id="living_option_41" value="Scientist">Scientist</option>
                                        <option id="living_option_42" value="Secretary">Secretary</option>
                                        <option id="living_option_43" value="Soldier">Soldier</option>
                                        <option id="living_option_44" value="Tailor/Seamstress">Tailor/Seamstress</option>
                                        <option id="living_option_45" value="Taxi driver">Taxi driver</option>
                                        <option id="living_option_46" value="Teacher">Teacher</option>
                                        <option id="living_option_47" value="Veterinary doctor (Vet)">Veterinary doctor (Vet)</option>
                                        <option id="living_option_48" value="Waiter/Waitress">Waiter/Waitress</option>
                                        <option id="living_option_49" value="Other">Other</option>
                                    </select>
                                    <div class="select-dropdown"></div>
                                </div>
                            </div>
                        </div>

                        <div class="input-group" id="sport_activites_parent1">
                            <div class="input-group">
                                <label class="label" id="sports_question_text">What sports/activities do you do?</label>
                                <div class="rs-select2 js-select-simple select--no-search">
                                    <select name="subject" id="sports_activites" onchange="sports_activites_changed()">
                                        <option disabled="disabled" id="sports_option_0" selected="selected">----</option>
                                        <option id="sports_option_1" value="none">none</option>
                                        <option id="sports_option_2" value="kayaking">kayaking</option>
                                        <option id="sports_option_3" value="canoeing">canoeing</option>
                                        <option id="sports_option_4" value="cross-country skiing">cross-country skiing</option>
                                        <option id="sports_option_5" value="swimming">swimming</option>
                                        <option id="sports_option_6" value="freediving">freediving</option>
                                        <option id="sports_option_7" value="paddle boarding">paddle boarding</option>
                                        <option id="sports_option_8" value="scuba diving">scuba diving</option>
                                        <option id="sports_option_9" value="aerobics">aerobics</option>
                                        <option id="sports_option_10" value="archery">archery</option>
                                        <option id="sports_option_11" value="boxing">boxing</option>
                                        <option id="sports_option_12" value="running">running</option>
                                        <option id="sports_option_13" value="cycling">cycling</option>
                                        <option id="sports_option_14" value="skating">skating</option>
                                        <option id="sports_option_15" value="horseback riding">horseback riding</option>
                                        <option id="sports_option_16" value="kickboxing">kickboxing</option>
                                        <option id="sports_option_17" value="ultimate frisbee">ultimate frisbee</option>
                                        <option id="sports_option_18" value="walking">walking</option>
                                        <option id="sports_option_19" value="weightlifting">weightlifting</option>
                                        <option id="sports_option_20" value="wrestling">wrestling</option>
                                        <option id="sports_option_21" value="Softball">Softball</option>
                                        <option id="sports_option_22" value="baseball">baseball</option>
                                        <option id="sports_option_23" value="basketball">basketball</option>
                                        <option id="sports_option_24" value="tennis">tennis</option>
                                        <option id="sports_option_25" value="badminton">badminton</option>
                                        <option id="sports_option_26" value="bowling">bowling</option>
                                        <option id="sports_option_27" value="curling">curling</option>
                                        <option id="sports_option_28" value="soccer">soccer</option>
                                        <option id="sports_option_29" value="football">football</option>
                                        <option id="sports_option_30" value="Ski">Ski</option>
                                        <option id="sports_option_31" value="Hockey">Hockey</option>
                                        <option id="sports_option_32" value="Other">Other</option>
                                    </select>
                                    <div class="select-dropdown"></div>
                                </div>
                            </div>
                            <div class="input-group" id="parent_how_often" style="display: block;">
                                <label class="label" id="how_often_text">How often?</label>
                                <div class="rs-select2 js-select-simple select--no-search">
                                    <select name="subject" id="how_often_sports">
                                        <option disabled="disabled" id="often_option_0" selected="selected">----</option>
                                        <option id="often_option_1" value="None">None</option>
                                        <option id="often_option_2" value="Daily">Daily</option>
                                        <option id="often_option_3" value="3 times a Week">3 times a Week</option>
                                        <option id="often_option_4" value="2 times a Week">2 times a Week</option>
                                        <option id="often_option_5" value="1 time per week">1 time per week</option>
                                        <option id="often_option_6" value="2-3 times per Month">2-3 times per Month</option>
                                        <option id="often_option_7" value="Monthly">Monthly</option>
                                        <option id="often_option_8" value="Rarely">Rarely</option>
                                        <option></option>
                                    </select>
                                    <div class="select-dropdown"></div>
                                </div>
                                <br />
                                <button class="btn btn--radius-2 btn--blue" id="sport-activity-add-1" style="background: #90EE90;" onclick="add_sport_activites_parent1_click()" type="button">Add More</button>
                            </div>
                        </div>


                        <div class="input-group" id="sport_activites_parent2" style="display: none;">
                            <div class="input-group">
                                <label class="label" id="1sports_question_text">What sports/activities do you do?</label>
                                <div class="rs-select2 js-select-simple select--no-search">
                                    <select name="subject" id="1sports_activites" onchange="sports_activites_changed()">
                                        <option disabled="disabled" id="1sports_option_0" selected="selected">----</option>
                                        <option id="1sports_option_1" value="none">none</option>
                                        <option id="1sports_option_2" value="kayaking">kayaking</option>
                                        <option id="1sports_option_3" value="canoeing">canoeing</option>
                                        <option id="1sports_option_4" value="cross-country skiing">cross-country skiing</option>
                                        <option id="1sports_option_5" value="swimming">swimming</option>
                                        <option id="1sports_option_6" value="freediving">freediving</option>
                                        <option id="1sports_option_7" value="paddle boarding">paddle boarding</option>
                                        <option id="1sports_option_8" value="scuba diving">scuba diving</option>
                                        <option id="1sports_option_9" value="aerobics">aerobics</option>
                                        <option id="1sports_option_10" value="archery">archery</option>
                                        <option id="1sports_option_11" value="boxing">boxing</option>
                                        <option id="1sports_option_12" value="running">running</option>
                                        <option id="1sports_option_13" value="cycling">cycling</option>
                                        <option id="1sports_option_14" value="skating">skating</option>
                                        <option id="1sports_option_15" value="horseback riding">horseback riding</option>
                                        <option id="1sports_option_16" value="kickboxing">kickboxing</option>
                                        <option id="1sports_option_17" value="ultimate frisbee">ultimate frisbee</option>
                                        <option id="1sports_option_18" value="walking">walking</option>
                                        <option id="1sports_option_19" value="weightlifting">weightlifting</option>
                                        <option id="1sports_option_20" value="wrestling">wrestling</option>
                                        <option id="1sports_option_21" value="Softball">Softball</option>
                                        <option id="1sports_option_22" value="baseball">baseball</option>
                                        <option id="1sports_option_23" value="basketball">basketball</option>
                                        <option id="1sports_option_24" value="tennis">tennis</option>
                                        <option id="1sports_option_25" value="badminton">badminton</option>
                                        <option id="1sports_option_26" value="bowling">bowling</option>
                                        <option id="1sports_option_27" value="curling">curling</option>
                                        <option id="1sports_option_28" value="soccer">soccer</option>
                                        <option id="1sports_option_29" value="football">football</option>
                                        <option id="1sports_option_30" value="Ski">Ski</option>
                                        <option id="1sports_option_31" value="Hockey">Hockey</option>
                                        <option id="1sports_option_32" value="Other">Other</option>
                                    </select>
                                    <div class="select-dropdown"></div>
                                </div>
                            </div>
                            <div class="input-group" id="1parent_how_often" style="display: block;">
                                <label class="label" id="1how_often_text">How often?</label>
                                <div class="rs-select2 js-select-simple select--no-search">
                                    <select name="subject" id="1how_often_sports">
                                        <option disabled="disabled" id="1often_option_0" selected="selected">----</option>
                                        <option id="1often_option_1" value="None">None</option>
                                        <option id="1often_option_2" value="Daily">Daily</option>
                                        <option id="1often_option_3" value="3 times a Week">3 times a Week</option>
                                        <option id="1often_option_4" value="2 times a Week">2 times a Week</option>
                                        <option id="1often_option_5" value="1 time per week">1 time per week</option>
                                        <option id="1often_option_6" value="2-3 times per Month">2-3 times per Month</option>
                                        <option id="1often_option_7" value="Monthly">Monthly</option>
                                        <option id="1often_option_8" value="Rarely">Rarely</option>
                                        <option></option>
                                    </select>
                                    <div class="select-dropdown"></div>
                                </div>
                            </div>
                            <button class="btn btn--radius-2 btn--blue" id="sport-activity-add-2" style="background: #90EE90;" onclick="add_sport_activites_parent2_click()" type="button">Add More</button>
                            <button class="btn btn--radius-2 btn--blue" id="sport-activity-remove-2" style="background: #F08080;" onclick="remove_sport_activites_parent2_click()" type="button">Remove</button>
                        </div>

                        <div class="input-group" id="sport_activites_parent3" style="display: none;">
                            <div class="input-group">
                                <label class="label" id="2sports_question_text">What sports/activities do you do?</label>
                                <div class="rs-select2 js-select-simple select--no-search">
                                    <select name="subject" id="2sports_activites" onchange="sports_activites_changed()">
                                        <option disabled="disabled" id="2sports_option_0" selected="selected">----</option>
                                        <option id="2sports_option_1" value="none">none</option>
                                        <option id="2sports_option_2" value="kayaking">kayaking</option>
                                        <option id="2sports_option_3" value="canoeing">canoeing</option>
                                        <option id="2sports_option_4" value="cross-country skiing">cross-country skiing</option>
                                        <option id="2sports_option_5" value="swimming">swimming</option>
                                        <option id="2sports_option_6" value="freediving">freediving</option>
                                        <option id="2sports_option_7" value="paddle boarding">paddle boarding</option>
                                        <option id="2sports_option_8" value="scuba diving">scuba diving</option>
                                        <option id="2sports_option_9" value="aerobics">aerobics</option>
                                        <option id="2sports_option_10" value="archery">archery</option>
                                        <option id="2sports_option_11" value="boxing">boxing</option>
                                        <option id="2sports_option_12" value="running">running</option>
                                        <option id="2sports_option_13" value="cycling">cycling</option>
                                        <option id="2sports_option_14" value="skating">skating</option>
                                        <option id="2sports_option_15" value="horseback riding">horseback riding</option>
                                        <option id="2sports_option_16" value="kickboxing">kickboxing</option>
                                        <option id="2sports_option_17" value="ultimate frisbee">ultimate frisbee</option>
                                        <option id="2sports_option_18" value="walking">walking</option>
                                        <option id="2sports_option_19" value="weightlifting">weightlifting</option>
                                        <option id="2sports_option_20" value="wrestling">wrestling</option>
                                        <option id="2sports_option_21" value="Softball">Softball</option>
                                        <option id="2sports_option_22" value="baseball">baseball</option>
                                        <option id="2sports_option_23" value="basketball">basketball</option>
                                        <option id="2sports_option_24" value="tennis">tennis</option>
                                        <option id="2sports_option_25" value="badminton">badminton</option>
                                        <option id="2sports_option_26" value="bowling">bowling</option>
                                        <option id="2sports_option_27" value="curling">curling</option>
                                        <option id="2sports_option_28" value="soccer">soccer</option>
                                        <option id="2sports_option_29" value="football">football</option>
                                        <option id="2sports_option_30" value="Ski">Ski</option>
                                        <option id="2sports_option_31" value="Hockey">Hockey</option>
                                        <option id="2sports_option_32" value="Other">Other</option>
                                    </select>
                                    <div class="select-dropdown"></div>
                                </div>
                            </div>
                            <div class="input-group" id="2parent_how_often" style="display: block;">
                                <label class="label" id="2how_often_text">How often?</label>
                                <div class="rs-select2 js-select-simple select--no-search">
                                    <select name="subject" id="2how_often_sports">
                                        <option disabled="disabled" id="2often_option_0" selected="selected">----</option>
                                        <option id="2often_option_1" value="None">None</option>
                                        <option id="2often_option_2" value="Daily">Daily</option>
                                        <option id="2often_option_3" value="3 times a Week">3 times a Week</option>
                                        <option id="2often_option_4" value="2 times a Week">2 times a Week</option>
                                        <option id="2often_option_5" value="1 time per week">1 time per week</option>
                                        <option id="2often_option_6" value="2-3 times per Month">2-3 times per Month</option>
                                        <option id="2often_option_7" value="Monthly">Monthly</option>
                                        <option id="2often_option_8" value="Rarely">Rarely</option>
                                        <option></option>
                                    </select>
                                    <div class="select-dropdown"></div>
                                </div>
                            </div>
                            <%--                         <button class="btn btn--radius-2 btn--blue" style="background: #90EE90;" onclick="button_referral_click()" type="button">Add More</button>--%>
                            <button class="btn btn--radius-2 btn--blue" id="sport-activity-remove-3" style="background: #F08080;" onclick="remove_sport_activites_parent3_click()" type="button">Remove</button>
                        </div>

                        <%--<div class="input-group">
                            <label class="label">What is the name of your family Doctor?</label>
                            <div class="rs-select2 js-select-simple select--no-search">
                                <select name="subject" id="name_of_doctor">
                                    <option disabled="disabled" selected="selected">Choose option</option>
                                    <option>Subject 1</option>
                                    <option>Subject 2</option>
                                    <option>Subject 3</option>
                                </select>
                                <div class="select-dropdown"></div>
                            </div>
                        </div>--%>


                        <div class="input-group">
                            <label class="label" id="handwrite_text">What hand do you write with?</label>
                            <div class="rs-select2 js-select-simple select--no-search">
                                <select name="subject" id="hand_write">
                                    <option id="handwrite_option_0" disabled="disabled" selected="selected">----</option>
                                    <option id="handwrite_option_1" value="Right">Right</option>
                                    <option id="handwrite_option_2" value="Left">Left</option>
                                    <option id="handwrite_option_3" value="Ambidextrous">Ambidextrous</option>
                                </select>
                                <div class="select-dropdown"></div>
                            </div>
                        </div>
                        <div class="input-group">
                            <div class="input-group">
                                <div class="input-group">
                                    <label class="label" id="smoke_question_text">Do you smoke? </label>
                                    <div class="p-t-10">
                                        <label class="radio-container m-r-45">
                                            <label id="yes_smoke_text">Yes</label>
                                            <input type="radio" checked="checked" id="yes_smoke" name="smoke" onclick="yes_smoke_changed(this)">
                                            <span class="checkmark"></span>
                                        </label>
                                        <label class="radio-container">
                                            <label id="no_smoke_text">No</label>
                                            <input type="radio" id="no_smoke" name="smoke" onclick="no_smoke_changed(this)">
                                            <span class="checkmark"></span>
                                        </label>
                                        <%--                                    style="bottom: 25px; left: 222px;"--%>
                                        <label class="radio-container">
                                            <label id="never_smoke_text">Never</label>
                                            <input type="radio" id="never_smoke" name="smoke" onclick="never_smoke_changed(this)">
                                            <span class="checkmark"></span>
                                        </label>
                                    </div>
                                </div>
                            </div>
                            <div class="input-group" style="display: none;" id="smoke_off_Box">
                                <label class="label" id="no_since_smoke_text">If no, when did you quit smoking?</label>
                                <div class="input-group-icon">
                                    <input class="input--style-4 js-datepicker" style="margin-right: 70px;" type="text" id="smoke_off" name="smoke_off">
                                    <i class="zmdi zmdi-calendar-note input-icon js-btn-calendar"></i>
                                </div>
                            </div>

                            <div class="input-group" id="How_many_years_smoke" style="display: block;">
                                <label class="label" id="yes_years_smoke_text">If yes, for how many years?</label>
                                <div class="rs-select2 js-select-simple select--no-search">
                                    <select name="subject" id="smoke_howmany_years">
                                        <option disabled="disabled" id="yesrs_smoke_0" selected="selected">----</option>
                                        <option>1</option>
                                        <option>2</option>
                                        <option>3</option>
                                        <option>4</option>
                                        <option>5</option>
                                        <option>6</option>
                                        <option>7</option>
                                        <option>8</option>
                                        <option>9</option>
                                        <option>10</option>
                                        <option>11</option>
                                        <option>12</option>
                                        <option>13</option>
                                        <option>14</option>
                                        <option>15</option>
                                        <option>16</option>
                                        <option>17</option>
                                        <option>18</option>
                                        <option>19</option>
                                        <option>20</option>
                                        <option id="more_than_20_years" value="More than 20 years">More than 20 years</option>
                                    </select>
                                    <div class="select-dropdown"></div>
                                </div>
                            </div>
                            <div class="input-group" id="how_many_cigarettes_perday" style="display: block;">
                                <label class="label" id="cigarettes_text">How many cigarettes per day?</label>
                                <div class="rs-select2 js-select-simple select--no-search">
                                    <select name="subject" id="smoke_howmany_perday">
                                        <option disabled="disabled" id="years_smoke_0" selected="selected">----</option>
                                        <option>1</option>
                                        <option>2</option>
                                        <option>3</option>
                                        <option>4</option>
                                        <option>5</option>
                                        <option>6</option>
                                        <option>7</option>
                                        <option>8</option>
                                        <option>9</option>
                                        <option>10</option>
                                        <option>11</option>
                                        <option>12</option>
                                        <option>13</option>
                                        <option>14</option>
                                        <option>15</option>
                                        <option>16</option>
                                        <option>17</option>
                                        <option>18</option>
                                        <option>19</option>
                                        <option>20</option>
                                        <option id="more_than_1_pack" value="More than 1 Pack">More than 1 Pack</option>
                                    </select>
                                    <div class="select-dropdown"></div>
                                </div>
                            </div>
                        </div>
                        <div class="input-group">
                            <div class="input-group">
                                <div class="input-group">
                                    <label class="label" id="Drink_alcohol_text">Do you drink alcohol?</label>
                                    <div class="p-t-10">
                                        <label class="radio-container m-r-45">
                                            <label id="yes_alcohol_text">Yes</label>
                                            <input type="radio" checked="checked" id="yes_alcohol" name="alcohol" onclick="yes_alcohol_changed(this)">
                                            <span class="checkmark"></span>
                                        </label>
                                        <label class="radio-container">
                                            <label id="no_alcohol_text">No</label>
                                            <input type="radio" id="no_alcohol" name="alcohol" onclick="no_alcohol_changed(this)">
                                            <span class="checkmark"></span>
                                        </label>
                                        <%--style="bottom: 25px; left: 222px;"--%>
                                        <%--<label class="radio-container">
                                        Never
                                            <input type="radio" id="never_alcohol" name="alcohol" onclick="never_alcohol_changed(this)">
                                        <span class="checkmark"></span>
                                    </label>--%>
                                    </div>
                                </div>
                            </div>
                            <div class="input-group" style="display: none;" id="alcohol_off_Box">
                                <label class="label" id="no_since_alcohol">If no, since when have you been off work?</label>
                                <div class="input-group-icon">
                                    <input class="input--style-4 js-datepicker" style="margin-right: 70px;" type="text" id="alcohol_off" name="alcohol_off">
                                    <i class="zmdi zmdi-calendar-note input-icon js-btn-calendar"></i>
                                </div>
                            </div>

                            <div class="input-group" id="How_many_weeks_alcohol" style="display: block;">
                                <label class="label" id="yes_drinks_alcohol">If yes, how many drinks per week?</label>
                                <div class="rs-select2 js-select-simple select--no-search">
                                    <select name="subject" id="alcohol_howmany_perweek">
                                        <option disabled="disabled" id="weeks_alcohol_0" selected="selected">----</option>
                                        <option>1</option>
                                        <option>2</option>
                                        <option>3</option>
                                        <option>4</option>
                                        <option>5</option>
                                        <option>6</option>
                                        <option>7</option>
                                        <option>8</option>
                                        <option>9</option>
                                        <option>10</option>
                                        <option>11</option>
                                        <option>12</option>
                                        <option>13</option>
                                        <option>14</option>
                                        <option>15</option>
                                        <option>16</option>
                                        <option>17</option>
                                        <option>18</option>
                                        <option>19</option>
                                        <option>20</option>
                                        <option id="drinks_more_than_20" value="More than 20">More than 20</option>
                                    </select>
                                    <div class="select-dropdown"></div>
                                </div>
                            </div>
                        </div>

                        <div class="input-group">
                            <div class="input-group">
                                <label class="label" id="recreational_text">Do you take any recreational drugs or herbal/natural remedies?</label>
                                <div class="p-t-10">
                                    <label class="radio-container m-r-45">
                                        <label id="yes_recreational_text">Yes</label>
                                        <input type="radio" checked="checked" id="yes_drug" name="drug" onclick="yes_drug_changed(this)">
                                        <span class="checkmark"></span>
                                    </label>
                                    <label class="radio-container">
                                        <label id="no_recreational_text">No</label>
                                        <input type="radio" id="no_drug" name="drug" onclick="no_drug_changed(this)">
                                        <span class="checkmark"></span>
                                    </label>
                                    <label class="radio-container">
                                        <label id="never_recreational_text">Never taken</label>
                                        <input type="radio" id="never_drug" name="drug" onclick="never_drug_changed(this)">
                                        <%--style="bottom: 25px; left: 222px;"--%>
                                        <span class="checkmark"></span>
                                    </label>
                                </div>
                            </div>
                            <div class="input-group" style="display: none;" id="drug_off_Box">
                                <label class="label" id="no_since_recreational_text">If no, since when have you been off the drug?</label>
                                <div class="input-group-icon">
                                    <input class="input--style-4 js-datepicker" style="margin-right: 70px;" type="text" id="drug_off" name="alcohol_off">
                                    <i class="zmdi zmdi-calendar-note input-icon js-btn-calendar"></i>
                                </div>
                            </div>
                            <div class="input-group" id="what_drug_parent1">
                                <div class="input-group" id="what_drug" style="display: block;">
                                    <label class="label" id="recreational_what_text">If yes, Which Drug or Herbal/Natural Remedy do you Use?​</label>
                                    <div class="rs-select2 js-select-simple select--no-search">
                                        <select name="subject" id="recreationalDrug_whatDrugs">
                                            <option disabled="disabled" id="recreational_what_option_0" selected="selected">----</option>
                                            <option id="recreational_what_option_1" value="chondroitin">chondroitin</option>
                                            <option id="recreational_what_option_2" value="glucosamine">glucosamine</option>
                                            <option id="recreational_what_option_3" value="ginger">ginger</option>
                                            <option id="recreational_what_option_4" value="ginkgo biloba">ginkgo biloba</option>
                                            <option id="recreational_what_option_5" value="ginseng">ginseng</option>
                                            <option id="recreational_what_option_6" value="st-John's wort">st-John's wort</option>
                                            <option id="recreational_what_option_7" value="turmeric">turmeric</option>
                                            <option id="recreational_what_option_8" value="Canabis/Marijuana">Canabis/Marijuana</option>
                                            <option id="recreational_what_option_9" value="Stimulants (e.g. cocaine, amphetamines,methamphetamine, ecstacy [MDMA]))">Stimulants (e.g. cocaine, amphetamines,methamphetamine, ecstacy [MDMA]))</option>
                                            <option id="recreational_what_option_10" value="Opium-related painkillers (e.g. heroin,  morphine, fentanyl, oxycodone, ​dilaudid);)">Opium-related painkillers (e.g. heroin,  morphine, fentanyl, oxycodone, ​dilaudid);)</option>
                                            <option id="recreational_what_option_11" value="Hallucinogens (e.g. LSD)">Hallucinogens (e.g. LSD)</option>
                                            <option id="recreational_what_option_12" value="Benzodiazepines(e.g. ativan, valium)">Benzodiazepines(e.g. ativan, valium)</option>
                                            <option id="recreational_what_option_13" value="Ketamine">Ketamine</option>
                                            <option id="recreational_what_option_14" value="Ritalin">Ritalin</option>
                                            <option id="recreational_what_option_15" value="Other">Other</option>
                                        </select>
                                        <div class="select-dropdown"></div>
                                    </div>
                                </div>

                                <div class="input-group" id="How_many_weeks_drug" style="display: block;">
                                    <label class="label" id="yes_often_recreational_text">If yes, How often do you take the drug or herbal/natural remedies?</label>
                                    <div class="rs-select2 js-select-simple select--no-search">
                                        <select name="subject" id="recreationalDrug_howmany_perweeks">
                                            <option disabled="disabled" id="recreational_often_option_0" selected="selected">----</option>
                                            <option id="recreational_often_option_1" value="Rarely">Rarely</option>
                                            <option id="recreational_often_option_2" value="Monthly">Monthly</option>
                                            <option id="recreational_often_option_3" value="Weekly">Weekly</option>
                                            <option id="recreational_often_option_4" value="Daily">Daily</option>
                                            <option id="recreational_often_option_5" value="2 or more times per day">2 or more times per day</option>
                                        </select>
                                        <div class="select-dropdown"></div>
                                    </div>
                                    <br />
                                    <button class="btn btn--radius-2 btn--blue" id="drug-aften-add-1" style="background: #90EE90;" onclick="add_what_drug_parent1_click()" type="button">Add More</button>
                                </div>
                            </div>


                            <div class="input-group" id="what_drug_parent2" style="display: none;">
                                <div class="input-group" id="2what_drug" style="display: block;">
                                    <label class="label" id="2recreational_what_text">If yes, Which Drug or Herbal/Natural Remedy do you Use?​</label>
                                    <div class="rs-select2 js-select-simple select--no-search">
                                        <select name="subject" id="2recreationalDrug_whatDrugs">
                                            <option disabled="disabled" id="2recreational_what_option_0" selected="selected">----</option>
                                            <option id="2recreational_what_option_1" value="chondroitin">chondroitin</option>
                                            <option id="2recreational_what_option_2" value="glucosamine">glucosamine</option>
                                            <option id="2recreational_what_option_3" value="ginger">ginger</option>
                                            <option id="2recreational_what_option_4" value="ginkgo biloba">ginkgo biloba</option>
                                            <option id="2recreational_what_option_5" value="ginseng">ginseng</option>
                                            <option id="2recreational_what_option_6" value="st-John's wort">st-John's wort</option>
                                            <option id="2recreational_what_option_7" value="turmeric">turmeric</option>
                                            <option id="2recreational_what_option_8" value="Canabis/Marijuana">Canabis/Marijuana</option>
                                            <option id="2recreational_what_option_9" value="Stimulants (e.g. cocaine, amphetamines,methamphetamine, ecstacy [MDMA]))">Stimulants (e.g. cocaine, amphetamines,methamphetamine, ecstacy [MDMA]))</option>
                                            <option id="2recreational_what_option_10" value="Opium-related painkillers (e.g. heroin,  morphine, fentanyl, oxycodone, ​dilaudid);)">Opium-related painkillers (e.g. heroin,  morphine, fentanyl, oxycodone, ​dilaudid);)</option>
                                            <option id="2recreational_what_option_11" value="Hallucinogens (e.g. LSD)">Hallucinogens (e.g. LSD)</option>
                                            <option id="2recreational_what_option_12" value="Benzodiazepines(e.g. ativan, valium)">Benzodiazepines(e.g. ativan, valium)</option>
                                            <option id="2recreational_what_option_13" value="Ketamine">Ketamine</option>
                                            <option id="2recreational_what_option_14" value="Ritalin">Ritalin</option>
                                            <option id="2recreational_what_option_15" value="Other">Other</option>
                                        </select>
                                        <div class="select-dropdown"></div>
                                    </div>
                                </div>

                                <div class="input-group" id="2How_many_weeks_drug" style="display: block;">
                                    <label class="label" id="2yes_often_recreational_text">If yes, How often do you take the drug or herbal/natural remedies?</label>
                                    <div class="rs-select2 js-select-simple select--no-search">
                                        <select name="subject" id="2recreationalDrug_howmany_perweeks">
                                            <option disabled="disabled" id="2recreational_often_option_0" selected="selected">----</option>
                                            <option id="2recreational_often_option_1" value="Rarely">Rarely</option>
                                            <option id="2recreational_often_option_2" value="Monthly">Monthly</option>
                                            <option id="2recreational_often_option_3" value="Weekly">Weekly</option>
                                            <option id="2recreational_often_option_4" value="Daily">Daily</option>
                                            <option id="2recreational_often_option_5" value="2 or more times per day">2 or more times per day</option>
                                        </select>
                                        <div class="select-dropdown"></div>
                                    </div>
                                </div>
                                <button class="btn btn--radius-2 btn--blue" id="drug-aften-add-2" style="background: #90EE90;" onclick="add_what_drug_parent2_click()" type="button">Add More</button>
                                <button class="btn btn--radius-2 btn--blue" id="drug-aften-remove-2" style="background: #F08080;" onclick="remove_what_drug_parent2_click()" type="button">Remove</button>
                            </div>

                            <div class="input-group" id="what_drug_parent3" style="display: none;">
                                <div class="input-group" id="3what_drug" style="display: block;">
                                    <label class="label" id="3recreational_what_text">If yes, Which Drug or Herbal/Natural Remedy do you Use?​</label>
                                    <div class="rs-select2 js-select-simple select--no-search">
                                        <select name="subject" id="3recreationalDrug_whatDrugs">
                                            <option disabled="disabled" id="3recreational_what_option_0" selected="selected">----</option>
                                            <option id="3recreational_what_option_1" value="chondroitin">chondroitin</option>
                                            <option id="3recreational_what_option_2" value="glucosamine">glucosamine</option>
                                            <option id="3recreational_what_option_3" value="ginger">ginger</option>
                                            <option id="3recreational_what_option_4" value="ginkgo biloba">ginkgo biloba</option>
                                            <option id="3recreational_what_option_5" value="ginseng">ginseng</option>
                                            <option id="3recreational_what_option_6" value="st-John's wort">st-John's wort</option>
                                            <option id="3recreational_what_option_7" value="turmeric">turmeric</option>
                                            <option id="3recreational_what_option_8" value="Canabis/Marijuana">Canabis/Marijuana</option>
                                            <option id="3recreational_what_option_9" value="Stimulants (e.g. cocaine, amphetamines,methamphetamine, ecstacy [MDMA]))">Stimulants (e.g. cocaine, amphetamines,methamphetamine, ecstacy [MDMA]))</option>
                                            <option id="3recreational_what_option_10" value="Opium-related painkillers (e.g. heroin,  morphine, fentanyl, oxycodone, ​dilaudid);)">Opium-related painkillers (e.g. heroin,  morphine, fentanyl, oxycodone, ​dilaudid);)</option>
                                            <option id="3recreational_what_option_11" value="Hallucinogens (e.g. LSD)">Hallucinogens (e.g. LSD)</option>
                                            <option id="3recreational_what_option_12" value="Benzodiazepines(e.g. ativan, valium)">Benzodiazepines(e.g. ativan, valium)</option>
                                            <option id="3recreational_what_option_13" value="Ketamine">Ketamine</option>
                                            <option id="3recreational_what_option_14" value="Ritalin">Ritalin</option>
                                            <option id="3recreational_what_option_15" value="Other">Other</option>
                                        </select>
                                        <div class="select-dropdown"></div>
                                    </div>
                                </div>

                                <div class="input-group" id="3How_many_weeks_drug" style="display: block;">
                                    <label class="label" id="3yes_often_recreational_text">If yes, How often do you take the drug or herbal/natural remedies?</label>
                                    <div class="rs-select2 js-select-simple select--no-search">
                                        <select name="subject" id="3recreationalDrug_howmany_perweeks">
                                            <option disabled="disabled" id="3recreational_often_option_0" selected="selected">----</option>
                                            <option id="3recreational_often_option_1" value="Rarely">Rarely</option>
                                            <option id="3recreational_often_option_2" value="Monthly">Monthly</option>
                                            <option id="3recreational_often_option_3" value="Weekly">Weekly</option>
                                            <option id="3recreational_often_option_4" value="Daily">Daily</option>
                                            <option id="3recreational_often_option_5" value="2 or more times per day">2 or more times per day</option>
                                        </select>
                                        <div class="select-dropdown"></div>
                                    </div>
                                </div>
                                <button class="btn btn--radius-2 btn--blue" id="drug-aften-remove-3" style="background: #F08080;" onclick="remove_what_drug_parent3_click()" type="button">Remove</button>
                            </div>
                        </div>

                        <div class="input-group">
                            <div class="input-group">
                                <%--style="width: 500px;"--%>
                                <label class="label" id="medical_conditions_text">Do you have any of the following medical conditions?</label>
                                <div class="p-t-10" style="width: 50px;">
                                    <label id="" class="radio-container m-r-45" style="width: 150px;">
                                        <label id="medical_AIDS_or_HIV">AIDS or HIV</label>

                                        <input type="checkbox" id="AIDS_or_HIV" name="AIDS_or_HIV">
                                        <span class="checkmark"></span>
                                    </label>
                                    <label id="" class="radio-container" style="width: 400px;">
                                        <label id="medical_Alcohol_Dependency_or_Abuse">Alcohol Dependency or Abuse</label>

                                        <input type="checkbox" id="Alcohol_Dependency_or_Abuse" name="Alcohol_Dependency_or_Abuse">
                                        <span class="checkmark"></span>
                                    </label>
                                    <label id="" class="radio-container">
                                        <label id="medical_Anemia">Anemia</label>

                                        <input type="checkbox" id="Anemia" name="Anemia">
                                        <span class="checkmark"></span>
                                    </label>
                                    <label id="" class="radio-container">
                                        <label id="medical_Anxiety">Anxiety</label>

                                        <input type="checkbox" id="Anxiety" name="Anxiety">
                                        <span class="checkmark"></span>
                                    </label>
                                    <label id="" class="radio-container">
                                        <label id="medical_Arthritis">Arthritis</label>

                                        <input type="checkbox" id="Arthritis" name="Arthritis">
                                        <span class="checkmark"></span>
                                    </label>
                                    <label id="" class="radio-container" style="width: 400px;">
                                        <label id="medical_BleedingProblems">Bleeding Problems</label>

                                        <input type="checkbox" id="BleedingProblems" name="BleedingProblems" onclick="BleedingProblems_changed(this)">
                                        <span class="checkmark"></span>
                                    </label>
                                    <label id="" class="radio-container" style="width: 400px;">
                                        <label id="medical_BloodClots">Blood Clots</label>

                                        <input type="checkbox" id="BloodClots" name="BloodClots">
                                        <span class="checkmark"></span>
                                    </label>
                                    <label id="" class="radio-container">
                                        <label id="medical_Cancer">Cancer</label>

                                        <input type="checkbox" id="Cancer" name="Cancer" onclick="Cancer_changed(this)">
                                        <span class="checkmark"></span>
                                    </label>
                                    <label id="" class="radio-container">
                                        <label id="medical_Dementia">Dementia</label>

                                        <input type="checkbox" id="Dementia" name="Dementia">
                                        <span class="checkmark"></span>
                                    </label>
                                    <label id="" class="radio-container" style="width: 600px;">
                                        <label id="medical_ChronicObstructive">Chronic Obstructive Pulmonary Disease or Emphysema</label>

                                        <input type="checkbox" id="ChronicObstructive" name="ChronicObstructive">
                                        <span class="checkmark"></span>
                                    </label>
                                    <label id="" class="radio-container">
                                        <label id="medical_Depression">Depression</label>

                                        <input type="checkbox" id="Depression" name="Depression">
                                        <span class="checkmark"></span>
                                    </label>
                                    <label id="" class="radio-container" style="width: 400px;">
                                        <label id="medical_DrugDependency">Drug Dependency or Abuse</label>

                                        <input type="checkbox" id="DrugDependency" name="Drug Dependency or Abuse">
                                        <span class="checkmark"></span>
                                    </label>
                                    <label id="" class="radio-container">
                                        <label id="medical_Diabetes">Diabetes</label>

                                        <input type="checkbox" id="Diabetes" name="Diabetes">
                                        <span class="checkmark"></span>
                                    </label>
                                    <label id="" class="radio-container">
                                        <label id="medical_Gout">Gout</label>

                                        <input type="checkbox" id="Gout" name="Gout">
                                        <span class="checkmark"></span>
                                    </label>
                                    <label id="" class="radio-container" style="width: 400px;">
                                        <label id="medical_HeartDisease">Heart Disease</label>

                                        <input type="checkbox" id="HeartDisease" name="HeartDisease">
                                        <span class="checkmark"></span>
                                    </label>
                                    <label id="" class="radio-container" style="width: 400px;">
                                        <label id="medical_HeartArrythmia">Heart Arrythmia</label>

                                        <input type="checkbox" id="HeartArrythmia" name="Drug Dependency or Abuse">
                                        <span class="checkmark"></span>
                                    </label>
                                    <label id="" class="radio-container" style="width: 400px;">
                                        <label id="medical_HighCholesterol">High Cholesterol</label>

                                        <input type="checkbox" id="HighCholesterol" name="HighCholesterol">
                                        <span class="checkmark"></span>
                                    </label>
                                    <label id="" class="radio-container" style="width: 400px;">
                                        <label id="medical_HighBloodPressure">High Blood Pressure</label>

                                        <input type="checkbox" id="HighBloodPressure" name="HighBloodPressure">
                                        <span class="checkmark"></span>
                                    </label>
                                    <label id="" class="radio-container">
                                        <label id="medical_Hypothyroidism">Hypothyroidism</label>

                                        <input type="checkbox" id="Hypothyroidism" name="Hypothyroidism">
                                        <span class="checkmark"></span>
                                    </label>
                                    <label id="" class="radio-container">
                                        <label id="medical_Hyperthyroidism">Hyperthyroidism</label>

                                        <input type="checkbox" id="Hyperthyroidism" name="Hyperthyroidism">
                                        <span class="checkmark"></span>
                                    </label>
                                    <label id="" class="radio-container" style="width: 400px;">
                                        <label id="medical_KidneyDisease">Kidney Disease</label>

                                        <input type="checkbox" id="KidneyDisease" name="KidneyDisease">
                                        <span class="checkmark"></span>
                                    </label>
                                    <label id="" class="radio-container">
                                        <label id="medical_Leukemia">Leukemia</label>

                                        <input type="checkbox" id="Leukemia" name="Leukemia">
                                        <span class="checkmark"></span>
                                    </label>
                                    <label id="" class="radio-container" style="width: 400px;">
                                        <label id="medical_LiverDisease">Liver Disease</label>

                                        <input type="checkbox" id="LiverDisease" name="LiverDisease">
                                        <span class="checkmark"></span>
                                    </label>
                                    <label id="" class="radio-container">
                                        <label id="medical_Hepatitis">Hepatitis</label>

                                        <input type="checkbox" id="Hepatitis" name="Hepatitis" onclick="Hepatitis_changed(this)">
                                        <span class="checkmark"></span>
                                    </label>
                                    <label id="" class="radio-container">
                                        <label id="medical_Osteoporosis">Osteoporosis</label>

                                        <input type="checkbox" id="Osteoporosis" name="Osteoporosis">
                                        <span class="checkmark"></span>
                                    </label>
                                    <label id="" class="radio-container">
                                        <label id="medical_Pancreatitis">Pancreatitis</label>

                                        <input type="checkbox" id="Pancreatitis" name="Pancreatitis">
                                        <span class="checkmark"></span>
                                    </label>
                                    <label id="" class="radio-container" style="width: 400px;">
                                        <label id="medical_PeripheralVascularDisease">Peripheral Vascular Disease</label>

                                        <input type="checkbox" id="PeripheralVascularDisease" name="PeripheralVascularDisease">
                                        <span class="checkmark"></span>
                                    </label>
                                    <label id="" class="radio-container" style="width: 400px;">
                                        <label id="medical_Pulmonary">Pulmonary Embolism</label>

                                        <input type="checkbox" id="Pulmonary" name="Pulmonary">
                                        <span class="checkmark"></span>
                                    </label>
                                    <label id="" class="radio-container" style="width: 400px;">
                                        <label id="medical_RefluxorGERD">Reflux o ERG</label>

                                        <input type="checkbox" id="RefluxorGERD" name="RefluxorGERD">
                                        <span class="checkmark"></span>
                                    </label>
                                    <label id="" class="radio-container" style="width: 400px;">
                                        <label id="medical_Seizures">Seizures</label>

                                        <input type="checkbox" id="Seizures" name="Seizures">
                                        <span class="checkmark"></span>
                                    </label>
                                    <label id="" class="radio-container" style="width: 400px;">
                                        <label id="medical_SleepApnea">Sleep Apnea</label>

                                        <input type="checkbox" id="SleepApnea" name="SleepApnea">
                                        <span class="checkmark"></span>
                                    </label>
                                    <label id="" class="radio-container" style="width: 400px;">
                                        <label id="medical_Stroke">Stroke</label>

                                        <input type="checkbox" id="Stroke" name="Stroke">
                                        <span class="checkmark"></span>
                                    </label>
                                    <label id="" class="radio-container">
                                        <label id="medical_Other">Other</label>

                                        <input type="checkbox" id="Other" name="Other">
                                        <span class="checkmark"></span>
                                    </label>
                                </div>
                            </div>
                        </div>

                        <div class="input-group" id="bleeding_problems" style="display: none;">
                            <label class="label" id="bleeding_problems_text">Bleeding Problems. Type?</label>
                            <div class="rs-select2 js-select-simple select--no-search">
                                <select name="subject" id="bleeding_problemstypes">
                                    <option disabled="disabled" id="bleeding_option_0" selected="selected">----</option>
                                    <option id="bleeding_option_1" value="Von Willebrand Hemophilia A (Factor 8 deficiency)">Von Willebrand Hemophilia A (Factor 8 deficiency)</option>
                                    <option id="bleeding_option_2" value="Hemophilia B (Christmas disease">Hemophilia B (Christmas disease)</option>
                                    <option id="bleeding_option_3" value="Factor 5 Leiden">Factor 5 Leiden</option>
                                    <option id="bleeding_option_4" value="Factor 2 deficiency">Factor 2 deficiency</option>
                                    <option id="bleeding_option_5" value="Factor 7 deficiency">Factor 7 deficiency</option>
                                    <option id="bleeding_option_6" value="Factor 10 deficiency">Factor 10 deficiency</option>
                                    <option id="bleeding_option_7" value="Factor 12 deficiency">Factor 12 deficiency</option>
                                    <option id="bleeding_option_8" value="Other">Other</option>
                                </select>
                                <div class="select-dropdown"></div>
                            </div>
                        </div>

                        <div class="input-group" id="cancer_type" style="display: none;">
                            <label class="label" id="Cancer_type_text">Cancer. Type?</label>
                            <div class="rs-select2 js-select-simple select--no-search">
                                <select name="subject" id="cancer_problemstypes">
                                    <option disabled="disabled" id="breast_option_0" selected="selected">----</option>
                                    <option id="breast_option_1" value="Breast">Breast</option>
                                    <option id="breast_option_2" value="Prostate">Prostate</option>
                                    <option id="breast_option_3" value="Lung">Lung</option>
                                    <option id="breast_option_4" value="Colon/Colorectal">Colon/Colorectal</option>
                                    <option id="breast_option_5" value="Kidney">Kidney</option>
                                    <option id="breast_option_6" value="Bladder">Bladder</option>
                                    <option id="breast_option_7" value="Thyroid">Thyroid</option>
                                    <option id="breast_option_8" value="Lymphoma">Lymphoma</option>
                                    <option id="breast_option_9" value="Melanoma">Melanoma</option>
                                    <option id="breast_option_10" value="Endometrial">Endometrial</option>
                                    <option id="breast_option_11" value="Leukemia">Leukemia</option>
                                    <option id="breast_option_12" value="Pancreatic">Pancreatic</option>
                                    <option id="breast_option_13" value="Liver">Liver</option>
                                    <option id="breast_option_14" value="Other">Other​</option>
                                </select>
                                <div class="select-dropdown"></div>
                            </div>
                        </div>

                        <div class="input-group" id="hepatitis_type" style="display: none;">
                            <label class="label" id="Hepatitis_problem_text">Hepatitis. Type? </label>
                            <div class="rs-select2 js-select-simple select--no-search">
                                <select name="subject" id="hepatitis_problemtypes">
                                    <option disabled="disabled" id="Hepatitis_option_0" selected="selected">----</option>
                                    <option id="Hepatitis_option_1" value="Auto-immune">Auto-immune</option>
                                    <option id="Hepatitis_option_2" value="Alcohol-induced">Alcohol-induced</option>
                                    <option id="Hepatitis_option_3" value="Hepatitis A">Hepatitis A</option>
                                    <option id="Hepatitis_option_4" value="Hepatitis B – Active">Hepatitis B – Active</option>
                                    <option id="Hepatitis_option_5" value="Hepatis B - Chronic">Hepatis B - Chronic</option>
                                    <option id="Hepatitis_option_6" value="Hepatitis B – Cured">Hepatitis B – Cured</option>
                                    <option id="Hepatitis_option_7" value="Hepatitis C – Active">Hepatitis C – Active</option>
                                    <option id="Hepatitis_option_8" value="Hepatitis C – Chronic">Hepatitis C – Chronic</option>
                                    <option id="Hepatitis_option_9" value="Hepatitis C – Cured">Hepatitis C – Cured</option>
                                    <option id="Hepatitis_option_10" value="Hepatitis D">Hepatitis D</option>
                                    <option id="Hepatitis_option_11" value="Hepatitis E">Hepatitis E</option>
                                    <option id="Hepatitis_option_12" value="Fatty Liver">Fatty Liver</option>
                                    <option id="Hepatitis_option_13" value="Other">Other​</option>
                                </select>
                                <div class="select-dropdown"></div>
                            </div>
                        </div>

                        <div class="input-group">
                            <div class="input-group">
                                <label class="label" id="surgery_question_text" style="width: 200px;">Have you ever had surgery?</label>
                                <div class="p-t-10">
                                    <label class="radio-container" style="width: 500px;">
                                        <label id="yes_surgery_text">Yes</label>
                                        <input type="radio" checked="checked" id="yes_surgery" name="surgery" onclick="yes_surgery_changed(this)">
                                        <span class="checkmark"></span>
                                    </label>
                                    <label class="radio-container m-r-45" style="width: 500px;">
                                        <label id="no_surgery_text">No previous surgeries</label>
                                        <input type="radio" id="no_surgery" name="surgery" onclick="no_surgery_changed(this)">
                                        <span class="checkmark"></span>
                                    </label>
                                </div>
                            </div>

                            <div class="input-group" id="surgery_main_parent1">
                                <div class="input-group" id="surgery_names" style="display: block;">
                                    <label class="label" style="width: 500px;" id="surgery_type_text">What type of surgery?</label>
                                    <div class="rs-select2 js-select-simple select--no-search">
                                        <input class="input--style-4" type="text" id="surgerynames" name="surgerynames">
                                    </div>
                                </div>

                                <div class="input-group" style="display: block;" id="surgery_date_Box">
                                    <label class="label" style="width: 200px;" id="surgery_date_text">When was your surgery?</label>
                                    <div class="rs-select2 js-select-simple select--no-search">
                                        <select name="subject" id="surgery_date">
                                            <option disabled="disabled" id="Surgery_years_0" selected="selected">----</option>
                                            <option>2021</option>
                                            <option>2020</option>
                                            <option>2019</option>
                                            <option>2018</option>
                                            <option>2017</option>
                                            <option>2016</option>
                                            <option>2015</option>
                                            <option>2014</option>
                                            <option>2013</option>
                                            <option>2012</option>
                                            <option>2011</option>
                                            <option>2010</option>
                                            <option>2009</option>
                                            <option>2008</option>
                                            <option>2007</option>
                                            <option>2006</option>
                                            <option>2005</option>
                                            <option>2004</option>
                                            <option>2003</option>
                                            <option>2002</option>
                                            <option>2001</option>
                                            <option>2000</option>
                                            <option>1999</option>
                                            <option>1998</option>
                                            <option>1997</option>
                                            <option>1996</option>
                                            <option>1995</option>
                                            <option>1994</option>
                                            <option>1993</option>
                                            <option>1992</option>
                                            <option>1991</option>
                                            <option>1990</option>
                                            <option>1989</option>
                                            <option>1988</option>
                                            <option>1987</option>
                                            <option>1986</option>
                                            <option>1985</option>
                                            <option>1984</option>
                                            <option>1983</option>
                                            <option>1982</option>
                                            <option>1981</option>
                                            <option>1980</option>
                                            <option>1979</option>
                                            <option>1978</option>
                                            <option>1977</option>
                                            <option>1976</option>
                                            <option>1975</option>
                                            <option>1974</option>
                                            <option>1973</option>
                                            <option>1972</option>
                                            <option>1971</option>
                                            <option>1970</option>
                                            <option id="Before_1970_text" value="Before 1970">Before 1970</option>
                                        </select>
                                        <div class="select-dropdown"></div>
                                    </div>
                                    <%-- <div class="input-group-icon">
                                    <input class="input--style-4 js-datepicker" style="margin-right: 70px;" type="text" id="surgery_date" name="alcohol_off">
                                    <i class="zmdi zmdi-calendar-note input-icon js-btn-calendar"></i>
                                </div>--%>
                                </div>

                                <div class="input-group" id="surgon_name" style="display: block;">
                                    <label class="label" style="width: 500px;" id="surgeon_name_text">What was the Surgeon's name?</label>
                                    <div class="rs-select2 js-select-simple select--no-search">
                                        <input class="input--style-4" type="text" id="surgonname" name="surgonname">
                                    </div>
                                    <br />
                                    <button class="btn btn--radius-2 btn--blue" id="surgery-medical-add-1" style="background: #90EE90;" onclick="add_surgery_main_parent1_click()" type="button">Add More</button>
                                </div>
                            </div>


                            <div class="input-group" id="surgery_main_parent2" style="display: none;">
                                <div class="input-group" id="2surgery_names" style="display: block;">
                                    <label class="label" style="width: 500px;" id="2surgery_type_text">What type of surgery?</label>
                                    <div class="rs-select2 js-select-simple select--no-search">
                                        <input class="input--style-4" type="text" id="2surgerynames" name="surgerynames">
                                    </div>
                                </div>

                                <div class="input-group" style="display: block;" id="2surgery_date_Box">
                                    <label class="label" style="width: 200px;" id="2surgery_date_text">When was your surgery?</label>
                                    <div class="rs-select2 js-select-simple select--no-search">
                                        <select name="subject" id="2surgery_date">
                                            <option disabled="disabled" id="2Surgery_years_0" selected="selected">----</option>
                                            <option>2021</option>
                                            <option>2020</option>
                                            <option>2019</option>
                                            <option>2018</option>
                                            <option>2017</option>
                                            <option>2016</option>
                                            <option>2015</option>
                                            <option>2014</option>
                                            <option>2013</option>
                                            <option>2012</option>
                                            <option>2011</option>
                                            <option>2010</option>
                                            <option>2009</option>
                                            <option>2008</option>
                                            <option>2007</option>
                                            <option>2006</option>
                                            <option>2005</option>
                                            <option>2004</option>
                                            <option>2003</option>
                                            <option>2002</option>
                                            <option>2001</option>
                                            <option>2000</option>
                                            <option>1999</option>
                                            <option>1998</option>
                                            <option>1997</option>
                                            <option>1996</option>
                                            <option>1995</option>
                                            <option>1994</option>
                                            <option>1993</option>
                                            <option>1992</option>
                                            <option>1991</option>
                                            <option>1990</option>
                                            <option>1989</option>
                                            <option>1988</option>
                                            <option>1987</option>
                                            <option>1986</option>
                                            <option>1985</option>
                                            <option>1984</option>
                                            <option>1983</option>
                                            <option>1982</option>
                                            <option>1981</option>
                                            <option>1980</option>
                                            <option>1979</option>
                                            <option>1978</option>
                                            <option>1977</option>
                                            <option>1976</option>
                                            <option>1975</option>
                                            <option>1974</option>
                                            <option>1973</option>
                                            <option>1972</option>
                                            <option>1971</option>
                                            <option>1970</option>
                                            <option id="2Before_1970_text" value="Before 1970">Before 1970</option>
                                        </select>
                                        <div class="select-dropdown"></div>
                                    </div>
                                </div>

                                <div class="input-group" id="2surgon_name" style="display: block;">
                                    <label class="label" style="width: 500px;" id="2surgeon_name_text">What was the Surgeon's name?</label>
                                    <div class="rs-select2 js-select-simple select--no-search">
                                        <input class="input--style-4" type="text" id="2surgonname" name="surgonname">
                                    </div>
                                </div>
                                <button class="btn btn--radius-2 btn--blue" id="surgery-medical-add-2" style="background: #90EE90;" onclick="add_surgery_main_parent2_click()" type="button">Add More</button>
                                <button class="btn btn--radius-2 btn--blue" id="surgery-medical-remove-2" style="background: #F08080;" onclick="remove_surgery_main_parent2_click()" type="button">Remove</button>
                            </div>


                            <div class="input-group" id="surgery_main_parent3" style="display: none;">
                                <div class="input-group" id="3surgery_names" style="display: block;">
                                    <label class="label" style="width: 500px;" id="3surgery_type_text">What type of surgery?</label>
                                    <div class="rs-select2 js-select-simple select--no-search">
                                        <input class="input--style-4" type="text" id="3surgerynames" name="surgerynames">
                                    </div>
                                </div>

                                <div class="input-group" style="display: block;" id="3surgery_date_Box">
                                    <label class="label" style="width: 200px;" id="3surgery_date_text">When was your surgery?</label>
                                    <div class="rs-select2 js-select-simple select--no-search">
                                        <select name="subject" id="3surgery_date">
                                            <option disabled="disabled" id="3Surgery_years_0" selected="selected">----</option>
                                            <option>2021</option>
                                            <option>2020</option>
                                            <option>2019</option>
                                            <option>2018</option>
                                            <option>2017</option>
                                            <option>2016</option>
                                            <option>2015</option>
                                            <option>2014</option>
                                            <option>2013</option>
                                            <option>2012</option>
                                            <option>2011</option>
                                            <option>2010</option>
                                            <option>2009</option>
                                            <option>2008</option>
                                            <option>2007</option>
                                            <option>2006</option>
                                            <option>2005</option>
                                            <option>2004</option>
                                            <option>2003</option>
                                            <option>2002</option>
                                            <option>2001</option>
                                            <option>2000</option>
                                            <option>1999</option>
                                            <option>1998</option>
                                            <option>1997</option>
                                            <option>1996</option>
                                            <option>1995</option>
                                            <option>1994</option>
                                            <option>1993</option>
                                            <option>1992</option>
                                            <option>1991</option>
                                            <option>1990</option>
                                            <option>1989</option>
                                            <option>1988</option>
                                            <option>1987</option>
                                            <option>1986</option>
                                            <option>1985</option>
                                            <option>1984</option>
                                            <option>1983</option>
                                            <option>1982</option>
                                            <option>1981</option>
                                            <option>1980</option>
                                            <option>1979</option>
                                            <option>1978</option>
                                            <option>1977</option>
                                            <option>1976</option>
                                            <option>1975</option>
                                            <option>1974</option>
                                            <option>1973</option>
                                            <option>1972</option>
                                            <option>1971</option>
                                            <option>1970</option>
                                            <option id="3Before_1970_text" value="Before 1970">Before 1970</option>
                                        </select>
                                        <div class="select-dropdown"></div>
                                    </div>

                                </div>

                                <div class="input-group" id="3surgon_name" style="display: block;">
                                    <label class="label" style="width: 500px;" id="3surgeon_name_text">What was the Surgeon's name?</label>
                                    <div class="rs-select2 js-select-simple select--no-search">
                                        <input class="input--style-4" type="text" id="3surgonname" name="surgonname">
                                    </div>
                                </div>
                                <button class="btn btn--radius-2 btn--blue" id="surgery-medical-remove-3" style="background: #F08080;" onclick="remove_surgery_main_parent3_click()" type="button">Remove</button>
                            </div>
                        </div>
                        <br />


                        <div class="col-6">
                            <div class="input-group">
                                <label class="label" style="width: 500px;" id="medications_regularly_text">Do you take any medications regularly?</label>
                                <div class="p-t-10">
                                    <label class="radio-container" style="width: 500px;">
                                        <label id="yes_medications_regularly_text">Yes</label>
                                        <input type="radio" checked="checked" id="yes_question_file_medication" name="question_file_medication" onclick="yes_file_medication_changed(this)">
                                        <span class="checkmark"></span>
                                    </label>
                                    <label class="radio-container m-r-45" style="width: 500px;">
                                        <label id="no_medications_regularly_text">No</label>
                                        <input type="radio" id="no_question_file_medication" name="question_file_medication" onclick="no_file_medication_changed(this)">
                                        <span class="checkmark"></span>
                                    </label>
                                </div>
                            </div>
                            <div class="p-t-12">
                                <form action="#" id="medical_file_form_Box" enctype="multipart/form-data">

                                    <asp:FileUpload ID="FileUploadMedical" runat="server" onchange="change_file_medication_click()" Style="display: none;" accept="image/*" capture />
                                    <asp:FileUpload ID="FileUploadReferal_" runat="server" onchange="change_referral_click()" Style="display: none;" accept="image/*" capture />

                                    <%--<input type="file" id="medical_file" accept="image/*" onchange="change_file_medication_click()" hidden="hidden" capture multiple />--%>
                                    <div id="Box_medical_file_form" style="display: block;">
                                        <label class="label" for="capture" id="upload_file_medication_text">Please Upload Your Medication File (or Take Photograph)</label>
                                        <button class="btn btn--radius-2 btn--blue" style="background: #a338cd;" id="medical_file_button" onclick="button_file_medication_click()" type="button">Choose</button>
                                        <span id="text_medical_file">No file chosen, yet.</span>
                                    </div>
                                    <br />
                                </form>
                            </div>
                            <br />

                            <div class="col-6">
                                <div class="input-group">
                                    <label class="label" style="width: 500px;" id="referral_text">Do you have a Referral?</label>
                                    <div class="p-t-10">
                                        <label class="radio-container" style="width: 500px;">
                                            <label id="yes_referral_text">Yes</label>
                                            <input type="radio" checked="checked" id="yes_Referral" name="Referral_information" onclick="yes_referral_changed(this)">
                                            <span class="checkmark"></span>
                                        </label>
                                        <label class="radio-container m-r-45" style="width: 500px;">
                                            <label id="no_referral_text">No</label>
                                            <input type="radio" id="no_Referral" name="Referral_information" onclick="no_referral_changed(this)">
                                            <span class="checkmark"></span>
                                        </label>
                                    </div>
                                </div>
                                <div class="p-t-12" id="Box_referral_form" style="display: block;">
                                    <form action="#" id="referral_form" enctype="multipart/form-data">
                                        <label class="label" for="capture" id="referral_file_text">Please Upload Your Referral File (or Take Photograph)</label>
                                        <%--<input type="file" id="referral_file" accept="image/*" onchange="change_referral_click()" hidden="hidden" capture multiple />--%>
                                        <button class="btn btn--radius-2 btn--blue" style="background: #a338cd;" id="referral_button" onclick="button_referral_click()" type="button">Choose</button>
                                        <span id="text_referral_file">No file chosen, yet.</span>
                                        <br />
                                    </form>
                                </div>
                                <br />
                            </div>
                            <div class="p-t-15">
                                <br />
                                <br />
                                <button class="btn btn--radius-2 btn--blue" id="submit_button_text" onclick="submit_button_click()" type="button">Submit</button>
                                <%--<asp:RadioButton ID="Submit_Button" runat="server" Text="Button" OnCheckedChanged="Submit_Button_CheckedChanged" />--%>
                                <asp:Button ID="Submit_Button" runat="server" Style="display: none;" Text="Button" OnClick="btnSubmitButton_Click" />
                            </div>
                        </div>
                </div>
                <div class="input-group">
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
    <script src="email-validation.js"></script>

    <!-- Main JS-->
    <script src="js/global.js"></script>
    <%--<script type='text/javascript' src="js/jquery.mycart.js"></script>--%>
    <script type="text/javascript">

        var txtFirstName;
        var txtLastName;
        var txtBirthday;
        var txtMedicareNumber;
        var genderselection;
        var txtExpirationDate;
        var txtEmail;
        var txtPhoneNumber;
        var livingActivities;
        var dateOffWork;
        var neverworkoption;
        var sportsActivites;
        var sportsActivites2;
        var sportsActivites3;
        var howoftensports;
        var howoftensports2;
        var howoftensports3;

        var familynameOfDoctor;
        var handWrite;
        var smokeHowmanyYears;
        var smokeHowmanyPerday;
        var smokeOffDate;

        var alcoholHowmanyPerweek;
        var alcoholOffDate;

        var recreationalDrugHowmanyPerweeks;
        var recreationalDrugWhatDrugs;

        var recreationalDrugHowmanyPerweeks2;
        var recreationalDrugWhatDrugs2;

        var recreationalDrugHowmanyPerweeks3;
        var recreationalDrugWhatDrugs3;

        var recreationalDrugOffDate;

        var bleedingProblemsTypes;
        var cancerProblemsTypes;
        var hepatitisProblemTypes;

        var surgeryNames;
        var surgeryDate;
        var surgonName;

        var surgeryNames2;
        var surgeryDate2;
        var surgonName2;

        var surgeryNames3;
        var surgeryDate3;
        var surgonName3;

        let medicalFile;

        let referralFile;

        let questionnaireformat;
        let languageType;

        var frenchLanguage = {

            'Choose Option': 'Choisissez l’Option',

            'First Name': 'Prénom',

            'Last Name': 'Nom de Famille',

            'Birthday': 'Date de Naissance',

            'Gender': 'Sexe',

            'Male': 'Homme',

            'Female': 'Femme',

            'Other/Prefer not to answer': 'Autre/Ne veux pas Répondre',

            'Medicare Number': 'Numéro de Carte Assurance Maladie',

            'Yes': 'Oui',

            'No Medicare Card': 'Pas de Carte Assurance Maladie',

            'Expiration Date': 'Date D’Expiration',

            'Email': 'Addresse Courriel',

            'Phone Number': 'Numéro de Téléphone',

            'What is the Name of Your Family Doctor': 'Qu’est ce que c’est le Nom de Votre Médecin de Famille',

            'Are You Working Now ?': 'Est-ce Que Vous Travaillez en ce moment?',

            'Yes; What Do You Do For A Living/What is Your Profession ?': 'Oui:	Qu’est ce que vous faites comme Travail/ C’est quoi Votre Profession?',

            'Accountant': 'Comptable',

            'Actor / Actress': 'Comedien',

            'Architect': 'Architecte',

            'Author': 'Auteur',

            'Baker': 'Boulanger',

            'Bricklayer': 'Maçon',

            'Bus Driver': 'Chauffeur d’Autobus',

            'Butcher': 'Boucher',

            'Carpenter': 'Ébéniste',

            'Cleaner': 'Entretien Menager',

            'Chef / Cook': 'Chef/Cuisinier',

            'Dentist': 'Dentiste',

            'Doctor': 'Docteur',

            'Refuse Collector': 'Éboueur',

            'Electrician': 'Electricien',

            'Engineer': 'Ingénieur',

            'Factory Worker': 'Ouvrier',

            'Farmer': 'Fermier',

            'Fireman/Fire Fighter': 'Pompier',

            'Fisherman': 'Pêcheur',

            'Florist': 'Fleuriste',

            'Gardener': 'Jardinier',

            'Hairdresser': 'Coiffeur',

            'Journalist': 'Journaliste',

            'Lawyer': 'Avocat',

            'Librarian': 'Bibliothécaire',

            'Mechanic': 'Mécanicien',

            'Model': 'Mannequin',

            'Nurse': 'Infirmier',

            'Optician': 'Opticien',

            'Orderly': 'Préposé aux Bénéficiaires',

            'Painter': 'Peintre',

            'Pharmacist': 'Pharmacien',

            'Photographer': 'Photographe',

            'Pilot': 'Pilote',

            'Plumber': 'Plombier',

            'Politician': 'Politicien',

            'Policeman / Policewoman': 'Policier',

            'Postman': 'Facteur',

            'Real Estate Agent': 'Agent d’Immeubles',

            'Scientist': 'Scientifique',

            'Secretary': 'Secrétaire',

            'Soldier': 'Soldat',

            'Tailor/Seamstress': 'Tailleur/Couturière',

            'Taxi Driver': 'Chauffeur de Taxi',

            'Teacher': 'Enseignant',

            'Veterinary Doctor': 'Vétérinaire',

            'Waiter/Waitress': 'Serveur',

            'Other': 'Autre',

            'No; Retired': 'Non; Retraité',

            'If No, Since When Have You Been Off Work?': 'Si Non, Depuis quand est-ce que vous êtes en arrêt de travail?',

            'Never Worked': 'N’a Jamais Travaillé',

            'If Never, Please Select One of the Following Options?': 'Si Jamais, SVP Choisissez une des options',

            'Student': 'Étudiant',

            'Housewife/Househusband': 'Femme/Homme de Foyer',

            'Other': 'Autre',

            'What Sports/Activities Do You Do?': 'Qu’est-ce que vous faites comme activité sportive/physique?',

            'None': 'Aucunes',

            'Kayaking': 'Kayak',

            'Canoeing': 'Canoe',

            'Cross – Country Skiing': 'Ski de Fond',

            'Swimming': 'Natation',

            'Freediving': 'Plongée Libre',

            'Paddleboarding': 'Planche à Pagaie',

            'Scuba Diving': 'Plongée Sous-Marine',

            'Aerobics': 'Aérobie',

            'Archery': 'Tir à l’Arc',

            'Boxing': 'Boxe',

            'Running': 'Course à Pied',

            'Cycling': 'Vélo/Cyclism',

            'Figure Skating': 'Patin à Glace',

            'Horseback Riding': 'l’Equitation',

            'Kickboxing': 'Kickboxing',

            'Ultimate Frisbee': 'Frisbee Ultime',

            'Walking': 'Marche/Randonnée',

            'Weightlifting': 'Musculation',

            'Wrestling': 'Lutte',

            'Baseball': 'Baseball',

            'Softball': 'Balle Molle',

            'Basketball': 'Basketball',

            'Tennis': 'Tennis',

            'Badminton': 'Badminton',

            'Bowling': 'Bowling',

            'Curling': 'Curling',

            'Soccer': 'Soccer',

            'Football': 'Football',

            'Ski': 'Ski Alpin',

            'Hockey': 'Hockey',

            'Other': 'Autre',

            'How Often?': 'A Quelle Fréquence?',

            'Daily': 'Du Quotidien',

            '3 times a week': '3 fois par semaine',

            '2 times a week': '2 fois par semaine',

            '1 time per week': '1 fois par semaine',

            '2 - 3 times per Month': '2-3 fois pas mois',

            'Monthly': ' Mensuel',

            'Rarely': 'Rarement',

            'What Hand Do You Write With?': 'Avec quelle main ecrivez vous?',

            'Right': 'Droite',

            'Left': 'Gauche',

            'Ambidextrous': 'Ambidextre',

            'Do You Smoke?': 'Est-ce que vous fumez?',

            'If Yes, For How Many Years?': 'Si Oui, Pendant Combien d’années?',

            'More than 20 years': 'plus que 20 ans',

            'How Many Cigarettes Per Day': 'Combien de Cigarettes par Jour?',

            'More than 1 Pack': 'plus q’un paquet',

            'Do You Drink Alcohol': 'est-ce que vous buvez de l\'alcohol?',

            'If Yes, How Many Drinks Per Week': 'Si Oui, Combien de Consommations par Semaine?',

            'More than 20 Drinks': 'Plus que 20',

            'Do You Take Any Recreational Drugs Or Herbal/Natural Remedies?': 'Est-ce que vous prenez des Drogues récréatives ou des Remèdes naturels?',

            'If Yes, How Often Do You Take The Drug Or Herbal / Natural Remedies?': 'Si Oui, A quelle fréquence est-ce que vous prenez la drogue ou remède naturel?',

            'Rarely': 'Rarement',

            'Monthly': 'Mensuel',

            'Weekly': 'Hebdomadaire',

            'Daily': 'du Quotidien',

            '2 or more times per day': '2 fois ou plus par jour',

            'If Yes, Which Drug or Herbal / Natural Remedy do you Use?': 'Si Oui, Quel Drogue ou Remède Naturel Utilisez vous?',

            'chondroitin': 'chondroitin',

            'glucosamine': 'glucosamine',

            'ginger': 'gingembre',

            'ginkgo biloba': 'ginkgo biloba',

            'ginseng': 'ginseng',

            'st - John’s Wort': 'st-John’s Wort',

            'turmeric': 'turmeric',

            'Canabis / Marijuana': 'Canabis/Marijuana',

            'Stimulants (e.g.cocaine, amphetamines,methamphetamine, ecstacy[MDMA]) ': 'Stimulants (e.g. cocaine, amphetamines, methamphetamine, ecstacy [MDMA]) ',

            'Opium - related painkillers (e.g.heroin, morphine, fentanyl, oxycodone, dilaudid)': 'Anti-douleur de base d’Opiacé (e.g. heroin, morphine, fentanyl, oxycodone, dilaudid)',

            'Hallucinogens (e.g.LSD)': 'Hallucinogènes (e.g. LSD)',

            'Benzodiazepines (e.g.ativan, valium)': 'Benzodiazépines (e.g. ativan, valium)',

            'Ketamine': 'Ketamine',

            'Ritalin': 'Ritalin',

            'Other': 'Autre',

            'Do You Take Any Recreational Drugs Or Herbal / Natural Remedies?': 'Est-ce que vous prenez des Drogues récréatives ou des Remèdes naturels?',

            'If No, Since When Have You Been Off The Drug?': 'Si Non, Depuis quand ne preniez vous plus la drogue ou remède naturel?',

            'Never Taken': 'Jamais utilisé',

            'Do You Have Any Of the Following Medical Conditions?': 'Est-ce que vous avez des problèmes de santé? Le(s)quel(s)?',

            'AIDS or HIV': 'SIAD ou VIH',

            'Alcohol Dependency or Abuse': 'Dépendance ou Abus à l’Alcool',

            'Anemia': 'Anémie',

            'Anxiety': 'Anxiété',

            'Arthritis': 'Arthrite',

            'Bleeding Problems': 'Problèmes de Saignement',

            'Blood Clots': 'Caillots Sanguins',

            'Cancer': 'Cancer',

            'Dementia': 'Démence',

            'Chronic Obstructive Pulmonary Disease or Emphysema': 'Emphysème ou Maladie Pulmonaire Obstructive Chronique',

            'Depression': 'Dépression',

            'Drug Dependency or Abuse': 'Dépendance ou Abus de Drogues',

            'Diabetes': 'Diabète',

            'Gout': 'Goutte',

            'Heart Disease': 'Maladie Cardiaque',

            'Heart Arrythmia': 'Arrythmie Cardiaque',

            'High Cholesterol': 'Cholesterol élevé',

            'High Blood Pressure': 'Tension Arterielle élevée',

            'Hypothyroidism': 'Hypothyroidie',

            'Hyperthyroidism': 'Hyperthyroidie',

            'Kidney Disease': 'Maladie Rénale',

            'Leukemia': 'Leucémie',

            'Liver Disease': 'Maladie de Foie',

            'Hepatitis': 'Hépatite',

            'Osteoporosis': 'Ostéoporose',

            'Pancreatitis': 'Pancreatite',

            'Peripheral Vascular Disease': 'Maladie Vasculaire Péripherique',

            'Pulmonary Embolism': 'Embolie Pulmonaire',

            'Reflux or GERD': 'Reflus ou RGO',

            'Seizures': 'Crise dépilepsie',

            'Sleep Apnea': 'Apnée de Sommeil',

            'Stroke': 'Accident Vasculaire Cérébral',

            'Other': 'Autre',

            'Do You Have Any Of the Following Medical Conditions?': 'Est-ce que vous avez des problèmes de santé? Le(s)quel(s)?',

            'Bleeding Problems': 'Problèmes de Saignement',

            'Von Willebrand Hemophilia A (Factor 8 deficiency)': 'Von Willebrand Hemophilia A (Factor 8 deficiency)',

            'Hemophilia A (Factor 8 deficiency)': 'Hémophilie type A (Déficience Facteur 8)',

            'Hemophilia B (Christmas disease)': 'Hémophilie type B (Maladie de Christmas)',

            'Factor 5 Leiden': 'Facteur 5 Leiden',

            'Factor 2 deficiency': 'Déficience Facteur 2',

            'Factor 7 deficiency': 'Déficience Facteur 7',

            'Factor 10 deficiency': 'Déficience Facteur 10',

            'Factor 12 deficiency': 'Déficience Facteur 12',

            'Other': 'Autre',

            'Cancer': 'Cancer',

            'Breast': 'Sein',

            'Prostate': 'Prostate',

            'Lung': 'Poumon',

            'Colon / Colorectal': 'Colon/Colorectal',

            'Kidney': 'Rein',

            'Bladder': 'Vessie',

            'Thyroid': 'Thyroïde',

            'Lymphoma': 'Lymphome',

            'Melanoma': 'Mélanome',

            'Endometrial': 'Endomètre',

            'Leukemia': 'Leucémie',

            'Pancreatic': 'Pancréas',

            'Liver': 'Foie',

            'Other': 'Autre',

            'Hepatitis': 'Hépatite',

            'Auto - immune': 'Auto-immune',

            'Alcohol - induced': 'Induite par l’Alcool',

            'Fatty-Liver': 'Foie-Gras',

            'Hepatitis A': 'Hépatite type A',

            'Hepatitis B – Active': 'Hépatite type B – Active',

            'Hepatitis B – Chronic': 'Hépatite type B – Chronique',

            'Hepatitis B – Cured': 'Hépatite type B – Guérie',

            'Hepatitis C – Active': 'Hépatite type C – Active',

            'Hepatitis C – Chronic': 'Hépatite type C – Chronique',

            'Hepatitis C – Cured': 'Hépatite type C – Guérie',

            'Hepatitis D': 'Hépatite type D',

            'Hepatis E': 'Hépatite type E',

            'Other': 'Autre',

            'Have you Ever Had Surgery?': 'Est-ce que vous avez déjà subi une intervention chirurgicale?',

            'What Type of Surgery?': 'Quel Type de Chirurgie?',

            'When Was Your Surgery?': 'Quand est-ce que vous avec eu l’intervention chirurgicale?',

            'Before 1970': 'Avant 1970',

            'What Was the Surgeon’s Name?': 'Qu’est-ce qui c’est le nom du Chirurgien?',

            'No Previous Surgeries': 'Non, pas de Chirurgies Antérieures',

            'Do You Take Any Medications Regularly?': 'Est-ce que vous prenez des médicaments régulièrement?',

            'Please Upload Your Medication File (or Take Photograph)': 'SVP télécharger votre fichier de Médicaments (ou Prenez une photographie)',

            'Do You Have a Referral?': 'Est-ce que vous avez un demande de consultation de votre médecin?',

            'Please Upload Your Referral File (or Take Photograph)': 'SVP télécharger votre fichier de Demande de Consultation (ou Prenez une photographie)',

            'Enter Information Manually': 'Saisir les Informations Manuellement',

            'Submit': 'Soumettre',

            'No': 'Non',

            'Never': 'Jamais',

            'If no, when did you quite smoking': 'Si non, quand avez- vous arrêté de fumer?',

            'Cancer.Type ?': 'Cancer. Type?',

            'Hepatitis.Type ?': 'Hépatite. Type?',

            'Bleeding Problems.Type ?': 'Problèmes de Saignement. Type?',

            'Choose': 'Choisir',

            'Add More': 'Ajouter un autre',

            'Remove': 'Retirer',


            'Please fill out your Frist Name': '',

            'Please fill out your Last Name': '',

            'Please fill out your Birthday': '',

            ' Please fill out your Medicare Number ': '',

            'Please fill out your Expiration Date': '',

            'Please fill out your Email': '',

            'Please fill out your Phone Number': '',

            'Please write your Family Doctor': '',

            'Please fill out your Living Activities': '',

            'Please fill out your off work date': '',

            'Please select one of the work options': '',

            'Please fill out your Sport Activities': '',

            'Please fill out your Hand Write': '',

            ' Please fill out, How Many Years Do You Smoke ': '',

            ' Please fill out, How Many Smoke Per Day ': '',

            'Please fill out your Smoke Off Date ': '',

            'Please fill out, How Many Time Do You Drink Per week ': '',

            'Please fill out, How Many Recreational Drug Per Week ': '',

            'Please fill out, What Recreational Drug Do you Use': '',

            ' Please fill out your Recreational Drug Off Date ': '',

            ' Please select your Bleeding Problem Type ': '',

            ' Please select your Cancer Problem Type ': '',

            ' Please select your Hepatitis Problem Type': '',

            ' Please write your Surgery Name ': '',

            ' Please fill out your Surgery Date ': '',

            ' Please upload your Medical File': '',

            ' Please upload your Referral File ': '',

            ' Are you sure all the information above is correct? ': '',
        }

        var spanishLanguage = {

            'Background Information': '',

            'Choose Option': 'Elegir opción',

            'First Name': 'Nombre',

            'Last Name': 'Apellido',

            'Birthday': 'Fecha de Nacimineto',

            'Gender': 'Sexo',

            'Male': 'Masculino',

            'Female': 'Femenino',

            'Other/Prefer not to answer': 'Otro/Prefiero no Responder',

            'Medicare Number': 'Número de la Carta de Salud',

            'Yes': 'Si',

            'No Medicare Card': 'No Tengo Carta de Salud',

            'Expiration Date': 'Fecha de Expiración',

            'Email': 'Corréo Electrónico',

            'Phone Number': 'Número de Teléfono',

            'What is the Name of Your Family Doctor': '¿Cual es el Nombre de su Doctor de Familia?',

            'Are You Working Now ?': '¿Está trabajando ahora? ',

            'Yes; What Do You Do For A Living/What is Your Profession ?': 'Si; ¿A Qué se Dedica/Que es su Profesión?',

            'Accountant': 'Contador',

            'Actor / Actress': 'Actor',

            'Architect': 'Arquitecto',

            'Author': 'Autor',

            'Baker': 'Panadero',

            'Bricklayer': 'Albañil',

            'Bus Driver': 'Conductor de Autobús',

            'Butcher': 'Carnicero',

            'Carpenter': 'Carpintero',

            'Cleaner': 'Limpiador',

            'Chef / Cook': 'Cocinero',

            'Dentist': 'Dentista',

            'Doctor': 'Doctor',

            'Refuse Collector': 'Recolector de Basura',

            'Electrician': 'Electricista',

            'Engineer': 'Ingeniero',

            'Factory Worker': 'Trabajador de Fábrica',

            'Farmer': 'Granjero',

            'Fireman/Fire Fighter': 'Bombero',

            'Fisherman': 'Pescador',

            'Florist': 'Florista',

            'Gardener': 'Jardinero',

            'Hairdresser': 'Peluquero',

            'Journalist': 'Periodista',

            'Lawyer': 'Abogado',

            'Librarian': 'Bibliotecario',

            'Mechanic': 'Mecánico',

            'Model': 'Modelo',

            'Nurse': 'Enfermero',

            'Optician': 'Optómetra',

            'Orderly': 'Camillero de Hospital',

            'Painter': 'Pintor',

            'Pharmacist': 'Farmacéutico',

            'Photographer': 'Fotógrafo',

            'Pilot': 'Piloto',

            'Plumber': 'Fontanero',

            'Politician': 'Político',

            'Policeman / Policewoman': 'Policía',

            'Postman': 'Cartero',

            'Real Estate Agent': 'Agente Inmobiliario',

            'Scientist': 'Científico',

            'Secretary': 'Secretario',

            'Soldier': 'Soldaro',

            'Tailor/Seamstress': 'Sastre/Costurera',

            'Taxi Driver': 'Conductor de Taxi',

            'Teacher': 'Profesor',

            'Veterinary Doctor': 'Veterinario',

            'Waiter/Waitress': 'Camarero',

            'Other': 'Otro',

            'No; Retired': 'No; Jubilado',

            'If No, Since When Have You Been Off Work?': '¿Si No, Cuando se Jubiló?',

            'Never Worked': 'Nunca trabajé ',

            'If Never, Please Select One of the Following Options?': 'Si Nunca Trabajó, Por Favor, Elija una Opción',

            'Student': 'Estudiante',

            'Housewife/Househusband': 'Ama/Amo de Case',

            'Other': 'Otro',

            'What Sports/Activities Do You Do?': '¿Que Deportes Practica? ',

            'None': 'Ninguno',

            'Kayaking': 'Kayak',

            'Canoeing': 'Canoa',

            'Cross – Country Skiing': 'Esquí de Fondo',

            'Swimming': 'Natación',

            'Freediving': 'Apnéa',

            'Paddleboarding': 'SUP (Remo de Pie de Embarque)',

            'Scuba Diving': 'Submarinismo',

            'Aerobics': 'Aeróbicos',

            'Archery': 'Tiro al Arco',

            'Boxing': 'Boxeo',

            'Running': 'Corriendo',

            'Cycling': 'Ciclismo',

            'Figure Skating': 'Patinaje',

            'Horseback Riding': 'Montar a Caballo',

            'Kickboxing': 'Kickboxing',

            'Ultimate Frisbee': 'Ultimate Frisbee',

            'Walking': 'Caminando',

            'Weightlifting': 'Levantamiento de Pesas',

            'Wrestling': 'Lucha Libre',

            'Baseball': 'Béisbol',

            'Softball': 'Sofbol',

            'Basketball': 'Baloncesto',

            'Tennis': 'Tenis',

            'Badminton': 'Bádminton',

            'Bowling': 'Bolos',

            'Curling': 'Curling',

            'Soccer': 'Fútbol',

            'Football': 'Fútbol Americano',

            'Ski': 'Esquí',

            'Hockey': 'Hockey',

            'Other': 'Otro',

            'How Often?': '¿Con Qué Frecuencia?',

            'Daily': 'Cotidiano',

            '3 times a week': '3 veces por semana',

            '2 times a week': '2 veces por semana',

            '1 time per week': '1 vez por semana',

            '2 - 3 times per Month': '2-3 veces al Mes',

            'Monthly': 'Mensual',

            'Rarely': 'Raramente',

            'What Hand Do You Write With?': '¿Con qué Mano Escribe?',

            'Right': 'Derecha',

            'Left': 'Izquierda',

            'Ambidextrous': 'Ambidextra',

            'Do You Smoke?': '¿Usted Fuma?',

            'If Yes, For How Many Years?': 'Si, ¿Por Cuantos Años?',

            'More than 20 years': 'Mas de 20 Años',

            'How Many Cigarettes Per Day': '¿Cuantos Cigarrillos al Dia?',

            'More than 1 Pack': 'Mas de 1 Paquete',

            'Do You Drink Alcohol': '¿Usted Bebe Alcohol?',

            'If Yes, How Many Drinks Per Week': 'Si, ¿Cuantos Copas Por Semana?',

            'More than 20 Drinks': 'Mas de 20 Copas',

            'Do You Take Any Recreational Drugs Or Herbal / Natural Remedies?': '¿Usted Consume Drogas O Remedios Naturales/de Hierbas?',

            'If Yes, How Often Do You Take The Drug Or Herbal / Natural Remedies?': 'Si, ¿Con qué Frecuencia Usted Consume la Droga O Remedios Naturale/de hierba?',

            'Rarely': 'Raramente',

            'Monthly': 'Mensual',

            'Weekly': 'Semanal',

            'Daily': 'Diario',

            '2 or more times per day': '2 o mas veces al dia',

            'If Yes, Which Drug or Herbal / Natural Remedy do you Use?': 'Si, ¿Que Droga o Remedio Naturale/de Hierba?',

            'chondroitin': 'condroitina',

            'glucosamine': 'glucosamina',

            'ginger': 'jengibre',

            'ginkgo biloba': 'ginkgo biloba',

            'ginseng': 'ginseng',

            'st - John’s Wort': 'hierba de San Juan',

            'turmeric': 'Cúrcuma',

            'Canabis / Marijuana': 'Canabis/Marijuana',

            'Stimulants (e.g.cocaine, amphetamines,methamphetamine, ecstacy[MDMA]) ': 'Estimulantes (e.g.cocaína, anfetaminas, metanfetaminas, éxtasis[MDMA])',

            'Opium - related painkillers (e.g.heroin, morphine, fentanyl, oxycodone, dilaudid)': 'Analgésico a base de opiodes (e.g. heroína, morfina, fentanilo, oxycodona',

            'Hallucinogens (e.g.LSD)': 'Alucinógenos (e.g. LSD)',

            'Benzodiazepines (e.g.ativan, valium)': 'Benzodiazepinas (e.g. ativan, valium)',

            'Ketamine': 'Ketamina',

            'Ritalin': 'Ritalin',

            'Other': 'Otro',

            'Do You Take Any Recreational Drugs Or Herbal / Natural Remedies?': '¿Usted Consume Drogas O Remedios Naturales/de Hierbas?',

            'If No, Since When Have You Been Off The Drug?': '¿Si No, Desde Quando no Consume la Droga o Remedio?',

            'Never Taken': 'Nunca ha Consume Drogas o Remedios Naturales/de Hierbas',

            'Do You Have Any Of the Following Medical Conditions?': '¿Tiene Alguna de las Siguientes Condiciones Médicas?',

            'AIDS or HIV': 'SIDA or VIH',

            'Alcohol Dependency or Abuse': 'Dependencia o Abuso de Alcohol',

            'Anemia': 'Anemia',

            'Anxiety': 'Ansiedad',

            'Arthritis': 'Artritis',

            'Bleeding Problems': 'Problemas de Sangrado',

            'Blood Clots': 'Coágulos de Sangre',

            'Cancer': 'Cáncer',

            'Dementia': 'Demencia',

            'Chronic Obstructive Pulmonary Disease or Emphysema': 'Enfermedad Pulmonar Obstructiva Crónica o Enfisema',

            'Depression': 'Depresión',

            'Drug Dependency or Abuse': 'Dependencia o Abuso de Drogas',

            'Diabetes': 'Diabetes',

            'Gout': 'Gota',

            'Heart Disease': 'Cardiopatía',

            'Heart Arrythmia': 'Arritmia Cardiaca',

            'High Cholesterol': 'Colesterol Alto',

            'High Blood Pressure': 'Hipertensión',

            'Hypothyroidism': 'Hipotiroidismo',

            'Hyperthyroidism': 'Hipertiroidismo',

            'Kidney Disease': 'Nefropatía',

            'Leukemia': 'Leucemia',

            'Liver Disease': 'Enfermedad del Higado',

            'Hepatitis': 'Hepatitis',

            'Osteoporosis': 'Osteoporosis',

            'Pancreatitis': 'Pancreatitis',

            'Peripheral Vascular Disease': 'Enfermedad Vascular Periférica',

            'Pulmonary Embolism': 'Embolia Pulmonar',

            'Reflux or GERD': 'Reflujo o ERG',

            'Seizures': 'Convulsiones',

            'Sleep Apnea': 'Apnea del Sueño',

            'Stroke': 'Accidente Cerebrovascular',

            'Other': 'Otro',

            'Do You Have Any Of the Following Medical Conditions?': '¿Tiene Alguna de las Siguientes Condiciones Médicas?',

            'Bleeding Problems': 'Problemas de Sangrado',

            'Von Willebrand Hemophilia A (Factor 8 deficiency)': 'Von Willebrand; Hemofilia A (Deficiencia Factor 8)',

            'Hemophilia B (Christmas disease)': 'Hemofilia B (Enfernedad de Christmas)',

            'Factor 5 Leiden': 'La Mutación 5 Leiden',

            'Factor 2 deficiency': 'Deficiencia Factor 2',

            'Factor 7 deficiency': 'Deficiencia Factor 7',

            'Factor 10 deficiency': 'Deficiencia Factor 10',

            'Factor 12 deficiency': 'Deficiencia Factor 12',

            'Other': 'Otro',

            'Cancer': 'Cancer',

            'Breast': 'de Mama',

            'Prostate': 'Próstata',

            'Lung': 'Pulmón',

            'Colon / Colorectal': 'Colon/Colorrectal',

            'Kidney': 'Riñón',

            'Bladder': 'Vejiga',

            'Thyroid': 'Tiroides',

            'Lymphoma': 'Linfoma',

            'Melanoma': 'Melanoma',

            'Endometrial': 'Endometrio',

            'Leukemia': 'Leucemia',

            'Pancreatic': 'Pancreático',

            'Liver': 'Hígado',

            'Other': 'Otro',

            'Hepatitis': 'Hepatitis',

            'Auto - immune': 'Autoinmune',

            'Alcohol - induced': 'Inducido por Alcohol',

            'Fatty-Liver': 'Hígado Graso',

            'Hepatitis A': 'Hepatitis A',

            'Hepatitis B – Active': 'Hepatitis B – Activo',

            'Hepatitis B – Chronic': 'Hepatitis B – Crónico',

            'Hepatitis B – Cured': 'Hepatitis B – Curado',

            'Hepatitis C – Active': 'Hepatitis C – Activo',

            'Hepatitis C – Chronic': 'Hepatitis C – Crónico',

            'Hepatitis C – Cured': 'Hepatitis C – Curado',

            'Hepatitis D': 'Hepatitis D',

            'Hepatis E': 'Hepatis E',

            'Other': 'Otro',

            'Have you Ever Had Surgery?': '¿Alguna vez ha Tenido una Cirugía?',

            'What Type of Surgery?': '¿Qué Tipo de Cirugía?',

            'When Was Your Surgery?': '¿Cuándo Fue la Cirugía?',

            'Before 1970': 'Antes de 1970',

            'What Was the Surgeon’s Name?': '¿Cuál era el Nombre del Cirujano?',

            'No Previous Surgeries': 'Sin Cirugías Previas',

            'Do You Take Any Medications Regularly?': '¿Toma algún Medicamento Regularmente? ',

            'Please Upload Your Medication File (or Take Photograph)': 'Descarge su Archivo de Medicamentos (o Tome Fotografías)',

            'Do You Have a Referral?': '¿Tiene una Referencia?',

            'Please Upload Your Referral File (or Take Photograph)': 'Descarge su Archivo de Referencia (o Tome Fotografías)',

            'Enter Information Manually': 'Ingresar Información Manualmente',

            'Submit': 'Entregar',

            'No': 'No',

            'Never': 'Nunca',

            'If no, when did you quite smoking': 'Si no, ¿cuándo dejó de fumar?',

            'Cancer.Type ?': 'Cáncer.Tipo ?',

            'Hepatitis.Type ?': 'Hépatite. Tipo?',

            'Bleeding Problems.Type ?': 'Problemas de Sangrado. Tipo?',

            'Choose': 'Escoger',

            'Add More': 'añadir más',

            'Remove': 'Eliminar',


            'Please fill out your Frist Name': '',

            'Please fill out your Last Name': '',

            'Please fill out your Birthday': '',

            'Please fill out your Medicare Number ': '',

            'Please fill out your Expiration Date': '',

            'Please fill out your Email': '',

            'Please fill out your Phone Number': '',

            'Please write your Family Doctor': '',

            'Please fill out your Living Activities': '',

            'Please fill out your off work date': '',

            'Please select one of the work options': '',

            'Please fill out your Sport Activities': '',

            'Please fill out your Hand Write': '',

            ' Please fill out, How Many Years Do You Smoke ': '',

            ' Please fill out, How Many Smoke Per Day ': '',

            'Please fill out your Smoke Off Date ': '',

            'Please fill out, How Many Time Do You Drink Per week ': '',

            'Please fill out, How Many Recreational Drug Per Week ': '',

            'Please fill out, What Recreational Drug Do you Use': '',

            ' Please fill out your Recreational Drug Off Date ': '',

            ' Please select your Bleeding Problem Type ': '',

            ' Please select your Cancer Problem Type ': '',

            ' Please select your Hepatitis Problem Type': '',

            ' Please write your Surgery Name ': '',

            ' Please fill out your Surgery Date ': '',

            ' Please upload your Medical File': '',

            ' Please upload your Referral File ': '',

            ' Are you sure all the information above is correct? ': '',
        };
        var chineseLanguage =
        {
            'Choose Option': '选项 (xuanxiang)',
            'First Name': '名 (ming)',
            'Last Name': '姓 (xing)',
            'Birthday': '生日 (sheng ri)',
            'Gender': '性别 (xingbie)',
            'Male': '男 (nan)',
            'Female': '女(nv)',
            'Other/Prefer not to answer': '其他 (qita) / 选择不回答 (xuanze buhuida)',
            'Medicare Number': '医疗卡号码 (yiliaoka haoma)',
            'Yes': '是 (shi)',
            'No Medicare Card': '没有医疗卡 (meiyou yiliaoka)',
            'Expiration Date': '有效日期 (youxiao riqi )',
            'Email': '电子邮件 (dianzi youjian)',
            'Phone Number': '电话号码 (dianhua haoma )',
            'What is the Name of Your Family Doctor': '您的家庭医生的名字 (ninde jiating yishengde mingzi )',
            'Are You Working Now ?': '您现在有工作吗 (nin xianzai you gongzuo ma？)',
            'Yes; What Do You Do For A Living/What is Your Profession ?': '是的 (shide)， 您从事什么行业  (nin congshi shenme hangye)? ',
            'Accountant': '会计师(kuaijishi)',
            'Actor / Actress': '演员 女演员(yanyuan, nvyanyuan)',
            'Architect': '建筑师 (jianzhushi)',
            'Author': '作家 (zuojia)',
            'Baker': '烘培师 (hongpeishi)',
            'Bricklayer': '瓦工 (wagong)',
            'Bus Driver': '公车司机 (gongche siji)',
            'Butcher': ' 卖肉的 (mairoude  )',
            'Carpenter': '木匠 (mujiang)',
            'Cleaner': '清洁工 (qingjiegong)',
            'Chef / Cook': '厨师 (chushi)',
            'Dentist': '牙医 (yayi)',
            'Doctor': '医生 (yisheng)',
            'Electrician': '电工 (diangong)',
            'Engineer': '工程师 (gongchengshi) ',
            'Factory Worker': '工厂员工 (gongchang yuangong)',
            'Farmer': '农夫 (nongfu)',
            'Fireman/Fire Fighter': '消防员 (xianfangyuan )',
            'Fisherman': '渔夫 (yufu )',
            'Florist': '花艺师 (huayishi)',
            'Gardener': '园艺师 (yuanyishi)',
            'Hairdresser': '理发师 (lifashi)',
            'Journalist': '记者 (jizhe)',
            'Lawyer': ' 律师 (lushi)',
            'Librarian': '图书管理员 (tushu guanliyuan )',
            'Mechanic': '机械技工 (jixie jizong )',
            'Model': '模特儿 (mote er)',
            'Nurse': '护士 (hushi)',
            'Optician': '验光师 (yanguangshi)',
            'Orderly': '看护者 (kanhuzhe )',
            'Painter': '画家 (huajia)',
            'Pharmacist': '药剂师 (jiaojishi)',
            'Photographer': '摄影师 (sheyingshi)',
            'Pilot': '飞行员 (feixingyuan)',
            'Plumber': '水管匠 (shuiguanjiang)',
            'Politician': '政治家 ( xhezhijia)',
            'Policeman / Policewoman': '警察 (jingcha) / 女警 (nujing)',
            'Postman': '邮递员 (youdiyuan)',
            'Real Estate Agent': '房产经纪 (fanchan jingji)',
            'Scientist': '科学家 (kexuejia)',
            'Secretary': '秘书 (mishu)',
            'Soldier': '军人 (junren)',
            'Tailor/Seamstress': '裁缝师 (caifenshi) / 女裁缝师 (nucaifengshi)',
            'Taxi Driver': '出租司機 (chuzusiji)',
            'Teacher': '教師 (jiaoshi)',
            'Veterinary Doctor': '獸醫 (shouyi)',
            'Waiter/Waitress': '服務員 (fuwuyuan) / 女服務員 (nvfuwuyuan)',
            'Other': '其它 (qita)',
            'No; Retired': '不是 (bushi); ’退休 (tuixiu)',
            'If No, Since When Have You Been Off Work?': '若不是,什麼時候開始不工作 (ruobushi, shenme shihou kaishi bugongzuo)?',
            'Never Worked': '從來沒有工作過 (conglai meiyou gongzuoguo)',
            'If Never, Please Select One of the Following Options?': '若是從來沒有,請選以下的選項 (ruoshi conlaimeiyou, qing xuanyixiade xuanxiang)',
            'Student': '學生 (xuesheng)',
            'Housewife/Househusband': '家庭主婦 jiatingzhufu) / 家庭主夫 (jiatingzhufu)',
            'Other': '其它 (qita)',
            'What Sports/Activities Do You Do?': '什么运动(shenme yundong) / 您做什么样的运动(nin zuo shenmeyang de yundong) ? ',
            'None': '都没有 (dou meiyou)',
            'Kayaking': '皮筏艇 (pifating)',
            'Canoeing': '独木舟 (dumuzhou)',
            'Cross – Country Skiing': '越野滑雪 (yueye huaxue)',
            'Swimming': '游泳 (youyong)',
            'Freediving': '自由式潜水 (ziyoushi qianshui)',
            'Paddleboarding': '划水板 (huashui ban)',
            'Scuba Diving': '潜水 (qianshui)',
            'Aerobics': '有氧运动 (youyang yundong)',
            'Archery': '射箭 (shejian)',
            'Boxing': '拳击 (quanji)',
            'Running': '跑步 (paobu)',
            'Cycling': '自行车 (zixingche)',
            'Figure Skating': '溜冰 (liubing)',
            'Horseback Riding': '骑马 (qima)',
            'Kickboxing': '踢脚拳击 (tijiao quanji)',
            'Ultimate Frisbee': '终极飞盘 (zhongji feipan)',
            'Walking': '步行 (buxing)',
            'Weightlifting': '举重  (juzhong)',
            'Wrestling': '摔跤 (shuaijiao)',
            'Baseball': '棒球 (bangqiu)',
            'Softball': '垒球 (leiqiu)',
            'Basketball': '篮球 (lanqiu)',
            'Tennis': '网球 (wangqiu)',
            'Badminton': '羽毛球 (yumaoqiu)',
            'Bowling': '保龄球 (baolingqiu)',
            'Curling': '冰壶 (binghu)',
            'Soccer': '足球 (zuqiu)',
            'Football': '美式足球 (meishi zuqiu)',
            'Ski': '滑雪 (huaxue)',
            'Hockey': '曲棍球 (qugunqiu)',
            'Other': '其他 (qita)',
            'How Often?': '多久1次 (duojiu yici) ?',
            'Daily': '每日 (meiri)',
            '3 times a week': '每周3次 (Meizhou 3 ci)',
            '2 times a week': '每周2次 (Meizhou 2 ci)',
            '1 time per week': '每周1次 (Meizhou 1ci)',
            '2 - 3 times per Month': '每月2-3次 (Meizhou 2-3 ci)',
            'Monthly': '每月 (meiyue)',
            'Rarely': '很少 (henshao )',
            'What Hand Do You Write With?': '您用哪一只手写字(nin yong nayizhi shou xiezi )?',
            'Right': '右 (you)',
            'Left': '左 (zuo)',
            'Ambidextrous': '左右手都可以写 (zuoyou shou dou keyi xie )',
            'Do You Smoke?': '您抽烟吗 (nin chouyan ma)?',
            'If Yes, For How Many Years?': '如果是,有多少年了(ruguo shi, you duo shao nian le)?',
            'More than 20 years': '超过二十多年了 (chaoguo 20 duo nian le)',
            'How Many Cigarettes Per Day': '每天抽多少支香烟 (meitian chou duoshao zhi xiangyan)?',
            'More than 1 Pack': '超过一包 (chaoguo 1 bao )',
            'Do You Drink Alcohol': '您喝酒吗 (nin hejiu ma)?',
            'If Yes, How Many Drinks Per Week': '如果是,每周喝几杯酒 (Ruguoshi, Meizhou he jibei jiu)?',
            'More than 20 Drinks': '超过二十 (chaoguo 20)',
            'Do You Take Any Recreational Drugs Or Herbal/Natural Remedies?': '您是否服用娱乐性药物或是草药/天然疗法 (nin shifou fuyongle yule xing yaowu huo caoyao /tianran liaofa)?',
            'If Yes, How Often Do You Take The Drug Or Herbal / Natural Remedies?': '如果是, 您多久服用一次药物或草药/自然疗法 (ruguoshi , nin duojiu fuyong yici yaowu huo caoyao /ziran liaofa)?',
            'Rarely': '很少 (hen shao)',
            'Monthly': '每月 (mei yue)',
            'Weekly': '每周 (mei zhou)',
            'Daily': '每日 (mei ri )',
            '2 or more times per day': '每天两次或更多次 (meitian liang ci huo geng duo ci)',
            'If Yes, Which Drug or Herbal / Natural Remedy do you Use?': '如果是,您使用哪种药物或是草药/ 自然疗法 (ruguo shi, nin shiyong nazhong yaowu huo caoyao /ziran liaofa)?',
            'chondroitin': '软骨素 (ruangu su)',
            'glucosamine': '葡萄糖胺 (putaotang an)',
            'ginger': '生姜 (sheng jiang)',
            'ginkgo biloba': '银杏叶 (yinxing ye)',
            'ginseng': '人篸 (renshen)',
            'st - John’s Wort': '圣约翰草 (sheng yue han cao )',
            'turmeric': '姜黄 (jianghuang)',
            'Canabis / Marijuana': '大麻 (dama)',
            'Stimulants (e.g.cocaine, amphetamines,methamphetamine, ecstacy[MDMA]) ': '兴奋剂 (例如, 可卡因, 安非他命, 甲基苯比胺, 摇头丸 [MDMA]) (xingfen ji (liru kekayin , anfei taming, jia ji benbing an, yaotouwan, [MDMA])',
            'Opium - related painkillers (e.g.heroin, morphine, fentanyl, oxycodone, dilaudid)': '阿片类止痛药, (例如, 海洛因, 吗啡, 芬太尼, 羟考酮, 双月桂酸酯) (yu yapian youguan de zhitong yao (liru, hailuoyin, mafei, fen tai ni, qiang kao tong, shuan yuegui suan zhi)',
            'Hallucinogens (e.g.LSD)': '致幻剂 (zhi huanji), (例如 (liru LSD))',
            'Benzodiazepines (e.g.ativan, valium)': '苯二氮平(例如麻醉忧虑的药物, 麻醉肌肉的药物) (benerdanping(liru, mazui youlvde  yaowu, mazui jiroude yaowu))',
            'Ketamine': '氯胺酮 (lu antong)',
            'Ritalin': '利他林 (lita lin)',
            'Other': '其他 (qita)',
            'Do You Take Any Recreational Drugs Or Herbal / Natural Remedies?': '您有服用娱乐性药物或草药/自然疗法吗 (nin you fuyong yulexing yaowu huo caoyao / ziran liaofama)?',
            'If No, Since When Have You Been Off The Drug?': '如果没有, 您从什么时候开始没有服用了 (ruguo meiyou, nin cong shnme shihou kaishi meiyou fuyongle)?',
            'Never Taken': '从来没有服用过 (conglai meiyou fuyong guo)',
            'Do You Have Any Of the Following Medical Conditions?': '您是否患有以下这些疾病 (nin shifou huanyou yixia zhexie jibing)?',
            'AIDS or HIV': '艾滋病 (aizibing) 或 (huo) 艾滋病病毒 (aizibing bingdu)',
            'Alcohol Dependency or Abuse': '酗酒 (xujiu), 酒精中毒 (jiujin zhongdu)',
            'Anemia': '贫血 (pinxue)',
            'Anxiety': '焦虑 (jiaolu)',
            'Arthritis': '关节炎 (guanjie yan)',
            'Bleeding Problems': '出血的问题 (chuxue wenti)',
            'Blood Clots': '血管阻塞 (xueguan zusai)',
            'Cancer': '癌症 (aizheng)',
            'Dementia': '痴呆 (chidai)',
            'Chronic Obstructive Pulmonary Disease or Emphysema': '慢性阻塞肺疾病, 或肺气肿 (manxing zuse xing fei jibing, huo feiqi zhongliu)',
            'Depression': '忧郁症 (youyuzheng)',
            'Drug Dependency or Abuse': '药物依赖性或滥用 (yaowu yilai huo lanyong)',
            'Diabetes': '糖尿病 (tangniaobing)',
            'Gout': '痛风 (tongfeng)',
            'Heart Disease': '心脏病 (xinzang bing)',
            'Heart Arrythmia': '心率失常 (xinlu shichang)',
            'High Cholesterol': '高胆固醇 (gao danguchun)',
            'High Blood Pressure': '高血压 (gao xueya)',
            'Hypothyroidism': '甲减 (jiajian)',
            'Hyperthyroidism': '甲亢 (jiakang)',
            'Kidney Disease': '肾脏疾病 (shenzang jibing)',
            'Leukemia': '白血病 (baixiebing)',
            'Liver Disease': '肝病 (ganbing )',
            'Hepatitis': '肝炎 (ganyan)',
            'Osteoporosis': '骨质疏松症 (guzhi shusong zheng)',
            'Pancreatitis': '胰腺炎 (Yixian yan)',
            'Peripheral Vascular Disease': '周围血管疾病 (zhouwei xieguan jibing)',
            'Pulmonary Embolism': '肺栓塞 (fei suansai)',
            'Reflux or GERD': '胃食管反流 (weishiguan fanliu)',
            'Seizures': '癫痫 (dianxian)',
            'Sleep Apnea': '睡眠呼吸暂停 (zhuimian huxi zhanting)',
            'Stroke': '中风 (zhongfeng)',
            'Other': '其他 (qita)',
            'Do You Have Any Of the Following Medical Conditions?': '您有没有以下任何病状 (nin youmeiyou yixia renhe bingzhuang)?',
            'Bleeding Problems': '出血问题 (chuxue wenti)',
            'Von Willebrand Hemophilia A (Factor 8 deficiency)': '温韦伯氏疾病(wenweiboshi jibing)',
            'Hemophilia A (Factor 8 deficiency)': 'A型血友病 （8号因子缺乏）(A xing xueyoubing (8 hao yinzi quefa))',
            'Hemophilia B (Christmas disease)': 'B型血友病 （圣诞节病）(B xing xueyou bing ( shengdan jie bing))',
            'Factor 5 Leiden': '莱顿因子5  (laidun yinzi 5)',
            'Factor 2 deficiency': '因子2缺陷  (yinzi 2 quexian)',
            'Factor 7 deficiency': '因子7 缺陷 (yinzi 7 quexian)',
            'Factor 10 deficiency': '因子10 缺陷 (yinzi 10 quexian)',
            'Factor 12 deficiency': '因子12 缺陷 (yinzi 12 quexian)',
            'Other': '其他 (qita)',
            'Cancer': '癌症 (aizheng)',
            'Breast': '乳房 (rufang)',
            'Prostate': '前列腺 (qianliexian)',
            'Lung': '肺 (fei)',
            'Colon / Colorectal': '结肠 /结直肠 (dachang /jiezhichang)',
            'Kidney': '肾 (shen)',
            'Bladder': '膀胱 (pangguang)',
            'Thyroid': '甲状腺 (jiazhuang xian)',
            'Lymphoma': '淋巴瘤 (linba liu)',
            'Melanoma': '黑色素瘤 (heise suliu)',
            'Endometrial': '子宫内膜 (zigong neimo)',
            'Leukemia': '白血病 (baixue bing)',
            'Pancreatic': '胰 (yi)',
            'Liver': '肝 (gan)',
            'Other': '其他 (qita)',
            'Hepatitis': '肝炎 (ganyan)',
            'Auto - immune': '自身免疫 aishen mianyi)',
            'Alcohol - induced': '酒精诱导 (jiujing youdao )',
            'Fatty-Liver': '脂肪肝 (zhifang gan)',
            'Hepatitis A': '甲型肝炎 (jiaxiang ganyan)',
            'Hepatitis B – Active': '乙型肝炎- 活跃 (yixiang ganyan - huoyao)',
            'Hepatitis B – Chronic': '乙型肝炎- 慢性 (yixing ganyan - manxing)',
            'Hepatitis B – Cured': '乙型肝炎- 治愈 (yixing ganyan - zhiyu)',
            'Hepatitis C – Active': '丙行肝炎- 活跃 (bing xing ganyan - huoyao)',
            'Hepatitis C – Chronic': '丙型肝炎-慢性 (bingxing ganyan - manxing)',
            'Hepatitis C – Cured': '丙型肝炎- 治愈 (bingxing ganyan - zhiyu)',
            'Hepatitis D': 'D型肝炎 (D xing ganyan)',
            'Hepatis E': 'E型肝炎 (E xing ganyan)',
            'Other': '其他 (qita)',
            'Have you Ever Had Surgery?': '您有没有动过手术 (nin youmeiyou dongguo shoushu)?',
            'What Type of Surgery?': '什么类型的手术 (shenme leixing de shoushu)?',
            'When Was Your Surgery?': '什么时候动的手术 (shenme shihou dong de shoushu)?',
            'Before 1970': '1970年前 (1970 nian qian)',
            'What Was the Surgeon’s Name?': '手术医生是叫什么名字 (shoushu yisheng jiao shenme mingzi)?',
            'No Previous Surgeries': '没有动过手术 (meiyou dongguo shoushu)',
            'Do You Take Any Medications Regularly?': '您平时有吃什么药吗(nin pingshi you chi shenme yao ma)?',
            'Please Upload Your Medication File (or Take Photograph)': '请上传您的药剂档案（或是拍照）(qing nin shangchuan ninde yaoji danan (huoshi paizhao))',
            'Do You Have a Referral?': '您有医生推荐吗 (nin you yisheng tuijian ma)?',
            'Please Upload Your Referral File (or Take Photograph)': '请上传您的医生推荐信（或是拍照）(qing nin shangchuan ninde yisheng tuijian xin (huoshi paizhao))',
            'Enter Information Manually': '请填写您的资料 (qing tianxie ninde ziliao)',
            'Submit': '提交( tijiao)',

            'No': '没有(mei you)',

            'Never': '决不 (jue bu)',

            'If no, when did you quite smoking': '如果没有,您什么时候戒烟的？(Ruguo meiyou, nin shenme shihou jieyan?)',

            'Cancer.Type ?': '癌症.类型? (Aizheng. Leixing?)',

            'Hepatitis.Type ?': '肝炎.类型？(Ganyan. Leixing?)',

            'Bleeding Problems.Type ?': '出血问题。类型? (Chuxue wenti .Leixing?)',

            'Choose': '选择 (Xuanze)',

            'Add More': '添加更多 (Tianjia geng duo)',

            'Remove': '去掉 (Qudiao)',
        };


        $(document).ready(function () {

            txtFirstName = document.getElementById('first_name');
            txtLastName = document.getElementById('last_name');
            txtBirthday = document.getElementById('birthday');
            txtMedicareNumber = document.getElementById('medicare_number');
            txtExpirationDate = document.getElementById('expiration_date');
            txtEmail = document.getElementById('email');
            txtPhoneNumber = document.getElementById('phone_number');
            livingActivities = document.getElementById('living_activities');
            dateOffWork = document.getElementById('date_offwork');
            neverworkoption = document.getElementById('never_work_option');
            sportsActivites = document.getElementById('sports_activites');
            sportsActivites2 = document.getElementById('1sports_activites');
            sportsActivites3 = document.getElementById('2sports_activites');

            howoftensports = document.getElementById('how_often_sports');
            howoftensports2 = document.getElementById('1how_often_sports');
            howoftensports3 = document.getElementById('2how_often_sports');

            familynameOfDoctor = document.getElementById('family_Doctor');
            handWrite = document.getElementById('hand_write');
            smokeHowmanyYears = document.getElementById('smoke_howmany_years');
            smokeHowmanyPerday = document.getElementById('smoke_howmany_perday');
            smokeOffDate = document.getElementById('smoke_off');

            alcoholHowmanyPerweek = document.getElementById('alcohol_howmany_perweek');
            alcoholOffDate = document.getElementById('alcohol_off');

            recreationalDrugHowmanyPerweeks = document.getElementById('recreationalDrug_howmany_perweeks');
            recreationalDrugWhatDrugs = document.getElementById('recreationalDrug_whatDrugs');

            recreationalDrugHowmanyPerweeks2 = document.getElementById('2recreationalDrug_howmany_perweeks');
            recreationalDrugWhatDrugs2 = document.getElementById('2recreationalDrug_whatDrugs');

            recreationalDrugHowmanyPerweeks3 = document.getElementById('3recreationalDrug_howmany_perweeks');
            recreationalDrugWhatDrugs3 = document.getElementById('3recreationalDrug_whatDrugs');

            recreationalDrugOffDate = document.getElementById('drug_off');

            bleedingProblemsTypes = document.getElementById('bleeding_problemstypes');
            cancerProblemsTypes = document.getElementById('cancer_problemstypes');
            hepatitisProblemTypes = document.getElementById('hepatitis_problemtypes');

            surgeryNames = document.getElementById('surgerynames');
            surgeryDate = document.getElementById('surgery_date');
            surgonName = document.getElementById('surgonname');

            surgeryNames2 = document.getElementById('2surgerynames');
            surgeryDate2 = document.getElementById('2surgery_date');
            surgonName2 = document.getElementById('2surgonname');


            surgeryNames3 = document.getElementById('3surgerynames');
            surgeryDate3 = document.getElementById('3surgery_date');
            surgonName3 = document.getElementById('3surgonname');

            //document.getElementById('handwrite_option_0').innerHTML = 'Hiiiiiiiii';

            languageType = 'English';

            genderselection = '';

            medicalFile = $("[id$=FileUploadMedical]");
            referralFile = $("[id$=FileUploadReferal_]");

            questionnaireformat = document.getElementById('questionnaire_format');

            document.getElementById('Main-Form').menu("disable");

            //alert('est-ce que vous buvez de l\'alcohol?');
        });

        function makeTranslaton(type) {

            var language = null;

            if (type == 'Spanish') {
                language = spanishLanguage;
                languageType = 'Spanish';
            }

            if (type == 'French') {
                language = frenchLanguage;
                languageType = 'French';
            }

            if (type == 'Chinese') {
                language = chineseLanguage;
                languageType = 'Chinese';
            }

            if (type == 'English') {
                location.reload();
                return false;
            }
            //document.getElementsByName('living_activities').options[0].innerHTML = 'hiii';


            document.getElementById('first_name_text').innerHTML = language["First Name"];
            document.getElementById('last_name_text').innerHTML = language["Last Name"];
            document.getElementById('Birthday_text').innerHTML = language["Birthday"];
            document.getElementById('Gender_text').innerHTML = language["Gender"];
            document.getElementById('Male_text').innerHTML = language["Male"];
            document.getElementById('Female_text').innerHTML = language["Female"];
            document.getElementById('Other_gender_text').innerHTML = language["Other/Prefer not to answer"];
            document.getElementById('MedicareNumber_text').innerHTML = language["Medicare Number"];
            //document.getElementById('yes_medicalnumber_text').innerHTML = language["Yes"];
            document.getElementById('yes_medicalnumber_text').innerHTML = language["Yes"];

            document.getElementById('No_medicalnumber_text').innerHTML = language["No Medicare Card"];
            document.getElementById('Expiration_Date_text').innerHTML = language["Expiration Date"];
            document.getElementById('email_text').innerHTML = language["Email"];
            document.getElementById('family_Doctor_text').innerHTML = language["What is the Name of Your Family Doctor"];

            document.getElementById('PhoneNumber_text').innerHTML = language["Phone Number"];

            document.getElementById('working_text').innerHTML = language["Are You Working Now ?"];
            document.getElementById('yes_working_text').innerHTML = language["Yes"];
            document.getElementById('no_working_text').innerHTML = language["No; Retired"];
            document.getElementById('never_working_text').innerHTML = language["Never Worked"];
            document.getElementById('no_offwork_text').innerHTML = language["If No, Since When Have You Been Off Work?"];
            document.getElementById('never_work_text').innerHTML = language["If Never, Please Select One of the Following Options?"];
            document.getElementById('never_workoption0_text').innerHTML = language["Choose Option"];
            document.getElementById('never_workoption1_text').innerHTML = language["Student"];
            document.getElementById('never_workoption2_text').innerHTML = language["Housewife/Househusband"];
            document.getElementById('never_workoption3_text').innerHTML = language["Other"];
            document.getElementById('living_profession_text').innerHTML = language["Yes; What Do You Do For A Living/What is Your Profession ?"];
            document.getElementById('living_option_0').innerHTML = language["Choose Option"];
            document.getElementById('living_option_1').innerHTML = language["Accountant"];
            document.getElementById('living_option_2').innerHTML = language["Actor / Actress"];
            document.getElementById('living_option_3').innerHTML = language["Architect"];
            document.getElementById('living_option_4').innerHTML = language["Author"];
            document.getElementById('living_option_5').innerHTML = language["Baker"];
            document.getElementById('living_option_6').innerHTML = language["Bricklayer"];
            document.getElementById('living_option_7').innerHTML = language["Bus Driver"];
            document.getElementById('living_option_8').innerHTML = language["Butcher"];
            document.getElementById('living_option_9').innerHTML = language["Carpenter"];
            document.getElementById('living_option_10').innerHTML = language["Cleaner"];
            document.getElementById('living_option_11').innerHTML = language["Chef / Cook"];
            document.getElementById('living_option_12').innerHTML = language["Dentist"];
            document.getElementById('living_option_13').innerHTML = language["Doctor"];
            document.getElementById('living_option_14').innerHTML = language["Refuse Collector"];
            document.getElementById('living_option_15').innerHTML = language["Electrician"];
            document.getElementById('living_option_16').innerHTML = language["Engineer"];
            document.getElementById('living_option_17').innerHTML = language["Factory Worker"];
            document.getElementById('living_option_18').innerHTML = language["Farmer"];
            document.getElementById('living_option_19').innerHTML = language["Fireman/Fire Fighter"];
            document.getElementById('living_option_20').innerHTML = language["Fisherman"];
            document.getElementById('living_option_21').innerHTML = language["Florist"];
            document.getElementById('living_option_22').innerHTML = language["Gardener"];
            document.getElementById('living_option_23').innerHTML = language["Hairdresser"];
            document.getElementById('living_option_24').innerHTML = language["Journalist"];
            document.getElementById('living_option_25').innerHTML = language["Lawyer"];
            document.getElementById('living_option_26').innerHTML = language["Librarian"];
            document.getElementById('living_option_27').innerHTML = language["Mechanic"];
            document.getElementById('living_option_28').innerHTML = language["Model"];
            document.getElementById('living_option_29').innerHTML = language["Nurse"];
            document.getElementById('living_option_30').innerHTML = language["Optician"];
            document.getElementById('living_option_31').innerHTML = language["Orderly"];
            document.getElementById('living_option_32').innerHTML = language["Painter"];
            document.getElementById('living_option_33').innerHTML = language["Pharmacist"];
            document.getElementById('living_option_34').innerHTML = language["Photographer"];
            document.getElementById('living_option_35').innerHTML = language["Pilot"];
            document.getElementById('living_option_36').innerHTML = language["Plumber"];
            document.getElementById('living_option_37').innerHTML = language["Politician"];
            document.getElementById('living_option_38').innerHTML = language["Policeman / Policewoman"];
            document.getElementById('living_option_39').innerHTML = language["Postman"];
            document.getElementById('living_option_40').innerHTML = language["Real Estate Agent"];
            document.getElementById('living_option_41').innerHTML = language["Scientist"];
            document.getElementById('living_option_42').innerHTML = language["Secretary"];
            document.getElementById('living_option_43').innerHTML = language["Soldier"];
            document.getElementById('living_option_44').innerHTML = language["Tailor/Seamstress"];
            document.getElementById('living_option_45').innerHTML = language["Taxi Driver"];
            document.getElementById('living_option_46').innerHTML = language["Teacher"];
            document.getElementById('living_option_47').innerHTML = language["Veterinary Doctor"];
            document.getElementById('living_option_48').innerHTML = language["Waiter/Waitress"];
            document.getElementById('living_option_49').innerHTML = language["Other"];

            // sports 1
            document.getElementById('sports_question_text').innerHTML = language["What Sports/Activities Do You Do?"];
            document.getElementById('sports_option_0').innerHTML = language["Choose Option"];
            document.getElementById('sports_option_1').innerHTML = language["None"];
            document.getElementById('sports_option_2').innerHTML = language["Kayaking"];
            document.getElementById('sports_option_3').innerHTML = language["Canoeing"];
            document.getElementById('sports_option_4').innerHTML = language["Cross – Country Skiing"];
            document.getElementById('sports_option_5').innerHTML = language["Swimming"];
            document.getElementById('sports_option_6').innerHTML = language["Freediving"];
            document.getElementById('sports_option_7').innerHTML = language["Paddleboarding"];
            document.getElementById('sports_option_8').innerHTML = language["Scuba Diving"];
            document.getElementById('sports_option_9').innerHTML = language["Aerobics"];
            document.getElementById('sports_option_10').innerHTML = language["Archery"];
            document.getElementById('sports_option_11').innerHTML = language["Boxing"];
            document.getElementById('sports_option_12').innerHTML = language["Running"];
            document.getElementById('sports_option_13').innerHTML = language["Cycling"];
            document.getElementById('sports_option_14').innerHTML = language["Figure Skating"];
            document.getElementById('sports_option_15').innerHTML = language["Horseback Riding"];
            document.getElementById('sports_option_16').innerHTML = language["Kickboxing"];
            document.getElementById('sports_option_17').innerHTML = language["Ultimate Frisbee"];
            document.getElementById('sports_option_18').innerHTML = language["Walking"];
            document.getElementById('sports_option_19').innerHTML = language["Weightlifting"];
            document.getElementById('sports_option_20').innerHTML = language["Wrestling"];
            document.getElementById('sports_option_21').innerHTML = language["Baseball"];
            document.getElementById('sports_option_22').innerHTML = language["Softball"];
            document.getElementById('sports_option_23').innerHTML = language["Basketball"];
            document.getElementById('sports_option_24').innerHTML = language["Tennis"];
            document.getElementById('sports_option_25').innerHTML = language["Badminton"];
            document.getElementById('sports_option_26').innerHTML = language["Bowling"];
            document.getElementById('sports_option_27').innerHTML = language["Curling"];
            document.getElementById('sports_option_28').innerHTML = language["Soccer"];
            document.getElementById('sports_option_29').innerHTML = language["Football"];
            document.getElementById('sports_option_30').innerHTML = language["Ski"];
            document.getElementById('sports_option_31').innerHTML = language["Hockey"];
            document.getElementById('sports_option_32').innerHTML = language["Other"];
            document.getElementById('how_often_text').innerHTML = language["How Often?"];

            document.getElementById('often_option_0').innerHTML = language["Choose Option"];
            document.getElementById('often_option_1').innerHTML = language["None"];
            document.getElementById('often_option_2').innerHTML = language["Daily"];
            document.getElementById('often_option_3').innerHTML = language["3 times a week"];
            document.getElementById('often_option_4').innerHTML = language["2 times a week"];
            document.getElementById('often_option_5').innerHTML = language["1 time per week"];
            document.getElementById('often_option_6').innerHTML = language["2 - 3 times per Month"];
            document.getElementById('often_option_7').innerHTML = language["Monthly"];
            document.getElementById('often_option_8').innerHTML = language["Rarely"];

            // sports 2

            document.getElementById('1sports_question_text').innerHTML = language["What Sports/Activities Do You Do?"];
            document.getElementById('1sports_option_0').innerHTML = language["Choose Option"];
            document.getElementById('1sports_option_1').innerHTML = language["None"];
            document.getElementById('1sports_option_2').innerHTML = language["Kayaking"];
            document.getElementById('1sports_option_3').innerHTML = language["Canoeing"];
            document.getElementById('1sports_option_4').innerHTML = language["Cross – Country Skiing"];
            document.getElementById('1sports_option_5').innerHTML = language["Swimming"];
            document.getElementById('1sports_option_6').innerHTML = language["Freediving"];
            document.getElementById('1sports_option_7').innerHTML = language["Paddleboarding"];
            document.getElementById('1sports_option_8').innerHTML = language["Scuba Diving"];
            document.getElementById('1sports_option_9').innerHTML = language["Aerobics"];
            document.getElementById('1sports_option_10').innerHTML = language["Archery"];
            document.getElementById('1sports_option_11').innerHTML = language["Boxing"];
            document.getElementById('1sports_option_12').innerHTML = language["Running"];
            document.getElementById('1sports_option_13').innerHTML = language["Cycling"];
            document.getElementById('1sports_option_14').innerHTML = language["Figure Skating"];
            document.getElementById('1sports_option_15').innerHTML = language["Horseback Riding"];
            document.getElementById('1sports_option_16').innerHTML = language["Kickboxing"];
            document.getElementById('1sports_option_17').innerHTML = language["Ultimate Frisbee"];
            document.getElementById('1sports_option_18').innerHTML = language["Walking"];
            document.getElementById('1sports_option_19').innerHTML = language["Weightlifting"];
            document.getElementById('1sports_option_20').innerHTML = language["Wrestling"];
            document.getElementById('1sports_option_21').innerHTML = language["Baseball"];
            document.getElementById('1sports_option_22').innerHTML = language["Softball"];
            document.getElementById('1sports_option_23').innerHTML = language["Basketball"];
            document.getElementById('1sports_option_24').innerHTML = language["Tennis"];
            document.getElementById('1sports_option_25').innerHTML = language["Badminton"];
            document.getElementById('1sports_option_26').innerHTML = language["Bowling"];
            document.getElementById('1sports_option_27').innerHTML = language["Curling"];
            document.getElementById('1sports_option_28').innerHTML = language["Soccer"];
            document.getElementById('1sports_option_29').innerHTML = language["Football"];
            document.getElementById('1sports_option_30').innerHTML = language["Ski"];
            document.getElementById('1sports_option_31').innerHTML = language["Hockey"];
            document.getElementById('1sports_option_32').innerHTML = language["Other"];
            document.getElementById('1how_often_text').innerHTML = language["How Often?"];

            document.getElementById('1often_option_0').innerHTML = language["Choose Option"];
            document.getElementById('1often_option_1').innerHTML = language["None"];
            document.getElementById('1often_option_2').innerHTML = language["Daily"];
            document.getElementById('1often_option_3').innerHTML = language["3 times a week"];
            document.getElementById('1often_option_4').innerHTML = language["2 times a week"];
            document.getElementById('1often_option_5').innerHTML = language["1 time per week"];
            document.getElementById('1often_option_6').innerHTML = language["2 - 3 times per Month"];
            document.getElementById('1often_option_7').innerHTML = language["Monthly"];
            document.getElementById('1often_option_8').innerHTML = language["Rarely"];

            // sports 3

            document.getElementById('2sports_question_text').innerHTML = language["What Sports/Activities Do You Do?"];
            document.getElementById('2sports_option_0').innerHTML = language["Choose Option"];
            document.getElementById('2sports_option_1').innerHTML = language["None"];
            document.getElementById('2sports_option_2').innerHTML = language["Kayaking"];
            document.getElementById('2sports_option_3').innerHTML = language["Canoeing"];
            document.getElementById('2sports_option_4').innerHTML = language["Cross – Country Skiing"];
            document.getElementById('2sports_option_5').innerHTML = language["Swimming"];
            document.getElementById('2sports_option_6').innerHTML = language["Freediving"];
            document.getElementById('2sports_option_7').innerHTML = language["Paddleboarding"];
            document.getElementById('2sports_option_8').innerHTML = language["Scuba Diving"];
            document.getElementById('2sports_option_9').innerHTML = language["Aerobics"];
            document.getElementById('2sports_option_10').innerHTML = language["Archery"];
            document.getElementById('2sports_option_11').innerHTML = language["Boxing"];
            document.getElementById('2sports_option_12').innerHTML = language["Running"];
            document.getElementById('2sports_option_13').innerHTML = language["Cycling"];
            document.getElementById('2sports_option_14').innerHTML = language["Figure Skating"];
            document.getElementById('2sports_option_15').innerHTML = language["Horseback Riding"];
            document.getElementById('2sports_option_16').innerHTML = language["Kickboxing"];
            document.getElementById('2sports_option_17').innerHTML = language["Ultimate Frisbee"];
            document.getElementById('2sports_option_18').innerHTML = language["Walking"];
            document.getElementById('2sports_option_19').innerHTML = language["Weightlifting"];
            document.getElementById('2sports_option_20').innerHTML = language["Wrestling"];
            document.getElementById('2sports_option_21').innerHTML = language["Baseball"];
            document.getElementById('2sports_option_22').innerHTML = language["Softball"];
            document.getElementById('2sports_option_23').innerHTML = language["Basketball"];
            document.getElementById('2sports_option_24').innerHTML = language["Tennis"];
            document.getElementById('2sports_option_25').innerHTML = language["Badminton"];
            document.getElementById('2sports_option_26').innerHTML = language["Bowling"];
            document.getElementById('2sports_option_27').innerHTML = language["Curling"];
            document.getElementById('2sports_option_28').innerHTML = language["Soccer"];
            document.getElementById('2sports_option_29').innerHTML = language["Football"];
            document.getElementById('2sports_option_30').innerHTML = language["Ski"];
            document.getElementById('2sports_option_31').innerHTML = language["Hockey"];
            document.getElementById('2sports_option_32').innerHTML = language["Other"];
            document.getElementById('2how_often_text').innerHTML = language["How Often?"];

            document.getElementById('2often_option_0').innerHTML = language["Choose Option"];
            document.getElementById('2often_option_1').innerHTML = language["None"];
            document.getElementById('2often_option_2').innerHTML = language["Daily"];
            document.getElementById('2often_option_3').innerHTML = language["3 times a week"];
            document.getElementById('2often_option_4').innerHTML = language["2 times a week"];
            document.getElementById('2often_option_5').innerHTML = language["1 time per week"];
            document.getElementById('2often_option_6').innerHTML = language["2 - 3 times per Month"];
            document.getElementById('2often_option_7').innerHTML = language["Monthly"];
            document.getElementById('2often_option_8').innerHTML = language["Rarely"];

            // hand

            document.getElementById('handwrite_text').innerHTML = language["What Hand Do You Write With?"];
            document.getElementById('handwrite_option_0').innerHTML = language["Choose Option"];
            //document.getElementById('handwrite_option_0').innerHTML = 'Hiiiiiiiii';
            document.getElementById('handwrite_option_1').innerHTML = language["Right"];
            document.getElementById('handwrite_option_2').innerHTML = language["Left"];
            document.getElementById('handwrite_option_3').innerHTML = language["Ambidextrous"];

            document.getElementById('smoke_question_text').innerHTML = language["Do You Smoke?"];
            document.getElementById('yes_smoke_text').innerHTML = language["Yes"];
            document.getElementById('no_smoke_text').innerHTML = language["No"];
            document.getElementById('never_smoke_text').innerHTML = language["Never"];
            document.getElementById('no_since_smoke_text').innerHTML = language["If no, when did you quite smoking"];
            document.getElementById('yes_years_smoke_text').innerHTML = language["If Yes, For How Many Years?"];
            document.getElementById('more_than_20_years').innerHTML = language["More than 20 years"];
            document.getElementById('cigarettes_text').innerHTML = language["How Many Cigarettes Per Day"];
            document.getElementById('more_than_1_pack').innerHTML = language["More than 1 Pack"];

            document.getElementById('Drink_alcohol_text').innerHTML = language["Do You Drink Alcohol"];
            document.getElementById('yes_alcohol_text').innerHTML = language["Yes"];
            document.getElementById('no_alcohol_text').innerHTML = language["No"];
            //document.getElementById('no_since_alcohol').innerHTML = language["If No, Since When Have You Been Off Work?"];
            document.getElementById('yes_drinks_alcohol').innerHTML = language["If Yes, How Many Drinks Per Week"];
            document.getElementById('drinks_more_than_20').innerHTML = language["More than 20 Drinks"];

            // recreational drugs
            document.getElementById('recreational_text').innerHTML = language["Do You Take Any Recreational Drugs Or Herbal / Natural Remedies?"];
            document.getElementById('yes_recreational_text').innerHTML = language["Yes"];
            document.getElementById('no_recreational_text').innerHTML = language["No"];
            document.getElementById('never_recreational_text').innerHTML = language["Never Taken"];
            document.getElementById('no_since_recreational_text').innerHTML = language["If No, Since When Have You Been Off The Drug?"];

            // recreational drugs1
            document.getElementById('yes_often_recreational_text').innerHTML = language["If Yes, How Often Do You Take The Drug Or Herbal / Natural Remedies?"];
            document.getElementById('recreational_often_option_0').innerHTML = language["Choose Option"];
            document.getElementById('recreational_often_option_1').innerHTML = language["Rarely"];
            document.getElementById('recreational_often_option_2').innerHTML = language["Monthly"];
            document.getElementById('recreational_often_option_3').innerHTML = language["Weekly"];
            document.getElementById('recreational_often_option_4').innerHTML = language["Daily"];
            document.getElementById('recreational_often_option_5').innerHTML = language["2 or more times per day"];

            document.getElementById('recreational_what_text').innerHTML = language["If Yes, Which Drug or Herbal / Natural Remedy do you Use?"];
            document.getElementById('recreational_what_option_0').innerHTML = language["Choose Option"];
            document.getElementById('recreational_what_option_1').innerHTML = language["chondroitin"];
            document.getElementById('recreational_what_option_2').innerHTML = language["glucosamine"];
            document.getElementById('recreational_what_option_3').innerHTML = language["ginger"];
            document.getElementById('recreational_what_option_4').innerHTML = language["ginkgo biloba"];
            document.getElementById('recreational_what_option_5').innerHTML = language["ginseng"];
            document.getElementById('recreational_what_option_6').innerHTML = language["st - John’s Wort"];
            document.getElementById('recreational_what_option_7').innerHTML = language["turmeric"];
            document.getElementById('recreational_what_option_8').innerHTML = language["Canabis / Marijuana"];
            document.getElementById('recreational_what_option_9').innerHTML = language["Stimulants (e.g.cocaine, amphetamines,methamphetamine, ecstacy[MDMA]) "];
            document.getElementById('recreational_what_option_10').innerHTML = language["Opium - related painkillers (e.g.heroin, morphine, fentanyl, oxycodone, dilaudid)"];
            document.getElementById('recreational_what_option_11').innerHTML = language["Hallucinogens (e.g.LSD)"];
            document.getElementById('recreational_what_option_12').innerHTML = language["Benzodiazepines (e.g.ativan, valium)"];
            document.getElementById('recreational_what_option_13').innerHTML = language["Ketamine"];
            document.getElementById('recreational_what_option_14').innerHTML = language["Ritalin"];
            document.getElementById('recreational_what_option_15').innerHTML = language["Other"];

            // recreational drugs2
            document.getElementById('2yes_often_recreational_text').innerHTML = language["If Yes, How Often Do You Take The Drug Or Herbal / Natural Remedies?"];
            document.getElementById('2recreational_often_option_0').innerHTML = language["Choose Option"];
            document.getElementById('2recreational_often_option_1').innerHTML = language["Rarely"];
            document.getElementById('2recreational_often_option_2').innerHTML = language["Monthly"];
            document.getElementById('2recreational_often_option_3').innerHTML = language["Weekly"];
            document.getElementById('2recreational_often_option_4').innerHTML = language["Daily"];
            document.getElementById('2recreational_often_option_5').innerHTML = language["2 or more times per day"];

            document.getElementById('2recreational_what_text').innerHTML = language["If Yes, Which Drug or Herbal / Natural Remedy do you Use?"];
            document.getElementById('2recreational_what_option_0').innerHTML = language["Choose Option"];
            document.getElementById('2recreational_what_option_1').innerHTML = language["chondroitin"];
            document.getElementById('2recreational_what_option_2').innerHTML = language["glucosamine"];
            document.getElementById('2recreational_what_option_3').innerHTML = language["ginger"];
            document.getElementById('2recreational_what_option_4').innerHTML = language["ginkgo biloba"];
            document.getElementById('2recreational_what_option_5').innerHTML = language["ginseng"];
            document.getElementById('2recreational_what_option_6').innerHTML = language["st - John’s Wort"];
            document.getElementById('2recreational_what_option_7').innerHTML = language["turmeric"];
            document.getElementById('2recreational_what_option_8').innerHTML = language["Canabis / Marijuana"];
            document.getElementById('2recreational_what_option_9').innerHTML = language["Stimulants (e.g.cocaine, amphetamines,methamphetamine, ecstacy[MDMA]) "];
            document.getElementById('2recreational_what_option_10').innerHTML = language["Opium - related painkillers (e.g.heroin, morphine, fentanyl, oxycodone, dilaudid)"];
            document.getElementById('2recreational_what_option_11').innerHTML = language["Hallucinogens (e.g.LSD)"];
            document.getElementById('2recreational_what_option_12').innerHTML = language["Benzodiazepines (e.g.ativan, valium)"];
            document.getElementById('2recreational_what_option_13').innerHTML = language["Ketamine"];
            document.getElementById('2recreational_what_option_14').innerHTML = language["Ritalin"];
            document.getElementById('2recreational_what_option_15').innerHTML = language["Other"];
            // recreational drugs3
            document.getElementById('3yes_often_recreational_text').innerHTML = language["If Yes, How Often Do You Take The Drug Or Herbal / Natural Remedies?"];
            document.getElementById('3recreational_often_option_0').innerHTML = language["Choose Option"];
            document.getElementById('3recreational_often_option_1').innerHTML = language["Rarely"];
            document.getElementById('3recreational_often_option_2').innerHTML = language["Monthly"];
            document.getElementById('3recreational_often_option_3').innerHTML = language["Weekly"];
            document.getElementById('3recreational_often_option_4').innerHTML = language["Daily"];
            document.getElementById('3recreational_often_option_5').innerHTML = language["2 or more times per day"];

            document.getElementById('3recreational_what_text').innerHTML = language["If Yes, Which Drug or Herbal / Natural Remedy do you Use?"];
            document.getElementById('3recreational_what_option_0').innerHTML = language["Choose Option"];
            document.getElementById('3recreational_what_option_1').innerHTML = language["chondroitin"];
            document.getElementById('3recreational_what_option_2').innerHTML = language["glucosamine"];
            document.getElementById('3recreational_what_option_3').innerHTML = language["ginger"];
            document.getElementById('3recreational_what_option_4').innerHTML = language["ginkgo biloba"];
            document.getElementById('3recreational_what_option_5').innerHTML = language["ginseng"];
            document.getElementById('3recreational_what_option_6').innerHTML = language["st - John’s Wort"];
            document.getElementById('3recreational_what_option_7').innerHTML = language["turmeric"];
            document.getElementById('3recreational_what_option_8').innerHTML = language["Canabis / Marijuana"];
            document.getElementById('3recreational_what_option_9').innerHTML = language["Stimulants (e.g.cocaine, amphetamines,methamphetamine, ecstacy[MDMA]) "];
            document.getElementById('3recreational_what_option_10').innerHTML = language["Opium - related painkillers (e.g.heroin, morphine, fentanyl, oxycodone, dilaudid)"];
            document.getElementById('3recreational_what_option_11').innerHTML = language["Hallucinogens (e.g.LSD)"];
            document.getElementById('3recreational_what_option_12').innerHTML = language["Benzodiazepines (e.g.ativan, valium)"];
            document.getElementById('3recreational_what_option_13').innerHTML = language["Ketamine"];
            document.getElementById('3recreational_what_option_14').innerHTML = language["Ritalin"];
            document.getElementById('3recreational_what_option_15').innerHTML = language["Other"];

            // medical

            document.getElementById('medical_conditions_text').innerHTML = language["Do You Have Any Of the Following Medical Conditions?"];
            document.getElementById('medical_AIDS_or_HIV').innerHTML = language["AIDS or HIV"];
            document.getElementById('medical_Alcohol_Dependency_or_Abuse').innerHTML = language["Alcohol Dependency or Abuse"];
            document.getElementById('medical_Anemia').innerHTML = language["Anemia"];
            document.getElementById('medical_Anxiety').innerHTML = language["Anxiety"];
            document.getElementById('medical_Arthritis').innerHTML = language["Arthritis"];
            document.getElementById('medical_BleedingProblems').innerHTML = language["Bleeding Problems"];
            document.getElementById('medical_BloodClots').innerHTML = language["Blood Clots"];
            document.getElementById('medical_Cancer').innerHTML = language["Cancer"];
            document.getElementById('medical_Dementia').innerHTML = language["Dementia"];
            document.getElementById('medical_ChronicObstructive').innerHTML = language["Chronic Obstructive Pulmonary Disease or Emphysema"];
            document.getElementById('medical_Depression').innerHTML = language["Depression"];
            document.getElementById('medical_DrugDependency').innerHTML = language["Drug Dependency or Abuse"];
            document.getElementById('medical_Diabetes').innerHTML = language["Diabetes"];
            document.getElementById('medical_Gout').innerHTML = language["Gout"];
            document.getElementById('medical_HeartDisease').innerHTML = language["Heart Disease"];
            document.getElementById('medical_HeartArrythmia').innerHTML = language["Heart Arrythmia"];
            document.getElementById('medical_HighCholesterol').innerHTML = language["High Cholesterol"];
            document.getElementById('medical_HighBloodPressure').innerHTML = language["High Blood Pressure"];
            document.getElementById('medical_Hypothyroidism').innerHTML = language["Hypothyroidism"];
            document.getElementById('medical_Hyperthyroidism').innerHTML = language["Hyperthyroidism"];
            document.getElementById('medical_KidneyDisease').innerHTML = language["Kidney Disease"];
            document.getElementById('medical_Leukemia').innerHTML = language["Leukemia"];
            document.getElementById('medical_LiverDisease').innerHTML = language["Liver Disease"];
            document.getElementById('medical_Hepatitis').innerHTML = language["Hepatitis"];
            document.getElementById('medical_Osteoporosis').innerHTML = language["Osteoporosis"];
            document.getElementById('medical_Pancreatitis').innerHTML = language["Pancreatitis"];
            document.getElementById('medical_PeripheralVascularDisease').innerHTML = language["Peripheral Vascular Disease"];
            document.getElementById('medical_Pulmonary').innerHTML = language["Pulmonary Embolism"];
            document.getElementById('medical_RefluxorGERD').innerHTML = language["Reflux or GERD"];
            document.getElementById('medical_Seizures').innerHTML = language["Seizures"];
            document.getElementById('medical_SleepApnea').innerHTML = language["Sleep Apnea"];
            document.getElementById('medical_Stroke').innerHTML = language["Stroke"];
            document.getElementById('medical_Other').innerHTML = language["Other"];

            document.getElementById('bleeding_problems_text').innerHTML = language["Bleeding Problems.Type ?"];
            document.getElementById('bleeding_option_0').innerHTML = language["Choose Option"];
            document.getElementById('bleeding_option_1').innerHTML = language["Von Willebrand Hemophilia A (Factor 8 deficiency)"];
            document.getElementById('bleeding_option_2').innerHTML = language["Hemophilia B (Christmas disease)"];
            document.getElementById('bleeding_option_3').innerHTML = language["Factor 5 Leiden"];
            document.getElementById('bleeding_option_4').innerHTML = language["Factor 2 deficiency"];
            document.getElementById('bleeding_option_5').innerHTML = language["Factor 7 deficiency"];
            document.getElementById('bleeding_option_6').innerHTML = language["Factor 10 deficiency"];
            document.getElementById('bleeding_option_7').innerHTML = language["Factor 12 deficiency"];
            document.getElementById('bleeding_option_8').innerHTML = language["Other"];

            document.getElementById('Cancer_type_text').innerHTML = language["Cancer.Type ?"];

            document.getElementById('breast_option_0').innerHTML = language["Choose Option"];
            document.getElementById('breast_option_1').innerHTML = language["Breast"];
            document.getElementById('breast_option_2').innerHTML = language["Prostate"];
            document.getElementById('breast_option_3').innerHTML = language["Lung"];
            document.getElementById('breast_option_4').innerHTML = language["Colon / Colorectal"];
            document.getElementById('breast_option_5').innerHTML = language["Kidney"];
            document.getElementById('breast_option_6').innerHTML = language["Bladder"];
            document.getElementById('breast_option_7').innerHTML = language["Thyroid"];
            document.getElementById('breast_option_8').innerHTML = language["Lymphoma"];
            document.getElementById('breast_option_9').innerHTML = language["Melanoma"];
            document.getElementById('breast_option_10').innerHTML = language["Endometrial"];
            document.getElementById('breast_option_11').innerHTML = language["Leukemia"];
            document.getElementById('breast_option_12').innerHTML = language["Pancreatitis"];
            document.getElementById('breast_option_13').innerHTML = language["Liver"];
            document.getElementById('breast_option_14').innerHTML = language["Other"];

            document.getElementById('Hepatitis_problem_text').innerHTML = language["Hepatitis.Type ?"];

            document.getElementById('Hepatitis_option_0').innerHTML = language["Choose Option"];
            document.getElementById('Hepatitis_option_1').innerHTML = language["Auto - immune"];
            document.getElementById('Hepatitis_option_2').innerHTML = language["Alcohol - induced"];
            document.getElementById('Hepatitis_option_3').innerHTML = language["Hepatitis A"];
            document.getElementById('Hepatitis_option_4').innerHTML = language["Hepatitis B – Active"];
            document.getElementById('Hepatitis_option_5').innerHTML = language["Hepatitis B – Chronic"];
            document.getElementById('Hepatitis_option_6').innerHTML = language["Hepatitis B – Cured"];
            document.getElementById('Hepatitis_option_7').innerHTML = language["Hepatitis C – Active"];
            document.getElementById('Hepatitis_option_8').innerHTML = language["Hepatitis C – Chronic"];
            document.getElementById('Hepatitis_option_9').innerHTML = language["Hepatitis C – Cured"];
            document.getElementById('Hepatitis_option_10').innerHTML = language["Hepatitis D"];
            document.getElementById('Hepatitis_option_11').innerHTML = language["Hepatis E"];
            document.getElementById('Hepatitis_option_12').innerHTML = language["Fatty-Liver"];
            document.getElementById('Hepatitis_option_13').innerHTML = language["Other"];

            document.getElementById('surgery_question_text').innerHTML = language["Have you Ever Had Surgery?"];
            document.getElementById('yes_surgery_text').innerHTML = language["Yes"];
            document.getElementById('no_surgery_text').innerHTML = language["No Previous Surgeries"];

            //surgery medical
            document.getElementById('surgery_type_text').innerHTML = language["What Type of Surgery?"];
            document.getElementById('surgery_date_text').innerHTML = language["When Was Your Surgery?"];
            document.getElementById('Before_1970_text').innerHTML = language["Before 1970"];
            document.getElementById('surgeon_name_text').innerHTML = language["What Was the Surgeon’s Name?"];
            //surgery medical 2

            document.getElementById('2surgery_type_text').innerHTML = language["What Type of Surgery?"];
            document.getElementById('2surgery_date_text').innerHTML = language["When Was Your Surgery?"];
            document.getElementById('2Before_1970_text').innerHTML = language["Before 1970"];
            document.getElementById('2surgeon_name_text').innerHTML = language["What Was the Surgeon’s Name?"];
            //surgery medical 3
            document.getElementById('3surgery_type_text').innerHTML = language["What Type of Surgery?"];
            document.getElementById('3surgery_date_text').innerHTML = language["When Was Your Surgery?"];
            document.getElementById('3Before_1970_text').innerHTML = language["Before 1970"];
            document.getElementById('3surgeon_name_text').innerHTML = language["What Was the Surgeon’s Name?"];


            document.getElementById('medications_regularly_text').innerHTML = language["Do You Take Any Medications Regularly?"];
            document.getElementById('yes_medications_regularly_text').innerHTML = language["Yes"];
            document.getElementById('no_medications_regularly_text').innerHTML = language["No"];
            document.getElementById('upload_file_medication_text').innerHTML = language["Please Upload Your Medication File (or Take Photograph)"];
            document.getElementById('referral_text').innerHTML = language["Do You Have a Referral?"];
            document.getElementById('yes_referral_text').innerHTML = language["Yes"];
            document.getElementById('no_referral_text').innerHTML = language["No"];
            document.getElementById('referral_file_text').innerHTML = language["Please Upload Your Referral File (or Take Photograph)"];


            document.getElementById('medical_file_button').innerHTML = language["Choose"];
            document.getElementById('referral_button').innerHTML = language["Choose"];

            document.getElementById('submit_button_text').innerHTML = language["Submit"];


            //buttons addmore - remove

            document.getElementById('sport-activity-add-1').innerHTML = language["Add More"];
            document.getElementById('sport-activity-add-2').innerHTML = language["Add More"];
            document.getElementById('sport-activity-remove-2').innerHTML = language["Remove"];
            document.getElementById('sport-activity-remove-3').innerHTML = language["Remove"];

            document.getElementById('drug-aften-add-1').innerHTML = language["Add More"];
            document.getElementById('drug-aften-remove-2').innerHTML = language["Remove"];
            document.getElementById('drug-aften-add-2').innerHTML = language["Add More"];
            document.getElementById('drug-aften-remove-3').innerHTML = language["Remove"];

            document.getElementById('surgery-medical-add-1').innerHTML = language["Add More"];
            document.getElementById('surgery-medical-add-2').innerHTML = language["Add More"];
            document.getElementById('surgery-medical-remove-2').innerHTML = language["Remove"];
            document.getElementById('surgery-medical-remove-3').innerHTML = language["Remove"];

        }

        function no_medicare_card_changed(termsCheckBox) {


            if (termsCheckBox.checked) {
                $("#medicare_number").prop("disabled", true);
                $("#medicare_number").prop("style", "background-color: #D3D3D3;");
                $("#medicare_number").val("");
                $("#expiration_date_Box").hide();


            } else {
                $("#medicare_number").prop("disabled", false);
                $("#medicare_number").prop("style", "background-color: #fafafa;");

                //    $("#expiration_date_Box").show();
            }
        }
        function yes_medicare_card_changed(termsCheckBox) {

            if (termsCheckBox.checked) {
                $("#medicare_number").prop("disabled", false);
                $("#medicare_number").prop("style", "background-color: #fafafa;");
                //   $("#expiration_date_Box").show();
            } else {
                $("#medicare_number").prop("disabled", true);
                $("#medicare_number").prop("style", "background-color: #D3D3D3;");
                $("#medicare_number").val("");
                $("#expiration_date_Box").hide();
            }
        }
        function never_offworking_changed(termsCheckBox) {

            if (termsCheckBox.checked) {
                $("#date_offwork_Box").hide();
                $("#never_offwork_Box").show();
                $("#living_activities_Box").hide();

            } else {
                $("#never_offwork_Box").hide();
            }
        }
        function no_offworking_changed(termsCheckBox) {

            if (termsCheckBox.checked) {
                $("#date_offwork_Box").show();
                $("#never_offwork_Box").hide();
                $("#living_activities_Box").hide();
            } else {
                $("#date_offwork_Box").hide();
            }
        }
        function yes_offworking_changed(termsCheckBox) {

            if (termsCheckBox.checked) {
                $("#date_offwork_Box").hide();
                $("#never_offwork_Box").hide();
                $("#living_activities_Box").show();
            }
            else {
                $("#living_activities_Box").hide();
            }
        }
        function no_smoke_changed(termsCheckBox) {

            if (termsCheckBox.checked) {
                $("#smoke_off_Box").show();
                $("#how_many_cigarettes_perday").hide();
                $("#How_many_years_smoke").hide();
            } else {
                $("#smoke_off_Box").hide();
                $("#how_many_cigarettes_perday").show();
                $("#How_many_years_smoke").show();
            }
        }
        function yes_smoke_changed(termsCheckBox) {

            if (termsCheckBox.checked) {
                $("#smoke_off_Box").hide();
                $("#how_many_cigarettes_perday").show();
                $("#How_many_years_smoke").show();

            } else {
                $("#smoke_off_Box").show();
                $("#how_many_cigarettes_perday").hide();
                $("#How_many_years_smoke").hide();
            }
        }
        function never_smoke_changed(termsCheckBox) {
            if (termsCheckBox.checked) {
                $("#smoke_off_Box").hide();
                $("#how_many_cigarettes_perday").hide();
                $("#How_many_years_smoke").hide();
            }
        }
        function no_alcohol_changed(termsCheckBox) {

            if (termsCheckBox.checked) {
                //$("#alcohol_off_Box").show();
                $("#How_many_weeks_alcohol").hide();
            } else {
                //$("#alcohol_off_Box").hide();
                $("#How_many_weeks_alcohol").show();
            }
        }
        function yes_alcohol_changed(termsCheckBox) {

            if (termsCheckBox.checked) {
                //$("#alcohol_off_Box").hide();
                $("#How_many_weeks_alcohol").show();

            } else {
                //$("#alcohol_off_Box").show();
                $("#How_many_weeks_alcohol").hide();
            }
        }
        function never_alcohol_changed(termsCheckBox) {
            //if (termsCheckBox.checked) {
            //    $("#alcohol_off_Box").hide();
            //    $("#How_many_weeks_alcohol").hide();
            //}
        }

        function no_drug_changed(termsCheckBox) {

            if (termsCheckBox.checked) {
                $("#drug_off_Box").show();
                $("#How_many_weeks_drug").hide();
                $("#what_drug").hide();

                $("#what_drug_parent3").hide();
                $("#what_drug_parent2").hide();

            } else {
                $("#drug_off_Box").hide();
                $("#How_many_weeks_drug").show();
                $("#what_drug").show();
            }
        }
        function yes_drug_changed(termsCheckBox) {

            if (termsCheckBox.checked) {
                $("#drug_off_Box").hide();
                $("#How_many_weeks_drug").show();
                $("#what_drug").show();
            } else {
                $("#drug_off_Box").show();
                $("#How_many_weeks_drug").hide();
                $("#what_drug").hide();

            }
        }
        function never_drug_changed(termsCheckBox) {
            if (termsCheckBox.checked) {
                $("#drug_off_Box").hide();
                $("#How_many_weeks_drug").hide();
                $("#what_drug").hide();

                $("#what_drug_parent3").hide();
                $("#what_drug_parent2").hide();

            }
        }

        function no_surgery_changed(termsCheckBox) {

            if (termsCheckBox.checked) {
                $("#surgery_date_Box").hide();
                $("#surgon_name").hide();
                $("#surgery_names").hide();

                $("#surgery_main_parent2").hide();
                $("#surgery_main_parent3").hide();

            } else {
                $("#surgery_date_Box").show();
                $("#surgery_names").show();
                $("#surgon_name").show();
            }
        }
        function yes_surgery_changed(termsCheckBox) {

            if (termsCheckBox.checked) {
                $("#surgery_date_Box").show();
                $("#surgon_name").show();
                $("#surgery_names").show();
            } else {
                $("#surgery_date_Box").hide();
                $("#surgon_name").hide();
                $("#surgery_names").hide();

                $("#surgery_main_parent2").hide();
                $("#surgery_main_parent3").hide();
            }
        }
        function yes_file_medication_changed(termsCheckBox) {
            if (termsCheckBox.checked) {
                $("#Box_medical_file_form").show();
            } else {
                $("#Box_medical_file_form").hide();
            }
        }
        function no_file_medication_changed(termsCheckBox) {

            if (termsCheckBox.checked) {
                $("#Box_medical_file_form").hide();
            } else {
                $("#Box_medical_file_form").show();

            } yes_file_medication_changed
        }

        function yes_referral_changed(termsCheckBox) {
            if (termsCheckBox.checked) {
                $("#Box_referral_form").show();
            } else {
                $("#Box_referral_form").hide();
            }
        }
        function no_referral_changed(termsCheckBox) {

            if (termsCheckBox.checked) {
                $("#Box_referral_form").hide();
            } else {
                $("#Box_referral_form").show();

            }
        }
        function BleedingProblems_changed(termsCheckBox) {
            if (termsCheckBox.checked) {
                $("#bleeding_problems").show();
            } else {
                $("#bleeding_problems").hide();

            }
        }
        function Cancer_changed(termsCheckBox) {
            if (termsCheckBox.checked) {
                $("#cancer_type").show();
            } else {
                $("#cancer_type").hide();
            }
        }
        function Hepatitis_changed(termsCheckBox) {
            if (termsCheckBox.checked) {
                $("#hepatitis_type").show();
            } else {
                $("#hepatitis_type").hide();
            }
        }
        function button_file_medication_click() {
            //   document.getElementById('medical_file').click();
            $("[id$=FileUploadMedical]").click();
        }
        function change_file_medication_click() {

            //let input = document.getElementById('medical_file');
            let input = $("[id$=FileUploadMedical]");

            console.dir(input);
            if (input != null && input.length > 0) {
                alert('File has been successfully uploaded');
                //document.getElementById('text_medical_file').innerHTML = input.value.match(/[\/\\]([\w\d\s\.\-\(\)]+)$/)[1];
                document.getElementById('text_medical_file').innerHTML = input.val().substring(input.val().lastIndexOf('\\') + 1);
            }

            else {
                document.getElementById('text_medical_file').innerHTML = "No file chosen, yet.";
            }
        }

        function button_referral_click() {
            // document.getElementById('referral_file').click(); FileUploadReferal
            $("[id$=FileUploadReferal_]").click();
        }
        function change_referral_click() {
            //let input = document.getElementById('referral_file');
            let input = $("[id$=FileUploadReferal_]");

            //console.dir(input.files[0]);
            if (input != null && input.length > 0) {
                alert('File has been successfully uploaded');
                document.getElementById('text_referral_file').innerHTML = input.val().substring(input.val().lastIndexOf('\\') + 1);
            }
            else {
                document.getElementById('text_referral_file').innerHTML = "No file chosen, yet.";
            }
        }


        function submit_button_click() {

            //if ($('#sport_activites_parent2:visible').length == 0) {

            //    alert('no');
            //}
            //else {
            //    alert('yes');
            //}

            //alert(handWrite.value);
            //alert(hand_write.selectedIndex);


            //window.open("exit.html", "Thanks for Visiting!");

            //var txtFirstName = document.getElementById('first_name');


            //questionnaireformat.setAttribute("style", "pointer-events: none;");

            txtFirstName.style.backgroundColor = "#fafafa";
            txtLastName.style.backgroundColor = "#fafafa";
            txtBirthday.style.backgroundColor = "#fafafa";

            //txtLastName.style.backgroundColor = "#C0C0C0";


            txtMedicareNumber.style.backgroundColor = "#fafafa";;
            txtExpirationDate.style.backgroundColor = "#fafafa";
            txtEmail.style.backgroundColor = "#fafafa";
            txtPhoneNumber.style.backgroundColor = "#fafafa";
            livingActivities.style.backgroundColor = "#fafafa";
            dateOffWork.style.backgroundColor = "#fafafa";
            sportsActivites.style.backgroundColor = "#fafafa";
            sportsActivites2.style.backgroundColor = "#fafafa";
            sportsActivites3.style.backgroundColor = "#fafafa";

            familynameOfDoctor.style.backgroundColor = "#fafafa";
            handWrite.style.backgroundColor = "#fafafa";
            smokeHowmanyYears.style.backgroundColor = "#fafafa";
            smokeHowmanyPerday.style.backgroundColor = "#fafafa";
            smokeOffDate.style.backgroundColor = "#fafafa";

            alcoholHowmanyPerweek.style.backgroundColor = "#fafafa";
            alcoholOffDate.style.backgroundColor = "#fafafa";

            recreationalDrugHowmanyPerweeks.style.backgroundColor = "#fafafa";
            recreationalDrugWhatDrugs.style.backgroundColor = "#fafafa";


            recreationalDrugHowmanyPerweeks2.style.backgroundColor = "#fafafa";
            recreationalDrugWhatDrugs2.style.backgroundColor = "#fafafa";


            recreationalDrugHowmanyPerweeks3.style.backgroundColor = "#fafafa";
            recreationalDrugWhatDrugs3.style.backgroundColor = "#fafafa";

            recreationalDrugOffDate.style.backgroundColor = "#fafafa";

            bleedingProblemsTypes.style.backgroundColor = "#fafafa";
            cancerProblemsTypes.style.backgroundColor = "#fafafa";
            hepatitisProblemTypes.style.backgroundColor = "#fafafa";

            surgeryNames.style.backgroundColor = "#fafafa";
            surgeryDate.style.backgroundColor = "#fafafa";
            surgonName.style.backgroundColor = "#fafafa";

            surgeryNames2.style.backgroundColor = "#fafafa";
            surgeryDate2.style.backgroundColor = "#fafafa";
            surgonName2.style.backgroundColor = "#fafafa";


            surgeryNames3.style.backgroundColor = "#fafafa";
            surgeryDate3.style.backgroundColor = "#fafafa";
            surgonName3.style.backgroundColor = "#fafafa";


            //medicalFile.style.backgroundColor = "#fafafa";

            //referralFile.style.backgroundColor = "#fafafa";



            if (txtFirstName.value == "") {

                alert("Please fill out your Frist Name");
                txtFirstName.style.backgroundColor = "#ffcfcf";
                return false;
            }
            else if (txtLastName.value == "") {
                alert("Please fill out your Last Name");
                txtLastName.style.backgroundColor = "#ffcfcf";
                return false;
            }
            else if (txtBirthday.value == "") {
                alert("Please fill out your Birthday");
                txtBirthday.style.backgroundColor = "#ffcfcf";
                return false;
            }
            else if (txtMedicareNumber.value == "" && document.getElementById('yes_medicare_card').checked) {
                alert("Please fill out your Medicare Number");
                txtMedicareNumber.style.backgroundColor = "#ffcfcf";
                return false;
            }
            //        else if (txtExpirationDate.value == "" && document.getElementById('yes_medicare_card').checked) {
            //            alert("Please fill out your Expiration Date");
            //             txtExpirationDate.style.backgroundColor = "#ffcfcf";
            //             return false;
            //        }
            //         else if (txtEmail.value == "") {
            //             alert("Please fill out your Email");
            //             txtEmail.style.backgroundColor = "#ffcfcf";
            //             return false;
            //         }
            else if (txtEmail.value != "" && !ValidateEmail(txtEmail)) {
                alert("Please check your Email input, it's wrong!");
                txtEmail.style.backgroundColor = "#ffcfcf";
                return false;
            }
            else if (txtPhoneNumber.value == "") {
                alert("Please fill out your Phone Number");
                txtPhoneNumber.style.backgroundColor = "#ffcfcf";
                return false;
            }
            else if (familynameOfDoctor.value == "") {
                alert("Please write your Family Doctor");
                familynameOfDoctor.style.backgroundColor = "#ffcfcf";
                return false;
            }
            else if (livingActivities.selectedIndex == 0 && document.getElementById('yes_working_question').checked) {
                alert("Please fill out your Living Activities");
                livingActivities.style.backgroundColor = "#ffcfcf";
                return false;
            }
            else if (dateOffWork.value == "" && document.getElementById('no_working_question').checked) {
                alert("Please fill out your off work date");
                dateOffWork.style.backgroundColor = "#ffcfcf";
                return false;
            }
            //else if (neverworkoption.value == "" && document.getElementById('never_working_question').checked) {
            //    alert("Please select one of the work options");
            //    dateOffWork.style.backgroundColor = "#ffcfcf";
            //    return false;
            //}
            else if (sportsActivites.selectedIndex == 0) {
                alert("Please fill out your Sport Activities");
                sportsActivites.style.backgroundColor = "#ffcfcf";
                return false;
            }
            else if (handWrite.selectedIndex == 0) {
                alert("Please fill out your Hand Write");
                handWrite.style.backgroundColor = "#ffcfcf";
                return false;
            }
            else if (smokeHowmanyYears.selectedIndex == 0 && document.getElementById('yes_smoke').checked) {
                alert("Please fill out, How Many Years Do You Smoke");
                smokeHowmanyYears.style.backgroundColor = "#ffcfcf";
                return false;
            }
            else if (smokeHowmanyPerday.selectedIndex == 0 && document.getElementById('yes_smoke').checked) {
                alert("Please fill out, How Many Smoke Per Day");
                smokeHowmanyPerday.style.backgroundColor = "#ffcfcf";
                return false;
            }
            else if (smokeOffDate.value == "" && document.getElementById('no_smoke').checked) {
                alert("Please fill out your Smoke Off Date");
                smokeOffDate.style.backgroundColor = "#ffcfcf";
                return false;
            }
            else if (alcoholHowmanyPerweek.selectedIndex == 0 && document.getElementById('yes_alcohol').checked) {
                alert("Please fill out, How Many Time Do You Drink Per week");
                alcoholHowmanyPerweek.style.backgroundColor = "#ffcfcf";
                return false;
            }
            //else if (alcoholOffDate.value == "" && document.getElementById('no_alcohol').checked) {
            //    alert("Please fill out your Drinking Off Date");
            //    alcoholOffDate.style.backgroundColor = "#ffcfcf";
            //    return false;
            //}
            else if (recreationalDrugHowmanyPerweeks.selectedIndex == 0 && document.getElementById('yes_drug').checked) {
                alert("Please fill out, How Many Recreational Drug Per Week");
                recreationalDrugHowmanyPerweeks.style.backgroundColor = "#ffcfcf";
                return false;
            }
            else if (recreationalDrugWhatDrugs.selectedIndex == 0 && document.getElementById('yes_drug').checked) {
                alert("Please fill out, What Recreational Drug Do you Use");
                recreationalDrugWhatDrugs.style.backgroundColor = "#ffcfcf";
                return false;
            }
            else if (recreationalDrugOffDate.value == "" && document.getElementById('no_drug').checked) {
                alert("Please fill out your Recreational Drug Off Date");
                recreationalDrugOffDate.style.backgroundColor = "#ffcfcf";
                return false;
            }
            else if (bleedingProblemsTypes.selectedIndex == 0 && document.getElementById('BleedingProblems').checked) {
                alert("Please select your Bleeding Problem Type");
                bleedingProblemsTypes.style.backgroundColor = "#ffcfcf";
                return false;
            }
            else if (cancerProblemsTypes.selectedIndex == 0 && document.getElementById('Cancer').checked) {
                alert("Please select your Cancer Problem Type");
                cancerProblemsTypes.style.backgroundColor = "#ffcfcf";
                return false;
            }
            else if (hepatitisProblemTypes.selectedIndex == 0 && document.getElementById('Hepatitis').checked) {
                alert("Please select your Hepatitis Problem Type");
                hepatitisProblemTypes.style.backgroundColor = "#ffcfcf";
                return false;
            }

            else if (surgeryNames.value == "" && document.getElementById('yes_surgery').checked) {
                alert("Please write your Surgery Name");
                surgeryNames.style.backgroundColor = "#ffcfcf";
                return false;
            }
            else if (surgeryDate.value == "" && document.getElementById('yes_surgery').checked) {
                alert("Please fill out your Surgery Date");
                surgeryDate.style.backgroundColor = "#ffcfcf";
                return false;
            }
            else if (surgonName.value == "" && document.getElementById('yes_surgery').checked) {
                alert("Please write your Surgeon's Name");
                surgonName.style.backgroundColor = "#ffcfcf";
                return false;
            }

            else if (medicalFile.value == 'undefined' && document.getElementById('yes_question_file_medication').checked) {
                alert("Please upload your Medical File");
                //      medicalFile.style.backgroundColor = "#ffcfcf";
                return false;
            }
            else if (referralFile.value == 'undefined' && document.getElementById('yes_Referral').checked) {
                alert("Please upload your Referral File");
                //    referralFile.style.backgroundColor = "#ffcfcf";
                return false;
            }



            //....................

            if (document.getElementById('gender_Male').checked) {
                genderselection = 'Male';
            }
            else if (document.getElementById('gender_Female').checked) {
                genderselection = 'Female';
            }
            else if (document.getElementById('gender_Other').checked) {
                genderselection = 'Other/Prefer not to answer';
            }

            if (document.getElementById('no_medicare_card').checked) {
                txtMedicareNumber.value = 'Null';
            }

            //  if (txtExpirationDate.value == "")
            txtExpirationDate.value = 'Null';

            if (txtEmail.value == "")
                txtEmail.value = 'Null@Null.com';

            if (confirm("Are you sure all the information above is correct?")) {


                var userArray = {};

                //alert(document.getElementById("referral_file").src);
                // alert(referralFile.value);

                userArray.Name = txtFirstName.value;
                userArray.Family = txtLastName.value;
                userArray.Email = txtEmail.value;
                userArray.Gender = genderselection;
                userArray.PhoneNumber = txtPhoneNumber.value;
                userArray.MedicareNumber = txtMedicareNumber.value;
                userArray.ExpirationDate = txtExpirationDate.value;
                userArray.Birthday = txtBirthday.value;

                document.getElementById('Main-Form').setAttribute("style", "pointer-events: none;");


                //  questionnaireArray.ReferralImage = 'Images/MedicalFile/' + makeid(10) + medicalFile.value.match(/[\/\\]([\w\d\s\.\-\(\)]+)$/)[1];

                //  questionnaireArray.MedicationFile = 'Images/MedicalFile/' + makeid(10) + medicalFile.value.match(/[\/\\]([\w\d\s\.\-\(\)]+)$/)[1];


                //if (referralFile.files && referralFile.files[0]) {
                //    var reader = new FileReader();

                //    reader.addEventListener(
                //        "load",
                //        function () {
                //            var avatarImg = new Image();
                //            var src = reader.result;
                //            avatarImg.src = src;

                //        //    document.getElementById("dataUrl").innerText = src;

                //             questionnaireArray.ReferralImage = src;


                //            $.ajax({
                //                url: 'Default.aspx/addUserQuestionnaire',
                //                contentType: 'application/json;charset=utf-8',
                //                method: 'post',
                //                data: '{questionnaireForm:' + JSON.stringify(questionnaireArray) + '}',
                //                success: function () {
                //                    //$("#MoneyType").val = "";
                //                    //$("#progress").hide();
                //                    alert("ok");
                //                    //$("#saveSuccess").show();
                //                    //fetchMoneyTypeData();
                //                },
                //                error: function (er) {
                //                    alert(er);
                //                    //$("#saveError").show();
                //                },

                //            });

                //            //avatarImg.onload = function () {
                //            //    var c = document.getElementById("myCanvas");
                //            //    var ctx = c.getContext("2d");
                //            //    ctx.canvas.width = avatarImg.width;
                //            //    ctx.canvas.height = avatarImg.height;

                //            //    ctx.drawImage(avatarImg, 0, 0);
                //            //};
                //        },
                //        false
                //    );

                //    reader.readAsDataURL(referralFile.files[0]);
                //}



                //questionnaireArray.MedicationFile = medicalFile.value;


                //alert($('#referral_file')[0].files.toDataURL("image/png"));
                //      alert(questionnaireArray.MedicationFile);

                //questionnaireArray.ReferralImage = referralFile.value;
                //questionnaireArray.MedicationFile = medicalFile.value;
                //questionnaireArray.ReferralImage = window.URL.createObjectURL(referralFile.files[0]);
                //questionnaireArray.MedicationFile = window.URL.createObjectURL(medicalFile.files[0]);
                //userArray.PersonalPhoto = txtFirstName.value;
                //userArray.MedicarePhoto = txtFirstName.value;
                //userArray.UserId =null;



                // this is ok for user
                //$.ajax({
                //    url: 'Default.aspx/addUser',
                //    contentType: 'application/json;charset=utf-8',
                //    method: 'post',
                //    data: '{user:' + JSON.stringify(userArray) + '}',
                //    success: function () {
                //        //$("#MoneyType").val = "";
                //        //$("#progress").hide();
                //        alert("ok");
                //        //$("#saveSuccess").show();
                //        //fetchMoneyTypeData();
                //    },
                //    error: function (er) {
                //        alert(er);
                //        //$("#saveError").show();
                //    }, 
                //});


                //checkUserExist


                $.ajax({
                    url: 'Default.aspx/checkUserExist',
                    contentType: 'application/json;charset=utf-8',
                    method: 'post',
                    data: '{user:' + JSON.stringify(userArray) + '}',
                    success: function (data) {

                        //  alert(data.d); 
                        //alert("ok");

                        buildAnswers(data.d);
                        // disable
                        alert("Please wait and don't close the tap windows till refreshing the page!");
                    },
                    error: function (er) {
                        alert(er);
                        document.getElementById('Main-Form').setAttribute("style", "pointer-events: auto;");
                        //$("#saveError").show();
                    },
                });



                // THIS IS OK FOR addUserQuestionnaire

                //$.ajax({
                //    url: 'Default.aspx/addUserQuestionnaire',
                //    contentType: 'application/json;charset=utf-8',
                //    method: 'post',
                //    data: '{questionnaireForm:' + JSON.stringify(questionnaireArray) + '}',
                //    success: function () {
                //        //$("#MoneyType").val = "";
                //        //$("#progress").hide();
                //        alert("ok");
                //        //$("#saveSuccess").show();
                //        //fetchMoneyTypeData();
                //    },
                //    error: function (er) {
                //        alert(er);
                //        //$("#saveError").show();
                //    },

                //});





                //var file1 = $("#referral_file").get(0).files;
                //var file2 = $("#medical_file").get(0).files;
                //var data = new FormData;
                // data.append("ImageFile", file[0]);



            }
            else {
                return false;
            }
        }


        function buildAnswers(userId) {

            //var sb = new StringBuilder();
            //sb.AppendLine("Some text with line one");
            //sb.AppendLine("Some mpre text with line two");



            var answer = '';

            answer += 'What Is The Name Of Your Family Doctor?<br />';
            answer += familynameOfDoctor.value; answer += '<br />';

            answer += '<br /><br />';

            answer = 'Are You Working Now ?<br />';
            if (document.getElementById('yes_working_question').checked) {
                answer += 'Yes<br />';
                answer += 'What do you do for a living/what is your profession?<br />';
                answer += livingActivities.value; answer += '<br />';
            }
            else if (document.getElementById('no_working_question').checked) {
                answer += 'No; Retired<br />';
                answer += 'If No, Since When Have You Been Off Work?<br />';
                answer += dateOffWork.value; answer += '<br />';
            }
            else if (document.getElementById('never_working_question').checked) {
                answer += 'Never<br />';
                answer += 'If Never, Please Select One Of The Following ​Options?<br />';
                answer += neverworkoption.value; answer += '<br />';
            }

            answer += '<br /><br />';

            answer += 'What Sports/Activities Do You Do?<br />';
            answer += sportsActivites.value; answer += '<br />';
            answer += 'How Often?<br />';
            answer += howoftensports.value; answer += '<br />';

            // section 2 if selected
            if ($('#sport_activites_parent2:visible').length != 0) {

                answer += 'Second : What Sports/Activities Do You Do?<br />';
                answer += sportsActivites2.value; answer += '<br />';
                answer += 'How Often?<br />';
                answer += howoftensports2.value; answer += '<br />';

            }
            // section 3 if selected
            if ($('#sport_activites_parent3:visible').length != 0) {

                answer += 'Second : What Sports/Activities Do You Do?<br />';
                answer += sportsActivites3.value; answer += '<br />';
                answer += 'How Often?<br />';
                answer += howoftensports3.value; answer += '<br />';
            }


            answer += '<br /><br />';

            answer += 'What Hand Do You Write With?<br />';
            answer += handWrite.value; answer += '<br />';

            answer += '<br /><br />';

            answer += 'Do You Smoke?<br />';
            if (document.getElementById('yes_smoke').checked) {
                answer += 'Yes<br />';
                answer += 'If Yes, For How Many Years?<br />';
                answer += smokeHowmanyYears.value; answer += '<br />';

                answer += 'How Many Cigarettes Per Day?<br />';

                answer += smokeHowmanyPerday.value; answer += '<br />';

            }
            else if (document.getElementById('no_smoke').checked) {
                answer += 'No<br />';
                answer += 'If No, When Did You Quit Smoking?<br />';
                answer += smokeOffDate.value; answer += '<br />';
            }
            else if (document.getElementById('never_smoke').checked) {
                answer += 'Never<br />';
            }

            answer += '<br /><br />';

            answer += 'Do You Drink Alcohol?<br />';
            if (document.getElementById('yes_alcohol').checked) {
                answer += 'Yes<br />';
                answer += 'If Yes, How Many Drinks Per Week?<br />';
                answer += alcoholHowmanyPerweek.value; answer += '<br />';
            }
            else if (document.getElementById('no_alcohol').checked) {
                answer += 'No<br />';
                //answer += 'If No, Since When Have You Been Off Work?\n';
                //answer += alcoholOffDate.value; answer += '\n';
            }

            answer += '<br /><br />';

            answer += 'Do You Take Any Recreational Drugs Or Herbal/Natural Remedies?<br />';
            if (document.getElementById('yes_drug').checked) {
                answer += 'Yes<br />';

                answer += 'If Yes, Which Drug Or Herbal/Natural Remedy Do You Use?​<br />';
                answer += recreationalDrugWhatDrugs.value; answer += '<br />';

                answer += 'If Yes, How Often Do You Take The Drug Or Herbal/Natural Remedies?<br />';
                answer += recreationalDrugHowmanyPerweeks.value; answer += '<br />';


                // section 2 if selected
                if ($('#what_drug_parent2:visible').length != 0) {

                    answer += 'If Yes, Which Drug Or Herbal/Natural Remedy Do You Use?​<br />';
                    answer += recreationalDrugWhatDrugs2.value; answer += '<br />';

                    answer += 'If Yes, How Often Do You Take The Drug Or Herbal/Natural Remedies?<br />';
                    answer += recreationalDrugHowmanyPerweeks2.value; answer += '<br />';

                }
                // section 3 if selected
                if ($('#what_drug_parent3:visible').length != 0) {

                    answer += 'If Yes, Which Drug Or Herbal/Natural Remedy Do You Use?​<br />';
                    answer += recreationalDrugWhatDrugs3.value; answer += '<br />';

                    answer += 'If Yes, How Often Do You Take The Drug Or Herbal/Natural Remedies?<br />';
                    answer += recreationalDrugHowmanyPerweeks3.value; answer += '<br />';
                }

            }
            else if (document.getElementById('no_drug').checked) {
                answer += 'No<br />';
                answer += 'If No, Since When Have You Been Off Drug ?<br />';
                answer += recreationalDrugOffDate.value; answer += '<br />';
            }
            else if (document.getElementById('never_drug').checked) {
                answer += 'Never taken<br />';
            }

            answer += '<br /><br />';

            answer += 'Do You Have Any Of The Following Medical Conditions?<br />';

            if (document.getElementById('AIDS_or_HIV').checked) {
                answer += 'AIDS or HIV<br />';
            }
            if (document.getElementById('Alcohol_Dependency_or_Abuse').checked) {
                answer += 'Alcohol Dependency or Abuse<br />';
            }
            if (document.getElementById('Anemia').checked) {
                answer += 'Anemia<br />';
            }
            if (document.getElementById('Anxiety').checked) {
                answer += 'Anxiety<br />';
            }
            if (document.getElementById('Arthritis').checked) {
                answer += 'Arthritis<br />';
            }
            if (document.getElementById('BleedingProblems').checked) {
                answer += 'Bleeding Problems<br />';
                answer += 'Bleeding Problems. Type?<br />';
                answer += bleedingProblemsTypes.value; answer += '<br />< br />';
            }
            if (document.getElementById('BloodClots').checked) {
                answer += 'BloodClots<br />';
            }
            if (document.getElementById('Cancer').checked) {
                answer += 'Cancer<br />';
                answer += 'Cancer. Type?<br />';
                answer += cancerProblemsTypes.value; answer += '<br />< br />';
            }
            if (document.getElementById('Dementia').checked) {
                answer += 'Dementia<br />';
            }
            if (document.getElementById('ChronicObstructive').checked) {
                answer += 'Chronic Obstructive Pulmonary Disease or Emphysema<br />';
            }
            if (document.getElementById('Depression').checked) {
                answer += 'Depression<br />';
            }
            if (document.getElementById('DrugDependency').checked) {
                answer += 'Drug Dependency or Abuse<br />';
            }
            if (document.getElementById('Diabetes').checked) {
                answer += 'Diabetes<br />';
            }
            if (document.getElementById('Gout').checked) {
                answer += 'Gout<br />';
            }
            if (document.getElementById('HeartDisease').checked) {
                answer += 'Heart Disease<br />';
            }
            if (document.getElementById('HighCholesterol').checked) {
                answer += 'Heart Cholesterol<br />';
            }
            if (document.getElementById('HighBloodPressure').checked) {
                answer += 'High Blood Pressure<br />';
            }
            if (document.getElementById('HeartArrythmia').checked) {
                answer += 'Heart Arrythmia<br />';
            }
            if (document.getElementById('Hypothyroidism').checked) {
                answer += 'Hypothyroidism<br />';
            }
            if (document.getElementById('Hyperthyroidism').checked) {
                answer += 'Hyperthyroidism<br />';
            }
            if (document.getElementById('KidneyDisease').checked) {
                answer += 'KidneyDisease<br />';
            }
            if (document.getElementById('Leukemia').checked) {
                answer += 'Leukemia<br />';
            }
            if (document.getElementById('LiverDisease').checked) {
                answer += 'LiverDisease<br />';

            }
            if (document.getElementById('Hepatitis').checked) {
                answer += 'Hepatitis<br />';
                answer += 'Hepatitis. Type?<br />';
                answer += hepatitisProblemTypes.value; answer += '<br />< br />';

            }
            if (document.getElementById('Osteoporosis').checked) {
                answer += 'Osteoporosis<br />';

            }
            if (document.getElementById('Pancreatitis').checked) {
                answer += 'Pancreatitis<br />';
            }
            if (document.getElementById('PeripheralVascularDisease').checked) {
                answer += 'Peripheral Vascular Disease<br />';

            }
            if (document.getElementById('Pulmonary').checked) {
                answer += 'Pulmonary<br />';

            }
            if (document.getElementById('RefluxorGERD').checked) {
                answer += 'Reflux o GERD<br />';

            }
            if (document.getElementById('Seizures').checked) {
                answer += 'Seizures<br />';

            }
            if (document.getElementById('SleepApnea').checked) {
                answer += 'SleepApnea<br />';
            }

            if (document.getElementById('Stroke').checked) {
                answer += 'Stroke<br />';
            }
            if (document.getElementById('Other').checked) {
                answer += 'Other<br />';
            }


            answer += '<br /><br />';


            answer += 'Have You Had Surgery?<br />';
            if (document.getElementById('yes_surgery').checked) {
                answer += 'Yes<br />';
                answer += 'What Type Of Surgery?<br />';
                answer += surgeryNames.value; answer += '<br />';
                answer += 'When Was Your Surgery?<br />';
                answer += surgeryDate.value; answer += '<br />';
                answer += 'What Was The Surgeon Name?<br />';
                answer += surgonName.value; answer += '<br />';



                // section 2 if selected
                if ($('#surgery_main_parent2:visible').length != 0) {

                    answer += 'What Type Of Surgery?<br />';
                    answer += surgeryNames2.value; answer += '<br />';
                    answer += 'When Was Your Surgery?<br />';
                    answer += surgeryDate2.value; answer += '<br />';
                    answer += 'What Was The Surgeon Name?<br />';
                    answer += surgonName2.value; answer += '<br />';

                }
                // section 3 if selected
                if ($('#surgery_main_parent3:visible').length != 0) {

                    answer += 'What Type Of Surgery?<br />';
                    answer += surgeryNames3.value; answer += '<br />';
                    answer += 'When Was Your Surgery?<br />';
                    answer += surgeryDate3.value; answer += '<br />';
                    answer += 'What Was The Surgeon Name?<br />';
                    answer += surgonName3.value; answer += '<br />';
                }

            }
            else if (document.getElementById('no_surgery').checked) {
                answer += 'No previous surgeries<br />';
            }

            answer += '<br /><br />';


            answer += 'Do You Take Any Medications Regularly?<br />';
            if (document.getElementById('yes_question_file_medication').checked) {
                answer += 'Yes<br />';
            }
            else if (document.getElementById('no_question_file_medication').checked) {
                answer += 'No<br />';
            }
            answer += '<br /><br />';
            answer += 'Do You Have A Referral?<br />';
            if (document.getElementById('yes_Referral').checked) {
                answer += 'Yes<br />';
            }
            else if (document.getElementById('no_Referral').checked) {
                answer += 'No<br />';
            }


            var questionnaireArray = {};

            questionnaireArray.QuestionnaireAnswer = answer;
            questionnaireArray.LanguageType = languageType;
            questionnaireArray.UserId = userId;

            var today = new Date();

            var date = today.getFullYear() + '-' + (today.getMonth() + 1) + '-' + today.getDate();

            var time = today.getHours() + ":" + today.getMinutes() + ":" + today.getSeconds();

            var dateTime = date + ' ' + time;


            questionnaireArray.Date = dateTime;


            //var s = document.getElementById('imagePreview');
            //s.src = URL.createObjectURL(file1[0]);
            //document.getElementById("dataUrl").innerText = URL.createObjectURL(file1[0]);

            //  questionnaireArray.ImageFile = file[0];
            questionnaireArray.ReferralImage = "";
            questionnaireArray.MedicationFile = "";


            // in karrr mikoneeeeee $$$$$$$$$$$



            $.ajax({
                url: 'Default.aspx/addUserQuestionnaire',
                contentType: 'application/json;charset=utf-8',
                method: 'post',
                //processData: false,
                data: '{questionnaireForm:' + JSON.stringify(questionnaireArray) + '}',
                success: function () {
                    //$("#MoneyType").val = "";
                    //$("#progress").hide();
                    //alert("ok");
                    checkRegisteration(userId);
                    //  $("[id$=Submit_Button]").click();

                    //$("#saveSuccess").show();
                    //fetchMoneyTypeData();
                },
                error: function (er) {
                    alert('error ' + er);
                    document.getElementById('Main-Form').setAttribute("style", "pointer-events: auto;");
                    //$("#saveError").show();
                },

            });
            console.log(answer);
        }

        // for sports buttons
        function add_sport_activites_parent1_click() {
            $("#sport_activites_parent2").show();

        }

        function add_sport_activites_parent2_click() {
            $("#sport_activites_parent3").show();

        }
        function remove_sport_activites_parent2_click() {
            $("#sport_activites_parent2").hide();

        }

        function remove_sport_activites_parent3_click() {

            $("#sport_activites_parent3").hide();

        }

        // for recreation drugs
        function add_what_drug_parent1_click() {
            $("#what_drug_parent2").show();
        }

        function add_what_drug_parent2_click() {
            $("#what_drug_parent3").show();

        }
        function remove_what_drug_parent2_click() {
            $("#what_drug_parent2").hide();
        }

        function remove_what_drug_parent3_click() {

            $("#what_drug_parent3").hide();

        }

        // for medcal surgery
        function add_surgery_main_parent1_click() {
            $("#surgery_main_parent2").show();
        }

        function add_surgery_main_parent2_click() {
            $("#surgery_main_parent3").show();

        }
        function remove_surgery_main_parent2_click() {
            $("#surgery_main_parent2").hide();
        }

        function remove_surgery_main_parent3_click() {

            $("#surgery_main_parent3").hide();

        }



        function checkRegisteration(userId) {


            $.ajax({
                url: 'Default.aspx/checkRegisteration',
                contentType: 'application/json;charset=utf-8',
                method: 'post',
                //processData: false,
                data: '{userId:' + JSON.stringify(userId) + '}',
                success: function (data) {


                    if (data.d) {
                        window.open("Confirmation.aspx", "_blank");

                    }
                    else {
                        window.open("Password.aspx?pid=" + userId, "_blank");
                        //alert('Ji');
                    }


                    $("[id$=Submit_Button]").click();

                },
                error: function (er) {
                    alert('error ' + er);
                    document.getElementById('Main-Form').setAttribute("style", "pointer-events: auto;");
                    //$("#saveError").show();
                },

            });
        }

        function sports_activites_changed() {

            if (sportsActivites.selectedIndex == 1) {

                $("#parent_how_often").hide();

            }
            else {
                $("#parent_how_often").show();

            }
            if (sportsActivites2.selectedIndex == 1) {

                $("#1parent_how_often").hide();

            }
            else {
                $("#1parent_how_often").show();

            } if (sportsActivites3.selectedIndex == 1) {

                $("#2parent_how_often").hide();

            }
            else {
                $("#2parent_how_often").show();

            }
        }

        function clickSpanishTranslation() {
            alert('Spanish Language');
            makeTranslaton('Spanish');
        }
        function clickFrenchTranslation() {
            alert('French Language');
            makeTranslaton('French');
        }
        function clickChineseTranslation() {
            alert('Chinese Language');
            makeTranslaton('Chinese');
        }
        function clickEnglishTranslation() {
            alert('English Language');
            makeTranslaton('English');
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
        //function ValidateEmail(mail) {
        //    if (/^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$/.test(myForm.emailAddr.value)) {
        //        return (true)
        //    }
        //    return (false)
        //}
        //function validateEmail(email) {
        //    var re = /\S+@\S+\.\S+/;
        //    return re.test(email);
        //}
        //function emailIsValid(email) {
        //    return /^[^\s@]+@[^\s@]+\.[^\s@]+$/.test(email)
        //}
        function ValidateEmail(inputText) {
            var mailformat = /^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$/;
            if (inputText.value.match(mailformat)) {
                //alert("Valid email address!");
                //  document.form1.text1.focus();
                return true;
            }
            else {
                //  alert("You have entered an invalid email address!");
                //document.form1.text1.focus();
                return false;
            }
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
