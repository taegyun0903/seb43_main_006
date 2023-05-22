package com.codestates.julsinsa.item.controller;

import com.codestates.julsinsa.global.dto.MultiResponseDto;
import com.codestates.julsinsa.global.dto.SingleResponseDto;
import com.codestates.julsinsa.global.utils.UriCreator;
import com.codestates.julsinsa.item.dto.ItemDto;
import com.codestates.julsinsa.item.dto.ItemPatchDto;
import com.codestates.julsinsa.item.entity.Item;
import com.codestates.julsinsa.item.mapper.ItemMapper;
import com.codestates.julsinsa.item.service.ItemService;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import javax.validation.constraints.Positive;
import java.net.URI;
import java.util.List;

@RestController
@RequestMapping("/items")
@RequiredArgsConstructor
@Validated
public class ItemController {

    private final ItemService itemService;

    private final ItemMapper mapper;

    private final static String ITEM_DEFAULT_URL = "/items";

    @PostMapping
    public ResponseEntity postItem(@RequestBody ItemDto.Post requestBody){
        Item item = itemService.createItem(mapper.itemPostToItem(requestBody));

        URI location = UriCreator.createUri(ITEM_DEFAULT_URL, item.getItemId());

        return ResponseEntity.created(location).build();
    }

    @PatchMapping("/{item-id}")
    public ResponseEntity patchItem(@RequestBody ItemDto.Patch requestBody,
                                    @PathVariable("item-id") @Positive long itemId){
        Item item = mapper.itemPatchToItem(requestBody);
        item.setItemId(itemId);
        Item patchItem = itemService.updateItem(item);

        return new ResponseEntity<>(new SingleResponseDto<>(mapper.itemToItemResponseDto(patchItem)),HttpStatus.OK);
    }

    @DeleteMapping("/{item-id}")
    public ResponseEntity deleteItem(@PathVariable("item-id") @Positive long itemId){
        itemService.deleteItem(itemId);

        return new ResponseEntity<>(HttpStatus.NO_CONTENT);
    }

    @GetMapping
    public ResponseEntity getItemByCategories(@Positive @RequestParam int page,
                                              @Positive @RequestParam int size,
                                              @RequestParam(required = false) String category,
                                              @RequestParam(required = false) String sortBy) {
        Page<Item> pageItems;
        List<Item> items;

        if (category != null) {
            if (sortBy != null) {
                switch (sortBy) {
                    case "sales":
                        pageItems = itemService.findItemsByCategoryAndSortBySales(page, size, category);
                        break;
                    case "discountRate":
                        pageItems = itemService.findItemsByCategoryAndSortByDiscountRate(page, size, category);
                        break;
                    case "highPrice":
                        pageItems = itemService.findItemsByCategoryAndSortByHighPrice(page, size, category);
                        break;
                    case "lowPrice":
                        pageItems = itemService.findItemsByCategoryAndSortByLowPrice(page, size, category);
                        break;
                    case "latest":
                        pageItems = itemService.findItemsByCategory(page, size, category);
                        break;
                    default:
                        pageItems = itemService.findItemsByCategory(page, size, category);
                        break;
                }
            } else {
                pageItems = itemService.findItemsByCategory(page, size, category);
            }
        } else {
            if (sortBy != null) {
                switch (sortBy) {
                    case "sales":
                        pageItems = itemService.findItemsBySales(page, size);
                        break;
                    case "discountRate":
                        pageItems = itemService.findItemsByDiscountRate(page, size);
                        break;
                    case "highPrice":
                        pageItems = itemService.findItemsByHighPrice(page, size);
                        break;
                    case "lowPrice":
                        pageItems = itemService.findItemsByLowPrice(page, size);
                        break;
                    case "latest":
                        pageItems = itemService.findItems(page, size);
                        break;
                    default:
                        pageItems = itemService.findItems(page, size);
                        break;
                }
            } else {
                pageItems = itemService.findItems(page, size);
            }
        }

        items = pageItems.getContent();
        return new ResponseEntity<>(new MultiResponseDto<>(mapper.itemsToItemResponseDtos(items), pageItems), HttpStatus.OK);
    }


    @GetMapping("/search")
    public ResponseEntity searchTitle(@RequestParam @Positive int page,
                                      @RequestParam @Positive int size,
                                      @RequestParam(required = false) String title){
        Page<Item> itemPage = itemService.searchByTitle(page, size, title);
        List<Item> items = itemPage.getContent();

        return new ResponseEntity<>(new MultiResponseDto<>(mapper.itemsToItemResponseDtos(items),itemPage),HttpStatus.OK);
    }

    @GetMapping("/{item-id}")
    public ResponseEntity getItem(@PathVariable("item-id") @Positive long itemId){
        Item item = itemService.findItem(itemId);

        return new ResponseEntity<>(new SingleResponseDto<>(mapper.itemToItemResponseDto(item)),HttpStatus.OK);
    }

    @PostMapping("/{item-id}/favorite")
    public ResponseEntity postFavorite(@PathVariable("item-id") @Positive long itemId){
        Item item = itemService.createFavorite(itemId);

        return new ResponseEntity<>(HttpStatus.OK);
    }

    @DeleteMapping("/{item-id}/favorite")
    public ResponseEntity deleteFavorite(@PathVariable("item-id") @Positive long itemId) {
        Item item = itemService.cancleFavorite(itemId);

        return new ResponseEntity<>(HttpStatus.OK);
    }

    @GetMapping("/{item-id}/is-favorite")
    public ResponseEntity checkFavoriteStatus(@PathVariable("item-id") @Positive long itemId) {

        // 아이템의 찜 여부 조회
        ItemDto.FavoriteStatusDto favoriteStatusDto = itemService.checkFavoriteStatus(itemId);

        return new ResponseEntity<>(new SingleResponseDto<>(favoriteStatusDto),HttpStatus.OK);
    }


//    // 특정 상품 상세 조회
//    @GetMapping("/item/{item-id}")
//    public ResponseEntity detailItems (@PathVariable("item-id") @Positive long itemId, Item item) {
//        item = itemService.detailItems(itemId);
//        ItemDto.Response itemDtoResponse = mapper.itemToItemResponseDto(item);
//        return new ResponseEntity(itemDtoResponse, HttpStatus.OK);
//    }
    // 상품 정보 수정
    @PatchMapping("/item/{item-id}")
    public ResponseEntity updateItem(@PathVariable("item-id") @Positive long itemId, @RequestBody ItemPatchDto.ItemPatch requestBody) {
        itemService.updateItem(requestBody, itemId);
        return new ResponseEntity(HttpStatus.OK);
    }
//    // 상품 삭제
//    @DeleteMapping("/item/{item-id}")
//    public ResponseEntity deleteItem(@PathVariable("item-id") @Positive long itemId) {
//
//        itemService.deleteItem(itemId);
//
//        return new ResponseEntity(HttpStatus.OK);
//
//    }
    // 상품 등록
//    @PostMapping("/item")
//    public ResponseEntity postItem(@RequestBody ItemDto.Post requestBody) {
//        Item item = mapper.itemPostItem(requestBody);
//        Item createItem = itemService.createItem(item);
//        return new ResponseEntity(HttpStatus.OK);
//    }



}
