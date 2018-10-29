package app.dao;

import app.model.Follow;
import app.model.User;

public interface FollowDAO extends BaseDAO<Integer, Follow>{
	Follow getFollow(int follower_id, int followed_id);
}
