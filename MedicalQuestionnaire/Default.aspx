<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="MedicalQuestionnaire.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="page-wrapper bg-gra-02 p-t-130 p-b-100 font-poppins">
        <div class="wrapper wrapper--w780">
            <div class="card card-4">
                <div class="card-body" id="questionnaire_format">
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

                                       <div class="input-group" id="family_Doctor_Box" style="display: block;">
                                    <label class="label" style="width: 500px;" >What is the name of your family Doctor?</label>
                                    <div class="rs-select2 js-select-simple select--no-search">
                                       <input class="input--style-4" type="text" id="family_Doctor" name="family_Doctor"> 
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
                             <label class="label">If Never, Please Select One of the Following ​Options?</label>
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
                        <div class="input-group" style="display: block;" id="living_activities_Box">
                            <label class="label">What do you do for a living/what is your profession?</label>
                            <div class="rs-select2 js-select-simple select--no-search">
                                <select name="subject" id="living_activities">
                                    <option disabled="disabled" selected="selected">Choose option</option>
                                    <option>Accountant</option>
                                    <option>Actor/Actress</option>
                                    <option>Architect</option>
                                    <option>Author</option>
                                    <option>Baker</option>
                                    <option>Bricklayer</option> 
                                    <option>Bus driver</option>
                                    <option>Butcher</option>
                                    <option>Carpenter</option>
                                    <option>Cleaner</option>
                                    <option>Chef/Cook</option>
                                    <option>Dentist</option>
                                    <option>Doctor</option>
                                    <option>Refuse collector</option>
                                    <option>Electrician</option>
                                    <option>Engineer</option>
                                    <option>Factory worker</option>
                                    <option>Farmer</option>
                                    <option>Fireman/Fire fighter</option>
                                    <option>Fisherman</option>
                                    <option>Florist</option>
                                    <option>Gardener</option>
                                    <option>Hairdresser</option>
                                    <option>Journalist</option>
                                    <option>Lawyer</option>
                                    <option>Librarian</option>
                                    <option>Mechanic</option>
                                    <option>Model</option>
                                    <option>Nurse</option>
                                    <option>Optician</option>
                                    <option>Orderly</option> 
                                    <option>Painter</option>
                                    <option>Pharmacist</option>
                                    <option>Photographer</option>
                                    <option>Pilot</option>
                                    <option>Plumber</option>
                                    <option>Politician</option>
                                    <option>Policeman/Policewoman</option>
                                    <option>Postman</option>
                                    <option>Real estate agent</option>
                                    <option>Scientist</option>
                                    <option>Secretary</option>
                                    <option>Soldier</option>
                                    <option>Tailor/Seamstress</option>
                                    <option>Taxi driver</option>
                                    <option>Teacher</option>
                                    <option>Veterinary doctor (Vet)</option>
                                    <option>Waiter/Waitress</option>
                                    <option>Other</option>  
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
                                    <option>I don't</option>
                                    <option>kayaking</option>
                                    <option>canoeing</option>
                                    <option>cross-country skiing</option>
                                    <option>swimming</option>
                                    <option>freediving</option>
                                    <option>paddle boarding</option>
                                    <option>scuba diving</option>
                                    <option>aerobics</option>
                                    <option>archery</option>
                                    <option>boxing</option>
                                    <option>cycling</option>
                                    <option>skating</option>
                                    <option>horseback riding</option>
                                    <option>kickboxing</option>
                                    <option>ultimate frisbee</option>
                                    <option>walking</option>
                                    <option>weightlifting</option>
                                    <option>wrestling</option>
                                    <option>Softball</option> 
                                    <option>baseball</option>
                                    <option>basketball</option>
                                    <option>tennis</option>
                                    <option>badminton</option>
                                    <option>bowling</option>
                                    <option>curling</option>
                                    <option>football</option>
                                    <option>Ski</option>
                                    <option>Hockey</option>
                                    <option>Other</option>  
                                </select>
                                <div class="select-dropdown"></div>
                            </div>
                        </div>
                        <div class="input-group">
                            <label class="label">How often?</label>
                            <div class="rs-select2 js-select-simple select--no-search">
                                <select name="subject" id="how_often_sports">
                                    <option disabled="disabled" selected="selected">Choose option</option>
                                    <option>Daily</option>
                                    <option>3 times a Week</option>
                                    <option>2 times a Week</option>
                                    <option>1 time per week</option>
                                    <option>2-3 times per Month</option>
                                    <option>Monthly</option>
                                    <option>Rarely</option>
                                    <option></option>
                                </select>
                                <div class="select-dropdown"></div>
                            </div>
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
                                <label class="label">If no, since when have you been off?</label>
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
                                        <option>More than 1 Pack</option>
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
                                       Never taken
                                            <input type="radio" id="never_drug" name="drug" onclick="never_drug_changed(this)">
                                        <span class="checkmark"></span>
                                    </label>
                                </div>
                            </div>
                            <div class="input-group" style="display: none;" id="drug_off_Box">
                                <label class="label">If no, since when have you been off the drug?</label>
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
                                        <option>Weekly</option>
                                        <option>Daily</option>
                                        <option> 2 or more times per day</option>
                                    </select>
                                    <div class="select-dropdown"></div>
                                </div>
                            </div>
                            <div class="input-group" id="what_drug" style="display: block;">
                                <label class="label">If yes, Which Drug or Herbal/Natural Remedy do you Use?​</label>
                                <div class="rs-select2 js-select-simple select--no-search">
                                    <select name="subject" id="recreationalDrug_whatDrugs">
                                        <option disabled="disabled" selected="selected">Choose option</option>
                                        <option>Stimulants (e.g. cocaine, amphetamines,methamphetamine, ecstacy [MDMA]))</option>
                                        <option>Opium-related painkillers (e.g. heroin,  morphine, fentanyl, oxycodone, ​dilaudid);)</option>
                                        <option>Hallucinogens (e.g. LSD)</option>
                                        <option>Benzodiazepines(e.g. ativan, valium)</option>
                                        <option>Canabis/Marijuana</option>
                                        <option>Ketamine</option>
                                        <option>Ritalin</option>
                                         <option>chondroitin</option>
                                         <option>glucosamine</option>
                                        <option>ginger</option>
                                        <option>ginkgo</option>
                                        <option>biloba</option>
                                        <option>ginseng</option>
                                         <option>st-John's wort</option>
                                         <option>MDMA</option>
                                         <option>ecstacy</option>
                                         <option>turmeric</option>
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
                                    <div class="p-t-10" style="width: 50px;">
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
                                        <label class="radio-container" style="width: 300px;">
                                            Bleeding Problems
                                            <input type="checkbox" id="BleedingProblems" name="BleedingProblems" onclick="BleedingProblems_changed(this)">
                                            <span class="checkmark"></span>
                                        </label>
                                         <label class="radio-container"  style="width: 300px;">
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
                                         <label class="radio-container"  style="width: 300px;">
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
                                         <label class="radio-container"  style="width: 300px;">
                                            Heart Disease
                                            <input type="checkbox" id="HeartDisease" name="HeartDisease">
                                            <span class="checkmark"></span>
                                        </label>
                                         <label class="radio-container"  style="width: 300px;">
                                            Heart Arrythmia
                                            <input type="checkbox" id="HeartArrythmia" name="Drug Dependency or Abuse">
                                            <span class="checkmark"></span>
                                        </label>
                                         <label class="radio-container"  style="width: 300px;">
                                            High Cholesterol
                                            <input type="checkbox" id="HighCholesterol" name="HighCholesterol">
                                            <span class="checkmark"></span>
                                        </label>
                                          <label class="radio-container"  style="width: 300px;">
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
                                         <label class="radio-container"  style="width: 300px;">
                                           Kidney Disease
                                            <input type="checkbox" id="KidneyDisease" name="KidneyDisease">
                                            <span class="checkmark"></span>
                                        </label>
                                        <label class="radio-container">
                                           Leukemia
                                            <input type="checkbox" id="Leukemia" name="Leukemia">
                                            <span class="checkmark"></span>
                                        </label>
                                         <label class="radio-container"  style="width: 300px;">
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
                                        <label class="radio-container"  style="width: 300px;">
                                           Peripheral Vascular Disease
                                            <input type="checkbox" id="PeripheralVascularDisease" name="PeripheralVascularDisease">
                                            <span class="checkmark"></span>
                                        </label>
                                        <label class="radio-container">
                                           Pulmonary Embolism
                                            <input type="checkbox" id="Pulmonary" name="Pulmonary">
                                            <span class="checkmark"></span>
                                        </label>
                                        <label class="radio-container"  style="width: 300px;">
                                           Reflux or GERD 
                                            <input type="checkbox" id="RefluxorGERD" name="RefluxorGERD">
                                            <span class="checkmark"></span>
                                        </label>
                                        <label class="radio-container">
                                           Seizures 
                                            <input type="checkbox" id="Seizures" name="Seizures">
                                            <span class="checkmark"></span>
                                        </label>
                                         <label class="radio-container"  style="width: 300px;">
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
                                        <option>Von Willebrand</option>
                                        <option>Hemophilia A (Factor 8 deficiency)</option>
                                        <option>Hemophilia B (Christmas disease)</option>
                                         <option>Factor 5 Leiden</option>
                                        <option>Factor 2 deficiency</option>
                                        <option>Factor 5 deficiency</option>
                                        <option>Factor 7 deficiency</option>
                                        <option>Factor 10 deficiency</option>
                                        <option>Factor 12 deficiency</option>
                                        <option>Other - Input</option> 
                                    </select>
                                    <div class="select-dropdown"></div>
                                </div>
                            </div>

                            <div class="input-group" id="cancer_type" style="display: none;">
                                <label class="label">Cancer. Type? </label>
                                <div class="rs-select2 js-select-simple select--no-search">
                                    <select name="subject" id="cancer_problemstypes">
                                        <option disabled="disabled" selected="selected">Choose option</option>
                                        <option>Breast</option>
                                        <option>Prostate</option>
                                        <option>Colon/Colorectal</option>
                                        <option>Kidney</option>
                                        <option>Bladder</option>
                                        <option>Thyroid</option>
                                        <option>Lymphoma</option>
                                        <option>Melanoma</option>
                                        <option>Endometrial</option>
                                        <option>Leukemia</option>
                                        <option>Pancreatic</option>
                                        <option>Liver</option>
                                        <option>Other - Input​</option>

                                    </select>
                                    <div class="select-dropdown"></div>
                                </div>
                            </div>

                            <div class="input-group" id="hepatitis_type" style="display: none;">
                                <label class="label">Hepatitis. Type? </label>
                                <div class="rs-select2 js-select-simple select--no-search">
                                    <select name="subject" id="hepatitis_problemtypes">
                                        <option disabled="disabled" selected="selected">Choose option</option>
                                        <option>Auto-immune</option>
                                        <option>Alcohol-induced</option>
                                        <option>Hepatitis A</option>
                                        <option>Hepatitis B – Active</option>
                                        <option>Hepatis B - Chronic</option>
                                        <option>Hepatitis B – Cured</option>
                                        <option>Hepatitis C – Active</option>
                                        <option>Hepatitis C – Chronic</option>
                                        <option>Hepatitis C – Cured</option>
                                        <option>Hepatitis D</option>
                                        <option>Hepatitis E</option>
                                        <option>Other - Input​</option>
                                    </select>
                                    <div class="select-dropdown"></div>
                                </div>
                            </div>

                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label" style="width: 200px;">Have you ever had surgery?</label>
                                    <div class="p-t-10">
                                        <label class="radio-container" style="width: 500px;">
                                            Yes
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
                                    <label class="label" style="width: 500px;">What type of surgery?</label>
                                    <div class="rs-select2 js-select-simple select--no-search">
                                       <input class="input--style-4" type="text" id="surgerynames" name="surgerynames"> 
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
                                        <label class="label" style="width: 500px;">Do you have a Referral?</label>
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

        var txtFirstName;
        var txtLastName ;
        var txtBirthday  ;
        var txtMedicareNumber;
        var genderselection;
        var txtExpirationDate ;
        var txtEmail ;
        var txtPhoneNumber;
        var livingActivities ;
        var dateOffWork;
        var neverworkoption;
        var sportsActivites;
        var howoftensports;
        var familynameOfDoctor ;
        var handWrite ;
        var smokeHowmanyYears ;
        var smokeHowmanyPerday ;
        var smokeOffDate ;

        var alcoholHowmanyPerweek ;
        var alcoholOffDate ;

        var recreationalDrugHowmanyPerweeks  ;
        var recreationalDrugWhatDrugs  ;
        var recreationalDrugOffDate  ;

        var bleedingProblemsTypes  ;
        var cancerProblemsTypes ;
        var hepatitisProblemTypes  ;

        var surgeryNames ;
        var surgeryDate ;
        var surgonName  ;
        let medicalFile ;

        let referralFile ;

        let questionnaireformat;

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
            howoftensports = document.getElementById('how_often_sports');
              familynameOfDoctor = document.getElementById('family_Doctor');
              handWrite = document.getElementById('hand_write');
              smokeHowmanyYears = document.getElementById('smoke_howmany_years');
              smokeHowmanyPerday = document.getElementById('smoke_howmany_perday');
              smokeOffDate = document.getElementById('smoke_off');

              alcoholHowmanyPerweek = document.getElementById('alcohol_howmany_perweek');
              alcoholOffDate = document.getElementById('alcohol_off');

              recreationalDrugHowmanyPerweeks = document.getElementById('recreationalDrug_howmany_perweeks');
              recreationalDrugWhatDrugs = document.getElementById('recreationalDrug_whatDrugs');
              recreationalDrugOffDate = document.getElementById('drug_off');

              bleedingProblemsTypes = document.getElementById('bleeding_problemstypes');
              cancerProblemsTypes = document.getElementById('cancer_problemstypes');
              hepatitisProblemTypes = document.getElementById('hepatitis_problemtypes');

              surgeryNames = document.getElementById('surgerynames');
              surgeryDate = document.getElementById('surgery_date');
              surgonName = document.getElementById('surgonname');


            genderselection = '';

              medicalFile = $("[id$=FileUploadMedical]");
              referralFile = $("[id$=FileUploadReferal_]");

               questionnaireformat = document.getElementById('questionnaire_format');

 
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

            //var txtFirstName = document.getElementById('first_name');
           
            buildAnswers();


            //questionnaireformat.setAttribute("style", "pointer-events: none;");

            txtFirstName.style.backgroundColor = "#fafafa";
            txtLastName.style.backgroundColor = "#fafafa";
            txtBirthday.style.backgroundColor = "#fafafa";

            //txtLastName.style.backgroundColor = "#C0C0C0";


             txtMedicareNumber.style.backgroundColor = "#fafafa";;
             txtExpirationDate .style.backgroundColor = "#fafafa";
            txtEmail.style.backgroundColor = "#fafafa";
             txtPhoneNumber.style.backgroundColor = "#fafafa";
             livingActivities.style.backgroundColor = "#fafafa";
            dateOffWork.style.backgroundColor = "#fafafa";
             sportsActivites .style.backgroundColor = "#fafafa";
             familynameOfDoctor .style.backgroundColor = "#fafafa";
             handWrite.style.backgroundColor = "#fafafa";
            smokeHowmanyYears.style.backgroundColor = "#fafafa";
             smokeHowmanyPerday.style.backgroundColor = "#fafafa";
            smokeOffDate.style.backgroundColor = "#fafafa";

             alcoholHowmanyPerweek .style.backgroundColor = "#fafafa";
            alcoholOffDate.style.backgroundColor = "#fafafa";

             recreationalDrugHowmanyPerweeks .style.backgroundColor = "#fafafa";
            recreationalDrugWhatDrugs.style.backgroundColor = "#fafafa";
             recreationalDrugOffDate .style.backgroundColor = "#fafafa";

            bleedingProblemsTypes.style.backgroundColor = "#fafafa";
             cancerProblemsTypes .style.backgroundColor = "#fafafa";
            hepatitisProblemTypes.style.backgroundColor = "#fafafa";

             surgeryNames .style.backgroundColor = "#fafafa";
             surgeryDate .style.backgroundColor = "#fafafa";
             surgonName .style.backgroundColor = "#fafafa";

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
            else if (txtExpirationDate.value == "" && document.getElementById('yes_medicare_card').checked) {
                alert("Please fill out your Expiration Date");
                txtExpirationDate.style.backgroundColor = "#ffcfcf";
                return false;
            }
            else if (txtEmail.value == "") {
                alert("Please fill out your Email");
                txtEmail.style.backgroundColor = "#ffcfcf";
                return false;
            }
            else if (txtPhoneNumber.value == "") {
                alert("Please fill out your Phone Number");
                txtPhoneNumber.style.backgroundColor = "#ffcfcf";
                return false;
            }
            else if (livingActivities.value == "Choose option" && document.getElementById('yes_working_question').checked) {
                alert("Please fill out your Living Activities");
                livingActivities.style.backgroundColor = "#ffcfcf";
                return false;
            }
            else if (dateOffWork.value == "" && document.getElementById('no_working_question').checked) {
                alert("Please fill out your off work date");
                dateOffWork.style.backgroundColor = "#ffcfcf";
                return false;
            }
            else if (neverworkoption.value == "" && document.getElementById('never_working_question').checked) {
                alert("Please select one of the work options");
                dateOffWork.style.backgroundColor = "#ffcfcf";
                return false;
            }
            else if (sportsActivites.value == "Choose option") {
                alert("Please fill out your Sport Activities");
                sportsActivites.style.backgroundColor = "#ffcfcf";
                return false;
            }
            else if (familynameOfDoctor.value == "Choose option") {
                alert("Please fill out your Doctor Name");
                familynameOfDoctor.style.backgroundColor = "#ffcfcf";
                return false;
            }
            else if (handWrite.value == "Choose option") {
                alert("Please fill out your Hand Write");
                handWrite.style.backgroundColor = "#ffcfcf";
                return false; 
            }
            else if (smokeHowmanyYears.value == "Choose option" && document.getElementById('yes_smoke').checked) {
                alert("Please fill out, How Many Years Do You Smoke");
                smokeHowmanyYears.style.backgroundColor = "#ffcfcf";
                return false;
            }
            else if (smokeHowmanyPerday.value == "Choose option" && document.getElementById('yes_smoke').checked) {
                alert("Please fill out, How Many Smoke Per Day");
                smokeHowmanyPerday.style.backgroundColor = "#ffcfcf";
                return false;
            }
            else if (smokeOffDate.value == "" && document.getElementById('no_smoke').checked) {
                alert("Please fill out your Smoke Off Date");
                smokeOffDate.style.backgroundColor = "#ffcfcf";
                return false;
            }
            else if (alcoholHowmanyPerweek.value == "Choose option" && document.getElementById('yes_alcohol').checked) {
                alert("Please fill out, How Many Time Do You Drink Per week");
                alcoholHowmanyPerweek.style.backgroundColor = "#ffcfcf";
                return false;
            }
            //else if (alcoholOffDate.value == "" && document.getElementById('no_alcohol').checked) {
            //    alert("Please fill out your Drinking Off Date");
            //    alcoholOffDate.style.backgroundColor = "#ffcfcf";
            //    return false;
            //}
            else if (alcoholHowmanyPerweek.value == "Choose option" && document.getElementById('yes_alcohol').checked) {
                alert("Please fill out, How Many Time Do You Drink Per week");
                alcoholHowmanyPerweek.style.backgroundColor = "#ffcfcf";
                return false;
            }
            else if (alcoholOffDate.value == "" && document.getElementById('no_alcohol').checked) {
                alert("Please fill out your Drinking Off Date");
                alcoholOffDate.style.backgroundColor = "#ffcfcf";
                return false;
            }

            else if (recreationalDrugHowmanyPerweeks.value == "Choose option" && document.getElementById('yes_drug').checked) {
                alert("Please fill out, How Many Recreational Drug Per Week");
                recreationalDrugHowmanyPerweeks.style.backgroundColor = "#ffcfcf";
                return false;
            }
            else if (recreationalDrugWhatDrugs.value == "Choose option" && document.getElementById('yes_drug').checked) {
                alert("Please fill out, What Recreational Drug Do you Use");
                recreationalDrugWhatDrugs.style.backgroundColor = "#ffcfcf";
                return false;
            }
            else if (recreationalDrugOffDate.value == "" && document.getElementById('no_drug').checked) {
                alert("Please fill out your Recreational Drug Off Date");
                recreationalDrugOffDate.style.backgroundColor = "#ffcfcf";
                return false;
            }
            else if (bleedingProblemsTypes.value == "Choose option") {
                alert("Please select your Bleeding Problem Type");
                bleedingProblemsTypes.style.backgroundColor = "#ffcfcf";
                return false;
            }
            else if (cancerProblemsTypes.value == "Choose option") {
                alert("Please select your Cancer Problem Type");
                cancerProblemsTypes.style.backgroundColor = "#ffcfcf";
                return false;
            }
            else if (hepatitisProblemTypes.value == "Choose option") {
                alert("Please select your Hepatit Problem Type");
                hepatitisProblemTypes.style.backgroundColor = "#ffcfcf";
                return false;
            }

            else if (surgeryNames.value == "Choose option" && document.getElementById('yes_surgery').checked) {
                alert("Please select your Surgery Name");
                surgeryNames.style.backgroundColor = "#ffcfcf";
                return false;
            }
            else if (surgeryDate.value == "" && document.getElementById('yes_surgery').checked) {
                alert("Please fill out your Surgery Date");
                surgeryDate.style.backgroundColor = "#ffcfcf";
                return false;
            }
            else if (surgonName.value == "Choose option" && document.getElementById('yes_surgery').checked) {
                alert("Please write your Surgeon's Name");
                surgonName.style.backgroundColor = "#ffcfcf";
                return false;
            }

            else if (medicalFile.value == "" && document.getElementById('yes_question_file_medication').checked) {
                alert("Please upload your Medical File");
                medicalFile.style.backgroundColor = "#ffcfcf";
                return false;
            }
            else if (referralFile.value == "" && document.getElementById('yes_Referral').checked) {
                alert("Please upload your Referral File");
                referralFile.style.backgroundColor = "#ffcfcf";
                return false;
            }


            if (document.getElementById('gender_Male').checked)
            {
                genderselection = 'Male';
            }
            else if (document.getElementById('gender_Female').checked)
            {
                genderselection = 'Female';
            }
            else if (document.getElementById('gender_Other').checked)
            {
                genderselection = 'Other/Prefer not to answer'; 
            }
            alert(genderselection);

            if (confirm("Are you sure all the information above is correct?"))
            {


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
            else
            {
                return false;
            }
        }


        function buildAnswers() {


            var answer = '';
            answer = 'Are You Working Now ?\n';
            if (document.getElementById('yes_working_question').checked) {
                answer += 'Yes\n';
                answer += 'What do you do for a living/what is your profession?\n';
                answer += livingActivities.value; answer += '\n';
            }
            else if (document.getElementById('no_working_question').checked)
            {
                answer += 'No; Retired\n';
                answer += 'If No, Since When Have You Been Off Work?\n';
                answer += dateOffWork.value; answer += '\n';
            }
            else if (document.getElementById('never_working_question').checked)
            {
                answer += 'Never\n';
                answer += 'If Never, Could You Select One Of These Options?\n';
                answer += neverworkoption.value; answer += '\n';
            }

            answer += '\n\n';

            answer += 'What Sports/Activities Do You Do?\n';
            answer += sportsActivites.value; answer += '\n';
            answer += 'How Often?(Per Week)?\n';
            answer += howoftensports.value; answer += '\n';

            answer += '\n\n';


            answer += 'What Is The Name Of Your Family Doctor?\n';
            answer += familynameOfDoctor.value; answer += '\n';

            answer += '\n\n';

            answer += 'What Hand Do You Write With?\n';
            answer += handWrite.value; answer += '\n';

            answer += '\n\n';

            answer += 'Do You Smoke?\n';
            if (document.getElementById('yes_smoke').checked) {
                answer += 'Yes\n';
                answer += 'If Yes, For How Many Years?\n';
                answer += smokeHowmanyYears.value; answer += '\n';

                answer += 'How Many Cigarettes Per Day?\n';

                answer += smokeHowmanyPerday.value; answer += '\n';

            }
            else if (document.getElementById('no_smoke').checked) {
                answer += 'No\n';
                answer += 'If No, Since When Have You Been Off?\n';
                answer += smokeOffDate.value; answer += '\n';
            }
            else if (document.getElementById('never_smoke').checked) {
                answer += 'Never\n';
            } 

            answer += '\n\n';

            answer += 'Do You Drink Alcohol?\n';
            if (document.getElementById('yes_alcohol').checked) {
                answer += 'Yes\n';
                answer += 'If Yes, How Many Drinks Per Week?\n';
                answer += alcoholHowmanyPerweek.value; answer += '\n'; 
            }
            else if (document.getElementById('no_alcohol').checked) {
                answer += 'No\n';
                //answer += 'If No, Since When Have You Been Off Work?\n';
                //answer += alcoholOffDate.value; answer += '\n';
            }
            
            answer += '\n\n';

            answer += 'Do You Take Any Recreational Drugs Or Herbal/Natural Remedies?\n';
            if (document.getElementById('yes_drug').checked) {
                answer += 'Yes\n';
                answer += 'If Yes, How Often Do You Take The Drug Or Herbal/Natural Remedies?\n';
                answer += recreationalDrugHowmanyPerweeks.value; answer += '\n';
                answer += 'If Yes, What Drug Use Drug ?\n';
                answer += recreationalDrugWhatDrugs.value; answer += '\n';
            }
            else if (document.getElementById('no_drug').checked) {
                answer += 'No\n';
                answer += 'If No, Since When Have You Been Off Drug ?';
                answer += recreationalDrugOffDate.value; answer += '\n';
            }
            else if (document.getElementById('never_drug').checked) {
                answer += 'Never taken\n';
            }

            answer += '\n\n';

            answer += 'Do You Have Any Of The Following Medical Conditions?\n';

            if (document.getElementById('AIDS_or_HIV').checked) {
                answer += 'AIDS or HIV\n';
            }
            else if (document.getElementById('Alcohol_Dependency_or_Abuse').checked) {
                answer += 'Alcohol Dependency or Abuse\n';
            }
            else if (document.getElementById('Anemia').checked) {
                answer += 'Anemia\n';
            }
            else if (document.getElementById('Anxiety').checked) {
                answer += 'Anxiety\n'; 
            }
            else if (document.getElementById('Arthritis').checked) {
                answer += 'Arthritis\n'; 
            }
            else if (document.getElementById('BleedingProblems').checked) {
                answer += 'Bleeding Problems\n';
                answer += 'Bleeding Problems. Type?\n';
                answer += bleedingProblemsTypes.value; answer += '/n';
            }
             else if (document.getElementById('BloodClots').checked) {
                answer += 'BloodClots\n'; 
            }
            else if (document.getElementById('Cancer').checked) {
                answer += 'Cancer\n'; 
                answer += 'Cancer. Type?\n';
                answer += cancerProblemsTypes.value; answer += '/n';
            }
            else if (document.getElementById('Dementia').checked) {
                answer += 'Dementia\n';  
            }
            else if (document.getElementById('ChronicObstructive').checked) {
                answer += 'Chronic Obstructive Pulmonary Disease or Emphysema\n';
            }
            else if (document.getElementById('Depression').checked) {
                answer += 'Depression\n';
            }
            else if (document.getElementById('DrugDependency').checked) {
                answer += 'Drug Dependency or Abuse\n';
            }
            else if (document.getElementById('Diabetes').checked) {
                answer += 'Diabetes\n'; 
            }
            else if (document.getElementById('Gout').checked) {
                answer += 'Gout\n'; 
            }
            else if (document.getElementById('HeartDisease').checked) {
                answer += 'Heart Disease\n'; 
            }
            else if (document.getElementById('HighCholesterol').checked) {
                answer += 'Heart Cholesterol\n';  
            } 
            else if (document.getElementById('HighBloodPressure').checked) {
                answer += 'High Blood Pressure\n';  
            }
            else if (document.getElementById('HeartArrythmia').checked) {
                answer += 'Heart Arrythmia\n';   
            }
            else if (document.getElementById('Hypothyroidism').checked) {
                answer += 'Hypothyroidism\n';   
            }
            else if (document.getElementById('Hyperthyroidism').checked) {
                answer += 'Hyperthyroidism\n';    
            }
            else if (document.getElementById('KidneyDisease').checked) {
                answer += 'KidneyDisease\n';   
            }
            else if (document.getElementById('Leukemia').checked) {
                answer += 'Leukemia\n';    
            } else if (document.getElementById('LiverDisease').checked) {
                answer += 'LiverDisease\n';    

            } else if (document.getElementById('Hepatitis').checked) {
                answer += 'Hepatitis\n';
                answer += 'Hepatitis. Type?\n';
                answer += hepatitisProblemTypes.value; answer += '/n';

            } else if (document.getElementById('Osteoporosis').checked) {
                answer += 'Osteoporosis\n';    

            } else if (document.getElementById('Pancreatitis').checked) {
                answer += 'Pancreatitis\n';     
            }
            else if (document.getElementById('PeripheralVascularDisease').checked) {
                answer += 'Peripheral Vascular Disease\n';    

            } else if (document.getElementById('Pulmonary').checked) {
                answer += 'Pulmonary\n';    

            } else if (document.getElementById('RefluxorGERD').checked) {
                answer += 'Reflux or GERD\n';    

            } else if (document.getElementById('Seizures').checked) {
                answer += 'Seizures\n';    

            } else if (document.getElementById('SleepApnea').checked) {
                answer += 'SleepApnea\n';   
            }
            else if (document.getElementById('Stroke').checked) {
                answer += 'Stroke\n';    
            }
            else if (document.getElementById('Other').checked) {
                answer += 'Other\n';    
            }
                 
          
            answer += '\n\n';


            answer += 'Have You Had Surgery?\n';
            if (document.getElementById('yes_surgery').checked) {
                answer += 'Yes (then enter details)\n';
                answer += 'What Type Of Surgery?\n';
                answer += surgeryNames.value; answer+= '\n';
                answer += 'When Was Your Surgery?\n';
                answer += surgeryDate.value; answer += '\n';
                answer += 'What Was The Surgeon Name?\n';
                answer += surgonName.value; answer += '\n';
            }
            else if (document.getElementById('no_surgery').checked) {
                answer += 'No previous surgeries\n';
            }

            answer += '\n\n';

            if (document.getElementById('yes_question_file_medication').checked)
            {
                answer += 'Do You Take Any Medications Regularly?\n';
                answer += 'Yes\n';
            }
            else if (document.getElementById('no_question_file_medication').checked) {
                answer += 'Do You Take Any Medications Regularly?\n';
                answer += 'No\n';
            }
            answer += '\n\n';
            answer += 'Do You Take Any Medications Regularly?\n';
            if (document.getElementById('yes_question_file_medication').checked) {
                 answer += 'Yes\n';
            }
            else if (document.getElementById('no_question_file_medication').checked) {
                 answer += 'No\n';
            }
            answer += '\n\n';
            answer += 'Do You Have Referral Information?\n';
            if (document.getElementById('yes_Referral').checked) {
                answer += 'Yes\n';
            }
            else if (document.getElementById('no_Referral').checked) {
                answer += 'No\n';
            }

            console.log(answer);
        }






        function clickUser(userId) {

            //alert(userId);
            window.open("Password.aspx?pid=" + userId, "_blank");
            window.open("Confirmation.aspx", "_blank");

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
