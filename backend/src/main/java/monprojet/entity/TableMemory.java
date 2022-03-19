package monprojet.entity;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.*;
import lombok.*;

@Data
@Entity
public class TableMemory {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @NonNull
    private String intitule;

    @NonNull
    @ManyToOne(optional = false) // obligatoire, la clé étrangère ne doit pas être nulle
    PartieMemory partieMemory;

    @OneToMany(mappedBy = "tableMemory")
    @ToString.Exclude
    private List<PaireMemory> paireMemory = new ArrayList<>();
}
