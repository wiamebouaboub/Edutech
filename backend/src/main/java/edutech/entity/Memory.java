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
@Table(name = "Memory")
public class Memory extends Jeu {


    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "memory_id")
    private Integer id;

    @OneToMany(mappedBy = "memory")
    @ToString.Exclude
    private List<PartieMemory> partiememory = new ArrayList<>();
};