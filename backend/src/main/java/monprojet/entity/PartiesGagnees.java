package monprojet.entity;

import java.util.List;
import java.util.ArrayList;
import javax.persistence.*;
import lombok.*;

@Data
@Entity
public class PartiesGagnees {
    @OneToMany(mappedBy = "partieGagnees")
    private List<PartieSyllabes> partieSyllabes = new ArrayList<>();

    @OneToMany(mappedBy = "partieGagnees")
    private List<PartieMemory> partieMemory = new ArrayList<>();
}
