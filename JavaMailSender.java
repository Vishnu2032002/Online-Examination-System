import java.util.Properties;
import java.util.Random;

import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.*;
import java.io.IOException;
import java.io.PrintWriter;


public class JavaMailSender extends HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	public void doPost(HttpServletRequest request,HttpServletResponse response)throws IOException {
		String email_id = request.getParameter("email_id");
		PrintWriter out = response.getWriter();
		String otp = generateOtp();
		sendEmail(email_id,otp);
		out.print(otp);
	}
	
	private void sendEmail(String email_id,String otpCode) {
 
		Properties connectionProperties = new Properties();
		connectionProperties.put("mail.smtp.host", "smtp.gmail.com");
		connectionProperties.put("mail.smtp.auth", "true");
		connectionProperties.put("mail.smtp.starttls.enable", "true");
		connectionProperties.put("mail.smtp.port", "587");
		Session session = Session.getInstance(connectionProperties,
				new javax.mail.Authenticator() {	
					protected PasswordAuthentication getPasswordAuthentication() {
						return new PasswordAuthentication("vishnusurya8569@gmail.com","crwrmirrhzhywpkv");
					}
				});
		
		
		try {
			Message message = new MimeMessage(session);
			message.setFrom(new InternetAddress("vishnusurya8569@gmail.com"));
			message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(email_id));
			message.setSubject("OTP CODE");
			message.setText("Your OTP CODE is : "+otpCode);
			Transport.send(message);
			
		} catch (Exception e) {
			e.printStackTrace();
		}	
	}
	private String generateOtp() {
		Random rand = new Random();
		int intOtp = rand.nextInt(999999);
		return String.valueOf(intOtp);
	}
}