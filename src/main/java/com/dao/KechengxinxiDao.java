package com.dao;

import com.baomidou.mybatisplus.mapper.BaseMapper;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;
import com.entity.KechengxinxiEntity;
import com.entity.view.KechengxinxiView;
import com.entity.vo.KechengxinxiVO;
import org.apache.ibatis.annotations.Param;

import java.util.List;


/**
 * 课程信息
 *
 * @author
 * @email
 * @date 2021-03-31 00:17:41
 */
public interface KechengxinxiDao extends BaseMapper<KechengxinxiEntity> {

    List<KechengxinxiVO> selectListVO(@Param("ew") Wrapper<KechengxinxiEntity> wrapper);

    KechengxinxiVO selectVO(@Param("ew") Wrapper<KechengxinxiEntity> wrapper);

    List<KechengxinxiView> selectListView(@Param("ew") Wrapper<KechengxinxiEntity> wrapper);

    List<KechengxinxiView> selectListView(Pagination page, @Param("ew") Wrapper<KechengxinxiEntity> wrapper);

    KechengxinxiView selectView(@Param("ew") Wrapper<KechengxinxiEntity> wrapper);

}
