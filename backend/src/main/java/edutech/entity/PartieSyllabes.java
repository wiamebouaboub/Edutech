package edutech.entity;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.*;
import lombok.*;

@Data
@Entity
public class PartieSyllabes {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    private int valeur;

    @NonNull
    @ManyToOne(optional = false) // obligatoire, la clé étrangère ne doit pas être nulle
    PartiesGagnees partieGagnees;

    @NonNull
    @ManyToOne(optional = false) // obligatoire, la clé étrangère ne doit pas être nulle
    Syllabes syllabes;

    @OneToMany
    @ToString.Exclude
    private List<PaireSyllabes> paireSyllabes = new ArrayList<>();
}
