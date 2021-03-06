package com.musisearch.rest.rowmapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.RowMapper;

import com.musisearch.rest.model.Admin;
import com.musisearch.rest.model.Genre;
import com.musisearch.rest.model.Musisi;
import com.musisearch.rest.model.Region;



public class MusisiRowMapper implements RowMapper<Musisi>{

	@Override
	public Musisi mapRow(ResultSet rs, int rowNum) throws SQLException {
		Musisi baseMap = (new BeanPropertyRowMapper<>(Musisi.class)).mapRow(rs, rowNum);
		return baseMap;
	}

}
