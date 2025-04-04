package com.entity;

import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.beanutils.BeanUtils;
import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
import java.lang.reflect.InvocationTargetException;
import java.util.Date;


/**
 * 教师
 * 数据库通用操作实体类（普通增删改查）
 *
 * @author
 * @email
 * @date 2021-03-31 00:17:41
 */
@TableName("jiaoshi")
public class JiaoshiEntity<T> implements Serializable {
    private static final long serialVersionUID = 1L;
    /**
     * 主键id
     */
    @TableId
    private Long id;
    /**
     * 教师工号
     */

    private String jiaoshigonghao;
    /**
     * 密码
     */

    private String mima;
    /**
     * 教师姓名
     */

    private String jiaoshixingming;
    /**
     * 性别
     */

    private String xingbie;
    /**
     * 照片
     */

    private String zhaopian;
    /**
     * 职称
     */

    private String zhicheng;
    /**
     * 联系电话
     */

    private String lianxidianhua;
    /**
     * 教师邮箱
     */

    private String jiaoshiyouxiang;
    /**
     * 余额
     */

    private Float money;
    @JsonFormat(locale = "zh", timezone = "GMT+8", pattern = "yyyy-MM-dd HH:mm:ss")
    @DateTimeFormat
    private Date addtime;

    public JiaoshiEntity() {

    }


    public JiaoshiEntity(T t) {
        try {
            BeanUtils.copyProperties(this, t);
        } catch (IllegalAccessException | InvocationTargetException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
    }

    public Date getAddtime() {
        return addtime;
    }

    public void setAddtime(Date addtime) {
        this.addtime = addtime;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    /**
     * 获取：教师工号
     */
    public String getJiaoshigonghao() {
        return jiaoshigonghao;
    }

    /**
     * 设置：教师工号
     */
    public void setJiaoshigonghao(String jiaoshigonghao) {
        this.jiaoshigonghao = jiaoshigonghao;
    }

    /**
     * 获取：密码
     */
    public String getMima() {
        return mima;
    }

    /**
     * 设置：密码
     */
    public void setMima(String mima) {
        this.mima = mima;
    }

    /**
     * 获取：教师姓名
     */
    public String getJiaoshixingming() {
        return jiaoshixingming;
    }

    /**
     * 设置：教师姓名
     */
    public void setJiaoshixingming(String jiaoshixingming) {
        this.jiaoshixingming = jiaoshixingming;
    }

    /**
     * 获取：性别
     */
    public String getXingbie() {
        return xingbie;
    }

    /**
     * 设置：性别
     */
    public void setXingbie(String xingbie) {
        this.xingbie = xingbie;
    }

    /**
     * 获取：照片
     */
    public String getZhaopian() {
        return zhaopian;
    }

    /**
     * 设置：照片
     */
    public void setZhaopian(String zhaopian) {
        this.zhaopian = zhaopian;
    }

    /**
     * 获取：职称
     */
    public String getZhicheng() {
        return zhicheng;
    }

    /**
     * 设置：职称
     */
    public void setZhicheng(String zhicheng) {
        this.zhicheng = zhicheng;
    }

    /**
     * 获取：联系电话
     */
    public String getLianxidianhua() {
        return lianxidianhua;
    }

    /**
     * 设置：联系电话
     */
    public void setLianxidianhua(String lianxidianhua) {
        this.lianxidianhua = lianxidianhua;
    }

    /**
     * 获取：教师邮箱
     */
    public String getJiaoshiyouxiang() {
        return jiaoshiyouxiang;
    }

    /**
     * 设置：教师邮箱
     */
    public void setJiaoshiyouxiang(String jiaoshiyouxiang) {
        this.jiaoshiyouxiang = jiaoshiyouxiang;
    }

    /**
     * 获取：余额
     */
    public Float getMoney() {
        return money;
    }

    /**
     * 设置：余额
     */
    public void setMoney(Float money) {
        this.money = money;
    }

}
