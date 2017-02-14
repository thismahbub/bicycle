package bicycle.beans;

import java.util.logging.Level;
import java.util.logging.Logger;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.persistence.EntityManager;
import javax.transaction.UserTransaction;

public class MyEntityManager {

    Context ctx;
    UserTransaction utx;
    EntityManager em;

    public MyEntityManager() {

        try {
            ctx = new InitialContext();
            utx = (UserTransaction) ctx.lookup("java:comp/env/UserTransaction");
            utx.begin();
            em = (EntityManager) ctx.lookup("java:comp/env/persistence/LogicalName");
            utx.commit();

        } catch (Exception e) {
            Logger.getLogger(getClass().getName()).log(Level.SEVERE, "exception caught", e);
            throw new RuntimeException(e);
        }
    }

    public boolean persist(Object object) {

        try {
            utx.begin();
            em.persist(object);
            utx.commit();
            return true;
        } catch (Exception e) {
            Logger.getLogger(getClass().getName()).log(Level.SEVERE, "exception caught", e);
        }
        return false;
    }

    public boolean update(Object object) {
        try {
            utx.begin();
            em.merge(object);
            utx.commit();
            return true;
        } catch (Exception e) {
            Logger.getLogger(getClass().getName()).log(Level.SEVERE, "exception caught", e);
        }
        return false;
    }

    public boolean delete(Object object) {

        try {
            utx.begin();
            em.remove(em.merge(object));
            utx.commit();
            return true;
        } catch (Exception e) {
            Logger.getLogger(getClass().getName()).log(Level.SEVERE, "exception caught", e);
        }
        return false;

    }

    public Login login(String username, String password) {
        Login login = em.find(Login.class, username);

        if (login != null) {
            if (login.getPassword().equals(password)) {
                return login;
            }
        }
        return null;
    }

    public EntityManager getEntityManager() {
        return em;
    }

}
