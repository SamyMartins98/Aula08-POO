/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.gov.sp.fatec.users;

import java.util.ArrayList;

/**
 *
 * @author samymartins
 */
public class Db {
    
    private static ArrayList<User> users;
    
    public static ArrayList<User> getUsers(){
        if(users==null){
            users = new ArrayList<>();
            User admin = new User();
            admin.setName("Administrador do sistema");
            admin.setPassword("123456");
            admin.setEmail("admin@empresa.com.br");
            users.add(admin);
            
            User user = new User();
            user.setName("Gerente do sistema");
            user.setPassword("78901");
            user.setEmail("gerente@empresa.com.br");
            users.add(user);
        }
        
        return users;
    }
    
    
}
