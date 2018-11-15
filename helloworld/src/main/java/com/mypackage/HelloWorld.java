package com.mypackage;

import java.util.concurrent.TimeUnit;

public class HelloWorld {
    public static void main(String[] args) {
    	
    	try {
			TimeUnit.MINUTES.sleep(3);
		} catch (InterruptedException e) {
			e.printStackTrace();
		}
        System.out.println("Hello World!");
        System.out.println(" - java.version: " + System.getProperty("java.version"));
        System.out.println(" - java.vm.version: " + System.getProperty("java.vm.version"));
    }
}