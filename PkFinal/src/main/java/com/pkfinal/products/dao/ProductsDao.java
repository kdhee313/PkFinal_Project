package com.pkfinal.products.dao;

import java.util.HashMap;
import java.util.List;

import com.pkfinal.products.vo.ProductVo;

public interface ProductsDao {

	List<ProductVo> selectProducts(HashMap<String, Object> map);

}
