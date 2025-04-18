package com.entity.view;

import com.baomidou.mybatisplus.annotations.TableName;
import com.entity.DiscusskechengxinxiEntity;
import org.apache.commons.beanutils.BeanUtils;

import java.io.Serializable;
import java.lang.reflect.InvocationTargetException;


/**
 * 课程信息评论表
 * 后端返回视图实体辅助类
 * （通常后端关联的表或者自定义的字段需要返回使用）
 *
 * @author
 * @email
 * @date 2021-03-31 00:17:42
 */
@TableName("discusskechengxinxi")
public class DiscusskechengxinxiView extends DiscusskechengxinxiEntity implements Serializable {
    private static final long serialVersionUID = 1L;

    public DiscusskechengxinxiView() {
    }

    public DiscusskechengxinxiView(DiscusskechengxinxiEntity discusskechengxinxiEntity) {
        try {
            BeanUtils.copyProperties(this, discusskechengxinxiEntity);
        } catch (IllegalAccessException | InvocationTargetException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

    }
}
