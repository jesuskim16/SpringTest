package com.pam.test.controller;

import java.awt.Graphics2D;
import java.awt.image.BufferedImage;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;

import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.pam.test.board.notice.vo.NoticeVO;
import com.pam.test.service.PamService;

@Controller
@RequestMapping("/pam")
public class MainController {
	
	private final Logger logger = LoggerFactory.getLogger(MainController.class);
	
	@Autowired
	private PamService pamService;
	
	@RequestMapping(value = "/test" ,  method = RequestMethod.GET)
	@ResponseBody
	public ModelAndView mainController(ModelAndView model){
		String returnValue = "Hello World!!!";
		pamService.dbConnectionTest();
		logger.info("{}" , returnValue);
		model.setViewName("index");
		return model;
	}
	
	@RequestMapping(value = "/login" ,  method = RequestMethod.GET)
	@ResponseBody
	public ModelAndView login(ModelAndView model){
		String returnValue = "Login!!!";
		logger.info("{}" , returnValue);
		model.setViewName("jsp/login");
		return model;
	}
	
	@RequestMapping(value = "/register" ,  method = RequestMethod.GET)
	@ResponseBody
	public ModelAndView register(ModelAndView model){
		String returnValue = "register!!!";
		logger.info("{}" , returnValue);
		model.setViewName("jsp/register");
		return model;
	}
	
	@RequestMapping(value = "/find" ,  method = RequestMethod.GET)
	@ResponseBody
	public ModelAndView find(ModelAndView model){
		String returnValue = "find!!!";
		logger.info("{}" , returnValue);
		model.setViewName("jsp/find");
		return model;
	}
	
	@RequestMapping(value = "/board" ,  method = RequestMethod.GET)
	public ModelAndView board(ModelAndView model){
		String returnValue = "board!!!";
		logger.info("{}" , returnValue);
		model.setViewName("jsp/board");
		return model;
	}
	
	@RequestMapping(value = "/notice" ,  method = RequestMethod.GET)
	public ModelAndView notice(ModelAndView model){
		List<NoticeVO> notiveVOList = pamService.noticeBoardService();
		return new ModelAndView("jsp/notice", "notiveVOList", notiveVOList);
	}
	
	@RequestMapping(value = "/popupIE" ,  method = RequestMethod.GET)
	public ModelAndView popupIE(ModelAndView model){
		logger.info("{}" , "popupIE");
		model.setViewName("jsp/popupIE");
		return model;
	}
	
	@RequestMapping(value = "/popup" ,  method = RequestMethod.GET)
	public ModelAndView popup(ModelAndView model){
		logger.info("{}" , "popup");
		model.setViewName("jsp/popup");
		return model;
	}
	
	@RequestMapping(value = "/upload" ,  method = RequestMethod.POST)
	public ModelAndView upload(ModelAndView model, HttpServletRequest request, MultipartFile file) throws IOException{
		
		logger.info("{}" , "upload");
		
		BufferedImage originalImage = ImageIO.read(file.getInputStream());
		int type = originalImage.getType() == 0? BufferedImage.TYPE_INT_ARGB : originalImage.getType();
		
		BufferedImage resizedImage = new BufferedImage(137, 177, type);
		Graphics2D g = resizedImage.createGraphics();
		g.drawImage(originalImage, 0, 0, 137, 177, null);
		g.dispose();
		
		ImageIO.write(resizedImage, "jpg", new File("./myimgfile"  + ".jpg"));
		
		
//		if (!file.isEmpty()) {
//            try {
//                byte[] bytes = file.getBytes();
//                // Create the file on server
//                File serverFile = new File("./myimgfile"  + ".jpg");
//                BufferedOutputStream stream = new BufferedOutputStream(new FileOutputStream(serverFile));
//                stream.write(bytes);
//                stream.close();
// 
//                logger.info("Server File Location=" + serverFile.getAbsolutePath());
// 
//                System.out.println("You successfully uploaded file=" + file.getName());
//            } catch (Exception e) {
//            	e.printStackTrace();
//            	System.out.println("You failed to upload " + file.getName() + " => " + e.getMessage());
//            }
//        } else {
//        	System.out.println("You failed to upload " + file.getName()
//                    + " because the file was empty.");
//        }
		
		model.addObject("src", "d:\\eclipse\\myimgfile.jpg");
		model.setViewName("jsp/result");
		
		return model;
	}

}
