package com.codestates.julsinsa.payment.service;

import com.codestates.julsinsa.global.exception.BusinessLogicException;
import com.codestates.julsinsa.global.exception.ExceptionCode;
import com.codestates.julsinsa.payment.entity.Payment;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import java.io.IOException;
import java.net.URI;
import java.net.http.HttpClient;
import java.net.http.HttpRequest;
import java.net.http.HttpResponse;
import java.util.Base64;

@Service
@RequiredArgsConstructor
public class PaymentService {

    private String SECRET_KEY = "test_sk_YoEjb0gm23P1O1BQ7WgVpGwBJn5e"; // "test_sk_YoEjb0gm23P1O1BQ7WgVpGwBJn5e";

    public void paymentConfirm(Payment payment) {

        try {
            String encodedAuth = Base64.getEncoder().encodeToString((SECRET_KEY + ":").getBytes());
            String requestBody = "{\"paymentKey\":\"" + payment.getPaymentKey() + "\",\"amount\":" + payment.getAmount() + ",\"orderId\":\"" + payment.getOrderId() + "\"}";
            HttpRequest request = HttpRequest.newBuilder()
                    .uri(URI.create("https://api.tosspayments.com/v1/payments/confirm"))
                    .header("Authorization", "Basic " + encodedAuth)
                    .header("Content-Type", "application/json")
                    .method("POST", HttpRequest.BodyPublishers.ofString(requestBody))
                    .build();

            HttpResponse<String> response = HttpClient.newHttpClient().send(request, HttpResponse.BodyHandlers.ofString());

            if (response.statusCode() != 200) {
                throw new BusinessLogicException(ExceptionCode.PAYMENT_REQUEST_FAIL);
            }
        }
        catch (IOException | InterruptedException e) {
            throw new BusinessLogicException(ExceptionCode.PAYMENT_REQUEST_FAIL);
        }

    }
}
