package edutech.entity;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.*;
import lombok.*;

@Getter
@Setter
@NoArgsConstructor
@ToString
@Entity
public class Memory extends Jeu {

    @OneToMany
    private List<PartieMemory> partieMemory = new ArrayList<>();
};