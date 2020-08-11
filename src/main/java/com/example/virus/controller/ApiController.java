package com.example.virus.controller;

import java.awt.PageAttributes.MediaType;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.example.virus.entity.StateUpdate;
import com.example.virus.entity.States;
import com.example.virus.serve.ServeAll;
import com.example.virus.serve.ServeDaily;

@RestController
@CrossOrigin
@RequestMapping(path = "/api/", produces = {"application/json"})
public class ApiController {

	@Autowired
	private ServeAll sdaily;

//	@GetMapping("states")
//	public ResponseEntity<List<States>> getStates() {
//		return new ResponseEntity<List<States>>(sdaily.getStateByDate(), new HttpHeaders(), HttpStatus.OK);
//	}

}
