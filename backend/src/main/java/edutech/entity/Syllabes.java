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
@Table(name = "Syllabes")
public class Syllabes extends Jeu {


    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "syllabes_id")
    private Integer id;

    @OneToMany(mappedBy = "syllabes")
    @ToString.Exclude
    private List<PartieSyllabes> partiesyllabes = new ArrayList<>();
}
