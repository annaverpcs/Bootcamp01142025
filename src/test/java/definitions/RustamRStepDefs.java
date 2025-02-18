
package definitions;

import io.cucumber.java.en.Given;

import static definitions.xPathLibraryRustam.*;
import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.getDriver;

import io.cucumber.java.en.And;
import io.cucumber.java.en.Then;
import org.openqa.selenium.By;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

import java.time.Duration;
import java.util.Objects;


public class RustamRStepDefs {
    @Given("RustamR launch {string}")
    public void rustamr(String sAplicationName) {

        switch (sAplicationName) {
            case "MediCenter-V1":
                getDriver().get(sMediCenterV1);
                break;
            case "MediCenter-v2":
                getDriver().get(sMediCenterV2);
                break;
            case "Google":
                getDriver().get(sGoogleUrl);
                break;
            default:
                System.out.println("There is no such URL, please correct");

        }

    }

    @Then("RustamR page title is {string}")
    public void rustamrPageTitleIs(String sPageTitle) {
        assertThat(getDriver().getTitle().contains(sPageTitle));
    }

    @And("RustamR wait for {string} text")
    public void rustamrWaitForText(String sText) {
        new WebDriverWait(getDriver(), Duration.ofSeconds(20)).until(ExpectedConditions.presenceOfElementLocated(By.xpath(sText)));
    }

    @Then("RustamR click on {string} button")
    public void rustamrClickOnButton(String sButtonName) {
        switch (sButtonName) {
            case "Login":
                getDriver().findElement(By.xpath(sLoginButton)).click();
                break;
            case "Create Account":
                getDriver().findElement(By.xpath(sCreateAccountButton)).click();
                break;
            case "Sign In":
                getDriver().findElement(By.xpath(sSignInButton)).click();
                break;
            case "Appointments":
                getDriver().findElement(By.xpath(sAppointmentsButton)).click();
                break;
            case "Day":
                getDriver().findElement(By.xpath(sDayButton)).click();
                break;
            case "Specialist":
                getDriver().findElement(By.xpath(sDoctorButton)).click();
                break;
            case "Save":
                getDriver().findElement(By.xpath(sSaveButton)).click();
                break;
            case "CancelAppointment":
                getDriver().findElement(By.xpath(sCancel)).click();
                break;
            case "Next Day":
                getDriver().findElement(By.xpath(sNextDayButton)).click();
                break;
            default:
                System.out.println("There is no such button on this page");

        }

    }

    @Then("RustamR type {string} to {string} textfield")
    public void rustamrTypeToTextfield(String sText, String sTextFieldName) {
        switch (sTextFieldName) {
            case "Email":
                getDriver().findElement(By.xpath(sEmailTextField)).sendKeys(sText);
                break;
            case "Password":
                getDriver().findElement(By.xpath(sPasswordTextField)).sendKeys(sText);
                break;
            default:
                System.out.println("There is no such element on this page");
        }

    }

    @Then("RustamR log in")
    public void rustamrLoginAsAdministrator() {
        getDriver().findElement(By.xpath(sLoginButton)).click();
        getDriver().findElement(By.xpath(sEmailTextField)).sendKeys(sEmail);
        getDriver().findElement(By.xpath(sPasswordTextField)).sendKeys(sPassword);
        getDriver().findElement(By.xpath(sSignInButton)).click();
    }

    @And("RustamR should see page title as {string}")
    public void rustamrShouldSeePageTitleAs(String arg0) {assertThat(Objects.equals(getDriver().getTitle(), sText));
    }


    @Then("RustamR clicks on {string} button")
    public void rustamrClicksOnStringButton(String sButton) {getDriver().findElement(By.xpath(sButton)).click();
    }

    @Then("RustamR wait for {int} sec")
    public void iWaitForSec(int sec) throws Exception {
        Thread.sleep(sec * 1000);
    }

    @And("RustamR fillout the form")
    public void rustamrFilloutTheForm() throws InterruptedException {

        getDriver().findElement(By.xpath(sAddAppointmentButton)).click();
        getDriver().findElement(By.xpath(sPatientNameField)).sendKeys(sPatientName);
        getDriver().findElement(By.xpath(sPurposeField)).sendKeys(sPurpose);
        getDriver().findElement(By.xpath(sEmployeeIDField)).click();
        getDriver().findElement(By.xpath(sDashkaPolarDoctor)).click();
        getDriver().findElement(By.xpath(sTypeDate)).sendKeys(sDate);
        getDriver().findElement(By.xpath(sChooseTime)).click();

    }


    @Then("RustamR wait for element with patientAppointment to be present")
    public void rustamrWaitForElementWithPatientAppointmentToBePresent() {
        new WebDriverWait(getDriver(), Duration.ofSeconds(20)).until(ExpectedConditions.presenceOfElementLocated(By.xpath(sAppointment))).click();
    }

}

