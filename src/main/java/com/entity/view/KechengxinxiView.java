package com.entity.view;

import com.baomidou.mybatisplus.annotations.TableName;
import com.entity.KechengxinxiEntity;
import org.apache.commons.beanutils.BeanUtils;

import java.io.Serializable;
import java.lang.reflect.InvocationTargetException;


/**
 * 课程信息
 * 后端返回视图实体辅助类
 * （通常后端关联的表或者自定义的字段需要返回使用）
 *
 * @author
 * @email
 * @date 2021-03-31 00:17:41
 */
@TableName("kechengxinxi")
public class KechengxinxiView extends KechengxinxiEntity implements Serializable {
    private static final long serialVersionUID = 1L;

    public KechengxinxiView() {
    }

    public KechengxinxiView(KechengxinxiEntity kechengxinxiEntity) {
        try {
            BeanUtils.copyProperties(this, kechengxinxiEntity);
        } catch (IllegalAccessException | InvocationTargetException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

    }
}
