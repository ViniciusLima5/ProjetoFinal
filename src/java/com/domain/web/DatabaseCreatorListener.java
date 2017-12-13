package com.domain.web;
import java.sql.Statement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.util.Date;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

public class DatabaseCreatorListener implements ServletContextListener {
    private void createCompaniesTable(Statement s){
        try{
            s.execute(  "CREATE TABLE companies(\n" +
                        "    id INTEGER PRIMARY KEY NOT NULL GENERATED ALWAYS \n" +
                        "        AS IDENTITY (START WITH 1, INCREMENT BY 1)\n" +
                        "    , name varchar(200) not null\n" +
                        "    , city varchar(200) not null\n" +
                        "    , district varchar(200) not null\n" +
                        "    , street varchar(200) not null\n" +
                        "    , datetime timestamp not null\n" +
                        "    , niche varchar(200) not null\n" +
                        "    , description varchar(300) not null\n" +
                        "    , phone varchar(13) not null\n" +
                        "    , id_user integer not null\n" +
                        "    , CONSTRAINT FK_companies_users FOREIGN KEY (id_user)\n" +
                        "       REFERENCES users(id)\n" +
                        ")");
            System.out.println("Criada tabela companies.");
//            s.execute("INSERT INTO companies VALUES("
//                + "default"
//                + ", 'Compania Alimentação'"
//                + ", 'Praia Grande'" 
//                + ", 'Boqueirão'" 
//                + ", 'Av.Costa e Silva'" 
//                + ", '13/12/2017 11:18:45'"
//                + ", 'Alimentação'"
//                + ", 1"   
//                + ")");
        }catch(Exception ex2){
            System.out.println("Erro ao criar a companies: "+ex2.getMessage());
        }
    }
    private void createUsersTable(Statement s){
        try{
            s.execute(  "CREATE TABLE users(\n" +
                        "    id INTEGER PRIMARY KEY NOT NULL GENERATED ALWAYS \n" +
                        "        AS IDENTITY (START WITH 1, INCREMENT BY 1)\n" +
                        "    , name varchar(200) not null\n" +
                        "    , cpf varchar(200) not null\n" +
                        "    , cnpj varchar(200) not null\n" +
                        "    , login varchar(50)  not null\n" +
                        "    , pass_hash varchar(200) not null\n" +
                        ")");
            System.out.println("Criada tabela users.");
            s.execute("INSERT INTO users VALUES("
                + "default"
                + ", 'Administrador do Sistema'"
                + ", '03155717211'" 
                + ", '68946818000135'" 
                + ", 'admin'"
                + ", '"+"1234".hashCode()+"'"
                + ")");
            System.out.println("Usuário admin criado com a senha '1234'.");
        }catch(Exception ex2){
            System.out.println("Erro ao criar a users: "+ex2.getMessage());
        }
    }
//    private void createVehicleStaysTable(Statement s){
//        try{
//            s.execute(  "CREATE TABLE vehicles_stays(\n" +
//                        "    id  INTEGER NOT NULL GENERATED ALWAYS \n" +
//                        "        AS IDENTITY (START WITH 1, INCREMENT BY 1)\n" +
//                        "    , vehicle_model varchar(50) not null\n" +
//                        "    , vehicle_color varchar(20) not null\n" +
//                        "    , vehicle_plate varchar(7) not null\n" +
//                        "    , begin_stay timestamp not null\n" +
//                        "    , end_stay timestamp\n" +
//                        "    , price numeric(10,2)\n" +
//                        ")");
//            System.out.println("Criada tabela vehicles_stays.");
//        }catch(Exception ex2){
//            System.out.println("Ero ao criar a vehicles_stays: "+ex2.getMessage());
//        }
//    }
    @Override
    public void contextInitialized(ServletContextEvent sce) {
        try{
            Class.forName("org.apache.derby.jdbc.EmbeddedDriver");
            String url = "jdbc:derby:c:/derby/solariDb;create=true";
            Connection c =DriverManager.getConnection(url);
            Statement s = c.createStatement();
            System.out.println(new Date());
            System.out.println("Iniciando a criação do BD.");
            createUsersTable(s);
            createCompaniesTable(s);
//            createVehicleStaysTable(s);
            s.close();
            c.close();
            DriverManager.getConnection
            ("jdbc:derby:c:/derby/solariDb;shutdown=true");
        }catch(Exception ex){
            System.out.println("Erro: "+ex.getMessage());
        }
    }
    @Override
    public void contextDestroyed(ServletContextEvent sce) {
        
    }
}