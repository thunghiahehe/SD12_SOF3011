package org.example.lab3.model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.Date;

@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
public class Staff {
    private String fullName;
    private Date birthday;
    private boolean gender;
    private String country;
    private boolean married;
    private String[] hobbies;
    private String notes;
    private String photo;
}
