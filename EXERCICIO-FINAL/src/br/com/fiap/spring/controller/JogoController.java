package br.com.fiap.spring.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import br.com.fiap.spring.dao.GeneroDAO;
import br.com.fiap.spring.dao.JogoDAO;
import br.com.fiap.spring.model.Jogo;
import br.com.fiap.spring.model.Plataforma;

@Controller
@RequestMapping("jogo")
public class JogoController {

	@Autowired
	private JogoDAO dao;
	
	@Autowired
	private GeneroDAO generoDao;
	
	@GetMapping("cadastrar")
	public ModelAndView Cadastrar(Jogo jogo) {
		return new ModelAndView("jogo/cadastro")
		.addObject("generos", generoDao.listar())
		.addObject("plataformas", Plataforma.values());
	}
	
	@Transactional
	@PostMapping("cadastrar")
	public String Cadastrar(Jogo jogo, RedirectAttributes r) {
		dao.cadastrar(jogo);
		r.addFlashAttribute("msg", "Jogo cadastrado");
		return "redirect:/jogo/cadastrar";
	}

	
	
}
