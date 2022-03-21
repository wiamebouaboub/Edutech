package edutech.entity;

import javax.persistence.*;
import lombok.*;

@Data
@Entity
public class PaireSyllabes {
    @Id
    private String syllabe;

    @NonNull
    private String audio;

    @NonNull
    @ManyToOne(optional = false) // obligatoire, la clé étrangère ne doit pas être nulle
    PartieSyllabes partieSyllabes;
}
