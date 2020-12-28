<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="MedicalQuestionnaire.Default" %>

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
                                <label class="radio-container" style="left: 55px;">
                                    No Medicare Card
                                        <input type="radio" id="no_medicare_card" name="_medicare_card" onclick="no_medicare_card_changed(this)">
                                    <span class="checkmark"></span>
                                </label>
                            </div>
                            <div class="input-group" style="display: block;" id="expiration_date_Box">
                                <label class="label">Expiration Date</label>
                                <div class="input-group-icon">
                                    <input class="input--style-4 js-datepicker" style="margin-right: 70px;" type="text" id="expiration_date" name="expiration_date">
                                    <i class="zmdi zmdi-calendar-note input-icon js-btn-calendar"></i>
                                </div>
                            </div>
                        </div>
                        <div class="row row-space">
                            <div class="col-2 m-r-45">
                                <div class="input-group">
                                    <label class="label">Email</label>
                                    <input class="input--style-4" id="email" type="email" name="email">
                                </div>
                            </div>
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">Phone Number</label>
                                    <input class="input--style-4" id="phone_number" type="text" name="phone">
                                </div>
                            </div>
                        </div>
                    <div class="col-2"> 
                        <div class="col-2">
                             <div class="input-group">
                                <label class="label">Are you working now?</label>
                                <div class="p-t-10">
                                    <label class="radio-container m-r-45">
                                        Yes
                                            <input type="radio" checked="checked" id="yes_working_question" name="working_question" onclick="yes_offworking_changed(this)">
                                        <span class="checkmark"></span>
                                    </label>
                                    <label class="radio-container">
                                        No; Retired
                                            <input type="radio" id="no_working_question" name="working_question" onclick="no_offworking_changed(this)">
                                        <span class="checkmark"></span>
                                    </label>
                                     <label class="radio-container">
                                        Never
                                            <input type="radio" id="never_working_question" name="working_question" onclick="never_offworking_changed(this)">
                                        <span class="checkmark"></span>
                                    </label>
                                </div>
                            </div>  
                        </div>
                            <div class="input-group" style="display: none;" id="date_offwork_Box">
                                <label class="label">If no, since when have you been off work?</label>
                                <div class="input-group-icon">
                                    <input class="input--style-4 js-datepicker" style="margin-right: 70px;" type="text" id="date_offwork" name="expiration_date">
                                    <i class="zmdi zmdi-calendar-note input-icon js-btn-calendar"></i>
                                </div> 
                            </div>
                            <div class="input-group" style="display: none;" id="never_offwork_Box">
                             <label class="label">If never, Could you select one of these options?</label>
                            <div class="rs-select2 js-select-simple select--no-search">
                                <select name="subject" id="never_work_option">
                                    <option disabled="disabled" selected="selected">Choose option</option>
                                    <option>Students</option>
                                    <option>Housewives</option>
                                    <option>None</option>
                                 </select>
                                <div class="select-dropdown"></div>
                             </div>
                         </div>
                        <div class="input-group" style="display: none;" id="living_activities_Box">
                            <label class="label">What do you do for a living/what is your profession?</label>
                            <div class="rs-select2 js-select-simple select--no-search">
                                <select name="subject" id="living_activities">
                                    <option disabled="disabled" selected="selected">Choose option</option>
                                    <option>Employee</option>
                                    <option>Subject 2</option>
                                    <option>Subject 3</option>
                                </select>
                                <div class="select-dropdown"></div>
                            </div>
                        </div>
                       </div>

                        <div class="input-group">
                            <label class="label">What sports/activities do you do?</label>
                            <div class="rs-select2 js-select-simple select--no-search">
                                <select name="subject" id="sports_activites">
                                    <option disabled="disabled" selected="selected">Choose option</option>
                                    <option>Subject 1</option>
                                    <option>Subject 2</option>
                                    <option>Subject 3</option>
                                </select>
                                <div class="select-dropdown"></div>
                            </div>
                        </div>
                        <div class="input-group">
                            <label class="label">How often?(per week)</label>
                            <div class="rs-select2 js-select-simple select--no-search">
                                <select name="subject" id="how_often_sports">
                                    <option disabled="disabled" selected="selected">Choose option</option>
                                    <option>Subject 1</option>
                                    <option>Subject 2</option>
                                    <option>Subject 3</option>
                                </select>
                                <div class="select-dropdown"></div>
                            </div>
                        </div>
                        <div class="input-group">
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
                        </div>
                        <div class="input-group">
                            <label class="label">What hand do you write with?</label>
                            <div class="rs-select2 js-select-simple select--no-search">
                                <select name="subject" id="hand_write">
                                    <option disabled="disabled" selected="selected">Choose option</option>
                                    <option>Right</option>
                                    <option>Left</option>
                                    <option>Ambidextrous</option>
                                </select>
                                <div class="select-dropdown"></div>
                            </div>
                        </div>
                        <div class="col-2">
                            <div class="col-2"> 
                            <div class="input-group">
                                <label class="label">Do you smoke? </label>
                                <div class="p-t-10">
                                    <label class="radio-container m-r-45">
                                        Yes
                                            <input type="radio" checked="checked" id="yes_smoke" name="smoke" onclick="yes_smoke_changed(this)">
                                        <span class="checkmark"></span>
                                    </label>
                                    <label class="radio-container">
                                        No
                                            <input type="radio" id="no_smoke" name="smoke" onclick="no_smoke_changed(this)">
                                        <span class="checkmark"></span>
                                    </label>
