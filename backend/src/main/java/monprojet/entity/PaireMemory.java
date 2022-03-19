package monprojet.entity;

import javax.persistence.*;
import lombok.*;

@Data
@Entity
public class PaireMemory {
    @Id
    private String question;

    @NonNull
    private String reponse;

    @NonNull
    @ManyToOne(optional = false) // obligatoire, la clé étrangère ne doit pas être nulle
    TableMemory tableMemory;

}
