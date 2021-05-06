package net.skhu.config;

import java.util.ArrayList;
import java.util.Collection;

import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import lombok.Data;
import net.skhu.entity.User;

@Data
public class MyUserDetails implements UserDetails {
    private static final long serialVersionUID = 1L;

    final boolean accountNonExpired = true;
    final boolean accountNonLocked = true;
    final boolean credentialsNonExpired = true;
    final String password;
    final String username; //userId
    final boolean isEnabled;
    Collection<SimpleGrantedAuthority> authorities = new ArrayList<>();

    final String name;

    public MyUserDetails(User user) {
        authorities.add(new SimpleGrantedAuthority("ROLE_USER"));


        this.username = user.getUserId();
        this.password = user.getPassword();
        this.isEnabled = user.isEnabled();

        this.name = user.getName();
    }
}
