package validate;

import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import co.sp.beans.Data;

public class Validator1 implements Validator {

	@Override
	public boolean supports(Class<?> clazz) {
		// TODO Auto-generated method stub
		return Data.class.isAssignableFrom(clazz);
	}

	@Override
	public void validate(Object target, Errors errors) {
		// TODO Auto-generated method stub
		ValidationUtils.rejectIfEmpty(errors,"data1", "error1");
		ValidationUtils.rejectIfEmpty(errors,"data2", "error2");
		
		
		Data d1 = (Data) target;
		String data1 = d1.getDa1();
		String data2 = d1.getDa2();
		String data3 = d1.getDa3();
		
		if(data1.length() > 5) {
			errors.rejectValue("d1", "error3");
		}
		if(data2.contains("@")==false) {
			errors.rejectValue("da2", "error4");
		}
	}

}
