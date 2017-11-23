package com.qian.controllers;

import java.io.File;
import java.io.IOException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.io.FileUtils;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/qian")
public class DownlaodController {


	@RequestMapping(value="/downFluid.do")
	public ResponseEntity<byte[]> downFluid(HttpServletRequest request, 
			HttpServletResponse response) throws IOException{
		 //下载文件路径
        String path = request.getServletContext().getRealPath("/file/Fluid.pdf");
        
        
        File file = new File(path);
        HttpHeaders headers = new HttpHeaders();  
        //通知浏览器以attachment（下载方式）打开图片
        headers.setContentDispositionFormData("attachment", "Fluid-Zhi-Yong Qian 2017.pdf"); 
        //application/octet-stream ： 二进制流数据（最常见的文件下载）。
        headers.setContentType(MediaType.APPLICATION_OCTET_STREAM);
        
        return new ResponseEntity<byte[]>(FileUtils.readFileToByteArray(file),    
                headers, HttpStatus.CREATED);  
		
	}
	
	@RequestMapping(value="/downClosed.do")
	public ResponseEntity<byte[]> downClosed(HttpServletRequest request, 
			HttpServletResponse response) throws IOException{
		//下载文件路径
		String path = request.getServletContext().getRealPath("/file/Closed.pdf");
		
		File file = new File(path);
		HttpHeaders headers = new HttpHeaders();  
		//通知浏览器以attachment（下载方式）打开图片
		headers.setContentDispositionFormData("attachment", "Closed Queueing Network-Zhi-Yong Qian 2017.pdf"); 
		//application/octet-stream ： 二进制流数据（最常见的文件下载）。
		headers.setContentType(MediaType.APPLICATION_OCTET_STREAM);
		
		return new ResponseEntity<byte[]>(FileUtils.readFileToByteArray(file),    
				headers, HttpStatus.CREATED);  
		
	}
	
	@RequestMapping(value="/downWeb.do")
	public ResponseEntity<byte[]> downWeb(HttpServletRequest request, 
			HttpServletResponse response) throws IOException{
		//下载文件路径
		String path = request.getServletContext().getRealPath("/file/Web组合.pdf");
		
		System.out.println("===="+path);
		File file = new File(path);
		HttpHeaders headers = new HttpHeaders();  
		//通知浏览器以attachment（下载方式）打开图片
		headers.setContentDispositionFormData("attachment", new String("Web服务组合-Zhi-Yong Qian 2017.pdf".getBytes("UTF-8"),"iso-8859-1")); 
		//application/octet-stream ： 二进制流数据（最常见的文件下载）。
		headers.setContentType(MediaType.APPLICATION_OCTET_STREAM);
		
		return new ResponseEntity<byte[]>(FileUtils.readFileToByteArray(file),    
				headers, HttpStatus.CREATED);  
		
	}
	
}
