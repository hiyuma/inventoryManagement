package dao;

import java.util.List;

import domain.Location;

public interface LocationDao {

	public List<Location> findAll() throws Exception ;

	public Location findById(Integer id) throws Exception;

	public void insert(Location location);

	public void update(Location location);

	public void delete(Location location);

}
