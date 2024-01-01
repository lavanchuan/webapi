package com.chuan.webapi.models.entities;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Table(name = "tb_propertyDetails")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class PropertyDetail {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int propertyDetailId;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "propertyId")
    private Property property;
    private String propertyDetailCode;
    private String propertyDetailDetail;

}
