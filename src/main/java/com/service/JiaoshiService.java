package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.entity.JiaoshiEntity;
import com.entity.view.JiaoshiView;
import com.entity.vo.JiaoshiVO;
import com.utils.PageUtils;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;


/**
 * 教师
 *
 * @author
 * @email
 * @date 2021-03-31 00:17:41
 */
public interface JiaoshiService extends IService<JiaoshiEntity> {

    PageUtils queryPage(Map<String, Object> params);

    List<JiaoshiVO> selectListVO(Wrapper<JiaoshiEntity> wrapper);

    JiaoshiVO selectVO(@Param("ew") Wrapper<JiaoshiEntity> wrapper);

    List<JiaoshiView> selectListView(Wrapper<JiaoshiEntity> wrapper);

    JiaoshiView selectView(@Param("ew") Wrapper<JiaoshiEntity> wrapper);

    PageUtils queryPage(Map<String, Object> params, Wrapper<JiaoshiEntity> wrapper);

}

