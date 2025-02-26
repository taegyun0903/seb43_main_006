package com.codestates.julsinsa.item.mapper;

import com.codestates.julsinsa.item.dto.ItemDto;
import com.codestates.julsinsa.item.dto.ItemPatchDto;
import com.codestates.julsinsa.item.entity.Item;
import com.codestates.julsinsa.review.dto.ReviewDto;
import com.codestates.julsinsa.review.entity.Review;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;
import org.mapstruct.ReportingPolicy;

import java.util.List;

@Mapper(componentModel = "spring", unmappedTargetPolicy = ReportingPolicy.IGNORE)
public interface ItemMapper {

    Item itemPostToItem(ItemDto.Post requestBody);

    Item itemPatchToItem(ItemDto.Patch requestBody);

    ItemDto.Response itemToItemResponseDto(Item item);

    List<ItemDto.ItemsResponse> itemsToItemResponseDtos(List<Item> items);

    @Mapping(source = "member.memberId",target = "memberId")
    @Mapping(source = "member.displayName",target = "displayName")
    List<ReviewDto.Response> reviewsToReviewResponses(List<Review> reviews);

    @Mapping(source = "member.memberId",target = "memberId")
    @Mapping(source = "member.displayName",target = "displayName")
    ReviewDto.Response reviewToReviewResponse(Review review);

    Item itemPostItem(ItemDto.Post itemPost);


}
