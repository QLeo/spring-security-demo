package com.gradle.demo.configurations;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;

// springSecurityFilterChain
@Configuration
@EnableWebSecurity
public class SecurityConfiguration extends WebSecurityConfigurerAdapter {

    @Autowired
    public void configureGlobalSecurity(AuthenticationManagerBuilder auth) throws Exception {
        auth.inMemoryAuthentication().withUser("user").password("1").roles("USER");
        auth.inMemoryAuthentication().withUser("admin").password("1").roles("ADMIN");
        auth.inMemoryAuthentication().withUser("master").password("1").roles("ADMIN","USER");
    }

    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http.authorizeRequests()
            .antMatchers("/").permitAll()
            .antMatchers("/admin").access("hasRole('ADMIN')")
            .antMatchers("/user").access("hasRole('USER')")
            .antMatchers("/common").access("hasRole('ADMIN') or hasRole('USER')")
            .and().formLogin()
                .loginPage("/login")
                .usernameParameter("id")
                .passwordParameter("password")
                .defaultSuccessUrl("/admin")
//                .successForwardUrl("/admin")  // not working
                .and().csrf().disable() // 아놔.. 너때문에.. ㅡㅡ
                .exceptionHandling().accessDeniedPage("/Access_Denied");

    }
}

