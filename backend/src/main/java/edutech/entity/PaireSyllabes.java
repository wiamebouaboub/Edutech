package edutech.entity;

import javax.persistence.*;
import lombok.*;

@Data
@Entity
@Table(name = "Pairesyllabes")
public class PaireSyllabes {

    public PaireSyllabes() {

    }

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "pairesyllabes_id")
    private Integer id;

    @NonNull
    @Column(name = "syllabe")
    private String syllabe;

    @NonNull
    @Column(name = "audio")
    private String audio;

    @ManyToOne(optional = false) // obligatoire, la clé étrangère ne doit pas être nulle
    PartieSyllabes partiesyllabes;
}
