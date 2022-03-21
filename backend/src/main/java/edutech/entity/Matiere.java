package edutech.entity;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.*;
import lombok.*;

@Data
@Entity
public class Matiere {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @NonNull
    private String intitule;

    @OneToMany
    @ToString.Exclude
    private List<Chapitre> chapitres = new ArrayList<>();
}
