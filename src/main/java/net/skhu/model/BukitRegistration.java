package net.skhu.model;

import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Size;

import lombok.Data;

@Data
public class BukitRegistration {


    @NotEmpty(message="로그인 후 이용하세요")
    String userId;

    @NotEmpty(message="버킷리스트를 적어주세요")
    @Size(min=1, max=500, message="최소 1자 이상 500자 이하")
    String body;

}