package net.skhu.model;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Size;

import lombok.Data;

@Data
public class UserRegistration {

	@NotEmpty(message="name을 입력해주세요")@NotBlank
	String name;


    @NotEmpty(message="id를 입력해주세요")
    @Size(min=3, max=12, message="3자리 이상 12자리 이하")
    String userId;

    @NotEmpty(message="비밀번호를 입력해주세요")
    @Size(min=8, max=12, message="8자리 이상 12자리 이하")
    String password1;

    @NotEmpty(message="비밀번호를 한번 더 입력해주세요")
    String password2;

}
