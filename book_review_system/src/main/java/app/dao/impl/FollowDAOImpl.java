package app.dao.impl;

import org.apache.log4j.Logger;
import org.hibernate.Criteria;
import org.hibernate.criterion.Restrictions;

import app.dao.FollowDAO;
import app.dao.GenericDAO;
import app.model.Follow;

public class FollowDAOImpl extends GenericDAO<Integer, Follow> implements FollowDAO{
	private static final Logger logger = Logger.getLogger(FollowDAOImpl.class);
	
	@Override
	public Follow getFollow(int follower_id, int followed_id) {
		logger.info("get Follow");
		Criteria criteria = getSession().createCriteria(Follow.class);
		criteria.add(Restrictions.eq("follower.id", follower_id));
		criteria.add(Restrictions.eq("followed.id", followed_id));
		return (Follow) criteria.uniqueResult();
	}
}
