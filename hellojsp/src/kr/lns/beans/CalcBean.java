package kr.lns.beans;

public class CalcBean {
	
	private double result;
	private int num1;
	private int num2;
	private String operator = "";
	
	public void CalcBean() {
		System.out.println("생성자");
	}
	
	/**
	 * @return the operator
	 */
	public String getOperator() {
		return operator;
	}
	
	/**
	 * @param operator the operator to set
	 */
	public void setOperator(String operator) {
		this.operator = operator;
	}
	
	/**
	 * @return the result
	 */
	public double getResult() {
		return result;
	}

	/**
	 * @return the num1
	 */
	public int getNum1() {
		return num1;
	}

	/**
	 * @param num1 the num1 to set
	 */
	public void setNum1(int num1) {
		this.num1 = num1;
	}

	/**
	 * @return the num2
	 */
	public int getNum2() {
		return num2;
	}

	/**
	 * @param num2 the num2 to set
	 */
	public void setNum2(int num2) {
		this.num2 = num2;
	}
	
	public void calculate() {
		if(operator.equals("+")) {
			result = num1 + num2; 
		} else if(operator.equals("-")) {
			result = num1 - num2;
		} else if(operator.equals("*")) {
			result = num1 * num2;
		} else if(operator.equals("/")) {
			result = (double) num1 / num2;
		}
	}
	
}
