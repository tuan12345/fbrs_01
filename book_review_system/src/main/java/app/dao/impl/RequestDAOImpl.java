package app.dao.impl;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;

import app.dao.GenericDAO;
import app.dao.RequestDAO;
import app.model.Request;

public class RequestDAOImpl extends GenericDAO<Integer, Request> implements RequestDAO {

	public RequestDAOImpl() {
		super(Request.class);
	}

	public RequestDAOImpl(SessionFactory sessionFactory) {
		setSessionFactory(sessionFactory);
	}

	@Override
	public List<Request> loadRequestsNotHandle() {
		Criteria criteria = getSession().createCriteria(Request.class);
		criteria.add(Restrictions.eq("status", 0));
		return criteria.list();
	}

}
