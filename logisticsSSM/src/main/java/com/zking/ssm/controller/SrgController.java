package com.zking.ssm.controller;

import com.mchange.v2.collection.MapEntry;
import com.zking.ssm.model.*;
import com.zking.ssm.service.*;
import com.zking.ssm.util.IdGeneratorUtils;
import com.zking.ssm.util.PinYinUtil;
import com.zking.ssm.util.RandomStringTool;
import com.zking.ssm.util.UUIDUtils;
import org.apache.commons.lang.time.DateFormatUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.*;

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
    @Autowired
    private IdGeneratorUtils idGeneratorUtils;
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
        //添加发货的数据
        shipper.setSid(idGeneratorUtils.nextId());//发货id
        String sname = (String) map.get("sname");
        shipper.setSname(sname);//发货人名称
        shipper.setPingyinsname(sname);//发货人的名称
        String stel = (String) map.get("stel");
        shipper.setStel(stel);//联系人电话'
        String pickdate = (String)map.get("pickdate");
        shipper.setPickdate(pickdate);//预期提货日期
        String quantity = (String) map.get("quantity");
        shipper.setQuantity(Integer.parseInt(quantity));//箱量
        String saddress = (String)map.get("saddress");
        shipper.setSaddress(saddress);//发货地址
        String sdate = (String)map.get("sdate");
        shipper.setSdate(sdate);//发货时间'
        String goodname = (String)map.get("goodname");
        shipper.setGoodname(goodname);//发货时间'
        String snote = (String)map.get("snote");
        shipper.setSnote(snote);//'备注'
        System.err.println("发货方对象是："+shipper);
        //执行添加发货方的方法
        int sid = shipperService.addShipper(shipper);
        System.err.println("增加发货表返回的主键id是："+shipper.getSid());
        System.err.println("结束====添加发货方的方法");

        //开始添加收货方信息
        System.err.println("开始提交收货方的数据");
        receiving.setRid(idGeneratorUtils.nextId());
        String rname = (String)map.get("rname");
        receiving.setRname(rname);//收货人名称
        receiving.setPingyinrname(rname);//拼音的名称
        String rtel = (String)map.get("rtel");
        receiving.setRtel(rtel);//联系人电话
        String remail = (String)map.get("remail");
        receiving.setRemail(remail);//电子邮箱',
        String raddress = (String)map.get("raddress");
        receiving.setRaddress(raddress);//送货地址'
        receiving.setRstate(1);//状态为1是未发货的
        //执行添加收货方的方法
        System.out.println("收货方对象是："+receiving);
        int rid = receivingService.addReceiving(receiving);
        System.err.println("增加收货表返回的主键id是："+receiving.getRid());
        System.err.println("结束====添加收货方的方法");

        //添加货物表的信息
        System.err.println("开始添加货物表的数据");
        goods.setGid(idGeneratorUtils.nextId());//货物id
        goods.setUid(1);//需要获取登录时候的用户id   需要更换的值
        String gname = (String) map.get("gname");
        goods.setGname(gname);//货物名称（中文）
        goods.setPingyingname(gname);//货物名称的拼音
        String packaging = (String) map.get("packaging");
        goods.setPackaging(packaging);//包装要求',
        String number = (String) map.get("number");
        goods.setNumber(Integer.parseInt(number));//件数',
        String gweight1 = (String) map.get("gweight");
        int gweight = Integer.parseInt(gweight1);
        goods.setGweight(gweight);//'总重（kg）',
        String gvolume1 = (String) map.get("gvolume");
        int gvolume = Integer.parseInt(gvolume1);
        goods.setGvolume(gvolume);//'总体积（m3）
        System.out.println("货物的对象是："+goods);

        int gid = goodsService.addGoods(goods);
        System.err.println("增加货物表返回的主键id是："+goods.getGid());
        System.err.println("结束添加货物表的数据");


        //开始添加价钱
        System.err.println("开始提交价钱的数据");
        price.setPid(idGeneratorUtils.nextId());//价钱id
        price.setUid(1);//需要获取登录时候的用户id   需要更换的值
        price.setPweight(gweight1);//获取货物表填写的重量
        price.setLandfreight(50);//默认50 元 金额
        String checkbox = (String) map.get("checkbox");//获取选中提送货的服务的值
        int check = Integer.parseInt(checkbox);
        if(1==check){
            System.err.println("选中的时候执行的=========================");
            //gweight ：总的重量
            //gvolume : '总体积（m3）'
            //价钱 ： 1Kg = 18元
            //Landfreight : 陆运费  默认   50
            //Servicefee : 上门取货送货服务费
            //totalmoney : '总金额',
            price.setServicefee(600);//上门取货送货服务费  √ 选中就需要服务费用
            Integer je = gweight * 18;
            Integer sum = je + 50 + 600;
            //添加总金额
            price.setTotalmoney(sum);
        }else{
            System.err.println("不选中的时候执行的*********************");
            Integer je = gweight * 18;
            Integer sum = je + 50;
            price.setServicefee(0);
            //添加总金额
            price.setTotalmoney(sum);
        }
        price.setPayment("微信");
        price.setPstate(1);//未支付
        int pid = priceService.insert(price);
        System.err.println("增加价钱表返回的主键id是："+price.getPid());
        System.out.println("结束添加价钱方法的数据");


        System.err.println("最后添加订单的方法******************");
        order.setOid(idGeneratorUtils.nextId());//添加订单的id
        order.setBlno(RandomStringTool.getRandomString(10,true));//设置提单号
        order.setCredate(DateFormatUtils.format(new Date(), "yyyy-MM-dd HH:mm:ss"));//订单创建时间
        order.setOnumber(UUIDUtils.generateString(10));//贸易订单号
        order.setOaddress(receiving.getRaddress());//添加的是收货人的地址
        order.setOstate(1);//订单状态为1 是预约订单
        order.setSid(shipper.getSid());//添加发货的id
        order.setRid(receiving.getRid());//添加收货的id
        order.setGid(goods.getGid());//添加货物的id
        Price price1 = new Price();
        price1.setPid(price.getPid());
        order.setPrice(price1);//添加价钱的id
        order.setUid(1);//需要获取登录时候的用户id   需要更换的值
        if(1==check){
            System.err.println("选中的时候执行的  状态是需要提货=========================");
            order.setThstate(1);//1的状态是需要提货的服务
        }else{
            System.err.println("不选中的时候执行的  状态是不需要提货=========================");
            order.setThstate(2);//2的状态是不需要提货的服务
        }
        int oid = orderService.insert(order);
        System.err.println("****************************结束添加订单的方法************************");

    }
}
