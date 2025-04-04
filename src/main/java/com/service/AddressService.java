package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.entity.AddressEntity;
import com.entity.view.AddressView;
import com.entity.vo.AddressVO;
import com.utils.PageUtils;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;


/**
 * 地址
 *
 * @author
 * @email
 * @date 2021-03-31 00:17:42
 */
public interface AddressService extends IService<AddressEntity> {

    PageUtils queryPage(Map<String, Object> params);

    List<AddressVO> selectListVO(Wrapper<AddressEntity> wrapper);

    AddressVO selectVO(@Param("ew") Wrapper<AddressEntity> wrapper);

    List<AddressView> selectListView(Wrapper<AddressEntity> wrapper);

    AddressView selectView(@Param("ew") Wrapper<AddressEntity> wrapper);

    PageUtils queryPage(Map<String, Object> params, Wrapper<AddressEntity> wrapper);

}

