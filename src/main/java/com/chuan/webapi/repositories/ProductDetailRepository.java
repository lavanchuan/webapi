package com.chuan.webapi.repositories;

import com.chuan.webapi.models.entities.ProductDetail;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ProductDetailRepository extends JpaRepository<ProductDetail, Integer> {

    @Query(value = "select pdd.* " +
            "from tb_productdetails pdd " +
            "inner join tb_productdetailpropertydetails pddppd " +
            "on pdd.productDetailId = pddppd.productDetailId " +
            "inner join tb_propertydetails ppd " +
            "on ppd.propertyDetailId = pddppd.propertyDetailId " +
            "inner join tb_properties pp " +
            "on pp.propertyId = ppd.propertyId " +
            "where propertySort = (select max(propertySort) from tb_properties "+
            "where productId = :productId) " +
            "and pp.productId = :productId", nativeQuery = true)
    List<ProductDetail> productDetailAllWithLastPropertysort(
            @Param("productId") int productId);
}
