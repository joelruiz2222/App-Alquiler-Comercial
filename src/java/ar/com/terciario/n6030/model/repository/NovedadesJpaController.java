/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ar.com.terciario.n6030.model.repository;

import ar.com.terciario.n6030.model.entity.Novedades;
import ar.com.terciario.n6030.model.repository.exceptions.NonexistentEntityException;
import java.io.Serializable;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Query;
import javax.persistence.EntityNotFoundException;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;

/**
 *
 * @author Joel
 */
public class NovedadesJpaController implements Serializable {

    public NovedadesJpaController(EntityManagerFactory emf) {
        this.emf = emf;
    }
    private EntityManagerFactory emf = null;

    public EntityManager getEntityManager() {
        return emf.createEntityManager();
    }

    public void create(Novedades novedades) {
        EntityManager em = null;
        try {
            em = getEntityManager();
            em.getTransaction().begin();
            em.persist(novedades);
            em.getTransaction().commit();
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    public void edit(Novedades novedades) throws NonexistentEntityException, Exception {
        EntityManager em = null;
        try {
            em = getEntityManager();
            em.getTransaction().begin();
            novedades = em.merge(novedades);
            em.getTransaction().commit();
        } catch (Exception ex) {
            String msg = ex.getLocalizedMessage();
            if (msg == null || msg.length() == 0) {
                int id = novedades.getId();
                if (findNovedades(id) == null) {
                    throw new NonexistentEntityException("The novedades with id " + id + " no longer exists.");
                }
            }
            throw ex;
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    public void destroy(int id) throws NonexistentEntityException {
        EntityManager em = null;
        try {
            em = getEntityManager();
            em.getTransaction().begin();
            Novedades novedades;
            try {
                novedades = em.getReference(Novedades.class, id);
                novedades.getId();
            } catch (EntityNotFoundException enfe) {
                throw new NonexistentEntityException("The novedades with id " + id + " no longer exists.", enfe);
            }
            em.remove(novedades);
            em.getTransaction().commit();
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    public List<Novedades> findNovedadesEntities() {
        return findNovedadesEntities(true, -1, -1);
    }

    public List<Novedades> findNovedadesEntities(int maxResults, int firstResult) {
        return findNovedadesEntities(false, maxResults, firstResult);
    }

    private List<Novedades> findNovedadesEntities(boolean all, int maxResults, int firstResult) {
        EntityManager em = getEntityManager();
        try {
            CriteriaQuery cq = em.getCriteriaBuilder().createQuery();
            cq.select(cq.from(Novedades.class));
            Query q = em.createQuery(cq);
            if (!all) {
                q.setMaxResults(maxResults);
                q.setFirstResult(firstResult);
            }
            return q.getResultList();
        } finally {
            em.close();
        }
    }

    public Novedades findNovedades(int id) {
        EntityManager em = getEntityManager();
        try {
            return em.find(Novedades.class, id);
        } finally {
            em.close();
        }
    }

    public int getNovedadesCount() {
        EntityManager em = getEntityManager();
        try {
            CriteriaQuery cq = em.getCriteriaBuilder().createQuery();
            Root<Novedades> rt = cq.from(Novedades.class);
            cq.select(em.getCriteriaBuilder().count(rt));
            Query q = em.createQuery(cq);
            return ((Long) q.getSingleResult()).intValue();
        } finally {
            em.close();
        }
    }
    
}
