package sv;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import sv.User;

public class ServiceClass extends ConnectionClass {

	

	public List<User> InsertDB() {
		List<User> list = new ArrayList<User>();
		User uj = null;
		this.getConnection();
		
		String sql ="select *from Infos";
		
		try
		{
			ps = connection.prepareStatement(sql);
			rs = ps.executeQuery();
			
			while (rs.next())
			{
				uj = new User();
				
				uj.setId(rs.getString(1));
				uj.setName(rs.getString(2));
				uj.setF(rs.getString(3));
				uj.setD(rs.getString(4));
				uj.setC(rs.getString(5));
				uj.setDr(rs.getString(6));
				uj.setS(rs.getString(7));
				uj.setB(rs.getString(8));
				uj.setN(rs.getString(9));
				uj.setDd(rs.getString(10));
				
				
				list.add(uj);
			}
			ps.close();
			rs.close();
			connection.close();
			return list;
			
		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}
		return null;
	}
	
	
	
	public List<User> ShowDB(String id) {
		List<User> list = new ArrayList<User>();
		User uj = null;
		this.getConnection();
		
		String sql ="select *from Infos where Day='"+id+"'";
		
		try
		{
			ps = connection.prepareStatement(sql);
			rs = ps.executeQuery();
			
			while (rs.next())
			{
				uj = new User();
				
				uj.setId(rs.getString(1));
				uj.setName(rs.getString(2));
				uj.setF(rs.getString(3));
				uj.setD(rs.getString(4));
				uj.setC(rs.getString(5));
				uj.setDr(rs.getString(6));
				uj.setS(rs.getString(7));
				uj.setB(rs.getString(8));
				uj.setN(rs.getString(9));
				uj.setDd(rs.getString(10));
				
				
				list.add(uj);
			}
			ps.close();
			rs.close();
			connection.close();
			return list;
			
		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}
		return null;
	}
	
	
	
	
	
	
	
	public String checkPassword(String name, String password)
	{
		this.getConnection();
		//User uj =new  User();
		String sql = "select Password from lab2 where UserName =?";
		try
		{
			ps = connection.prepareStatement(sql);
			ps.setString(1, name);
			rs=ps.executeQuery();
			while (rs.next())
			{
				
				if(rs.getString(1).equals(password))
				{
					return "success";
				}
			}
//			System.out.println(uj.getPass());
	
		}
		catch(SQLException e)
		{
			return "fail";
		}
	
		return "fail";
	}

	public void Insert2(String id,String dd, String name, String f,String d,String c,String dr,String s, String b,String n) {
		// TODO Auto-generated method stub
		this.getConnection();
		String sql="insert into Infos(Day,Semester,S_1,S_2,S_3,S_4,S_5,S_6,S_7,S_8)values(?,?,?,?,?,?,?,?,?,?)";
		try
		{
			ps = connection.prepareStatement(sql);
			ps.setString(1, id);
			ps.setString(2, dd);
			ps.setString(3, name);
			ps.setString(4, f);
			ps.setString(5, d);
			ps.setString(6, c);
			ps.setString(7, dr);
			ps.setString(8, s);
			ps.setString(9, b);
			ps.setString(10, n);
			ps.executeUpdate();
			
			ps.close();
			connection.close();
			
		}
		catch(SQLException e)
		{
		 e.printStackTrace();	
		}	
	}



	public void Update(String id, String name,String dd,String f,String d,String c,String dr,String s,String b,String n) {
		// TODO Auto-generated method stub
		this.getConnection();
		String sql="update Infos set Semester='"+name+"',S_1='"+dd+"',S_2='"+f+"',S_3='"+d+"',S_4='"+c+"',S_5='"+dr+"',S_6='"+s+"',S_7='"+b+"',S_8='"+n+"' where Day='"+id+"'";
		try
		{
			ps = connection.prepareStatement(sql);
			//ps.setString(1, id);
			//ps.setString(1, name);
			//ps.setString(2, location);
			ps.executeUpdate();
			
			ps.close();
			connection.close();
			
		}
		catch(SQLException e)
		{
		 e.printStackTrace();	
		}	
	}

	

	public void Delete(String id) {
		
		this.getConnection();
		String sql="delete from Infos where Day='"+id+"'";
		try
		{
			ps = connection.prepareStatement(sql);
			//ps.setString(1, id);
			//ps.setString(1, name);
			//ps.setString(2, location);
			ps.executeUpdate();
			
			ps.close();
			connection.close();
			
		}
		catch(SQLException e)
		{
		 e.printStackTrace();	
		}		
	}

	public List<User2> Result1(String id) {
		List<User2> list = new ArrayList<User2>();
		User2 uj = null;
		int i=0;
		this.getConnection();
		
		String sql ="select *from Infos where Day=?";
		
		try
		{
			ps = connection.prepareStatement(sql);
			ps.setString(1, id);
			rs = ps.executeQuery();
			
			while (rs.next())
			{
				uj = new User2();
				if(rs.getString(1).equals(id))
				{
					uj.setId(rs.getString(1));
					uj.setName(rs.getString(2));
					uj.setF(rs.getString(3));
					uj.setD(rs.getString(4));
					uj.setC(rs.getString(5));
					uj.setDr(rs.getString(6));
					uj.setS(rs.getString(7));
					uj.setB(rs.getString(8));
					uj.setN(rs.getString(9));
					uj.setDd(rs.getString(10));
				list.add(uj);
				
				i++;
				}
				
			}
			if(i>1)
				return list;
			ps.close();
			rs.close();
			connection.close();
			return null;
			
		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}
		return null;
	}

	public void Insert3(String name, String pass) {
		this.getConnection();
		String sql="insert into lab2 (UserName,Password)values(?,?)";
		try
		{
			ps = connection.prepareStatement(sql);
			ps.setString(1, name);
			
			ps.setString(2, pass);
			ps.executeUpdate();
			
			ps.close();
			connection.close();
			
		}
		catch(SQLException e)
		{
		 e.printStackTrace();	
		}
		
	}

	public String check2(String pass) {
		this.getConnection();
		//User uj =new  User();
		String sql = "select Password from lab2 where Password =?";
		try
		{
			ps = connection.prepareStatement(sql);
			ps.setString(1, pass);
			rs=ps.executeQuery();
			while (rs.next())
			{
				
				if(rs.getString(1).equals(pass))
				{
					return "success";
				}
			}
//			System.out.println(uj.getPass());
	
		}
		catch(SQLException e)
		{
			return "fail";
		}
	
		return "fail";
		
	}
	

	}


