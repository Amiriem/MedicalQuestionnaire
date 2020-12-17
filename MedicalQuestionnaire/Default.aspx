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
                                        No
                                            <input type="radio" id="no_working_question" name="working_question" onclick="no_offworking_changed(this)">
                                        <span class="checkmark"></span>
                                    </label>

                                </div>
                            </div>
                            <div class="input-group" style="display: none;" id="date_offwork_Box">
                                <label class="label">If no, since when have you been off work?</label>
                                <div class="input-group-icon">
                                    <input class="input--style-4 js-datepicker" style="margin-right: 70px;" type="text" id="date_offwork" name="expiration_date">
                                    <i class="zmdi zmdi-calendar-note input-icon js-btn-calendar"></i>
                                </div>
                            </div>
                        </div>
                        <div class="input-group">
                            <label class="label">What do you do for a living/what is your profession?</label>
                            <div class="rs-select2 js-select-simple select--no-search">
                                <select name="subject">
                                    <option disabled="disabled" selected="selected">Choose option</option>
                                    <option>Employee</option>
                                    <option>Subject 2</option>
                                    <option>Subject 3</option>
                                </select>
                                <div class="select-dropdown"></div>
                            </div>
                        </div>
                        <div class="input-group">
                            <label class="label">What sports/activities do you do?</label>
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
                            <label class="label">How often?(per week)</label>
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
                            <label class="label">What is the name of your family Doctor?</label>
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
                            <label class="label">What hand do you write with?</label>
                            <div class="rs-select2 js-select-simple select--no-search">
                                <select name="subject">
                                    <option disabled="disabled" selected="selected">Choose option</option>
                                    <option>Right</option>
                                    <option>Left</option>
                                    <option>Ambidextrous</option>
                                </select>
                                <div class="select-dropdown"></div>
                            </div>
                        </div>
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
                                    <label class="radio-container" style="bottom: 25px; left: 222px;">
                                        Never Smoked
                                            <input type="radio" id="never_smoke" name="smoke" onclick="never_smoke_changed(this)">
                                        <span class="checkmark"></span>
                                    </label>
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
                                    <select name="subject">
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
                                    <select name="subject">
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
                                    <label class="radio-container" style="bottom: 25px; left: 222px;">
                                        Never alcoholed
                                            <input type="radio" id="never_alcohol" name="alcohol" onclick="never_alcohol_changed(this)">
                                        <span class="checkmark"></span>
                                    </label>
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
                                    <select name="subject">
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
                                <label class="label">Do you any recreational drugs?</label>
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
                                <label class="label">If yes, how often use drug?</label>
                                <div class="rs-select2 js-select-simple select--no-search">
                                    <select name="subject">
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
                            <div class="input-group" id="what_drug" style="display: block;">
                                <label class="label">If yes, what drug use drug?</label>
                                <div class="rs-select2 js-select-simple select--no-search">
                                    <select name="subject">
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

                            <div class="col-2">
                                <div class="input-group">
                                    <label style="width: 500px;" class="label">Do you have any of the following medical conditions?</label>
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
                                            Asthma
                                            <input type="checkbox" id="Asthma" name="Asthma">
                                            <span class="checkmark"></span>
                                        </label>
                                    </div>
                                </div>
                            </div>

                            <div class="input-group" id="bleeding_problems">
                                <label class="label">Bleeding Problems. Type?</label>
                                <div class="rs-select2 js-select-simple select--no-search">
                                    <select name="subject">
                                        <option disabled="disabled" selected="selected">Choose option</option>
                                        <option>None</option>
                                        <option>Blood Clots</option>
                                        <option>More than 20</option>
                                    </select>
                                    <div class="select-dropdown"></div>
                                </div>
                            </div>

                            <div class="input-group" id="cancer_type">
                                <label class="label">Cancer. Type? </label>
                                <div class="rs-select2 js-select-simple select--no-search">
                                    <select name="subject">
                                        <option disabled="disabled" selected="selected">Choose option</option>
                                        <option>Dementia</option>
                                        <option>Chronic Obstructive Pulmonary Disease or Emphysema</option>
                                        <option>Drug Dependency or Abuse</option>
                                    </select>
                                    <div class="select-dropdown"></div>
                                </div>
                            </div>

                            <div class="input-group" id="hepatitis_type">
                                <label class="label">Hepatitis. Type? </label>
                                <div class="rs-select2 js-select-simple select--no-search">
                                    <select name="subject">
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
                                        <select name="subject">
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
                                    <label class="label" style="width: 500px;">What was the surgon name?</label>
                                    <div class="rs-select2 js-select-simple select--no-search">
                                        <select name="subject">
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
                                <div class="p-t-12" id="Box_medical_file_form" style="display: block;">
                                    <form action="#" id="medical_file_form" enctype="multipart/form-data">

                                        <label class="label" for="capture">Please Upload your medication file</label>

                                        <input type="file" id="medical_file" accept="image/*" onchange="change_file_medication_click()" hidden="hidden" capture multiple />
                                        <button class="btn btn--radius-2 btn--blue" style="background: #a338cd;" id="medical_file_button" onclick="button_file_medication_click()" type="button">Choose</button>
                                        <span id="text_medical_file">No file chosen, yet.</span>
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

                                        <label class="label" for="capture">Please Upload your medication file</label>

                                        <input type="file" id="referral_file" accept="image/*" onchange="change_referral_click()" hidden="hidden" capture multiple />
                                        <button class="btn btn--radius-2 btn--blue" style="background: #a338cd;" id="referral_button" onclick="button_referral_click()" type="button">Choose</button>
                                        <span id="text_referral_file">No file chosen, yet.</span>
                                         <br />
                                    </form>
                                </div>
                                 <br />
                            </div>

                            <div class="p-t-15">
                                 <br /><br /> 
                                <button class="btn btn--radius-2 btn--blue" type="button" onclick="submit_button_click()">Submit</button>
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
        function no_offworking_changed(termsCheckBox) {

            if (termsCheckBox.checked) {
                $("#date_offwork_Box").show();
            } else {
                $("#date_offwork_Box").hide();
            }
        }
        function yes_offworking_changed(termsCheckBox) {

            if (termsCheckBox.checked) {
                $("#date_offwork_Box").hide();

            } else {
                $("#date_offwork_Box").show();
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
                $("#alcohol_off_Box").show();
                $("#How_many_weeks_alcohol").hide();
            } else {
                $("#alcohol_off_Box").hide();
                $("#How_many_weeks_alcohol").show();
            }
        }
        function yes_alcohol_changed(termsCheckBox) {

            if (termsCheckBox.checked) {
                $("#alcohol_off_Box").hide();
                $("#How_many_weeks_alcohol").show();

            } else {
                $("#alcohol_off_Box").show();
                $("#How_many_weeks_alcohol").hide();
            }
        }
        function never_alcohol_changed(termsCheckBox) {
            if (termsCheckBox.checked) {
                $("#alcohol_off_Box").hide();
                $("#How_many_weeks_alcohol").hide();
            }
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
        function button_file_medication_click() {
            document.getElementById('medical_file').click();
        }
        function change_file_medication_click() {
            let input = document.getElementById('medical_file');
            console.dir(input.files[0]);
            if (input.value) {
                alert('File has been successfully uploaded');
                document.getElementById('text_medical_file').innerHTML = input.value.match(/[\/\\]([\w\d\s\.\-\(\)]+)$/)[1];
            }
            else {
                document.getElementById('text_medical_file').innerHTML = "No file chosen, yet.";
            }
        }

        function button_referral_click() {
            document.getElementById('referral_file').click();
        }
        function change_referral_click() {
            let input = document.getElementById('referral_file');
            console.dir(input.files[0]);
            if (input.value) {
                alert('File has been successfully uploaded');
                document.getElementById('text_referral_file').innerHTML = input.value.match(/[\/\\]([\w\d\s\.\-\(\)]+)$/)[1];
            }
            else {
                document.getElementById('text_referral_file').innerHTML = "No file chosen, yet.";
            }
        } 

        function submit_button_click() {
            
        }
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
