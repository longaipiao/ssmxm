package com.zking.ssm.controller;

import com.mchange.v2.collection.MapEntry;
import com.zking.ssm.model.*;
import com.zking.ssm.service.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

/**
 * @email 2417902780@qq.com
 * @author:阿飘
 * @company 飘飘公司
 * @create 2019-06-05 21:00
 */
@Controller
public class SrgController {

    /**
     *         System.out.println(map.get("sname"));
     *         System.out.println(map.get("stel"));
     *         System.out.println(map.get("pickdate"));
     *         System.out.println(map.get("quantity"));
     *         System.out.println(map.get("saddress"));
     *         System.out.println(map.get("sdate"));
     *         System.out.println(map.get("goodname"));
     *         System.out.println(map.get("snote"));
     *         System.out.println(map.get("rname"));
     *         System.out.println(map.get("rtel"));
     *         System.out.println(map.get("remail"));
     *         System.out.println(map.get("raddress"));
     *         System.out.println(map.get("gname"));
     *         System.out.println(map.get("packaging"));
     *         System.out.println(map.get("gweight"));
     *         System.out.println(map.get("gvolume"));
     * @param map
     */
    ///注入发货表
    @Autowired
    private ShipperService shipperService;
    @Autowired
    private Shipper shipper;

    //注入收货表
    @Autowired
    private ReceivingService receivingService;
    @Autowired
    private Receiving receiving;
    //注入货物表
    @Autowired
    private GoodsService goodsService;
    @Autowired
    private Goods goods;
    //注入价钱表
    @Autowired
    private PriceService priceService;
    @Autowired
    private Price price;
    //注入订单表
    @Autowired
    private OrderService orderService;
    @Autowired
    private Order order;


    @RequestMapping(value = "/srgtest")
    public void addAll(@RequestParam Map<String,Object> map){
        System.out.println("进入我的地盘了，哈哈哈======");
        System.out.println(map.get("sname"));
    }


}
