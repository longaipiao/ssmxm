package com.zking.ssm.util;

import org.springframework.stereotype.Service;

/**
 * @email 2417902780@qq.com
 * @author:阿飘
 * @company 飘飘公司
 * @create 2019-06-04 20:19 生成指定长度随机字符串工具类
 */
@Service
public class RandomStringTool {
    private static String baseChars = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz1234567890";

    private static String specialChars = "!@#$%^&*";

    /**
     * 生成指定长度字符串，默认不包含特殊字符
     * @param length 生成字符串长度
     * @return
     */
    public static String getRandomString(int length) {
        return getRandomString(length, false);
    }

    /**
     * 生成随机字符串
     * @param length 生成字符串长度
     * @param hasSpecial 是否包含特殊字符
     * @return
     */
    public static String getRandomString(int length, boolean hasSpecial) {
        String chars = hasSpecial ? baseChars.concat(specialChars) : baseChars;
        return getRandomString(length, chars);
    }

    /**
     * 在指定的字符内生成指定长度字符串
     * @param length
     * @param string
     * @return
     */
    public static String getRandomString(int length, String string) {
        StringBuffer sb = new StringBuffer();
        int len = string.length();
        for (int i = 0; i < length; i++) {
            int index = (int) Math.round(Math.random() * (len - 1));
            sb.append(string.charAt(index));
        }
        return sb.toString();
    }


    public static void main(String[] args) {
        String ewqe = getRandomString(4, true);
        System.out.println(ewqe);
    }
}
