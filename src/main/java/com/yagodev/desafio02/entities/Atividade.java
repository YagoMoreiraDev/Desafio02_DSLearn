package com.yagodev.desafio02.entities;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

@Getter
@Setter
@Entity
@Table(name = "tb_atividade")
public class Atividade {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String nome;

    @Column(columnDefinition = "TEXT")
    private String descricao;

    private Double preco;

    @ManyToOne
    @JoinColumn(name = "categoria_id")
    private Categoria categoria;

    @Getter
    @OneToMany(mappedBy = "atividade")
    private List<Bloco> blocos = new ArrayList<>();

    @Getter
    @ManyToMany
    @JoinTable(name= "tb_ativ_part", joinColumns= @JoinColumn(name= "ativid_id"), inverseJoinColumns= @JoinColumn(name= "partic_id"))
    private Set<Participante> participantes = new HashSet<>();

    public Atividade() {
    }

    public Atividade(Long id, String nome, String descricao, Double preco, Categoria categoria) {
        this.id = id;
        this.nome = nome;
        this.descricao = descricao;
        this.preco = preco;
        this.categoria = categoria;
    }

}
