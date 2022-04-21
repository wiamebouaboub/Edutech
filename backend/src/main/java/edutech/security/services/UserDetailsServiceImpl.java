package edutech.security.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import edutech.entity.User;
import edutech.entity.Role;
import edutech.dao.UserRepository;
import edutech.dao.RoleRepository;


@Service
public class UserDetailsServiceImpl implements UserDetailsService {
    @Autowired
    UserRepository userRepository;

    @Override
    @Transactional
    public UserDetails loadUserByUsername(String email) throws UsernameNotFoundException {
        User user = userRepository.findByEmail(email)
                .orElseThrow(() -> new UsernameNotFoundException("User Not Found with email: " + email));
        return UserDetailsImpl.build(user);
    }

    @Autowired RoleRepository roleRepo;
     
    public void registerDefaultUser(User user) {
        Role roleUser = roleRepo.findByName("eleve");
        user.addRole(roleUser);
 
        userRepository.save(user);
    }
}
