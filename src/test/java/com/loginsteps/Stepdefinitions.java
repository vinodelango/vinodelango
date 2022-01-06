package com.loginsteps;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.support.ui.Select;

import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import io.github.bonigarcia.wdm.WebDriverManager;

public class Stepdefinitions {
	WebDriver driver;
	@Given("user is on the adatctin page")
	public void user_is_on_the_adatctin_page() {
		
			WebDriverManager.chromedriver().setup();
			driver = new ChromeDriver();
			driver.get("https://adactinhotelapp.com/");
	}

	@When("user should login with valid {string} and {string}")
	public void user_should_login_with_valid_and(String name, String pass) {
WebElement txtUserName = driver.findElement(By.id("username"));
txtUserName.sendKeys(name);
WebElement txtpass = driver.findElement(By.id("password"));
txtpass.sendKeys(pass);
WebElement btnlogin = driver.findElement(By.id("login"));
btnlogin.click();
   }

	@When("user should search hotels {string},{string},{string},{string},{string},{string},{string},{string} and click search")
	public void user_should_search_hotels_and_click_search(String location, String hotel, String roomtype, String noofrooms, String checkInDate, String checkOutDate, String adultsPerRoom, String childernsPerRoom) {
		WebElement dDnlocation = driver.findElement(By.id("location"));
		Select select = new Select(dDnlocation);
		select.selectByVisibleText(location);
		WebElement dDnhotels = driver.findElement(By.id("hotels"));
		Select s1 = new Select(dDnhotels);
		s1.selectByVisibleText(hotel);
		WebElement dDnRoomtype = driver.findElement(By.id("room_type"));
		Select s2 = new Select(dDnRoomtype);
		s2.selectByVisibleText(roomtype);
		WebElement dDnRoomnos = driver.findElement(By.id("room_nos"));
		Select s3 = new Select(dDnRoomnos);
		s3.selectByVisibleText(noofrooms);
		WebElement checkin = driver.findElement(By.id("datepick_in"));
		checkin.sendKeys(checkInDate);
		WebElement checkout = driver.findElement(By.id("datepick_out"));
		checkout.sendKeys(checkOutDate);
		WebElement adultRoom = driver.findElement(By.id("adult_room"));
		Select s4 = new Select(adultRoom);
		s4.selectByVisibleText(adultsPerRoom);
		WebElement childRoom = driver.findElement(By.id("child_room"));
		Select s5 = new Select(childRoom);
		s5.selectByVisibleText(childernsPerRoom);
		WebElement btnsearch = driver.findElement(By.id("Submit"));
		btnsearch.click();
		}

	@When("user should select the hotel and click continue")
	public void user_should_select_the_hotel_and_click_continue() {
	WebElement btnradio = driver.findElement(By.id("radiobutton_0"));
	btnradio.click();
	WebElement btncontinue = driver.findElement(By.id("continue"));
	btncontinue.click();
	}

	@When("user shoud enter the {string},{string},{string},{string},{string},{string}{string},{string}and should click booknow")
	public void user_shoud_enter_the_and_should_click_booknow(String firstname, String lastname, String address, String creditcdno, String crditcdtype, String expirymonth, String expyear, String cvv) {
		WebElement firstName = driver.findElement(By.id("first_name"));
		firstName.sendKeys(firstname);
		WebElement lastName = driver.findElement(By.id("last_name"));
		lastName.sendKeys(lastname);
		WebElement adddress = driver.findElement(By.id("address"));
		adddress.sendKeys(address);
		WebElement creditno = driver.findElement(By.id("cc_num"));
		creditno.sendKeys(creditcdno);
		WebElement crditcdtypee = driver.findElement(By.id("cc_type"));
		crditcdtypee.sendKeys(crditcdtype);
		WebElement expirymon = driver.findElement(By.id("cc_exp_month"));
		expirymon.sendKeys(expirymonth);
		WebElement expiryyear = driver.findElement(By.id("cc_exp_year"));
		expiryyear.sendKeys(expyear);
		WebElement cvvv = driver.findElement(By.id("cc_cvv"));
		cvvv.sendKeys(cvv);
		WebElement btnbook = driver.findElement(By.id("book_now"));
		btnbook.click();
		
	}

	@Then("user should print the generated orderid")
	public void user_should_print_the_generated_orderid() throws InterruptedException {
		Thread.sleep(5000);
	  WebElement oderid = driver.findElement(By.id("order_no"));
	  String attribute = oderid.getAttribute("value");
	  System.out.println(attribute);
	}



	}

