package net.skhu.model;

import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Size;

import lombok.Data;

@Data
public class DiaryModel {
    int id;
    int no;

    @NotEmpty(message="제목을 입력하세요")
    String title;

    @Size(min=0, message="내용을 입력하세요")
    String body;
}
