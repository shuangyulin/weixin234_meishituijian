package com.dao;

import com.entity.MeishileixingEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.MeishileixingVO;
import com.entity.view.MeishileixingView;


/**
 * 美食类型
 * 
 * @author 
 * @email 
 * @date 2022-03-30 10:53:47
 */
public interface MeishileixingDao extends BaseMapper<MeishileixingEntity> {
	
	List<MeishileixingVO> selectListVO(@Param("ew") Wrapper<MeishileixingEntity> wrapper);
	
	MeishileixingVO selectVO(@Param("ew") Wrapper<MeishileixingEntity> wrapper);
	
	List<MeishileixingView> selectListView(@Param("ew") Wrapper<MeishileixingEntity> wrapper);

	List<MeishileixingView> selectListView(Pagination page,@Param("ew") Wrapper<MeishileixingEntity> wrapper);
	
	MeishileixingView selectView(@Param("ew") Wrapper<MeishileixingEntity> wrapper);
	

}
