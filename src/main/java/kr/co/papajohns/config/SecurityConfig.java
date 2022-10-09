package kr.co.papajohns.config;

import lombok.RequiredArgsConstructor;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;

@EnableWebSecurity // Spring Security 를 적용한다는 어노테이션이다.
@RequiredArgsConstructor
public class SecurityConfig extends WebSecurityConfigurerAdapter {

    @Override
    protected void configure(HttpSecurity httpSecurity) throws Exception {
        httpSecurity
                .authorizeRequests()
                .antMatchers("/loginPage", "/registerPage","/register_action","/loginFail","/resource/**").permitAll()
                // 로그인, 회원가입, 로그인 실패, 리소스 접근은 누구나 가능
                .antMatchers("/loginSuccess").hasRole("USER")
                .antMatchers("/loginSuccess").hasRole("ADMIN")
                .and()
                .formLogin()
                .loginPage("/loginPage") // 로그인 페이지 설정
                .loginProcessingUrl("/login_action") // 로그인 액션 설정 (loginpage.html의 th:action="@{/login_action}"를 말함
                .defaultSuccessUrl("/login_success") // 로그인이 성공 시 리다이렉션
                .failureUrl("/login_fail") //로그인 실패 시 리다이렉션 (해당 form으로 error=true를 전송함.)
                .and()
                .csrf().disable();
    }
}
