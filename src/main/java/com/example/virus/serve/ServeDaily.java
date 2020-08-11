package com.example.virus.serve;

import java.math.BigDecimal;
import java.text.NumberFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.virus.entity.CityUpdate;
import com.example.virus.entity.StateUpdate;
import com.example.virus.repo.CityRepo;
import com.example.virus.repo.CityUpdateRepo;
import com.example.virus.repo.LastRepo;
import com.example.virus.repo.StateUpdateRepo;

@Service
public class ServeDaily {
	static String ndate;
	static String date;
	static String temp;

	static {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		date = sdf.format(new Date());
		ndate = sdf.format(new Date(new Date().getTime() - 1 * 24 * 3600 * 1000l));
	}
	@Autowired
	private CityUpdateRepo drepo;
	@Autowired
	private StateUpdateRepo sdrepo;
	@Autowired
	private LastRepo lrepo;

	public List<Integer> getDailyUpdateForStates() {

		List<Integer> ls = new ArrayList<Integer>();
		if (drepo.sumByDateTotal(date) != null) {
			ls.add(drepo.sumByDateTotal(date));
			ls.add(drepo.sumByDateActive(date));
			ls.add(drepo.sumByDateDecease(date));
			ls.add(drepo.sumByDateRecover(date));
			return ls;
		} else {
			ls.add(0);
			ls.add(0);
			ls.add(0);
			ls.add(0);
			return ls;
		}
	}

	public List<Integer> getDailyUpdateForCities(String id) {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		String date = sdf.format(new Date());
		int x = 9;
		List<Integer> ls = new ArrayList<Integer>();
		if (drepo.sumByCityUpNameTotal(date, id) != null) {
			ls.add(drepo.sumByCityUpNameTotal(date, id));
			ls.add(drepo.sumByCityUpNameActive(date, id));
			ls.add(drepo.sumByCityUpNameDecease(date, id));
			ls.add(drepo.sumByCityUpNameRecover(date, id));
			return ls;
		} else {
			ls.add(0);
			ls.add(0);
			ls.add(0);
			ls.add(0);
			return ls;
		}
	}

	public List<StateUpdate> stateListUpdate() {
		if (sdrepo.getStateDaily(date).size() > 0) {
			temp = date;
			return sdrepo.getStateDaily(date);
		} else if (sdrepo.getStateDaily(ndate).size() > 0) {
			temp = ndate;
			return sdrepo.getStateDaily(ndate);
		} else {
			List<StateUpdate> ls = new ArrayList<StateUpdate>();
			ls.add(new StateUpdate("temp", 00, 00, 00, 00, lrepo.getLastUpdate()));
			return ls;
		}
	}

	public List<CityUpdate> cityListUpdate() {
		if (drepo.getCityDaily(temp).size() > 0) {
			return drepo.getCityDaily(temp);
		}
//		 else if(drepo.getCityDaily(date)) {
//			return drepo.getCityDaily(ndate);
//		}
		else {
			List<CityUpdate> ls = new ArrayList<CityUpdate>();
			ls.add(new CityUpdate("temp", "temp", lrepo.getLastUpdate(), 00, 00, 00, 00));
			return ls;
		}
	}

	

}
