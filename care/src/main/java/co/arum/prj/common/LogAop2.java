package co.arum.prj.common;

import org.aspectj.lang.annotation.After;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.stereotype.Service;

//@Aspect
public class LogAop2 {

	@Pointcut("execution(* co.arum.prj..*.*(..))")
	public void allPoint() {}

	@Pointcut("execution(* co.arum.prj..*Service.get*(..))")
	public void userPoint() {}
	
	@Before("allPoint()")
	public void logBefore() {
		System.out.println("-----------@기반 AOP Before-------");
	}

	@After("allPoint()")
	public void logAfter() {
		System.out.println("-----------@기반 AOP After-------");
	}

	@Around("allPoint()")
	public void logAround() {
		System.out.println("-----------@기반 AOP Around-------");
	}
}
