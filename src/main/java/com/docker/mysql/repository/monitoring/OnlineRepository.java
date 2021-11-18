package com.docker.mysql.repository.monitoring;

import org.springframework.stereotype.Repository;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.math.BigInteger;

@Repository
public class OnlineRepository {
    @PersistenceContext
    private EntityManager entityManager;

    public BigInteger isOnline() {
        return (BigInteger) entityManager.createNativeQuery("SELECT 1 FROM DUAL").getSingleResult();
    }
}