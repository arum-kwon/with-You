package co.arum.prj.user.mapper;

import org.mybatis.spring.annotation.MapperScan;

import co.arum.prj.user.service.MemberService;

@MapperScan("map")
public interface MemberMap extends MemberService {

}
