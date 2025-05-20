package com.dto;

import java.io.IOException;

import org.json.JSONObject;

import okhttp3.*;

public class ChatBot {
    private static final String API_KEY = "YOUR_OPENAI_API_KEY";
    private static final String API_URL = "https://api.openai.com/v1/engines/gpt-3.5-turbo/completions"; // Update as per model

    public String getAIResponse(String userMessage) {
        OkHttpClient client = new OkHttpClient();

        // JSON payload for OpenAI API
        String jsonPayload = "{"
            + "\"model\":\"gpt-3.5-turbo\","
            + "\"messages\":[{\"role\":\"user\",\"content\":\"" + userMessage + "\"}],"
            + "\"max_tokens\":100"
            + "}";

        RequestBody body = RequestBody.create(
            jsonPayload, MediaType.get("application/json; charset=utf-8"));

        Request request = new Request.Builder()
            .url(API_URL)
            .header("Authorization", "Bearer " + API_KEY)
            .post(body)
            .build();

        try (Response response = client.newCall(request).execute()) {
            if (!response.isSuccessful()) {
                throw new IOException("Unexpected response code: " + response);
            }

            // Extract response from the JSON
            String responseBody = response.body().string();
            JSONObject jsonResponse = new JSONObject(responseBody);

            // Extract the content from the response
            String aiResponse = jsonResponse.getJSONArray("choices")
                                            .getJSONObject(0)
                                            .getJSONObject("message")
                                            .getString("content");

            return aiResponse;  // Make sure to return the response
        } catch (IOException e) {
            e.printStackTrace();
            return "Error occurred: " + e.getMessage();  // Handle error gracefully
        }
    }
}
