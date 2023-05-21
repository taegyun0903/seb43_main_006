package com.codestates.julsinsa.item.dto;

import lombok.Getter;
import lombok.Setter;


public class ItemPatchDto {

    @Getter
    @Setter
    public static class ItemPatch {
        private Long itemId;
        private String titleKor;
        private String titleEng;
//        private String content;
//        private List<String> categories;
        private int price;
        private int capacity;
        private int volume;
//        private String country;
//        private String aroma;
//        private String taste;
//        private String field;
        private int discount_rate;
//        private String profile; 프로필 수정시 필요
        private int quantity;
//        private String detailedProfile; 프로필 수정시 필요
        private int sales;
        private int review_count;
        private int review_rating;
    }
}