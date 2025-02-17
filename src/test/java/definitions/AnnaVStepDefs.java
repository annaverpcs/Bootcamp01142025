package definitions;

import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import org.openqa.selenium.By;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;


import java.time.Duration;

import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.getDriver;

public class AnnaVStepDefs {
    @Given("AnnaV launch {string}")
    public void annavLaunch(String sApplicationName) {
        //getDriver().get("https://medicenter-qa2.vercel.app/");
        switch(sApplicationName){
            case "Medicenter V1":
                getDriver().get(xPathLibrary.sMedicenterV1URL);
                break;
            case "Medicenter V2":
                getDriver().get(xPathLibrary.sMedicenterV2URL);
                break;
            case "Google":
                getDriver().get(xPathLibrary.sGoogleURL);
                break;
            default:
                System.out.println("There is no such URL. Please check the spelling");
        }
    }

    @Then("AnnaV page title is {string}")
    public void annavPageTitleIs(String sPageTitle) {
        assertThat(getDriver().getTitle().contains(sPageTitle));
    }

    @And("AnnaV wait for {string} text")
    public void annavWaitForText(String sXpath) {
        new WebDriverWait(getDriver(), Duration.ofSeconds(20)).until(ExpectedConditions.presenceOfElementLocated(By.xpath(sXpath)));
    }

    @Then("AnnaV click on {string} button")
    public void annavClickOnButton(String sButtonName) {
        switch (sButtonName){
            case "Login":
                getDriver().findElement(By.xpath(xPathLibrary.sLoginButton)).click();
                break;
            case "Create Account":
                getDriver().findElement(By.xpath(xPathLibrary.sCreateAccountButton)).click();
                break;
            case "Sign In":
                getDriver().findElement(By.xpath(xPathLibrary.sSignInButton)).click();
                break;
            default:
                System.out.println("There is no such button on this page");

        }

    }

    @Then("AnnaV type {string} to {string} textfield")
    public void annavTypeToTextfield(String sText, String sTextFieldName) {
        switch (sTextFieldName) {
            case "Email": getDriver().findElement(By.xpath(xPathLibrary.sEmailTextField)).sendKeys(sText);
            break;
            case "Password":getDriver().findElement(By.xpath(xPathLibrary.sPasswordTextField)).sendKeys(sText);
            break;
            default:
                System.out.println("There is no such element on this page");
        }

    }
}

