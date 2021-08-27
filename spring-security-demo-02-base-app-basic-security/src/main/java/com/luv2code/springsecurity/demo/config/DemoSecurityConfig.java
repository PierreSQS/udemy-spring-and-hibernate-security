package com.luv2code.springsecurity.demo.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.User;

@Configuration
@EnableWebSecurity
public class DemoSecurityConfig extends WebSecurityConfigurerAdapter {

    public static final String PASSWORD = "test123";

    @Override
    protected void configure(AuthenticationManagerBuilder auth) throws Exception {
        // add our users for in memoryAuthentication
        User.UserBuilder userBuilder = User.withDefaultPasswordEncoder();
        auth.inMemoryAuthentication()
                .withUser(userBuilder.username("John").password(PASSWORD).roles("EMPLOYEE"))
                .withUser(userBuilder.username("Mary").password(PASSWORD).roles("MANAGER"))
                .withUser(userBuilder.username("Susan").password(PASSWORD).roles("ADMIN"));
    }
}
