package com.ua.committee.dto;

import java.io.IOException;
import java.util.Collection;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.web.DefaultRedirectStrategy;
import org.springframework.security.web.RedirectStrategy;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;
import org.springframework.stereotype.Component;

@Component
public class UserAuthenticationSuccessHandler implements AuthenticationSuccessHandler{
	
	private RedirectStrategy redirectStrategy = new DefaultRedirectStrategy();

	@Override
	public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response,
			Authentication authentication) throws IOException, ServletException {
		
		boolean hasUserRole = false;
		boolean hasAdminRole = false;
		boolean hasApprovedRole = false;
		Collection<? extends GrantedAuthority> authorities = authentication.getAuthorities();
		for (GrantedAuthority grantedAuthority : authorities) {
			if (grantedAuthority.getAuthority().equals("ROLE_USER")) {
				hasUserRole = true;
				break;
			} else if (grantedAuthority.getAuthority().equals("ROLE_ADMIN")) {
				hasAdminRole = true;
				break;
			} else if (grantedAuthority.getAuthority().equals("ROLE_APPROVED")) {
				hasApprovedRole = true;
				break;
			}
		}

		if (hasUserRole) {
			redirectStrategy.sendRedirect(request, response, "/home");
		} else if (hasApprovedRole) {
			redirectStrategy.sendRedirect(request, response, "/main");
		}else if (hasAdminRole) {
			redirectStrategy.sendRedirect(request, response, "/admin");
		}else {
			throw new IllegalStateException();
		}
	}
		
	}


