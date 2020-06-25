﻿using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace Login.DAL
{
    public class DALMysql
    {
        private MySqlConnection Conexao;

        private string string_conexao = "Persist security info = false;" +
                                        "servor = localhost;" +
                                        "database=Bdlogin;" +
                                        "user=root; pwd=;";

        public void conectar()
        {
            try
            {
                Conexao = new MySqlConnection(string_conexao);
                Conexao.Open();
            }
            catch(MySqlException e)
            {
                throw new Exception("Problemas ao conectar com o Banco de dados. Erro: " + e.Message);
            }


        }

        public void executarcomando(string sql)
        {
            try
            {
                conectar();
                MySqlCommand command = new MySqlCommand(sql, Conexao);
                command.ExecuteNonQuery();
            }
            catch (MySqlException e)
            {
                throw new Exception("Problemas em executar comando no Banco de dados. Erro: " + e.Message);
            }
            finally
            {
                Conexao.Close();
            }
        }

        public DataTable ExecutarConsulta(string sql)
        {
            try
            {
                conectar();
                DataTable dt = new DataTable();
                MySqlDataAdapter dados = new MySqlDataAdapter(sql, Conexao);
                dados.Fill(dt);
                return dt;
            }
            catch (MySqlException e)
            {
                throw new Exception("Não foi possivel selecionar os registros no Banco de dados. Erro: " + e.Message);
            }
            finally
            {
                Conexao.Close();
            }
        }


    }
}