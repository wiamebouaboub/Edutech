package monprojet.entity;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.*;
import lombok.*;

@Data
@Entity // Une entité JPA
public class PartieMemory {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    private int valeur;

    @ManyToOne(optional = false) // obligatoire, la clé étrangère ne doit pas être nulle
    PartiesGagnees partiesGagnees;

    @NonNull
    @ManyToOne(optional = false) // obligatoire, la clé étrangère ne doit pas être nulle
    Memory memory;

    @OneToMany(mappedBy = "partieMemory")
    private List<TableMemory> tableMemory = new ArrayList<>();
}
