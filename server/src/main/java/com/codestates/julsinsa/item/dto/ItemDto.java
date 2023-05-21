package com.codestates.julsinsa.item.dto;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.Setter;

import java.util.List;

public class ItemDto {

    @Getter
    @Setter
    public static class Response{

        private Long itemId;
        private String titleKor;

        private String titleEng;

        private String profile;

        private String detailedProfile;

        private List<String> categories;

        private int price;

        private int capacity;

        private double volume;

        private String country;

        private String aroma;

        private String taste;

        private String field;

        private int sales;
        private int quantity;
        private int discountRate;

        private int reviewCount;

        private double reviewRating;
    }

    @Getter
    @Setter
    public static class ItemsResponse{
        private Long itemId;
        private String titleKor;
        private int discountRate;
        private int price;
        private List<String> categories;

        private String profile;

        private int reviewCount;

        private double reviewRating;
    }



    @AllArgsConstructor
    @Getter
    @Setter
    public static class favoriteItemResponse {

        private Long itemId;
        private String titleKor;
        private int price;

        private int quantity;
        private int capacity;

        private double reviewRating;

        private String profile;

    }

    @Getter
    @Setter
    @AllArgsConstructor
    public static class FavoriteStatusDto{
        private boolean like;
    }

    @Getter
    @Setter
    public static class Post {
        private String titleKor;
        private String titleEng;
        private String content;
        private List<String> categories;
        private int price;
        private int capacity;
        private int volume;
        private String country;
        private String aroma;
        private String taste;
        private String field;
        private int discount_rate;
        private String profile;
        private int quantity;
        private String detailedProfile;
        private int sales;
        private int review_count;
        private int review_rating;

    }
}
