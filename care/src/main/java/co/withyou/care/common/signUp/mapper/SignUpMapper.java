package co.withyou.care.common.signUp.mapper;

import org.mybatis.spring.annotation.MapperScan;

import co.withyou.care.common.signUp.service.SignUpService;

@MapperScan
public interface SignUpMapper extends SignUpService{

}
