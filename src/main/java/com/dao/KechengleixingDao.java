package com.dao;

import com.baomidou.mybatisplus.mapper.BaseMapper;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;
import com.entity.KechengleixingEntity;
import com.entity.view.KechengleixingView;
import com.entity.vo.KechengleixingVO;
import org.apache.ibatis.annotations.Param;

import java.util.List;


/**
 * 课程类型
 *
 * @author
 * @email
 * @date 2021-03-31 00:17:41
 */
public interface KechengleixingDao extends BaseMapper<KechengleixingEntity> {

    List<KechengleixingVO> selectListVO(@Param("ew") Wrapper<KechengleixingEntity> wrapper);

    KechengleixingVO selectVO(@Param("ew") Wrapper<KechengleixingEntity> wrapper);

    List<KechengleixingView> selectListView(@Param("ew") Wrapper<KechengleixingEntity> wrapper);

    List<KechengleixingView> selectListView(Pagination page, @Param("ew") Wrapper<KechengleixingEntity> wrapper);

    KechengleixingView selectView(@Param("ew") Wrapper<KechengleixingEntity> wrapper);

}
