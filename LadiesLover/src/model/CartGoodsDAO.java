package model;

import java.util.List;
import org.hibernate.LockMode;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.ApplicationContext;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

/**
 * A data access object (DAO) providing persistence and search support for
 * CartGoods entities. Transaction control of the save(), update() and delete()
 * operations can directly support Spring container-managed transactions or they
 * can be augmented to handle user-managed Spring transactions. Each of these
 * methods provides additional information for how to configure it for the
 * desired type of transaction control.
 * 
 * @see model.CartGoods
 * @author MyEclipse Persistence Tools
 */
public class CartGoodsDAO extends HibernateDaoSupport {
	private static final Logger log = LoggerFactory
			.getLogger(CartGoodsDAO.class);
	// property constants
	public static final String AMOUNT = "amount";

	protected void initDao() {
		// do nothing
	}

	public void save(CartGoods transientInstance) {
		log.debug("saving CartGoods instance");
		try {
			getHibernateTemplate().save(transientInstance);
			log.debug("save successful");
		} catch (RuntimeException re) {
			log.error("save failed", re);
			throw re;
		}
	}

	public void delete(CartGoods persistentInstance) {
		log.debug("deleting CartGoods instance");
		try {
			getHibernateTemplate().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public CartGoods findById(java.lang.Integer id) {
		log.debug("getting CartGoods instance with id: " + id);
		try {
			CartGoods instance = (CartGoods) getHibernateTemplate().get(
					"model.CartGoods", id);
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}

	public List findByExample(CartGoods instance) {
		log.debug("finding CartGoods instance by example");
		try {
			List results = getHibernateTemplate().findByExample(instance);
			log.debug("find by example successful, result size: "
					+ results.size());
			return results;
		} catch (RuntimeException re) {
			log.error("find by example failed", re);
			throw re;
		}
	}

	public List findByProperty(String propertyName, Object value) {
		log.debug("finding CartGoods instance with property: " + propertyName
				+ ", value: " + value);
		try {
			String queryString = "from CartGoods as model where model."
					+ propertyName + "= ?";
			return getHibernateTemplate().find(queryString, value);
		} catch (RuntimeException re) {
			log.error("find by property name failed", re);
			throw re;
		}
	}

	public List findByAmount(Object amount) {
		return findByProperty(AMOUNT, amount);
	}

	public List findAll() {
		log.debug("finding all CartGoods instances");
		try {
			String queryString = "from CartGoods";
			return getHibernateTemplate().find(queryString);
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}

	public CartGoods merge(CartGoods detachedInstance) {
		log.debug("merging CartGoods instance");
		try {
			CartGoods result = (CartGoods) getHibernateTemplate().merge(
					detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public void attachDirty(CartGoods instance) {
		log.debug("attaching dirty CartGoods instance");
		try {
			getHibernateTemplate().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(CartGoods instance) {
		log.debug("attaching clean CartGoods instance");
		try {
			getHibernateTemplate().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public static CartGoodsDAO getFromApplicationContext(ApplicationContext ctx) {
		return (CartGoodsDAO) ctx.getBean("CartGoodsDAO");
	}
}