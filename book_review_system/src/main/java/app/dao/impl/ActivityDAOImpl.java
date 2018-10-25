package app.dao.impl;

import java.util.List;

import org.apache.log4j.Logger;
import org.hibernate.Criteria;
import org.hibernate.criterion.Expression;

import app.dao.ActivityDAO;
import app.dao.GenericDAO;
import app.model.Activity;

public class ActivityDAOImpl extends GenericDAO<Integer, Activity> implements ActivityDAO {

	private static final Logger logger = Logger.getLogger(ActivityDAOImpl.class);

	@SuppressWarnings("unchecked")
	@Override
	public List<Activity> loadActivitiesByUserName(String userName) {
		logger.info("Load Activity of User: " + userName);
		Criteria criteria = getSession().createCriteria(Activity.class);
		criteria.createAlias("user", "u");
		criteria.add(Expression.eq("u.userName", userName));
		return criteria.list();
	}
}
