package edutech.entity;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.*;
import lombok.*;

@Getter
@Setter
@NoArgsConstructor
@ToString
@Entity
public class Syllabes extends Jeu {

    @OneToMany
    private List<PartieSyllabes> partieSyllabes = new ArrayList<>();
}