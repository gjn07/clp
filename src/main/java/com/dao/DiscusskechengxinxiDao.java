package com.dao;

import com.baomidou.mybatisplus.mapper.BaseMapper;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;
import com.entity.DiscusskechengxinxiEntity;
import com.entity.view.DiscusskechengxinxiView;
import com.entity.vo.DiscusskechengxinxiVO;
import org.apache.ibatis.annotations.Param;

import java.util.List;


/**
 * 课程信息评论表
 *
 * @author
 * @email
 * @date 2021-03-31 00:17:42
 */
public interface DiscusskechengxinxiDao extends BaseMapper<DiscusskechengxinxiEntity> {

    List<DiscusskechengxinxiVO> selectListVO(@Param("ew") Wrapper<DiscusskechengxinxiEntity> wrapper);

    DiscusskechengxinxiVO selectVO(@Param("ew") Wrapper<DiscusskechengxinxiEntity> wrapper);

    List<DiscusskechengxinxiView> selectListView(@Param("ew") Wrapper<DiscusskechengxinxiEntity> wrapper);

    List<DiscusskechengxinxiView> selectListView(Pagination page, @Param("ew") Wrapper<DiscusskechengxinxiEntity> wrapper);

    DiscusskechengxinxiView selectView(@Param("ew") Wrapper<DiscusskechengxinxiEntity> wrapper);

}