<%--                                    style="bottom: 25px; left: 222px;"--%>
                                    <label class="radio-container">
                                        Never
                                            <input type="radio" id="never_smoke" name="smoke" onclick="never_smoke_changed(this)">
                                        <span class="checkmark"></span>
                                    </label>
                                </div>
                            </div>
                             </div>
                            <div class="input-group" style="display: none;" id="smoke_off_Box">
                                <label class="label">If no, since when have you been off work?</label>
                                <div class="input-group-icon">
                                    <input class="input--style-4 js-datepicker" style="margin-right: 70px;" type="text" id="smoke_off" name="smoke_off">
                                    <i class="zmdi zmdi-calendar-note input-icon js-btn-calendar"></i>
                                </div>
                            </div>

                            <div class="input-group" id="How_many_years_smoke" style="display: block;">
                                <label class="label">If yes, for how many years?</label>
                                <div class="rs-select2 js-select-simple select--no-search">
                                    <select name="subject" id="smoke_howmany_years">
                                        <option disabled="disabled" selected="selected">Choose option</option>
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
                                        <option>More than 20 years</option>
                                    </select>
                                    <div class="select-dropdown"></div>
                                </div>
                            </div>
                            <div class="input-group" id="how_many_cigarettes_perday" style="display: block;">
                                <label class="label">How many cigarettes per day?</label>
                                <div class="rs-select2 js-select-simple select--no-search">
                                    <select name="subject" id="smoke_howmany_perday">
                                        <option disabled="disabled" selected="selected">Choose option</option>
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
                                        <option>More than 1 Box</option>
                                    </select>
                                    <div class="select-dropdown"></div>
                                </div>
                            </div>
                        </div>
                        <div class="col-2">
                             <div class="col-2">
                            <div class="input-group">
                                <label class="label">Do you drink alcohol?</label>
                                <div class="p-t-10">
                                    <label class="radio-container m-r-45">
                                        Yes
                                            <input type="radio" checked="checked" id="yes_alcohol" name="alcohol" onclick="yes_alcohol_changed(this)">
                                        <span class="checkmark"></span>
                                    </label>
                                    <label class="radio-container">
                                        No
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
                                <label class="label">If no, since when have you been off work?</label>
                                <div class="input-group-icon">
                                    <input class="input--style-4 js-datepicker" style="margin-right: 70px;" type="text" id="alcohol_off" name="alcohol_off">
                                    <i class="zmdi zmdi-calendar-note input-icon js-btn-calendar"></i>
                                </div>
                            </div>

                            <div class="input-group" id="How_many_weeks_alcohol" style="display: block;">
                                <label class="label">If yes, how many drinks per week?</label>
                                <div class="rs-select2 js-select-simple select--no-search">
                                    <select name="subject" id="alcohol_howmany_perweek">
                                        <option disabled="disabled" selected="selected">Choose option</option>
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
                                        <option>More than 20</option>
                                    </select>
                                    <div class="select-dropdown"></div>
                                </div>
                            </div>
                        </div>

                        <div class="col-2">
                            <div class="input-group">
                                <label class="label">Do you take any recreational drugs or herbal/natural remedies?</label>
                                <div class="p-t-10">
                                    <label class="radio-container m-r-45">
                                        Yes
                                            <input type="radio" checked="checked" id="yes_drug" name="drug" onclick="yes_drug_changed(this)">
                                        <span class="checkmark"></span>
                                    </label>
                                    <label class="radio-container">
                                        No
                                            <input type="radio" id="no_drug" name="drug" onclick="no_drug_changed(this)">
                                        <span class="checkmark"></span>
                                    </label>
                                    <label class="radio-container" style="bottom: 25px; left: 222px;">
                                        Never druged
                                            <input type="radio" id="never_drug" name="drug" onclick="never_drug_changed(this)">
                                        <span class="checkmark"></span>
                                    </label>
                                </div>
                            </div>
                            <div class="input-group" style="display: none;" id="drug_off_Box">
                                <label class="label">If no, since when have you been off drug?</label>
                                <div class="input-group-icon">
                                    <input class="input--style-4 js-datepicker" style="margin-right: 70px;" type="text" id="drug_off" name="alcohol_off">
                                    <i class="zmdi zmdi-calendar-note input-icon js-btn-calendar"></i>
                                </div>
                            </div>

                            <div class="input-group" id="How_many_weeks_drug" style="display: block;">
                                <label class="label">If yes, How often do you take the drug or herbal/natural remedies?</label>
                                <div class="rs-select2 js-select-simple select--no-search">
                                    <select name="subject" id="recreationalDrug_howmany_perweeks">
                                        <option disabled="disabled" selected="selected">Choose option</option>
                                        <option>Rarely</option>
                                        <option>Monthly</option>
                                        <option>Waeekly</option>
                                        <option>Daily</option>
                                        <option>More than 2 times a day</option>
                                    </select>
                                    <div class="select-dropdown"></div>
                                </div>
                            </div>
                            <div class="input-group" id="what_drug" style="display: block;">
                                <label class="label">If yes, what drug use drug?</label>
                                <div class="rs-select2 js-select-simple select--no-search">
                                    <select name="subject" id="recreationalDrug_whatDrugs">
                                        <option disabled="disabled" selected="selected">Choose option</option>
                                        <option>Stimulants (e.g. cocaine)</option>
                                        <option>Opium-related painkillers (e.g. heroin)</option>
                                        <option>Hallucinogens (e.g. LSD)</option>
                                        <option>Other</option>
                                    </select>
                                    <div class="select-dropdown"></div>
                                </div>
                            </div>
                           </div>

                            <div class="col-2">
                                <div class="input-group">
                                    <%--style="width: 500px;"--%>
                                    <label  class="label">Do you have any of the following medical conditions?</label>
                                    <div class="p-t-10">
                                        <label class="radio-container m-r-45" style="width: 150px;">
                                            AIDS or HIV
                                            <input type="checkbox" id="AIDS_or_HIV" name="AIDS_or_HIV">
                                            <span class="checkmark"></span>
                                        </label>
                                        <label class="radio-container" style="width: 300px;">
                                            Alcohol Dependency or Abuse
                                            <input type="checkbox" id="Alcohol_Dependency_or_Abuse" name="Alcohol_Dependency_or_Abuse">
                                            <span class="checkmark"></span>
                                        </label>
                                        <label class="radio-container">
                                            Anemia
                                            <input type="checkbox" id="Anemia" name="Anemia">
                                            <span class="checkmark"></span>
                                        </label>
                                        <label class="radio-container">
                                            Anxiety
                                            <input type="checkbox" id="Anxiety" name="Anxiety">
                                            <span class="checkmark"></span>
                                        </label>
                                        <label class="radio-container">
                                            Arthritis
                                            <input type="checkbox" id="Arthritis" name="Arthritis">
                                            <span class="checkmark"></span>
                                        </label>
                                        <label class="radio-container">
                                            Bleeding Problems
                                            <input type="checkbox" id="BleedingProblems" name="BleedingProblems" onclick="BleedingProblems_changed(this)">
                                            <span class="checkmark"></span>
                                        </label>
                                         <label class="radio-container">
                                            Blood Clots
                                            <input type="checkbox" id="BloodClots" name="BloodClots">
                                            <span class="checkmark"></span>
                                        </label>
                                         <label class="radio-container">
                                            Cancer
                                            <input type="checkbox" id="Cancer" name="Cancer" onclick="Cancer_changed(this)" >
                                            <span class="checkmark"></span>
                                        </label>
                                         <label class="radio-container">
                                            Dementia
                                            <input type="checkbox" id="Dementia" name="Dementia">
                                            <span class="checkmark"></span>
                                        </label>
                                         <label class="radio-container" style="width: 500px;">
                                            Chronic Obstructive Pulmonary Disease or Emphysema
                                            <input type="checkbox" id="ChronicObstructive" name="ChronicObstructive">
                                            <span class="checkmark"></span>
                                        </label>
                                         <label class="radio-container">
                                            Depression
                                            <input type="checkbox" id="Depression" name="Depression">
                                            <span class="checkmark"></span>
                                        </label>
                                         <label class="radio-container">
                                            Drug Dependency or Abuse
                                            <input type="checkbox" id="DrugDependency" name="Drug Dependency or Abuse">
                                            <span class="checkmark"></span>
                                        </label>
                                         <label class="radio-container">
                                            Diabetes
                                            <input type="checkbox" id="Diabetes" name="Diabetes">
                                            <span class="checkmark"></span>
                                        </label>
                                         <label class="radio-container">
                                            Gout
                                            <input type="checkbox" id="Gout" name="Gout">
                                            <span class="checkmark"></span>
                                        </label>
                                         <label class="radio-container">
                                            Heart Disease
                                            <input type="checkbox" id="HeartDisease" name="HeartDisease">
                                            <span class="checkmark"></span>
                                        </label>
                                         <label class="radio-container">
                                            Heart Arrythmia
                                            <input type="checkbox" id="HeartArrythmia" name="Drug Dependency or Abuse">
                                            <span class="checkmark"></span>
                                        </label>
                                         <label class="radio-container">
                                            High Cholesterol
                                            <input type="checkbox" id="HighCholesterol" name="HighCholesterol">
                                            <span class="checkmark"></span>
                                        </label>
                                          <label class="radio-container">
                                            High Blood Pressure
                                            <input type="checkbox" id="HighBloodPressure" name="HighBloodPressure">
                                            <span class="checkmark"></span>
                                        </label>
                                          <label class="radio-container">
                                           Hypothyroidism
                                            <input type="checkbox" id="Hypothyroidism" name="Hypothyroidism">
                                            <span class="checkmark"></span>
                                        </label>
                                          <label class="radio-container">
                                           Hyperthyroidism
                                            <input type="checkbox" id="Hyperthyroidism" name="Hyperthyroidism">
                                            <span class="checkmark"></span>
                                        </label>
                                         <label class="radio-container">
                                           Kidney Disease
                                            <input type="checkbox" id="KidneyDisease" name="KidneyDisease">
                                            <span class="checkmark"></span>
                                        </label>
                                        <label class="radio-container">
                                           Leukemia
                                            <input type="checkbox" id="Leukemia" name="Leukemia">
                                            <span class="checkmark"></span>
                                        </label>
                                         <label class="radio-container">
                                           Liver Disease
                                            <input type="checkbox" id="LiverDisease" name="LiverDisease">
                                            <span class="checkmark"></span>
                                        </label>
                                         <label class="radio-container">
                                           Hepatitis
                                            <input type="checkbox" id="Hepatitis" name="Hepatitis" onclick="Hepatitis_changed(this)" >
                                            <span class="checkmark"></span>
                                        </label>
                                         <label class="radio-container">
                                           Osteoporosis
                                            <input type="checkbox" id="Osteoporosis" name="Osteoporosis">
                                            <span class="checkmark"></span>
                                        </label>
                                        <label class="radio-container">
                                           Pancreatitis
                                            <input type="checkbox" id="Pancreatitis" name="Pancreatitis">
                                            <span class="checkmark"></span>
                                        </label>
                                        <label class="radio-container">
                                           Peripheral Vascular Disease
                                            <input type="checkbox" id="PeripheralVascularDisease" name="PeripheralVascularDisease">
                                            <span class="checkmark"></span>
                                        </label>
                                        <label class="radio-container">
                                           Pulmonary 
                                            <input type="checkbox" id="Pulmonary" name="Pulmonary">
                                            <span class="checkmark"></span>
                                        </label>
                                        <label class="radio-container">
                                           Reflux or GERD 
                                            <input type="checkbox" id="RefluxorGERD" name="RefluxorGERD">
                                            <span class="checkmark"></span>
                                        </label>
                                        <label class="radio-container">
                                           Seizures 
                                            <input type="checkbox" id="Seizures" name="Seizures">
                                            <span class="checkmark"></span>
                                        </label>
                                         <label class="radio-container">
                                           Sleep Apnea 
                                            <input type="checkbox" id="SleepApnea" name="SleepApnea">
                                            <span class="checkmark"></span>
                                        </label>
                                        <label class="radio-container">
                                           Stroke 
                                            <input type="checkbox" id="Stroke" name="Stroke">
                                            <span class="checkmark"></span>
                                        </label>
                                        <label class="radio-container">
                                           Other  
                                            <input type="checkbox" id="Other" name="Other">
                                            <span class="checkmark"></span>
                                        </label>
                                    </div>
                                </div>
                            </div>

                            <div class="input-group" id="bleeding_problems"  style="display: none;">
                                <label class="label">Bleeding Problems. Type?</label>
                                <div class="rs-select2 js-select-simple select--no-search">
                                    <select name="subject" id="bleeding_problemstypes">
                                        <option disabled="disabled" selected="selected">Choose option</option>
                                        <option>None</option>
                                        <option>Blood Clots</option>
                                        <option>More than 20</option>
                                    </select>
                                    <div class="select-dropdown"></div>
                                </div>
                            </div>

                            <div class="input-group" id="cancer_type" style="display: none;">
                                <label class="label">Cancer. Type? </label>
                                <div class="rs-select2 js-select-simple select--no-search">
                                    <select name="subject" id="cancer_problemstypes">
                                        <option disabled="disabled" selected="selected">Choose option</option>
                                        <option>Dementia</option>
                                        <option>Chronic Obstructive Pulmonary Disease or Emphysema</option>
                                        <option>Drug Dependency or Abuse</option>
                                    </select>
                                    <div class="select-dropdown"></div>
                                </div>
                            </div>

                            <div class="input-group" id="hepatitis_type" style="display: none;">
                                <label class="label">Hepatitis. Type? </label>
                                <div class="rs-select2 js-select-simple select--no-search">
                                    <select name="subject" id="hepatitis_problemtypes">
                                        <option disabled="disabled" selected="selected">Choose option</option>
                                        <option>Osteoporosis</option>
                                        <option>Pancreatitis</option>
                                        <option>Peripheral Vascular Disease</option>
                                        <option>Pulmonary Embolism</option>
                                        <option>Reflux or GERD</option>
                                        <option>Seizures</option>
                                        <option>Sleep Apnea</option>
                                        <option>Stroke</option>
                                        <option>Other</option>
                                    </select>
                                    <div class="select-dropdown"></div>
                                </div>
                            </div>

                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label" style="width: 200px;">Have you had surgery?</label>
                                    <div class="p-t-10">
                                        <label class="radio-container" style="width: 500px;">
                                            Yes (then enter details)
                                            <input type="radio" checked="checked" id="yes_surgery" name="surgery" onclick="yes_surgery_changed(this)">
                                            <span class="checkmark"></span>
                                        </label>
                                        <label class="radio-container m-r-45" style="width: 500px;">
                                            No previous surgeries
                                            <input type="radio" id="no_surgery" name="surgery" onclick="no_surgery_changed(this)">
                                            <span class="checkmark"></span>
                                        </label>
                                    </div>
                                </div>

                                <div class="input-group" id="surgery_names" style="display: block;">
                                    <label class="label" style="width: 500px;">What was the surgery name?</label>
                                    <div class="rs-select2 js-select-simple select--no-search">
                                        <select name="subject" id="surgerynames">
                                            <option disabled="disabled" selected="selected">Choose option</option>
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
                                            <option>More than 20</option>
                                        </select>
                                        <div class="select-dropdown"></div>
                                    </div>
                                </div>

                                <div class="input-group" style="display: block;" id="surgery_date_Box">
                                    <label class="label" style="width: 200px;">When was your surgery?</label>
                                    <div class="input-group-icon">
                                        <input class="input--style-4 js-datepicker" style="margin-right: 70px;" type="text" id="surgery_date" name="alcohol_off">
                                        <i class="zmdi zmdi-calendar-note input-icon js-btn-calendar"></i>
                                    </div>
                                </div>

                                <div class="input-group" id="surgon_name" style="display: block;">
                                    <label class="label" style="width: 500px;">What was the Surgeon's name?</label>
                                    <div class="rs-select2 js-select-simple select--no-search">
                                       <input class="input--style-4" type="text" id="surgonname" name="surgonname">
                                      
                                     </div>
                                </div>

                            </div>
                            <br />
                            <div class="col-6">
                                <div class="input-group">
                                    <label class="label" style="width: 500px;">Do you take any medications regularly?</label>
                                    <div class="p-t-10">
                                        <label class="radio-container" style="width: 500px;">
                                            Yes
                                            <input type="radio" checked="checked" id="yes_question_file_medication" name="question_file_medication" onclick="yes_file_medication_changed(this)">
                                            <span class="checkmark"></span>
                                        </label>
                                        <label class="radio-container m-r-45" style="width: 500px;">
                                            No
                                            <input type="radio" id="no_question_file_medication" name="question_file_medication" onclick="no_file_medication_changed(this)">
                                            <span class="checkmark"></span>
                                        </label>
                                    </div>
                                </div>
                                <div class="p-t-12" >
                                    <form action="#" id="medical_file_form_Box" enctype="multipart/form-data">

                                        <asp:FileUpload ID="FileUploadMedical" runat="server" onchange="change_file_medication_click()" Style="display: none;" accept="image/*" capture />
                                        <asp:FileUpload ID="FileUploadReferal_" runat="server" onchange="change_referral_click()" Style="display: none;" accept="image/*" capture />

                                        <%--<input type="file" id="medical_file" accept="image/*" onchange="change_file_medication_click()" hidden="hidden" capture multiple />--%>
                                        <div id="Box_medical_file_form" style="display: block;">
                                        <label class="label" for="capture">Please Upload your medication file</label>
                                        <button class="btn btn--radius-2 btn--blue" style="background: #a338cd;" id="medical_file_button" onclick="button_file_medication_click()" type="button">Choose</button>
                                        <span id="text_medical_file">No file chosen, yet.</span>
                                            </div>
                                        <br />
                                    </form>
                                </div>
                                <br />

                                <div class="col-6">
                                    <div class="input-group">
                                        <label class="label" style="width: 500px;">Do you have Referral Information?</label>
                                        <div class="p-t-10">
                                            <label class="radio-container" style="width: 500px;">
                                                Yes
                                            <input type="radio" checked="checked" id="yes_Referral" name="Referral_information" onclick="yes_referral_changed(this)">
                                                <span class="checkmark"></span>
                                            </label>
                                            <label class="radio-container m-r-45" style="width: 500px;">
                                                No
                                            <input type="radio" id="no_Referral" name="Referral_information" onclick="no_referral_changed(this)">
                                                <span class="checkmark"></span>
                                            </label>
                                        </div>
                                    </div>
                                    <div class="p-t-12" id="Box_referral_form" style="display: block;">
                                        <form action="#" id="referral_form" enctype="multipart/form-data">
                                             <label class="label" for="capture">Please Upload your Referral file</label>
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
                                    <button class="btn btn--radius-2 btn--blue" id="submit-_button" onclick="submit_button_click()" type="button">Submit</button>
                                    <%--<asp:RadioButton ID="Submit_Button" runat="server" Text="Button" OnCheckedChanged="Submit_Button_CheckedChanged" />--%>
                                    <asp:Button ID="Submit_Button" runat="server" Style="display: none;" Text="Button" OnClick="btnSubmitButton_Click" />
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


        $(document).ready(function () {

            // alert();
        });

        function no_medicare_card_changed(termsCheckBox) {

            if (termsCheckBox.checked) {
                $("#medicare_number").prop("disabled", true);
                $("#medicare_number").prop("style", "background-color: #D3D3D3;");
                $("#medicare_number").val("");
                $("#expiration_date_Box").hide();


            } else {
                $("#medicare_number").prop("disabled", false);
                $("#medicare_number").prop("style", "background-color: #fafafa;");

                $("#expiration_date_Box").show();
            }
        }
        function yes_medicare_card_changed(termsCheckBox) {

            if (termsCheckBox.checked) {
                $("#medicare_number").prop("disabled", false);
                $("#medicare_number").prop("style", "background-color: #fafafa;");
                $("#expiration_date_Box").show();
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
            }
        }

        function no_surgery_changed(termsCheckBox) {

            if (termsCheckBox.checked) {
                $("#surgery_date_Box").hide();
                $("#surgon_name").hide();
                $("#surgery_names").hide();
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
            //window.open("exit.html", "Thanks for Visiting!");



            var txtFirstName = document.getElementById('first_name');
            var txtLastName = document.getElementById('last_name');
            var txtBirthday = document.getElementById('birthday');
            var txtMedicareNumber = document.getElementById('medicare_number');
            var txtExpirationDate = document.getElementById('expiration_date');
            var txtEmail = document.getElementById('email');
            var txtPhoneNumber = document.getElementById('phone_number');
            var livingActivities = document.getElementById('living_activities');
            var dateOffWork = document.getElementById('date_offwork');
            var sportsActivites = document.getElementById('sports_activites');
            var nameOfDoctor = document.getElementById('name_of_doctor');
            var handWrite = document.getElementById('hand_write');
            var smokeHowmanyYears = document.getElementById('smoke_howmany_years');
            var smokeHowmanyPerday = document.getElementById('smoke_howmany_perday');
            var smokeOffDate = document.getElementById('smoke_off');

            var alcoholHowmanyPerweek = document.getElementById('alcohol_howmany_perweek');
            var alcoholOffDate = document.getElementById('alcohol_off');

            var recreationalDrugHowmanyPerweeks = document.getElementById('recreationalDrug_howmany_perweeks');
            var recreationalDrugWhatDrugs = document.getElementById('recreationalDrug_whatDrugs');
            var recreationalDrugOffDate = document.getElementById('drug_off');

            var bleedingProblemsTypes = document.getElementById('bleeding_problemstypes');
            var cancerProblemsTypes = document.getElementById('cancer_problemstypes');
            var hepatitisProblemTypes = document.getElementById('hepatitis_problemtypes');

            var surgeryNames = document.getElementById('surgerynames');
            var surgeryDate = document.getElementById('surgery_date');
            var surgonName = document.getElementById('surgonname');

            // let medicalFile = document.getElementById('medical_file');    
            // let referralFile = document.getElementById('referral_file');
            let medicalFile = $("[id$=FileUploadMedical]");

            let referralFile = $("[id$=FileUploadReferal_]");




            //var txtGenderMale = document.getElementById('gender_Male');
            //var txtGenderFemale = document.getElementById('gender_Female');
            //var txtGenderOther = document.getElementById('gender_Female');

            txtFirstName.style.backgroundColor = "#fafafa";
            txtLastName.style.backgroundColor = "#fafafa";
            txtBirthday.style.backgroundColor = "#fafafa";


            //if (txtFirstName.value == "") {

            //    alert("Please fill out your Frist Name");
            //    txtFirstName.style.backgroundColor = "#ffcfcf";
            //    return false;
            //}
            //else if (txtLastName.value == "") {
            //    alert("Please fill out your Last Name");
            //    txtLastName.style.backgroundColor = "#ffcfcf";
            //    return false;
            //}
            //else if (txtBirthday.value == "") {
            //    alert("Please fill out your Birthday");
            //    txtBirthday.style.backgroundColor = "#ffcfcf";
            //    return false;
            //}
            //else if (txtMedicareNumber.value == "" && document.getElementById('yes_medicare_card').checked) {
            //    alert("Please fill out your Medicare Number");
            //    txtMedicareNumber.style.backgroundColor = "#ffcfcf";
            //    return false;
            //}
            //else if (txtExpirationDate.value == "" && document.getElementById('yes_medicare_card').checked) {
            //    alert("Please fill out your Expiration Date");
            //    txtExpirationDate.style.backgroundColor = "#ffcfcf";
            //    return false;
            //}
            //else if (txtEmail.value == "") {
            //    alert("Please fill out your Email");
            //    txtEmail.style.backgroundColor = "#ffcfcf";
            //    return false;
            //}
            //else if (txtPhoneNumber.value == "") {
            //    alert("Please fill out your Phone Number");
            //    txtPhoneNumber.style.backgroundColor = "#ffcfcf";
            //    return false;
            //}
            //else if (livingActivities.value == "Choose option" && document.getElementById('yes_working_question').checked) {
            //    alert("Please fill out your Living Activities");
            //    livingActivities.style.backgroundColor = "#ffcfcf";
            //    return false;
            //}
            //else if (dateOffWork.value == "" && document.getElementById('no_working_question').checked) {
            //    alert("Please fill out your off work date");
            //    dateOffWork.style.backgroundColor = "#ffcfcf";
            //    return false;
            //}
            //else if (sportsActivites.value == "Choose option") {
            //    alert("Please fill out your Sport Activities");
            //    sportsActivites.style.backgroundColor = "#ffcfcf";
            //    return false;
            //}
            //else if (nameOfDoctor.value == "Choose option") {
            //    alert("Please fill out your Doctor Name");
            //    nameOfDoctor.style.backgroundColor = "#ffcfcf";
            //    return false;
            //}
            //else if (handWrite.value == "Choose option") {
            //    alert("Please fill out your Hand Write");
            //    handWrite.style.backgroundColor = "#ffcfcf";
            //    return false; 
            //}
            //else if (smokeHowmanyYears.value == "Choose option" && document.getElementById('yes_smoke').checked) {
            //    alert("Please fill out, How Many Years Do You Smoke");
            //    smokeHowmanyYears.style.backgroundColor = "#ffcfcf";
            //    return false;
            //}
            //else if (smokeHowmanyPerday.value == "Choose option" && document.getElementById('yes_smoke').checked) {
            //    alert("Please fill out, How Many Smoke Per Day");
            //    smokeHowmanyPerday.style.backgroundColor = "#ffcfcf";
            //    return false;
            //}
            //else if (smokeOffDate.value == "" && document.getElementById('no_smoke').checked) {
            //    alert("Please fill out your Smoke Off Date");
            //    smokeOffDate.style.backgroundColor = "#ffcfcf";
            //    return false;
            //}
            //else if (alcoholHowmanyPerweek.value == "Choose option" && document.getElementById('yes_alcohol').checked) {
            //    alert("Please fill out, How Many Time Do You Drink Per week");
            //    alcoholHowmanyPerweek.style.backgroundColor = "#ffcfcf";
            //    return false;
            //}
            //else if (alcoholOffDate.value == "" && document.getElementById('no_alcohol').checked) {
            //    alert("Please fill out your Drinking Off Date");
            //    alcoholOffDate.style.backgroundColor = "#ffcfcf";
            //    return false;
            //}
            //else if (alcoholHowmanyPerweek.value == "Choose option" && document.getElementById('yes_alcohol').checked) {
            //    alert("Please fill out, How Many Time Do You Drink Per week");
            //    alcoholHowmanyPerweek.style.backgroundColor = "#ffcfcf";
            //    return false;
            //}
            //else if (alcoholOffDate.value == "" && document.getElementById('no_alcohol').checked) {
            //    alert("Please fill out your Drinking Off Date");
            //    alcoholOffDate.style.backgroundColor = "#ffcfcf";
            //    return false;
            //}

            //else if (recreationalDrugHowmanyPerweeks.value == "Choose option" && document.getElementById('yes_drug').checked) {
            //    alert("Please fill out, How Many Recreational Drug Per Week");
            //    recreationalDrugHowmanyPerweeks.style.backgroundColor = "#ffcfcf";
            //    return false;
            //}
            //else if (recreationalDrugWhatDrugs.value == "Choose option" && document.getElementById('yes_drug').checked) {
            //    alert("Please fill out, What Recreational Drug Do you Use");
            //    recreationalDrugWhatDrugs.style.backgroundColor = "#ffcfcf";
            //    return false;
            //}
            //else if (recreationalDrugOffDate.value == "" && document.getElementById('no_drug').checked) {
            //    alert("Please fill out your Recreational Drug Off Date");
            //    recreationalDrugOffDate.style.backgroundColor = "#ffcfcf";
            //    return false;
            //}
            //else if (bleedingProblemsTypes.value == "Choose option") {
            //    alert("Please select your Bleeding Problem Type");
            //    bleedingProblemsTypes.style.backgroundColor = "#ffcfcf";
            //    return false;
            //}
            //else if (cancerProblemsTypes.value == "Choose option") {
            //    alert("Please select your Cancer Problem Type");
            //    cancerProblemsTypes.style.backgroundColor = "#ffcfcf";
            //    return false;
            //}
            //else if (hepatitisProblemTypes.value == "Choose option") {
            //    alert("Please select your Hepatit Problem Type");
            //    hepatitisProblemTypes.style.backgroundColor = "#ffcfcf";
            //    return false;
            //}


            //else if (surgeryNames.value == "Choose option" && document.getElementById('yes_surgery').checked) {
            //    alert("Please select your Surgery Name");
            //    surgeryNames.style.backgroundColor = "#ffcfcf";
            //    return false;
            //}
            //else if (surgeryDate.value == "" && document.getElementById('yes_surgery').checked) {
            //    alert("Please fill out your Surgery Date");
            //    surgeryDate.style.backgroundColor = "#ffcfcf";
            //    return false;
            //}
            //else if (surgonName.value == "Choose option" && document.getElementById('yes_surgery').checked) {
            //    alert("Please select your Surgon Name");
            //    surgonName.style.backgroundColor = "#ffcfcf";
            //    return false;
            //}

            //else if (medicalFile.value == "" && document.getElementById('yes_question_file_medication').checked) {
            //    alert("Please upload your Medical File");
            //    medicalFile.style.backgroundColor = "#ffcfcf";
            //    return false;
            //}
            //else if (referralFile.value == "" && document.getElementById('yes_Referral').checked) {
            //    alert("Please upload your Referral File");
            //    referralFile.style.backgroundColor = "#ffcfcf";
            //    return false;
            //}

            //  else {

            var userArray = {};

            //alert(document.getElementById("referral_file").src);
            // alert(referralFile.value);

            userArray.Name = txtFirstName.value;
            userArray.Family = txtLastName.value;
            userArray.Email = txtEmail.value;
            userArray.Gender = txtFirstName.value;
            userArray.PhoneNumber = txtPhoneNumber.value;
            userArray.MedicareNumber = txtMedicareNumber.value;
            userArray.ExpirationDate = txtExpirationDate.value;
            userArray.Birthday = txtBirthday.value;



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

            var questionnaireArray = {};

            questionnaireArray.QuestionnaireAnswer = 'uhhu';
            questionnaireArray.LanguageType = 'uhuh';
            questionnaireArray.UserId = 5;
            questionnaireArray.Date = txtBirthday.value;

            //var s = document.getElementById('imagePreview');
            //s.src = URL.createObjectURL(file1[0]);
            //document.getElementById("dataUrl").innerText = URL.createObjectURL(file1[0]);

            //  questionnaireArray.ImageFile = file[0];
            questionnaireArray.ReferralImage = "";
            questionnaireArray.MedicationFile = "";

            //alert($("[id$=FileUploadReferal]").get(0).files);

            //  questionnaireArray.MedicationFile = 'Images/MedicalFile/' + makeid(10) + medicalFile.value.match(/[\/\\]([\w\d\s\.\-\(\)]+)$/)[1];

            //questionnaireArray.ReferralImage = URL.createObjectURL(file1[0]);
            //questionnaireArray.MedicationFile = URL.createObjectURL(file2[0]);
            //    questionnaireArray.ReferralImageName = "";
            //questionnaireArray.ReferralImageName = medicalFile.value.match(/[\/\\]([\w\d\s\.\-\(\)]+)$/)[1];
            //    questionnaireArray.MedicationFileName = referralFile.value.match(/[\/\\]([\w\d\s\.\-\(\)]+)$/)[1];
            //alert(questionnaireArray.MedicationFile);
            //alert(questionnaireArray.ReferralImage);

            //  questionnaireArray.ReferralImage ="sads";
            //   questionnaireArray.MedicationFile = "asd";

            // questionnaireArray.ReferralImage = getBase64Images(s);

            //  alert(file.toDataURL());
            //data.append("QuestionnaireAnswer", 'ssss');
            //data.append("LanguageType", 'ssss');
            //data.append("UserId",1);
            //data.append("Date", txtBirthday.value);
            //data.append("ReferralImage", 'Images/MedicalFile');
            //data.append("MedicationFile", 'Images/MedicalFile');

            //$.ajax({
            //    type: "POST",
            //    url: "Default.aspx/ImageUpload",
            //    data: data,
            //   //   contentType: 'application/json;charset=utf-8',

            //    contentType: false,
            //     processData: false, 
            //     success: function () {
            //        alert("ok" );
            //    },
            //    error: function (er) {
            //        alert(er.message );
            //        //$("#saveError").show();
            //    }
            //});

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
                    alert("ok");
                    $("[id$=Submit_Button]").click();

                    //$("#saveSuccess").show();
                    //fetchMoneyTypeData();
                },
                error: function (er) {
                    alert('error');
                    //$("#saveError").show();
                },

            });


        }





















        //var formData = new FormData();
        //var file = referralFile.files[0];

        //formData.append("QuestionnaireAnswer", 'ssd');
        //formData.append("countryLanguageType", 'sdsd');
        //formData.append("file", file);


        //var formData = new FormData();
        //var formData = new FormData();

        //var file = referralFile.files[0];
        //formData.append("PhotoPath", file);
        //formData.append('Title', 'dsfsf');
        //formData.append('Description','sdfsdf');
        //formData.append('Priority', 'sdfsfsdf');
        //formData.append('City', 'sdfsdfd');
        //formData.append('Region','sdfsf');
        //var fileData = formData;

        //fd.append('file', 'file');


        //    var fd = new FormData();
        //    fd.append('ImageFile', referralFile.files[0]);
        //    var fileData = fd;


        //    //PageMethods.GetCurrentTime("Hiii", OnSuccess);



        //    $.ajax({
        //        //url: 'Default.aspx/sendFile',
        //        //url: '@Url.Action("Default.aspx", "ImageUpload")',
        //        url: 'Default.aspx/ImageUploads',
        //        //url: 'WebService1.cs/',
        //        data: fd,
        //        //data: '{ImageFile:' +'ImageFile'+ '}',
        //        //    contentType: 'application/json;charset=utf-8',
        //        type: "POST",
        //        cache: false,
        //        contentType: false, // Not to set any content header
        //        processData: false, // Not to process data
        //        traditional: true,
        //        error: function (xhr, ajaxOptions, thrownError) {
        //            alert(xhr.status);
        //            alert(thrownError);
        //        },
        //        success: function (result) {
        //            alert(result);
        //        }
        //    });

        //}
        //$.ajax({
        //    type: "POST",
        //    url: 'Default.aspx/sendFile',
        //    //'@Default.Action("Index", "Company")',
        //    data: formData,
        //    //dataType: 'json',
        //    //contentType: false,
        //    //processData: false,
        //    success: function (response) {
        //      alert("ok"); 
        //    },
        //    error: function (jqXHR, textStatus, errorThrown) {
        //        alert(errorThrown + '  ' + jqXHR + '  ' + textStatus); 
        //    } 
        //});










        //var img = new Image();
        //img.scr = URL.createObjectURL(referralFile.files[0]);
        //const dataUrl = _getBase64Image(img);
        //console.log(dataUrl);

        //const dataUrl2 = toDataURLs(URL.createObjectURL(referralFile.files[0]));
        //    // do something with dataURL
        //  //  document.getElementById('result').innerHTML = dataURL;
        //    console.log(dataUrl2);


        //    if (referralFile.files && referralFile.files[0]) {
        //        var reader = new FileReader();

        //        reader.addEventListener(
        //            "load",
        //            function () {
        //                //var avatarImg = new Image();
        //                var src = reader.result;
        //                //avatarImg.src = src;
        //                questionnaireArray.ReferralImage = src;
        //                //questionnaireArray.MedicationFile = URL.createObjectURL(file2[0]);

        //                $.ajax({
        //                    url: 'Default.aspx/addUserQuestionnaire',
        //                    contentType: 'application/json;charset=utf-8',
        //                    method: 'post',
        //                    //processData: false,
        //                    data: '{questionnaireForm:' + JSON.stringify(questionnaireArray) + '}',
        //                    success: function () {
        //                        //$("#MoneyType").val = "";
        //                        //$("#progress").hide();
        //                        alert("ok");
        //                        //$("#saveSuccess").show();
        //                        //fetchMoneyTypeData();
        //                    },
        //                    error: function (jqXHR, textStatus, errorThrown) {
        //                       alert(errorThrown + '  ' + jqXHR + '  ' + textStatus);

        //                    },

        //                });

        //                //   document.getElementById("dataUrl").innerText = src;
        //                alert('hi');

        //                //avatarImg.onload = function () {
        //                //    var c = document.getElementById("myCanvas");
        //                //    var ctx = c.getContext("2d");
        //                //    ctx.canvas.width = avatarImg.width;
        //                //    ctx.canvas.height = avatarImg.height;

        //                //    ctx.drawImage(avatarImg, 0, 0);
        //                //};
        //            },
        //            false
        //        );

        //        reader.readAsDataURL(referralFile.files[0]);
        //    }


        //}

        //questionnaireArray.QuestionnaireAnswer = 'uhhu';
        //questionnaireArray.LanguageType = 'uhuh';
        //questionnaireArray.UserId = 1;
        //questionnaireArray.Date = txtBirthday.value;
        //questionnaireArray.ReferralImage = 'Images/ReferralImage/' + makeid(10) + referralFile.value.match(/[\/\\]([\w\d\s\.\-\(\)]+)$/)[1];
        //questionnaireArray.MedicationFile = 'Images/MedicalFile/' + makeid(10) + medicalFile.value.match(/[\/\\]([\w\d\s



        // $.ajax({
        //    url: 'Default.aspx/addUserQuestionnaire',
        //    contentType: 'application/json;charset=utf-8',
        //    method: 'post',
        //     //data: '{questionnaireForm:' + JSON.stringify(data) + '}',
        //     data, data,
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



        //var file = $("#referral_file").get(0).files;


        //    $.ajax({
        //        url: 'Default.aspx/addUserQuestionnaire',
        //        contentType: 'application/json;charset=utf-8',
        //        method: 'post',
        //        //data: '{questionnaireForm:' + JSON.stringify(questionnaireArray) + '}',
        //        data: file[0],
        //        success: function () {
        //            //$("#MoneyType").val = "";
        //            //$("#progress").hide();
        //            alert("ok");
        //            //$("#saveSuccess").show();
        //            //fetchMoneyTypeData();
        //        },
        //        error: function (er) {
        //            alert(er);
        //            //$("#saveError").show();
        //        },

        //    });











        //var fd = new FormData();
        //var files = $('#referral_file')[0].files;

        //// Check file selected or not
        //if (files.length > 0) {
        //    fd.append('file', files[0]);


        //    alert('value'+fd.value);








        //    $.ajax({
        //        url: 'Default.aspx/addUserQuestionnaire',
        //         contentType: 'application/json;charset=utf-8',
        //        type: 'post',
        //        data: '{questionnaireForms:' + fd /*JSON.stringify(referralFile.value)*/ + '}',

        //        //data: fd,
        //        contentType: false,
        //        processData: false,

        //        success: function () {
        //            //$("#MoneyType").val = "";
        //            //$("#progress").hide();
        //            alert("ok");
        //            //$("#saveSuccess").show();
        //            //fetchMoneyTypeData();
        //        },
        //        error: function (er) {
        //            alert(er);
        //            //$("#saveError").show();
        //        },


        //    });
        //}


        //var canvasData = referralFile.toDataURL("image/png");
        //var ajax = new XMLHttpRequest();
        //ajax.open("POST", 'Default.aspx/addUserQuestionnaire', false);
        //ajax.setRequestHeader('Content-Type', 'application/upload');
        //ajax.send(canvasData);

        //var file_data = referralFile.value;
        //var form_data = new FormData();
        //form_data.append('file', file_data);
        //alert(form_data);
        //$.ajax({
        //    url: 'Default.aspx/addUserQuestionnaire',
        //    contentType: 'application/json;charset=utf-8',
        //    dataType: 'text',  // what to expect back from the PHP script, if anything
        //    cache: false,
        //    contentType: false,
        //    processData: false,
        //    data: '{questionnaireForm:' + form_data /*JSON.stringify(referralFile.value)*/ + '}',
        //     type: 'post',
        //    success: function (php_script_response) {
        //        alert(php_script_response); // display response from the PHP script, if any
        //    }
        //});

        //    $.ajax({
        //        url: 'Default.aspx/addUserQuestionnaire',
        //        contentType: 'application/json;charset=utf-8',
        //        method: 'post',
        //        data: '{questionnaireForm:' + referralFile.value /*JSON.stringify(referralFile.value)*/ + '}',
        //        //data: JSON.stringify({ user: JSON.stringify(userArray), questionnaireForm: JSON.stringify(questionnaireArray) }),
        //        //data: JSON.stringify({ user: s, questionnaireForm: y }),

        //        success: function () {
        //            //$("#MoneyType").val = "";
        //            //$("#progress").hide();
        //            alert("ok");
        //            //$("#saveSuccess").show();
        //            //fetchMoneyTypeData();
        //        },
        //        error: function (er) {
        //            alert(er);
        //            //$("#saveError").show();
        //        },


        //    });
        //}



        //var txtReferralFile = window.URL.createObjectURL(fileinput.files[0]);

        //alert(txtFirstName.value + txtLastName + txtBirthday + txtGender.value + fileinput.value);

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
        // Select the image

        //const img = document.querySelector('#my-image');
        //img.addEventListener('load', function (event) {
        //    const dataUrl = getDataUrl(event.currentTarget);
        //    console.log(dataUrl);
        //});

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


        function OnSuccess(response, userContext, methodName) {
            alert(response);
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
        //$('#submitfile').ajaxForm({
        //    complete: function (xhr) {
        //        alert("Upload complete");
        //    }
        //}); 

        function saveData(object, url) {


        }
            //if (txtMoneyType == "") {

            //    $("#scopeTitle").attr("class", "col-lg-6 has-error");
            //    $("#validateText").css({ "display": "block" });
            //    return false;
            //}
            //else {
            //    $("#progress").show();
            //    var moneyArray = {};
            //    moneyArray.moneyType1 = $("#MoneyType").val();
            //    $.ajax({
            //        url: 'MoneyTypePage.aspx/addMoneyType',
            //        contentType: 'application/json;charset=utf-8',
            //        method: 'post',
            //        data: '{moneyType:' + JSON.stringify(moneyArray) + '}',
            //        success: function () {
            //            $("#MoneyType").val = "";
            //            $("#progress").hide();
            //            //alert("ok");
            //            $("#saveSuccess").show();
            //            fetchMoneyTypeData();
            //        },
            //        error: function (er) {
            //            //alert(er);
            //            $("#saveError").show();
            //        },


            //    });

         // this is very similat to a start event function
        //   document.addEventListener('DOMContentLoaded', (ev) => {
        //                  alert('Hiiiiii');
        //const input_medical_file = document.getElementById('medical_file');

        //input_medical_file.addEventListener('change', (ev) => {
        //        alert('nooo');

        //        console.dir(input_medical_file.files[0]);
        //        if (input.files[0].type.indexOf('image/*') > -1) {
        //            let imge = document.getElementById('');
        //            text_file.innerHTML = input_medical_file.value;
        //        }
        //        else {
        //            text_file.innerHTML = "No file chosen, yet.";
        //        }
        //        //})
        //})

    </script>

</asp:Content>
