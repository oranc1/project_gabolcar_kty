package com.itwillbs.project_gabolcar.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface CarItemMapper {
	// 차량 소개
	List<Map<String, Object>> selectCarInfoList();
	
}
