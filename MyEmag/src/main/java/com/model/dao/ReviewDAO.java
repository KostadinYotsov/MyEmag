package com.model.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Timestamp;
import java.time.LocalDateTime;
import java.util.ArrayList;

import com.model.Product;
import com.model.Review;
import com.model.User;

public class ReviewDAO {
	
	private static ReviewDAO instance;

	private ReviewDAO(){
	}
	
	public static synchronized ReviewDAO getInstance(){
		if(instance == null){
			instance = new ReviewDAO();
		}
		return instance;
	}
	
	public synchronized void addReview (Review r) throws SQLException{
		r.setDate(LocalDateTime.now());
		String comment=r.getComment();
		int productId=r.getProduct().getProductId();
		System.out.println("ad review product ID- " + productId);
		int userId=r.getUser().getUserId();
		System.out.println("ad review user ID- " + userId);
		int rating=r.getRating();
		String sql = "INSERT INTO reviews (comment, rating, product_id, user_id, date) values (?, ?, ?,?,?)";
		PreparedStatement st = DBManager.getInstance().getConnection().prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
		st.setString(1, comment);
		st.setInt(2, rating);
		st.setInt(3, productId);
		st.setInt(4, userId);
		st.setTimestamp(5, Timestamp.valueOf(r.getDate()));
		st.executeUpdate();
		ResultSet rs=st.getGeneratedKeys();
		rs.next();
		int reviewId=rs.getInt(1);
		r.setReviewId(reviewId);
		Product p=ProductDAO.getInstance().getProduct(productId);
		p.addReview(r);
	}

	public ArrayList<Review> getAllReviewsByProduct(int productId) throws SQLException {
		ArrayList<Review> reviews=new ArrayList<>();
		String sql="SELECT r.review_id, r.comment, r.date, r.rating, u.username FROM reviews r JOIN users u ON (r.user_id=u.user_id) JOIN products p ON (r.product_id=p.product_id) WHERE r.product_id=?;";
		PreparedStatement st;
		st = DBManager.getInstance().getConnection().prepareStatement(sql);
		st.setInt(1, productId);
		ResultSet res = st.executeQuery();
		while (res.next()) {
			int reviewId=res.getInt("review_id");
			User user=UserDAO.getInstance().getUser(res.getString("username"));
			LocalDateTime date=res.getTimestamp("date").toLocalDateTime();
			Review r=new Review(res.getString("comment"), res.getInt("rating"), user, null, date);
			r.setReviewId(reviewId);
			reviews.add(r);
		}
		return reviews;
	}
	
	
	
}
