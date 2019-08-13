package com.pkfinal.products.service;

import java.util.HashMap;
import java.util.List;

import com.pkfinal.products.vo.ProductVo;

public interface ProductsService {

	List<ProductVo> selectProducts(HashMap<String, Object> map);
	
}
