<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>




<div class="col mt-4">
	<ul class="nav nav-tabs" id="myTab" role="tablist">
		<li class="nav-item" role="presentation">
		 	<button class="nav-link active" id="videoEditing-tab" data-toggle="tab" data-target="#videoEditing"
                            role="tab" type="button" aria-controls="videoEditing" aria-selected="true">Favorites</button>
         </li>
         <li class="nav-item" role="presentation">
                        <button class="nav-link" id="favoriteUsers-tab" data-toggle="tab" data-target="#favoriteUsers" role="tab"
                           type="button" aria-controls="favoriteUsers" aria-selected="false">Favorite Users</button>
          </li>  
          <li class="nav-item" role="presentation">
                        <button class="nav-link" id="shareFriends-tab" data-toggle="tab" data-target="#shareFriends" role="tab"
                           type="button" aria-controls="shareFriends" aria-selected="false">Share Friends</button>
          </li>
      </ul>
      <div class="tab-content" id="myTabContent">
      	<div class="tab-pane fade show active" id="videoEditing" role="tabpanel" aria-labelledby="videoEditing-tab">    
      		<table class="table talbe-bordered mt-3">
      			 <tr>
      			 	<td>Video Title</td>
                    <td>Favorites Count</td>
                    <td>Lasted Date</td>
                    <td>Oldest Date</td>
                  </tr>
                  <c:forEach var="item" items="${favList }">
	                  <tr>
	                     <td>${item.videoTitle }</td>
	                     <td>${item.favoriteCount }</td>
	                     <td>${item.newestDate }</td>
	                     <td>${item.oldestDate }</td>                                
	                   </tr>
                   </c:forEach>
             </table>
         </div>
         <div class="tab-pane fade" id="favoriteUsers" role="tabpanel" aria-labelledby="favoriteUsers-tab">
         	<table class="table table-stripe"></table>
         	<form action="" method="get">
         		<div class="row mt-3">
         		 	<div class="col">
         		 		<div class="form-inline">
         		 		 	<div class="form-group">
         		 		 	 	<lable>Video Title  
         		 		 			<select name="videoUserId" id="videoUserId" class="form-control ml-3">         		 		 				
         		 		 				<c:forEach var="item" items="${vidList }">
         		 		 					<option value="${item.videoId }" ${item.videoId == video.UserId? 'selected':'' }>
         		 		 					${item.title }</option>
         		 		 				</c:forEach>
         		 		 			</select>
         		 		 	 	</lable>
         		 		 	 	<button class="btn btn-info ml-2">Report</button>
         		 		 	</div>
         		 		</div>
         		 	</div>
         		</div>
         		<div class="row">
         			<div class="col mt-3">
         			<table class="table table-bordered">
         				<tr>
	         				<td>Username</td>
	                        <td>Fullname</td>
	                        <td>Mail</td>
	                        <td>Favorite Date</td>
	                        <td></td>
	                     </tr>
	                     <c:forEach var="item" items="${favUsers }">
	                     	<tr>
		                        <td>${item.username }</td>
		                        <td>${item.fullname }</td>
		                        <td>${item.email }</td>
		                        <td>${item.likeDate }</td>
		                        <td></td>
	                     	</tr>
	                     </c:forEach>
	                     
                  </table>
                  </div>
              </div>
           </form>
         </div>
         <div class="tab-pane fade" id="shareFriends" role="tabpanel"  aria-labelledby="shareFriends-tab">
         	<table class="table table-stripe"></table>
         	<form action="" method="get">
         		<div class="row mt-3">
         			<div class="col">
         				 <div class="form-inline">
         				 	 <div class="form-group">
         				 	 	<lable>Video Title 
         				 	 		<select name="" id="" class="form-control ml-3">
                                            <option value="">Java</option>
                                     </select>
                                  </lable>
                                  <button class="btn btn-info ml-2">Report</button>
                              </div>
                           </div>
                      </div>
                   </div>
                   <div class="row">
                   		<div class="col mt-3">
                   			<table class="table table-bordered">
                   				<tr>
                                    <td>Username</td>
                                    <td>Fullname</td>
                                    <td>Mail</td>
                                    <td>Favorite Date</td>
                                    <td></td>
                                 </tr>
                                 <tr>
                                     <td></td>
                                     <td></td>
                                     <td></td>
                                     <td></td>
                                     <td></td>
                                 </tr>
                               </table>
                         </div>
                    </div>
                </form>
           </div>
           <div class="tab-pane fade" id="shareFriends" role="tabpanel" aria-labelledby="shareFriends-tab">
           		<table class="table table-stripe"></table>
           		<form action="" method="get">
           				<div class="row mt-3">
           					 <div class="col">
           					 	<div class="form-inline">
           					 			<div class="form-group">
           					 				 <lable>Video Title 
           					 				 	<select name="" id="" class="form-control ml-3">
           					 				 		<option value="">Java</option>
           					 				 	</select>
           					 				  </lable>
           					 				  <button class="btn btn-info ml-2">Report</button>
           					 			</div>
           					 	</div>
           					 </div>
           				</div>
           				<div class="row">
           					 <div class="col mt-3">
           					 	<table class="table table-bordered">
           					 			<tr>
                                            <td>Sender Name</td>
                                            <td>Sender Email</td>
                                            <td>Receiver Email</td>
                                            <td>Sent Date</td>
                                            <td></td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                        </tr>
                                  </table>
                               </div>
                          </div>
                  </form>
             </div>
        </div>
</div>
             
             
         
         
         		 		 			
              
                              