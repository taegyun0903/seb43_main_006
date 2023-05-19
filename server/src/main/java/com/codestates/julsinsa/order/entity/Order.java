package com.codestates.julsinsa.order.entity;

import com.codestates.julsinsa.global.audit.Auditable;
import com.codestates.julsinsa.market.entitiy.Market;
import com.codestates.julsinsa.member.entity.Member;
import com.codestates.julsinsa.payment.entity.Payment;
import com.fasterxml.jackson.annotation.JsonValue;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;


import javax.persistence.*;
import java.util.*;

@Entity
@Getter
@Setter
@NoArgsConstructor
@Table(name = "orders")
public class Order extends Auditable {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long orderId;
    private String name;
    private String phone;
    @Enumerated(value = EnumType.STRING)
    @Column
    private OrderStatus orderStatus = OrderStatus.ORDER_REQUEST;

    @OneToMany(mappedBy = "order", cascade = CascadeType.ALL)
    private List<ItemOrder> itemOrders = new ArrayList<>();

    @ManyToOne
    @JoinColumn(name = "member_id")
    private Member member;

    public void addMember(Member member) {
        this.member = member;
    }

    @OneToOne
    @JoinColumn(name = "market_id")
    private Market market;

    @OneToOne
    @JoinColumn(name = "payment_id")
    private Payment payment;


    public enum OrderStatus {
        ORDER_REQUEST("주문 요청"),
        ORDER_COMPLETE("주문 완료"),
        PICKUP_COMPLETE("픽업 완료"),
        ORDER_CANCEL("주문 취소");


        private String orderDec;

        OrderStatus(String orderDec) {
            this.orderDec = orderDec;
        }


        // @JsonValue 어노테이션을 사용하여 필드를 한글로 직렬화
        @JsonValue
        public String getOrderDec() {
            return orderDec;
        }
    }

}


