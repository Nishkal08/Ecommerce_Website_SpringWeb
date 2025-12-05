package com.service;

import java.util.Properties;

import org.springframework.core.io.ClassPathResource;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;

import jakarta.mail.Authenticator;
import jakarta.mail.MessagingException;
import jakarta.mail.PasswordAuthentication;
import jakarta.mail.Session;
import jakarta.mail.Transport;
import jakarta.mail.internet.MimeMessage;

@Service
public class MailService {

	  public void sendMail(String email, String username,String subject,String text) {

			// Recipient's email ID needs to be mentioned.
			String to = email;

			// Sender's email ID needs to be mentioned
			String from = "nishkal2005@gmail.com";

			// Assuming you are sending email from through gmails smtp
			String host = "smtp.gmail.com";

			// Get system properties
			Properties properties = System.getProperties();

			// Setup mail server
			properties.put("mail.smtp.host", host);
			properties.put("mail.smtp.port", "465");
			properties.put("mail.smtp.ssl.enable", "true");
			properties.put("mail.smtp.auth", "true");

			// Get the Session object.// and pass username and password
			Session session = Session.getInstance(properties, new Authenticator() {

				protected PasswordAuthentication getPasswordAuthentication() {

					return new PasswordAuthentication(from, "pjzylhzkhqcgojxn");

				}

			});

			try {
				// Create a default MimeMessage object.
				MimeMessage message = new MimeMessage(session);
//
//				// Set From: header field of the header.
//				message.setFrom(new InternetAddress(from));
//
//				// Set To: header field of the header.
//				message.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
//
//				// Set Subject: header field
//				message.setSubject(subject);
//
//				// Now set the actual message
//				message.setText(text);
				
				MimeMessageHelper helper = new MimeMessageHelper(message, true,"UTF-8");
				
				helper.setTo(to);
				helper.setSubject(subject);
				String formattedText = text.replace("\n", "<br>");
			    // Set HTML content with the image
				String htmlContent = "<html><body>"
		                + "<p style='font-size:16px; margin-bottom:20px;'>" + formattedText + "</p>"
		                + "<img src='cid:imageId' style='display:block; margin: 20px 0;'>"
		                + "</body></html>";
				
				helper.setText(htmlContent, true);
				ClassPathResource image = new ClassPathResource("static/img/welcome.png");
		        helper.addInline("imageId", image);
			    System.out.println("sending...");
			    
				// Send message
				Transport.send(message);
				System.out.println("Sent message successfully....");
			} catch (MessagingException mex) {
				mex.printStackTrace();
			}
		}
	    
}
