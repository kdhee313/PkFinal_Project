package com.pkfinal.products.serviceImpl;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pkfinal.products.dao.ProductsDao;
import com.pkfinal.products.vo.ProductVo;

@Service
public class ProductsService implements com.pkfinal.products.service.ProductsService {

	@Autowired
	private ProductsDao productsDao;
	
	@Override
	public List<ProductVo> selectProducts(HashMap<String, Object> map) {
		return productsDao.selectProducts(map);
	}

}
