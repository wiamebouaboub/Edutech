package edutech.entity;

import javax.persistence.*;
import lombok.*;

@Data
@Entity
@Table(name = "Cours")
public class Cours {

    public Cours(){
        
    }

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "cours_id")
    private Integer id;

    @NonNull
    @Column(name = "cours_intitule")
    private String intitule;

    @NonNull
    @ManyToOne(optional = false) // obligatoire, la clé étrangère ne doit pas être nulle
    Chapitre chapitre;

    @OneToOne
    private Jeu jeu;
}
