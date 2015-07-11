package com.databaseconn;

import java.sql.Date;

public class AdData {
	String title;
	String des;
	String city;
	Date date;
	String state;
	String address;
	int id;
	int cate_id;
	String email;
	String price;
	String zip;;
	String phone;
	
	
public int getid() {
		
		return id;
			}
			
		    public void setid(int id) {
			
		this.id=id;
		} 
	
	
	public String getphone() {
		
		return phone;
			}
			
		    public void setphone(String phone) {
			
		this.phone=phone;
		} 
		    
		    public String getzip() {
				
				return zip;
					}
					
				    public void setzip(String zip) {
					
				this.zip=zip;
				} 
	
		    
		    public String getprice() {
				
		    	return price;
		    		}
		    		
		    	    public void setprice(String price) {
		    		
		    	this.price=price;
		    	} 
		    	    
		    	    
		    	    public String getemail() {
		    			
		    	    	return email;
		    	    		}
		    	    		
		    	    	    public void setemail(String email) {
		    	    		
		    	    	this.email=email;
		    	    	} 
		    	    	    
		    	    	    
		    	    	    public int getcate() {
		    	    			
		    	    	    	return cate_id;
		    	    	    		}
		    	    	    		
		    	    	    	    public void setcate(int cate) {
		    	    	    		
		    	    	    	this.cate_id=cate;
		    	    	    	} 
		    	    	    	    
		    	    	    	    public String getaddress() {
		    	    	    			
		    	    	    	    	return address;
		    	    	    	    		}
		    	    	    	    		
		    	    	    	    	    public void setaddress(String address) {
		    	    	    	    		
		    	    	    	    	this.address=address;
		    	    	    	    	} 
	
	public String gettitle() {
		
return title;
	}
	
    public void settitle(String title) {
	
this.title=title;
} 
    
	
    public String getdes() {
		
return des;
	}
	
    public void setdes(String des) {
	
    	this.des=des;

} 
    
	public String getcity() {
		
return city;
	}
	
    public void setcity(String city) {
	

    	this.city=city;
} 
    
    
	public Date getdate() {
		
return date;
	}
	
    public void setdate(Date date) {
	
   this.date=date;
} 


	public String getsate() {
		
return state;
	}
	
    public void setstate(String state) {
	
   this.state=state;
} 

}
