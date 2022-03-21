package edutech.entity;

import java.util.List;
import java.util.ArrayList;
import javax.persistence.*;
import lombok.*;

@Data
@Entity
public class PartiesGagnees {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @OneToMany
    private List<PartieSyllabes> partieSyllabes = new ArrayList<>();

    @OneToMany
    private List<PartieMemory> partieMemory = new ArrayList<>();
}
