package model;

import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.metamodel.ManagedType;
import javax.persistence.metamodel.Metamodel;

/**
 * Created by chitboon on 11/11/15.
 */
public class EMF {
    private static final EntityManagerFactory emfInstance = Persistence.createEntityManagerFactory("bookstore");
    private EMF() {}
    public static EntityManagerFactory get() {
        Metamodel mm = emfInstance.getMetamodel();

        for (ManagedType mt : mm.getManagedTypes()){
            System.out.println("Java Type: " +mt.getJavaType());
        }
        return emfInstance;
    }
}
