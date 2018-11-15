package com.niit.Model;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
//If category class has to be mapped with the table name category_s190032
@Table(name="category_s190032")
public class Category //Table name will be same as Category
{
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO) //categories can be added directly into table from user interface
	private int id;
	private String categoryname;
	
	@OneToMany(mappedBy="category") //third table will not get created
	//[SELECT * FROM CATEGORY_S190032_PRODUCT_S190032;
	//CATEGORY_S190032_ID  	PRODUCTS_ID]
	//Product entity will have property named category
	private List<Product> products; //List<Product> denotes collections
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getCategoryname() {
		return categoryname;
	}
	public void setCategoryname(String categoryname) {
		this.categoryname = categoryname;
	}
	
	public String toString()
	{
		return (this.id+"\t"+this.categoryname+"\t");
	}

}
