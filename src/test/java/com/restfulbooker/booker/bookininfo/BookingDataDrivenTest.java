package com.restfulbooker.booker.bookininfo;

import com.restfulbooker.booker.testbase.TestBase;
import com.restfulbooker.bookininfo.BookingSteps;
import net.serenitybdd.junit.runners.SerenityParameterizedRunner;
import net.thucydides.core.annotations.Steps;
import net.thucydides.core.annotations.Title;
import net.thucydides.junit.annotations.Concurrent;
import net.thucydides.junit.annotations.UseTestDataFrom;
import org.junit.Test;
import org.junit.runner.RunWith;

@Concurrent(threads = "2x")
@UseTestDataFrom("src/test/java/resources/testdata/booking.csv")
@RunWith(SerenityParameterizedRunner.class)
public class BookingDataDrivenTest extends TestBase {

    private String firstName;
    private String lastName;
    private int totalPrice;
    private boolean depositPaid;
    private String checkIn;
    private String checkOut;
    private String additionalNeeds;

    @Steps
    BookingSteps bookingSteps;
    @Title("Data Driven test for adding multiple bookings to the application")
    @Test
    public void createMultipleBookings(){
             bookingSteps.createBooking(firstName, lastName, totalPrice, depositPaid, checkIn,checkOut,
                additionalNeeds).log().all();
    }

}