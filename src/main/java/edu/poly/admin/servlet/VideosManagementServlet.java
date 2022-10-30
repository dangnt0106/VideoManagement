package edu.poly.admin.servlet;

import java.io.IOException;

import javax.enterprise.inject.spi.Bean;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;

import edu.poly.common.PageInfo;
import edu.poly.common.PageType;
import edu.poly.common.UploadUtils;
import edu.poly.dao.VideoDao;
import edu.poly.model.Video;

@WebServlet({"/Admin/VideosManagement","/Admin/VideosManagement/create",
	"/Admin/VideosManagement/update","/Admin/VideosManagement/delete",
	"/Admin/VideosManagement/reset","/Admin/VideosManagement/edit"})
@MultipartConfig
public class VideosManagementServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = request.getRequestURL().toString();
		if(url.contains("edit")) {
			edit(request,response);
			return;
		}
		if(url.contains("delete")) {
			delete(request,response);
			return;
		}
		if(url.contains("reset")) {
			reset(request,response);
			return;
		}
		Video video = new Video();
		video.setPoster("images/pc.jpg");
		
		request.setAttribute("video", video);
		
		
		
		PageInfo.prepareAndForward(request, response, PageType.VIDEO_MANAGEMENT_PAGE);
	}

	private void edit(HttpServletRequest request, HttpServletResponse response) {
		
		
	}
	private void create(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		Video video = new Video();
		try {
			BeanUtils.populate(video, request.getParameterMap());
			video.setPoster("uploads/" + 
			UploadUtils.processUploadField("cover", request, "/uploads", video.getVideoId()));
			
			VideoDao dao = new VideoDao();
			dao.insert(video);
			
			request.setAttribute("video", video);
			request.setAttribute("message", "Video is inserted!");
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("error", "Error: "+e.getMessage());
		}
		PageInfo.prepareAndForward(request, response, PageType.VIDEO_MANAGEMENT_PAGE);
	}
	private void delete(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		
	}

	private void update(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		
	}

	private void reset(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = request.getRequestURL().toString();
		
		if(url.contains("create")) {
			create(request,response);
			return;
		}
		if(url.contains("delete")) {
			delete(request,response);
			return;
		}
		if(url.contains("update")) {
			update(request,response);
			return;
		}
		if(url.contains("reset")) {
			reset(request,response);
			return;
		}
	}

	

	

}
