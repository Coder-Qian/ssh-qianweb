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
		 //�����ļ�·��
        String path = request.getServletContext().getRealPath("/file/Fluid.pdf");
        
        
        File file = new File(path);
        HttpHeaders headers = new HttpHeaders();  
        //֪ͨ�������attachment�����ط�ʽ����ͼƬ
        headers.setContentDispositionFormData("attachment", "Fluid-Zhi-Yong Qian 2017.pdf"); 
        //application/octet-stream �� �����������ݣ�������ļ����أ���
        headers.setContentType(MediaType.APPLICATION_OCTET_STREAM);
        
        return new ResponseEntity<byte[]>(FileUtils.readFileToByteArray(file),    
                headers, HttpStatus.CREATED);  
		
	}
	
	@RequestMapping(value="/downClosed.do")
	public ResponseEntity<byte[]> downClosed(HttpServletRequest request, 
			HttpServletResponse response) throws IOException{
		//�����ļ�·��
		String path = request.getServletContext().getRealPath("/file/Closed.pdf");
		
		File file = new File(path);
		HttpHeaders headers = new HttpHeaders();  
		//֪ͨ�������attachment�����ط�ʽ����ͼƬ
		headers.setContentDispositionFormData("attachment", "Closed Queueing Network-Zhi-Yong Qian 2017.pdf"); 
		//application/octet-stream �� �����������ݣ�������ļ����أ���
		headers.setContentType(MediaType.APPLICATION_OCTET_STREAM);
		
		return new ResponseEntity<byte[]>(FileUtils.readFileToByteArray(file),    
				headers, HttpStatus.CREATED);  
		
	}
	
	@RequestMapping(value="/downWeb.do")
	public ResponseEntity<byte[]> downWeb(HttpServletRequest request, 
			HttpServletResponse response) throws IOException{
		//�����ļ�·��
		String path = request.getServletContext().getRealPath("/file/Web���.pdf");
		
		System.out.println("===="+path);
		File file = new File(path);
		HttpHeaders headers = new HttpHeaders();  
		//֪ͨ�������attachment�����ط�ʽ����ͼƬ
		headers.setContentDispositionFormData("attachment", new String("Web�������-Zhi-Yong Qian 2017.pdf".getBytes("UTF-8"),"iso-8859-1")); 
		//application/octet-stream �� �����������ݣ�������ļ����أ���
		headers.setContentType(MediaType.APPLICATION_OCTET_STREAM);
		
		return new ResponseEntity<byte[]>(FileUtils.readFileToByteArray(file),    
				headers, HttpStatus.CREATED);  
		
	}
	
}
