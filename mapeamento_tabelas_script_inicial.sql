WITH mapeamento_tabelas AS (

-------------------df_bin
SELECT 'sandbox_analytics.bintefisv_tb_dim_calendar' AS tabelas, MAX(d) AS atualizacao FROM sandbox_analytics.bintefisv_tb_dim_calendar
UNION ALL
SELECT 'sandbox_analytics.bintefisv_tb_dim_merchant' AS tabelas, MAX(last_sales_transaction_date) AS atualizacao FROM sandbox_analytics.bintefisv_tb_dim_merchant
UNION ALL
SELECT 'sandbox_analytics.bintefisv_tb_dim_merchant_logical_terminal' AS tabelas, MAX(date_last_change) AS atualizacao FROM sandbox_analytics.bintefisv_tb_dim_merchant_logical_terminal
UNION 
SELECT 'sandbox_analytics.bintefisv_tb_fact_boarding' AS tabelas, MAX(reference_date) AS atualizacao FROM sandbox_analytics.bintefisv_tb_fact_boarding
UNION ALL
SELECT 'sandbox_analytics.bintefisv_tb_fact_merchant_billing_terminal' AS tabelas, MAX(capture_date) AS atualizacao FROM sandbox_analytics.bintefisv_tb_fact_merchant_billing_terminal
UNION ALL
SELECT 'sandbox_analytics.bintefisv_tb_fact_prepayment' AS tabelas, MAX(data_ref) AS atualizacao FROM sandbox_analytics.bintefisv_tb_fact_prepayment
UNION ALL
SELECT 'sandbox_planejamento_estrategico.corp_tb_fact_terminais' AS tabelas, MAX(busi_dt) AS atualizacao FROM sandbox_planejamento_estrategico.h_tb_07_tecnologia_equipamento
UNION ALL
SELECT 'sandbox_planejamento_estrategico.vw_ap_cadastro_corporativo' AS tabelas, MAX(merchant_boarding_date) AS atualizacao FROM sandbox_planejamento_estrategico.vw_ap_cadastro_corporativo
UNION ALL
SELECT 'sandbox_planejamento_estrategico.vw_ap_receitas_corporativo' AS tabelas, MAX(data_ref) AS atualizacao FROM sandbox_planejamento_estrategico.vw_ap_receitas_corporativo
UNION ALL

SELECT 'sandbox_analytics.bintefisv_tb_dim_product' AS tabelas, DATE_ADD(CURRENT_DATE(), INTERVAL 1 YEAR) AS atualizacao --FROM sandbox_analytics.bintefisv_tb_dim_product
UNION ALL
SELECT 'sandbox_analytics.d_canais' AS tabelas, DATE_ADD(CURRENT_DATE(), INTERVAL 1 YEAR) AS atualizacao --FROM sandbox_analytics.h_vw_canais
UNION ALL
SELECT 'sandbox_analytics.bintefisv_tb_dim_relationship_channel_act' AS tabelas, DATE_ADD(CURRENT_DATE(), INTERVAL 1 YEAR) AS atualizacao --FROM sandbox_analytics.bintefisv_tb_dim_relationship_channel_act
UNION ALL 
--SELECT 'srv.dim_calendar' AS tabelas, MAX(d) AS atualizacao FROM srv.dim_calendar
--UNION ALL
--DF bintefisv_dm_transacoes_boarding is here
--DF df_dim_calendar is here


-------------------caixalotericas_dm_transacoes
SELECT 'sandbox_analytics.caixalotericas_tb_dim_calendar' AS tabelas, MAX(d) AS atualizacao FROM sandbox_analytics.caixalotericas_tb_dim_calendar
UNION ALL
SELECT 'sandbox_analytics.caixalotericas_tb_dim_merchant' AS tabelas, MAX(last_sales_transaction_date) AS atualizacao FROM sandbox_analytics.caixalotericas_tb_dim_merchant
UNION ALL
SELECT 'sandbox_analytics.caixalotericas_tb_dim_merchant_logical_terminal' AS tabelas, MAX(date_last_change) AS atualizacao FROM sandbox_analytics.caixalotericas_tb_dim_merchant_logical_terminal
UNION ALL
SELECT 'sandbox_analytics.caixalotericas_tb_fact_merchant_billing_terminal' AS tabelas, MAX(sales_date) AS atualizacao FROM sandbox_analytics.caixalotericas_tb_fact_merchant_billing_terminal
UNION ALL

SELECT 'sandbox_analytics.caixalotericas_tb_dim_cnpj_pgw' AS tabelas, DATE_ADD(CURRENT_DATE(), INTERVAL 1 YEAR) AS atualizacao --FROM sandbox_analytics.caixalotericas_tb_dim_cnpj_pgw
UNION ALL
SELECT 'sandbox_analytics.caixalotericas_tb_dim_geography' AS tabelas, DATE_ADD(CURRENT_DATE(), INTERVAL 1 YEAR) AS atualizacao --FROM sandbox_analytics.caixalotericas_tb_dim_geography
UNION ALL
SELECT 'sandbox_analytics.caixalotericas_tb_dim_product' AS tabelas, DATE_ADD(CURRENT_DATE(), INTERVAL 1 YEAR) AS atualizacao --FROM sandbox_analytics.caixalotericas_tb_dim_product
UNION ALL
SELECT 'sandbox_analytics.caixalotreicas_tb_dim_relationship_channel_act' AS tabelas, DATE_ADD(CURRENT_DATE(), INTERVAL 1 YEAR) AS atualizacao --FROM sandbox_analytics.caixalotericas_tb_dim_relationship_channel_act
UNION ALL


-------------------cubo_consolidado_clover
SELECT 'sandbox_planejamento_estrategico.clover_tb_fact_antecipacao' AS tabelas, MAX(data_ref) AS atualizacao FROM sandbox_planejamento_estrategico.clover_tb_fact_antecipacao
UNION ALL
SELECT 'sandbox_planejamento_estrategico.clover_tb_fact_faturamento' AS tabelas, MAX(data_ref) AS atualizacao FROM sandbox_planejamento_estrategico.clover_tb_fact_faturamento
UNION ALL
SELECT 'sandbox_planejamento_estrategico.clover_tb_fact_volumetrias_vendas' AS tabelas, MAX(event_dt) AS atualizacao FROM sandbox_planejamento_estrategico.clover_tb_fact_volumetrias_vendas
UNION ALL

SELECT 'sandbox_analytics.clover_aluguel_consolidado' AS tabelas, DATE_ADD(CURRENT_DATE(), INTERVAL 1 YEAR) AS atualizacao --FROM sandbox_analytics.clover_aluguel_consolidado
UNION ALL
SELECT 'sandbox_analytics.clover_antecipacao_consolidado' AS tabelas, DATE_ADD(CURRENT_DATE(), INTERVAL 1 YEAR) AS atualizacao --FROM sandbox_analytics.clover_antecipacao_consolidado
UNION ALL
SELECT 'sandbox_analytics.clover_autorizacao_consolidado' AS tabelas, DATE_ADD(CURRENT_DATE(), INTERVAL 1 YEAR) AS atualizacao --FROM sandbox_analytics.clover_autorizacao_consolidado
UNION ALL
SELECT 'sandbox_analytics.clover_faturamento_consolidado' AS tabelas, DATE_ADD(CURRENT_DATE(), INTERVAL 1 YEAR) AS atualizacao --FROM sandbox_analytics.clover_faturamento_consolidado
UNION ALL
SELECT 'sandbox_planejamento_estrategico.clover_tb_dim_merchants' AS tabelas, DATE_ADD(CURRENT_DATE(), INTERVAL 1 YEAR) AS atualizacao --FROM sandbox_planejamento_estrategico.clover_tb_dim_merchants
UNION ALL
SELECT 'sandbox_analytics.clover_terminais_consolidado' AS tabelas, DATE_ADD(CURRENT_DATE(), INTERVAL 1 YEAR) AS atualizacao --FROM sandbox_analytics.clover_terminais_consolidado
UNION ALL
SELECT 'sandbox_analytics.clover_volumetrias_consolidado' AS tabelas, DATE_ADD(CURRENT_DATE(), INTERVAL 1 YEAR) AS atualizacao --FROM sandbox_analytics.clover_volumetrias_consolidado
UNION ALL


-------------------adhoc
SELECT 'sandbox_analytics.adhoc_7molinos' AS tabelas, MAX(dt_ref) AS atualizacao FROM sandbox_analytics.adhoc_7molinos
UNION ALL
SELECT 'sandbox_analytics.adhoc_daily_metrics_merchant_report' AS tabelas, MAX(data_ref) AS atualizacao FROM sandbox_analytics.adhoc_daily_metrics_merchant_report
UNION ALL
SELECT 'sandbox_analytics.adhoc_provisao_sicredi' AS tabelas, MAX(data_ref) AS atualizacao FROM sandbox_analytics.adhoc_provisao_sicredi
UNION ALL
SELECT 'sandbox_analytics.adhoc_report_fin_caixa' AS tabelas, MAX(dt_ref) AS atualizacao FROM sandbox_analytics.adhoc_report_fin_caixa
UNION ALL
--adhoc_report_fin_caixa_novo in anomes
--azulzinha_tb_fact_transacoes in df_azulzinha_pay
--tb_avaliacoes_app_gestao in df_qualidade
--adhoc_grupo_economico in anomes


-------------------df_adquirencia
SELECT 'sandbox_analytics.claro_tb_dim_merchant' AS tabelas, MAX(last_sales_transaction_date) AS atualizacao FROM sandbox_analytics.claro_tb_dim_merchant
UNION ALL
SELECT 'sandbox_analytics.claro_tb_dim_merchant_logical_terminal' AS tabelas, MAX(date_last_change) AS atualizacao FROM sandbox_analytics.claro_tb_dim_merchant_logical_terminal
UNION ALL
SELECT 'sandbox_analytics.claro_tb_fact_merchant_billing_terminal' AS tabelas, MAX(capture_date) AS atualizacao FROM sandbox_analytics.claro_tb_fact_merchant_billing_terminal
UNION ALL
SELECT 'sandbox_analytics.claro_tb_fact_prepayment' AS tabelas, MAX(data_ref) AS atualizacao FROM sandbox_analytics.claro_tb_fact_prepayment
UNION ALL
SELECT 'sandbox_analytics.sicobtef_tb_f_transacoes' AS tabelas, MAX(data_ref) AS atualizacao FROM sandbox_analytics.sicobtef_tb_f_transacoes
UNION ALL
SELECT 'sandbox_analytics.sicobtef_tb_f_agenda' AS tabelas, MAX(data_ref) AS atualizacao FROM sandbox_analytics.sicobtef_tb_f_transacoes
UNION ALL
SELECT 'sandbox_analytics.sicobtef_vw_f_aluguel_pago' AS tabelas, MAX(data_ref) AS atualizacao FROM sandbox_analytics.sicobtef_vw_f_aluguel_pago
UNION ALL
SELECT 'sandbox_analytics.tbsafras_f_aluguel' AS tabelas, MAX(data_ref) AS atualizacao FROM sandbox_analytics.tbsafras_f_aluguel
UNION ALL
SELECT 'sandbox_analytics.tbsafras_f_antecipacao' AS tabelas, MAX(data_ref) AS atualizacao FROM sandbox_analytics.tbsafras_f_antecipacao
UNION ALL
SELECT 'sandbox_analytics.tbsafras_f_credenciamento' AS tabelas, MAX(data_ref) AS atualizacao FROM sandbox_analytics.tbsafras_f_credenciamento
UNION ALL
SELECT 'sandbox_analytics.tbsafras_f_faturamento' AS tabelas, MAX(data_ref) AS atualizacao FROM sandbox_analytics.tbsafras_f_faturamento
UNION ALL

SELECT 'sandbox_analytics.claro_tb_dim_product' AS tabelas, DATE_ADD(CURRENT_DATE(), INTERVAL 1 YEAR) AS atualizacao --FROM sandbox_analytics.claro_tb_dim_product
UNION ALL
SELECT 'sandbox_analytics.claro_tb_dim_relationship_channel_act' AS tabelas, DATE_ADD(CURRENT_DATE(), INTERVAL 1 YEAR) AS atualizacao --FROM sandbox_analytics.claro_tb_dim_relationship_channel_act
UNION ALL
SELECT 'sandbox_analytics.claro_tb_fact_boarding' AS tabelas, DATE_ADD(CURRENT_DATE(), INTERVAL 1 YEAR) AS atualizacao --FROM sandbox_analytics.claro_tb_fact_boarding
UNION ALL 
SELECT 'sandbox_analytics.sicobtef_vw_d_cadastro' AS tabelas, DATE_ADD(CURRENT_DATE(), INTERVAL 1 YEAR) AS atualizacao --FROM sandbox_analytics.sicobtef_vw_d_cadastro
UNION ALL 
SELECT 'sandbox_analytics.tbsafras_d_hierarquia' AS tabelas, DATE_ADD(CURRENT_DATE(), INTERVAL 1 YEAR) AS atualizacao --FROM sandbox_analytics.tbsafras_d_hierarquia
UNION ALL
SELECT 'sandbox_planejamento_estrategico.tb_rebate_sicredi_coops' AS tabelas, DATE_ADD(CURRENT_DATE(), INTERVAL 1 YEAR) AS atualizacao --FROM sandbox_planejamento_estrategico.tb_rebate_sicredi_coops
UNION ALL
SELECT 'sandbox_analytics.h_vw_canais' AS tabelas, DATE_ADD(CURRENT_DATE(), INTERVAL 1 YEAR) AS atualizacao --FROM sandbox_analytics.h_vw_canais
UNION ALL
SELECT 'dominio.tipo_cartao' AS tabelas, DATE_ADD(CURRENT_DATE(), INTERVAL 1 YEAR) AS atualizacao --FROM dominio.tipo_cartao
UNION ALL
SELECT 'dominio.tipo_mensagem_autorizacao' AS tabelas, DATE_ADD(CURRENT_DATE(), INTERVAL 1 YEAR) AS atualizacao --FROM dominio.tipo_mensagem_autorizacao
UNION ALL
SELECT 'dominio.tipo_terminal' AS tabelas, DATE_ADD(CURRENT_DATE(), INTERVAL 1 YEAR) AS atualizacao --FROM dominio.tipo_terminal
UNION ALL
SELECT 'dominio.tipo_transacao_autorizacao' AS tabelas, DATE_ADD(CURRENT_DATE(), INTERVAL 1 YEAR) AS atualizacao --FROM dominio.tipo_transacao_autorizacao
UNION ALL
SELECT 'dominio.categoria_autorizacao' AS tabelas, DATE_ADD(CURRENT_DATE(), INTERVAL 1 YEAR) AS atualizacao --FROM dominio.categoria_autorizacao
UNION ALL
SELECT 'dominio.codigo_resposta_autorizacao' AS tabelas, DATE_ADD(CURRENT_DATE(), INTERVAL 1 YEAR) AS atualizacao --FROM dominio.codigo_resposta_autorizacao
UNION ALL
--dim_calendar in df_bin
--tb_ap_autorizacao_consolidado in anomes
--tb_ap_volumetrias_consolidado in anomes
--tb_ap_terminais_consolidado in anomes
--tb_ap_faturamento_consolidado in anomes
--tb_ap_d_hierarquia in anomes
--tb_ap_antecip_consolidado in anomes
--tb_ap_aluguel_consolidado in anomes


-------------------df_auth_corporativo
SELECT 'sandbox_analytics.tb_dim_calendar' AS tabelas, MAX(d) AS atualizacao FROM sandbox_analytics.tb_dim_calendar
UNION ALL
SELECT 'sandbox_analytics.auth_tb_dim_merchant' AS tabelas, MAX(last_sales_transaction_date) AS atualizacao FROM sandbox_analytics.auth_tb_dim_merchant
UNION ALL
SELECT 'sandbox_analytics.auth_tb_fact_authorization_terminal' AS tabelas, MAX(sales_date) AS atualizacao FROM sandbox_analytics.auth_tb_fact_authorization_terminal
UNION ALL

SELECT 'sandbox_planejamento_estrategico.auth_tb_cod_resp_autorizacao' AS tabelas, DATE_ADD(CURRENT_DATE(), INTERVAL 1 YEAR) AS atualizacao --FROM sandbox_planejamento_estrategico.auth_tb_cod_resp_autorizacao
UNION ALL
SELECT 'sandbox_planejamento_estrategico.auth_tb_tipo_cartao_bandeira' AS tabelas, DATE_ADD(CURRENT_DATE(), INTERVAL 1 YEAR) AS atualizacao --FROM sandbox_analytics.auth_tb_dim_abecs
UNION ALL
SELECT 'sandbox_planejamento_estrategico.dim_card_type_transaction' AS tabelas, DATE_ADD(CURRENT_DATE(), INTERVAL 1 YEAR) AS atualizacao --FROM td_dim_card_type_transaction
UNION ALL
SELECT 'sandbox_analytics.auth_tb_dim_abecs' AS tabelas, DATE_ADD(CURRENT_DATE(), INTERVAL 1 YEAR) AS atualizacao --FROM sandbox_analytics.auth_tb_dim_abecs
UNION ALL
SELECT 'sandbox_analytics.tb_dim_auth_response_code' AS tabelas, DATE_ADD(CURRENT_DATE(), INTERVAL 1 YEAR) AS atualizacao --FROM sandbox_analytics.tb_dim_auth_response_code
UNION ALL
SELECT 'sandbox_analytics.tb_dim_auth_transaction_category' AS tabelas, DATE_ADD(CURRENT_DATE(), INTERVAL 1 YEAR) AS atualizacao --FROM sandbox_analytics.tb_dim_auth_transaction_category
UNION ALL
SELECT 'sandbox_analytics.tb_dim_auth_transaction_type' AS tabelas, DATE_ADD(CURRENT_DATE(), INTERVAL 1 YEAR) AS atualizacao --FROM sandbox_analytics.tb_dim_auth_transaction_type
UNION ALL
SELECT 'sandbox_analytics.tb_dim_bin' AS tabelas, DATE_ADD(CURRENT_DATE(), INTERVAL 1 YEAR) AS atualizacao --FROM sandbox_analytics.tb_dim_bin
UNION ALL
SELECT 'sandbox_analytics.tb_dim_boarding_channel' AS tabelas, DATE_ADD(CURRENT_DATE(), INTERVAL 1 YEAR) AS atualizacao --FROM sandbox_analytics.tb_dim_boarding_channel
UNION ALL
SELECT 'sandbox_analytics.tb_dim_business_partner' AS tabelas, DATE_ADD(CURRENT_DATE(), INTERVAL 1 YEAR) AS atualizacao --FROM sandbox_analytics.tb_dim_business_partner
UNION ALL
SELECT 'sandbox_analytics.tb_dim_card_type' AS tabelas, DATE_ADD(CURRENT_DATE(), INTERVAL 1 YEAR) AS atualizacao --FROM sandbox_analytics.tb_dim_card_type
UNION ALL
SELECT 'sandbox_analytics.tb_dim_entry_mode' AS tabelas, DATE_ADD(CURRENT_DATE(), INTERVAL 1 YEAR) AS atualizacao --FROM sandbox_analytics.tb_dim_entry_mode
UNION ALL
SELECT 'sandbox_analytics.tb_dim_geography' AS tabelas, DATE_ADD(CURRENT_DATE(), INTERVAL 1 YEAR) AS atualizacao --FROM sandbox_analytics.tb_dim_geography
UNION ALL
SELECT 'sandbox_analytics.tb_dim_institution' AS tabelas, DATE_ADD(CURRENT_DATE(), INTERVAL 1 YEAR) AS atualizacao --FROM sandbox_analytics.tb_dim_institution
UNION ALL
SELECT 'sandbox_analytics.tb_dim_message_type' AS tabelas, DATE_ADD(CURRENT_DATE(), INTERVAL 1 YEAR) AS atualizacao --FROM sandbox_analytics.tb_dim_message_type
UNION ALL
SELECT 'sandbox_analytics.tb_dim_segment_cnae' AS tabelas, DATE_ADD(CURRENT_DATE(), INTERVAL 1 YEAR) AS atualizacao --FROM sandbox_analytics.tb_dim_segment_cnae
UNION ALL
SELECT 'sandbox_analytics.tb_dim_terminal_type' AS tabelas, DATE_ADD(CURRENT_DATE(), INTERVAL 1 YEAR) AS atualizacao --FROM sandbox_analytics.tb_dim_terminal_type
UNION ALL
-- auth_tb_dim_cadastro in anomes


-------------------df_vendas_faturamento
SELECT 'sandbox_planejamento_estrategico.tb_ap_faturamento' AS tabelas, MAX(event_dt) AS atualizacao FROM sandbox_planejamento_estrategico.tb_ap_faturamento
UNION ALL
SELECT 'sandbox_planejamento_estrategico.tb_ap_tecnologias' AS tabelas, MAX(event_dt) AS atualizacao FROM sandbox_planejamento_estrategico.tb_ap_tecnologias
UNION ALL
SELECT 'sandbox_planejamento_estrategico.tb_ap_antecip' AS tabelas, MAX(event_dt) AS atualizacao FROM sandbox_planejamento_estrategico.tb_ap_antecip
UNION ALL
SELECT 'sandbox_planejamento_estrategico.tb_ap_volumetrias_vendas' AS tabelas, MAX(event_dt) AS atualizacao FROM sandbox_planejamento_estrategico.tb_ap_volumetrias_vendas
UNION ALL
SELECT 'sandbox_planejamento_estrategico.tb_i_event' AS tabelas, MAX(event_dt) AS atualizacao FROM sandbox_planejamento_estrategico.tb_ap_faturamento
UNION ALL
SELECT 'sandbox_planejamento_estrategico.tb_referencia' AS tabelas, MAX(event_dt) AS atualizacao FROM sandbox_planejamento_estrategico.tb_ap_volumetrias_vendas
UNION ALL


-------------------df_azulzinha_pay
SELECT 'sandbox_analytics.azulzinha_tb_fact_tagueamento' AS tabelas, MAX(dt_atualizacao) AS atualizacao FROM sandbox_analytics.azulzinha_tb_fact_tagueamento
UNION ALL
SELECT 'sandbox_analytics.azulzinha_tb_fact_transacoes' AS tabelas, MAX(dt_pagamento) AS atualizacao FROM sandbox_analytics.azulzinha_tb_fact_transacoes
UNION ALL


-------------------df_qualidade
SELECT 'fat_bloqueio_agenda' AS tabelas, MAX(data_fraud_flag) AS atualizacao FROM sandbox_planejamento_estrategico.fat_bloqueio_agenda
UNION ALL
SELECT 'fat_saldo_clientes' AS tabelas, MAX(date_cycle_start) AS atualizacao FROM sandbox_planejamento_estrategico.fat_saldo_clientes
UNION ALL
SELECT 'tb_avaliacoes_app_gestao' AS tabelas, MAX(answer_date) AS atualizacao FROM sandbox_planejamento_estrategico.tb_avaliacoes_app_gestao
UNION ALL
SELECT 'tb_base_instalada' AS tabelas, MAX(record_date) AS atualizacao FROM sandbox_planejamento_estrategico.tb_base_instalada
UNION ALL
SELECT 'tb_tickets_logistica' AS tabelas, MAX(captured_dt) AS atualizacao FROM sandbox_planejamento_estrategico.tb_tickets_logistica
UNION ALL

SELECT 'dominio.tipo_ticket' AS tabelas, DATE_ADD(CURRENT_DATE(), INTERVAL 1 YEAR) AS atualizacao --FROM dominio.tipo_ticket
UNION ALL
SELECT 'dominio.dim_status_conta' AS tabelas, DATE_ADD(CURRENT_DATE(), INTERVAL 1 YEAR) AS atualizacao --FROM dominio.status_conta
UNION ALL
SELECT 'dominio.dim_razao_status_merchant' AS tabelas, DATE_ADD(CURRENT_DATE(), INTERVAL 1 YEAR) AS atualizacao --FROM dominio.razao_status_merchant
UNION ALL
--tipo_terminal in df_adquirencia
--dim_calendar in df_bin


-------------------df_broker
SELECT 'sandbox_analytics.fact_analitica' AS tabelas, MAX(data_ref) AS atualizacao FROM sandbox_analytics.broker_tb_fact_analitica
UNION ALL
SELECT 'sandbox_analytics.fact_antecipacao' AS tabelas, MAX(data_ref) AS atualizacao FROM sandbox_analytics.broker_tb_fact_antecipacao
UNION ALL

SELECT 'sandbox_analytics.dim_bank' AS tabelas, DATE_ADD(CURRENT_DATE(), INTERVAL 1 YEAR) AS atualizacao --FROM sandbox_analytics.broker_tb_dim_bank
UNION ALL
SELECT 'sandbox_analytics.dim_channel' AS tabelas, DATE_ADD(CURRENT_DATE(), INTERVAL 1 YEAR) AS atualizacao --FROM sandbox_analytics.broker_tb_dim_channel
UNION ALL
SELECT 'sandbox_analytics.dim_institution' AS tabelas, DATE_ADD(CURRENT_DATE(), INTERVAL 1 YEAR) AS atualizacao --FROM sandbox_analytics.broker_tb_dim_institution
UNION ALL


-------------------df_bsc
SELECT 'sandbox_planejamento_estrategico.tb_bsc_dt_atualizacao' AS tabelas, MAX(data_ref) AS atualizacao FROM sandbox_planejamento_estrategico.tb_bsc_dt_atualizacao
UNION ALL
SELECT 'sandbox_planejamento_estrategico.tb_bsc_real_cli' AS tabelas, MAX(dt_atualizacao) AS atualizacao FROM sandbox_planejamento_estrategico.tb_bsc_real_cli
UNION ALL
SELECT 'sandbox_planejamento_estrategico.tb_bsc_target_fin' AS tabelas, MAX(dt_atualizacao) AS atualizacao FROM sandbox_planejamento_estrategico.tb_bsc_target_fin
UNION ALL
SELECT 'sandbox_planejamento_estrategico.tb_bsc_target_oper' AS tabelas, MAX(dt_atualizacao) AS atualizacao FROM sandbox_planejamento_estrategico.tb_bsc_target_oper
UNION ALL
SELECT 'sandbox_planejamento_estrategico.tb_f_bsc_real_fin' AS tabelas, MAX(data_ref) AS atualizacao FROM sandbox_planejamento_estrategico.tb_f_bsc_real_fin
UNION ALL
SELECT 'sandbox_planejamento_estrategico.tb_f_bsc_real_oper' AS tabelas, MAX(dt_atualizacao) AS atualizacao FROM sandbox_planejamento_estrategico.tb_f_bsc_real_oper
UNION ALL

SELECT 'sandbox_planejamento_estrategico.tb_d_bsc_hierarquia' AS tabelas, DATE_ADD(CURRENT_DATE(), INTERVAL 1 YEAR) AS atualizacao --FROM sandbox_planejamento_estrategico.tb_d_bsc_hierarquia
UNION ALL


-------------------df_cadastro_nova_completa
SELECT 'sandbox_planejamento_estrategico.h_tb_01_cadastro_nova' AS tabelas, MAX(merchant_boarding_date) AS atualizacao FROM sandbox_planejamento_estrategico.h_tb_01_cadastro_nova
UNION ALL


-------------------df_cef
SELECT 'sandbox_analytics.caixaatacado_tb_dim_merchant' AS tabelas, MAX(merchant_boarding_date) AS atualizacao FROM sandbox_analytics.caixaatacado_tb_dim_merchant
UNION ALL
SELECT 'sandbox_analytics.caixaatacado_tb_dim_merchant_logical_terminal' AS tabelas, MAX(date_last_change) AS atualizacao FROM sandbox_analytics.caixaatacado_tb_dim_merchant_logical_terminal
UNION ALL
SELECT 'sandbox_analytics.caixaatacado_tb_fact_boarding' AS tabelas, MAX(boarding_date) AS atualizacao FROM sandbox_analytics.caixaatacado_tb_fact_boarding
UNION ALL
SELECT 'sandbox_analytics.caixaatacado_tb_fact_merchant_billing_terminal' AS tabelas, MAX(sales_date) AS atualizacao FROM sandbox_analytics.caixaatacado_tb_fact_merchant_billing_terminal
UNION ALL
SELECT 'sandbox_analytics.caixaatacado_tb_fact_prepayment' AS tabelas, MAX(data_ref) AS atualizacao FROM sandbox_analytics.caixaatacado_tb_fact_prepayment
UNION ALL
SELECT 'sandbox_analytics.caixalotericas_tb_dim_merchant' AS tabelas, MAX(merchant_boarding_date) AS atualizacao FROM sandbox_analytics.caixalotericas_tb_dim_merchant
UNION ALL
SELECT 'sandbox_analytics.caixalotericas_tb_dim_merchant_logical_terminal' AS tabelas, MAX(date_last_change) AS atualizacao FROM sandbox_analytics.caixalotericas_tb_dim_merchant_logical_terminal
UNION ALL
SELECT 'sandbox_analytics.caixalotericas_tb_fact_merchant_billing_terminal' AS tabelas, MAX(sales_date) AS atualizacao FROM sandbox_analytics.caixalotericas_tb_fact_merchant_billing_terminal
UNION ALL
SELECT 'sandbox_analytics.caixamonit_tb_contatados' AS tabelas, MAX(dt_ref_alerta) AS atualizacao FROM sandbox_analytics.caixamonit_tb_contatados
UNION ALL
SELECT 'sandbox_analytics.caixamonit_tb_monitoramento_inat' AS tabelas, MAX(dt_atualizacao) AS atualizacao FROM sandbox_analytics.caixamonit_tb_monitoramento_inat
UNION ALL
SELECT 'sandbox_analytics.caixamonit_tb_monitoramento_na' AS tabelas, MAX(dt_atualizacao) AS atualizacao FROM sandbox_analytics.caixamonit_tb_monitoramento_na
UNION ALL
SELECT 'sandbox_analytics.caixamonit_tb_monitoramento_oc' AS tabelas, MAX(dt_atualizacao) AS atualizacao FROM sandbox_analytics.caixamonit_tb_monitoramento_oc
UNION ALL
SELECT 'sandbox_analytics.caixamonit_tb_monitoramento_qf' AS tabelas, MAX(dt_atualizacao) AS atualizacao FROM sandbox_analytics.caixamonit_tb_monitoramento_qf
UNION ALL
SELECT 'sandbox_analytics.churn_tb_lista_clientes_caixa' AS tabelas, MAX(dt_ref_alerta) AS atualizacao FROM sandbox_analytics.churn_tb_lista_clientes_caixa
UNION ALL
SELECT 'sandbox_analytics.churn_tb_lista_clientes_caixa_agg' AS tabelas, MAX(dt_ref_alerta) AS atualizacao FROM sandbox_analytics.churn_tb_lista_clientes_caixa_agg
UNION ALL
SELECT 'sandbox_planejamento_estrategico.h_tb_07_tecnologia_equipamento' AS tabelas, MAX(busi_dt) AS atualizacao FROM sandbox_planejamento_estrategico.h_tb_07_tecnologia_equipamento
UNION ALL
SELECT 'tb_ap_caixa_pjmais_cadastro' AS tabelas, MAX(merchant_boarding_date) AS atualizacao FROM sandbox_planejamento_estrategico.tb_ap_caixa_pjmais_cadastro
UNION ALL
SELECT 'tb_ap_caixa_pjmais_transacoes' AS tabelas, MAX(data_ref) AS atualizacao FROM sandbox_planejamento_estrategico.tb_ap_caixa_pjmais_transacoes
UNION ALL
SELECT 'tb_ap_cubo_caixa' AS tabelas, MAX(data_ref) AS atualizacao FROM sandbox_planejamento_estrategico.tb_ap_cubo_caixa
UNION ALL
SELECT 'tb_ap_cubo_caixa_cadastro' AS tabelas, MAX(dt_boarding) AS atualizacao FROM sandbox_planejamento_estrategico.tb_ap_cubo_caixa_cadastro
UNION 
SELECT 'sandbox_planejamento_estrategico.tb_ap_cef_inativos' AS tabelas, MAX(dt_boarding) AS atualizacao FROM sandbox_planejamento_estrategico.tb_ap_cubo_caixa_cadastro
UNION ALL
SELECT 'sandbox_planejamento_estrategico.tb_ap_cef_nunca_ativados' AS tabelas, MAX(dt_boarding) AS atualizacao FROM sandbox_planejamento_estrategico.tb_ap_cubo_caixa_cadastro
UNION ALL
SELECT 'sandbox_analytics.caixaatacado_tb_dim_product' AS tabelas, DATE_ADD(CURRENT_DATE(), INTERVAL 1 YEAR) AS atualizacao --FROM sandbox_analytics.caixaatacado_tb_dim_product
UNION ALL
SELECT 'sandbox_analytics.caixaatacado_tb_dim_relationship_channel_act' AS tabelas, DATE_ADD(CURRENT_DATE(), INTERVAL 1 YEAR) AS atualizacao --FROM sandbox_analytics.caixaatacado_tb_dim_relationship_channel_act
UNION ALL
SELECT 'sandbox_analytics.caixalotericas_tb_dim_cnpj_pgw' AS tabelas, DATE_ADD(CURRENT_DATE(), INTERVAL 1 YEAR) AS atualizacao-- FROM sandbox_analytics.caixalotericas_tb_dim_cnpj_pgw
UNION ALL
SELECT 'sandbox_analytics.caixalotericas_tb_dim_geography' AS tabelas, DATE_ADD(CURRENT_DATE(), INTERVAL 1 YEAR) AS atualizacao --FROM sandbox_analytics.caixalotericas_tb_dim_geography
UNION ALL
SELECT 'sandbox_analytics.caixalotericas_tb_dim_product' AS tabelas, DATE_ADD(CURRENT_DATE(), INTERVAL 1 YEAR) AS atualizacao --FROM sandbox_analytics.caixalotericas_tb_dim_product
UNION ALL
SELECT 'sandbox_analytics.caixalotericas_tb_dim_relationship_channel_act' AS tabelas, DATE_ADD(CURRENT_DATE(), INTERVAL 1 YEAR) AS atualizacao --FROM sandbox_analytics.caixalotericas_tb_dim_relationship_channel_act
UNION 
SELECT 'sandbox_analytics.caixamonit_dim_modelo' AS tabelas, DATE_ADD(CURRENT_DATE(), INTERVAL 1 YEAR) AS atualizacao --FROM sandbox_analytics.caixamonit_dim_modelo
UNION ALL
SELECT 'dominio.estado' AS tabelas, DATE_ADD(CURRENT_DATE(), INTERVAL 1 YEAR) AS atualizacao --FROM dominio.estado
UNION ALL
SELECT 'dominio.mcc' AS tabelas, DATE_ADD(CURRENT_DATE(), INTERVAL 1 YEAR) AS atualizacao --FROM dominio.mcc
UNION ALL
SELECT 'sandbox_planejamento_estrategico.tb_ap_d_segmento_presumido_valores' AS tabelas, DATE_ADD(CURRENT_DATE(), INTERVAL 1 YEAR) AS atualizacao --FROM sandbox_planejamento_estrategico.tb_ap_d_segmento_presumido_valores
UNION ALL
--hierarquia_caixa in sharepoint
--f_metas in sharepoint
--dim_calendar in df_bin


-------------------df_clover
SELECT 'sandbox_analytics.clover_fact_faturamento' AS tabelas, MAX(data_ref) AS atualizacao FROM sandbox_analytics.clover_fact_faturamento
UNION ALL
SELECT 'sandbox_analytics.clover_tb_dim_cadastro' AS tabelas, MAX(merchant_installation_date) AS atualizacao FROM sandbox_analytics.clover_tb_dim_cadastro
UNION ALL
SELECT 'sandbox_analytics.clover_tb_dim_calendar' AS tabelas, MAX(d) AS atualizacao FROM sandbox_analytics.clover_tb_dim_calendar
UNION ALL

SELECT 'sandbox_analytics.clover_tb_dim_devic_type' AS tabelas, DATE_ADD(CURRENT_DATE(), INTERVAL 1 YEAR) AS atualizacao --FROM sandbox_analytics.clover_tb_dim_devic_type
UNION ALL
SELECT 'sandbox_analytics.clover_tb_dim_relationship' AS tabelas, DATE_ADD(CURRENT_DATE(), INTERVAL 1 YEAR) AS atualizacao --FROM sandbox_analytics.clover_tb_dim_relationship
UNION ALL


-------------------df_corporativo_analitico
SELECT 'sandbox_planejamento_estrategico.h_tb_datas' AS tabelas, MAX(data_ref) AS atualizacao FROM sandbox_planejamento_estrategico.h_tb_datas
UNION ALL
SELECT 'sandbox_planejamento_estrategico.tb_d_cadastro' AS tabelas, MAX(merchant_boarding_date) AS atualizacao FROM sandbox_planejamento_estrategico.desenv_tb_d_cadastro
UNION ALL
SELECT 'sandbox_planejamento_estrategico.vw_ap_faturamento_corporativo' AS tabelas, MAX(data_ref) AS atualizacao FROM sandbox_planejamento_estrategico.vw_ap_faturamento_corporativo
UNION ALL
SELECT 'sandbox_planejamento_estrategico.vw_ap_terminais_corporativo' AS tabelas, MAX(busi_dt) AS atualizacao FROM sandbox_planejamento_estrategico.vw_ap_terminais_corporativo
UNION ALL
--vw_ap_cadastro_corporativo in df_bin
--vw_ap_receitas_corporativo in df_bin


-------------------df_cubo_bin
SELECT 'sandbox_planejamento_estrategico.tb_ap_cubo_bin_cadastro' AS tabelas, MAX(dt_boarding) AS atualizacao FROM sandbox_planejamento_estrategico.tb_ap_cubo_bin_cadastro
UNION ALL
SELECT 'sandbox_planejamento_estrategico.dates_cadastro' AS tabelas, MAX(dt_boarding) AS atualizacao FROM sandbox_planejamento_estrategico.tb_ap_cubo_bin_cadastro
UNION ALL
--tb_ap_cubo_bin in anomes
--tb_dates in anomes


-------------------df_fat_merchant_metrics
SELECT 'sandbox_planejamento_estrategico.vw_fat_merchant_metrics' AS tabelas, MAX(data_ref) AS atualizacao FROM sandbox_planejamento_estrategico.vw_fat_merchant_metrics
UNION ALL


-------------------df_dominios
SELECT 'razao_chargeback' AS tabelas, DATE_ADD(CURRENT_DATE(), INTERVAL 1 YEAR) AS atualizacao --FROM dominio.razao_chargeback
UNION ALL
SELECT 'tb_d_mcc' AS tabelas, DATE_ADD(CURRENT_DATE(), INTERVAL 1 YEAR) AS atualizacao --FROM dominio.mcc
UNION ALL
--categoria_autorizacao in df_adquirencia
--codigo_resposta_autorizacao in df_adquirencia
--tipo_cartao in df_adquirencia
--estado in df_cef


-------------------df_fepas_hubcard
SELECT 'sandbox_analytics.se_fepascard_tb_fact_transacao' AS tabelas, MAX(data_transacao) AS atualizacao FROM sandbox_analytics.se_fepascard_tb_fact_transacao
UNION ALL
SELECT 'sandbox_analytics.se_fepashub_tb_fact_transacao' AS tabelas, MAX(data_transacao) AS atualizacao FROM sandbox_analytics.se_fepashub_tb_fact_transacao
UNION ALL

SELECT 'sandbox_analytics.se_fepascard_tb_dim_bandeiras' AS tabelas, DATE_ADD(CURRENT_DATE(), INTERVAL 1 YEAR) AS atualizacao --FROM sandbox_analytics.se_fepascard_tb_dim_bandeiras
UNION ALL
SELECT 'sandbox_analytics.se_fepascard_tb_dim_rede_destino' AS tabelas, DATE_ADD(CURRENT_DATE(), INTERVAL 1 YEAR) AS atualizacao --FROM sandbox_analytics.se_fepascard_tb_dim_rede_destino
UNION ALL
SELECT 'sandbox_analytics.se_fepashub_tb_dim_rede_captura' AS tabelas, DATE_ADD(CURRENT_DATE(), INTERVAL 1 YEAR) AS atualizacao --FROM sandbox_analytics.se_fepashub_tb_dim_rede_captura
UNION ALL
SELECT 'sandbox_analytics.se_fepashub_tb_dim_status_transacao' AS tabelas, DATE_ADD(CURRENT_DATE(), INTERVAL 1 YEAR) AS atualizacao --FROM sandbox_analytics.se_fepashub_tb_dim_status_transacao
UNION ALL
SELECT 'sandbox_analytics.se_fepashub_tb_dim_tipo_mensagem' AS tabelas, DATE_ADD(CURRENT_DATE(), INTERVAL 1 YEAR) AS atualizacao --FROM sandbox_analytics.se_fepashub_tb_dim_tipo_mensagem
UNION ALL
SELECT 'sandbox_analytics.se_fepashub_tb_dim_tipo_voucher' AS tabelas, DATE_ADD(CURRENT_DATE(), INTERVAL 1 YEAR) AS atualizacao --FROM sandbox_analytics.se_fepashub_tb_dim_tipo_voucher
UNION ALL


-------------------df_latam_transacoes
SELECT 'sandbox_planejamento_estrategico.dim_latam_merchant' AS tabelas, MAX(boarding_date) AS atualizacao FROM sandbox_planejamento_estrategico.dim_latam_merchant
UNION ALL

SELECT 'sandbox_planejamento_estrategico.dim_latam_capture_method' AS tabelas, DATE_ADD(CURRENT_DATE(), INTERVAL 1 YEAR) AS atualizacao --FROM sandbox_planejamento_estrategico.dim_latam_capture_method
UNION ALL
SELECT 'sandbox_planejamento_estrategico.dim_latam_currency' AS tabelas, DATE_ADD(CURRENT_DATE(), INTERVAL 1 YEAR) AS atualizacao --FROM sandbox_planejamento_estrategico.dim_latam_currency
UNION ALL
SELECT 'sandbox_planejamento_estrategico.dim_latam_institution' AS tabelas, DATE_ADD(CURRENT_DATE(), INTERVAL 1 YEAR) AS atualizacao --FROM sandbox_planejamento_estrategico.dim_latam_institution
UNION ALL
SELECT 'sandbox_planejamento_estrategico.dim_latam_product' AS tabelas, DATE_ADD(CURRENT_DATE(), INTERVAL 1 YEAR) AS atualizacao --FROM sandbox_planejamento_estrategico.dim_latam_product
UNION ALL
SELECT 'sandbox_planejamento_estrategico.dim_latam_service' AS tabelas, DATE_ADD(CURRENT_DATE(), INTERVAL 1 YEAR) AS atualizacao --FROM sandbox_planejamento_estrategico.dim_latam_service
UNION ALL
SELECT 'sandbox_planejamento_estrategico.dim_latam_tran_type' AS tabelas, DATE_ADD(CURRENT_DATE(), INTERVAL 1 YEAR) AS atualizacao --FROM sandbox_planejamento_estrategico.dim_latam_tran_type
UNION ALL
--SELECT 'sandbox_planejamento_estrategico.latam_f_gnrc_transactions' AS tabelas, DATE_ADD(CURRENT_DATE(), INTERVAL 1 YEAR) AS atualizacao --FROM sandbox_planejamento_estrategico.latam_f_gnrc_transactions
--UNION ALL


-------------------df_log_cargas
SELECT 'sandbox_planejamento_estrategico.tb_ap_log_carga' AS tabelas, MAX(dt_ult_ref) AS atualizacao FROM sandbox_planejamento_estrategico.tb_ap_log_cargas
UNION ALL


-------------------df_sexpress
SELECT 'sandbox_analytics.sexpress_tb_crm_account' AS tabelas, MAX(created) AS atualizacao FROM sandbox_analytics.sexpress_tb_crm_account
UNION ALL

SELECT 'sexpress_tb_estado_transacao' AS tabelas, DATE_ADD(CURRENT_DATE(), INTERVAL 1 YEAR) AS atualizacao --FROM sandbox_analytics.sexpress_tb_estado_transacao
UNION ALL
SELECT 'sexpress_tb_produtos_transacional' AS tabelas, DATE_ADD(CURRENT_DATE(), INTERVAL 1 YEAR) AS atualizacao --FROM sandbox_analytics.sexpress_tb_produtos_transacional
UNION ALL
SELECT 'sexpress_tb_rede_autorizadora_transacional' AS tabelas, DATE_ADD(CURRENT_DATE(), INTERVAL 1 YEAR) AS atualizacao --FROM sandbox_analytics.sexpress_tb_rede_autorizadora_transacional
UNION ALL
SELECT 'sexpress_tb_tipo_produto_transacional' AS tabelas, DATE_ADD(CURRENT_DATE(), INTERVAL 1 YEAR) AS atualizacao --FROM sandbox_analytics.sexpress_tb_tipo_produto_transacional
UNION ALL
--SELECT 'dim_contas' AS tabelas, MAX(date_column) AS atualizacao FROM dim_contas
--UNION ALL
--SELECT 'dim_parceiros' AS tabelas, MAX(date_column) AS atualizacao FROM dim_parceiros
--UNION AL


-------------------df_sexpress_notasfiscais
SELECT 'sandbox_analytics.sexpress_tb_notasfiscais_espelho' AS tabelas, MAX(data_emissao) AS atualizacao FROM sandbox_analytics.sexpress_tb_notasfiscais_espelho
UNION ALL
SELECT 'sandbox_analytics.f_espelho' AS tabelas, MAX(data_emissao) AS atualizacao FROM sandbox_analytics.sexpress_tb_notasfiscais_espelho
UNION ALL
SELECT 'sandbox_analytics.d_periodo' AS tabelas, MAX(data_emissao) AS atualizacao FROM sandbox_analytics.sexpress_tb_notasfiscais_espelho
UNION ALL
SELECT 'sandbox_analytics.tb_canceladas' AS tabelas, MAX(data_emissao) AS atualizacao FROM sandbox_analytics.sexpress_tb_notasfiscais_espelho
UNION ALL
SELECT 'sandbox_analytics.sexpress_tb_notasfiscais_canceladas' AS tabelas, MAX(data_emissao) AS atualizacao FROM sandbox_analytics.sexpress_tb_notasfiscais_espelho
UNION ALL
SELECT 'sandbox_analytics.sexpress_tb_notasfiscais_eventual' AS tabelas, MAX(data_pagamento) AS atualizacao FROM sandbox_analytics.sexpress_tb_notasfiscais_eventual
UNION ALL

SELECT 'sandbox_analytics.sexpress_tb_notasfiscais_canal' AS tabelas, DATE_ADD(CURRENT_DATE(), INTERVAL 1 YEAR) AS atualizacao --FROM sandbox_analytics.sexpress_tb_notasfiscais_canal
UNION ALL
SELECT 'sandbox_analytics.sexpress_tb_notasfiscais_classificacao' AS tabelas, DATE_ADD(CURRENT_DATE(), INTERVAL 1 YEAR) AS atualizacao --FROM sandbox_analytics.sexpress_tb_notasfiscais_classificacao
UNION ALL
SELECT 'sandbox_analytics.sexpress_tb_notasfiscais_distribuicao' AS tabelas, DATE_ADD(CURRENT_DATE(), INTERVAL 1 YEAR) AS atualizacao --FROM sandbox_analytics.sexpress_tb_notasfiscais_distribuicao
UNION ALL
--sexpress_tb_notasfiscais_kpis in anomes
--sexpress_tb_notasfiscais_provisao in anomes
--tb_provisao in anomes
--tb_estorno_provisao in anomes
--isv in sharepoint
--Executivos in sharepoint
--excecao_tipo_cobranca in sharepoint


-------------------df_sexpress_transacoes
SELECT 'sandbox_analytics.sexpress_tb_transacional' AS tabelas, MAX(dt_transaction) AS atualizacao FROM sandbox_analytics.sexpress_tb_transacional
UNION ALL
SELECT 'sandbox_analytics.sexpress_dim_produto_macro' AS tabelas, MAX(dt_transaction) AS atualizacao FROM sandbox_analytics.sexpress_tb_transacional
UNION ALL
SELECT 'sandbox_analytics.sexpress_tb_atual' AS tabelas, MAX(dt_transaction) AS atualizacao FROM sandbox_analytics.sexpress_tb_transacional
UNION ALL
SELECT 'sandbox_analytics.sexpress_tb_consolidado' AS tabelas, MAX(dt_transaction) AS atualizacao FROM sandbox_analytics.sexpress_tb_transacional
UNION ALL

SELECT 'sandbox_analytics.sexpress_dim_cliente' AS tabelas, DATE_ADD(CURRENT_DATE(), INTERVAL 1 YEAR) AS atualizacao --FROM sandbox_analytics.sexpress_dim_cliente
UNION ALL
SELECT 'sandbox_analytics.sexpress_dim_cnpj' AS tabelas, DATE_ADD(CURRENT_DATE(), INTERVAL 1 YEAR) AS atualizacao --FROM sandbox_analytics.sexpress_dim_cnpj
UNION ALL
SELECT 'sandbox_analytics.sexpress_dim_integrador' AS tabelas, DATE_ADD(CURRENT_DATE(), INTERVAL 1 YEAR) AS atualizacao --FROM sandbox_analytics.sexpress_dim_integrador
UNION ALL
SELECT 'sandbox_analytics.sexpress_tb_serpro_cnaes' AS tabelas, DATE_ADD(CURRENT_DATE(), INTERVAL 1 YEAR) AS atualizacao --FROM sandbox_analytics.sexpress_tb_serpro_cnaes
UNION ALL
SELECT 'sandbox_analytics.sexpress_tb_estado_transacao' AS tabelas, DATE_ADD(CURRENT_DATE(), INTERVAL 1 YEAR) AS atualizacao --FROM sandbox_analytics.sexpress_tb_estado_transacao
UNION ALL
SELECT 'sandbox_analytics.sexpress_tb_produtos_transacional' AS tabelas, DATE_ADD(CURRENT_DATE(), INTERVAL 1 YEAR) AS atualizacao --FROM sexpress_tb_produtos_transacional
UNION ALL
SELECT 'sandbox_analytics.sexpress_tb_rede_autorizadora_transacional' AS tabelas, DATE_ADD(CURRENT_DATE(), INTERVAL 1 YEAR) AS atualizacao --FROM sandbox_analytics.sexpress_tb_rede_autorizadora_transacional
UNION ALL
-- sexpress_tb_tipo_produto_transacional in df_sexpress
-- sexpress_tb_crm_account in df_sexpress


-------------------df_smartpos
SELECT 'sandbox_analytics.smartpos_tb_fact_sitef_caixa' AS tabelas, MAX(datatrans) AS atualizacao FROM sandbox_analytics.smartpos_tb_fact_sitef_caixa
UNION ALL
SELECT 'sandbox_analytics.smartpos_tb_fact_sitef_sicredi' AS tabelas, MAX(datatrans) AS atualizacao FROM sandbox_analytics.smartpos_tb_fact_sitef_sicredi
UNION ALL
SELECT 'sandbox_planejamento_estrategico.tb_smartpos_dim_merchant_n' AS tabelas, MAX(merchant_boarding_date) AS atualizacao FROM sandbox_planejamento_estrategico.tb_smartpos_dim_merchant_n
UNION ALL
SELECT 'sandbox_planejamento_estrategico.tb_smartpos_dim_merchants' AS tabelas, MAX(merchant_boarding_date) AS atualizacao FROM sandbox_planejamento_estrategico.tb_smartpos_dim_merchants
UNION ALL
SELECT 'sandbox_planejamento_estrategico.tb_smartpos_fact_boarding' AS tabelas, MAX(merchant_boarding_date) AS atualizacao FROM sandbox_planejamento_estrategico.tb_smartpos_fact_boarding
UNION ALL
SELECT 'sandbox_planejamento_estrategico.tb_smartpos_fact_dados_estatisticos' AS tabelas, MAX(dt_ref) AS atualizacao FROM sandbox_planejamento_estrategico.tb_smartpos_fact_dados_estatisticos
UNION ALL
SELECT 'sandbox_planejamento_estrategico.tb_smartpos_fact_faturamento_new' AS tabelas, MAX(capture_date) AS atualizacao FROM sandbox_planejamento_estrategico.tb_smartpos_fact_faturamento_new
UNION ALL
SELECT 'sandbox_planejamento_estrategico.tb_smartpos_fact_rent' AS tabelas, MAX(data_ref) AS atualizacao FROM sandbox_planejamento_estrategico.tb_smartpos_fact_rent
UNION ALL

SELECT 'sandbox_analytics.smartpos_tb_dim_clientes_apt' AS tabelas, DATE_ADD(CURRENT_DATE(), INTERVAL 1 YEAR) AS atualizacao --FROM sandbox_analytics.smartpos_tb_dim_clientes_apt
UNION ALL


-------------------df_tefisv
SELECT 'sandbox_analytics.tefisv_tb_dim_calendar' AS tabelas, MAX(d) AS atualizacao FROM sandbox_analytics.bintefisv_tb_dim_calendar
UNION ALL
SELECT 'sandbox_analytics.tefisv_tb_dim_merchant' AS tabelas, MAX(merchant_boarding_date) AS atualizacao FROM sandbox_analytics.tefisv_tb_dim_merchant
UNION ALL
SELECT 'sandbox_analytics.tefisv_tb_dim_merchant_logical_terminal' AS tabelas, MAX(date_last_change) AS atualizacao FROM sandbox_analytics.tefisv_tb_dim_merchant_logical_terminal
UNION ALL
SELECT 'sandbox_analytics.tefisv_tb_fact_boarding' AS tabelas, MAX(boarding_date) AS atualizacao FROM sandbox_analytics.tefisv_tb_fact_boarding
UNION ALL
SELECT 'sandbox_analytics.tefisv_tb_fact_merchant_billing_terminal' AS tabelas, MAX(capture_date) AS atualizacao FROM sandbox_analytics.tefisv_tb_fact_merchant_billing_terminal
UNION ALL
SELECT 'sandbox_analytics.tefisv_tb_fact_prepayment' AS tabelas, MAX(data_ref) AS atualizacao FROM sandbox_analytics.tefisv_tb_fact_prepayment
UNION ALL

SELECT 'sandbox_analytics.tefisv_tb_dim_product' AS tabelas, DATE_ADD(CURRENT_DATE(), INTERVAL 1 YEAR) AS atualizacao --FROM sandbox_analytics.tefisv_tb_dim_product
UNION ALL
SELECT 'sandbox_analytics.tefisv_tb_dim_relationship_channel_act' AS tabelas, DATE_ADD(CURRENT_DATE(), INTERVAL 1 YEAR) AS atualizacao --FROM sandbox_analytics.tefisv_tb_dim_relationship_channel_act
UNION ALL


-------------------df_ap_sicredi
SELECT 'tb_ap_antecip_' AS tabelas, MAX(event_dt) AS atualizacao FROM sandbox_planejamento_estrategico.tb_ap_antecip
UNION ALL
SELECT 'tb_ap_antecip_sic' AS tabelas, MAX(event_dt) AS atualizacao FROM sandbox_planejamento_estrategico.tb_ap_antecip
UNION ALL
SELECT 'tb_ap_faturamento_sic' AS tabelas, MAX(event_dt) AS atualizacao FROM sandbox_planejamento_estrategico.tb_ap_faturamento
UNION ALL
SELECT 'tb_ap_tecnologias_sic' AS tabelas, MAX(event_dt) AS atualizacao FROM sandbox_planejamento_estrategico.tb_ap_tecnologias
UNION ALL
SELECT 'tb_ap_volumetrias_vendas_sic' AS tabelas, MAX(event_dt) AS atualizacao FROM sandbox_planejamento_estrategico.tb_ap_volumetrias_vendas
UNION ALL
--h_vw_canais in df_adquirencia
--tb_ap_antecip in df_vendas_faturamento
--tb_ap_tecnologias in df_vendas_faturamento
--tb_referencia in df_vendas_faturamento
--tb_ap_faturamento in df_vendas_faturamento


-------------------df_sexpress_temp
SELECT 'sandbox_planejamento_estrategico.transacional_bf_se' AS tabelas, MAX(data_trn) AS atualizacao FROM sandbox_planejamento_estrategico.transacional_bf_se
UNION ALL


-------------------df_FLEX
SELECT 'sandbox_planejamento_estrategico.d_cadastro' AS tabelas, MAX(merchant_boarding_date) AS atualizacao FROM sandbox_planejamento_estrategico.h_tb_01_cadastro_nova
UNION ALL
SELECT 'sandbox_planejamento_estrategico.f_antecip' AS tabelas, MAX(data_ref) AS atualizacao FROM h_tb_04_antecipacao_pura
UNION ALL
SELECT 'sandbox_planejamento_estrategico.f_faturamento' AS tabelas, MAX(dt_ref) AS atualizacao FROM sandbox_planejamento_estrategico.tb_flex_faturamento
UNION ALL
SELECT 'sandbox_planejamento_estrategico.f_volumetrias_vendas' AS tabelas, MAX(event_dt) AS atualizacao FROM sandbox_planejamento_estrategico.tb_ap_volumetrias_vendas
UNION ALL


-------------------df_cubo_consolidado
SELECT 'tb_d_hierarquia' AS tabelas, DATE_ADD(CURRENT_DATE(), INTERVAL 1 YEAR) AS atualizacao --FROM sandbox_planejamento_estrategico.tb_d_hierarquia
UNION ALL
--categoria_autorizacao in df_adquirencia
--codigo_resposta_autorizacao in df_adquirencia
--tipo_cartao in df_adquirencia
--tipo_mensagem_autorizacao in df_adquirencia
--tipo_transacao_autorizacao in df_adquirencia
--tb_ap_aluguel_consolidado in anomes df_adquirencia
--tb_ap_antecip_consolidado in anomes df_adquirencia
--tb_ap_autorizacao_consolidado in anomes df_adquirencia
--tb_ap_faturamento_consolidado in anomes df_adquirencia
--tb_ap_terminais_consolidado in anomes df_adquirencia
--tb_ap_volumetrias_consolidado in anomes df_adquirencia
--tb_d_tipo_terminal in anomes df_adquirencia
--tb_ap_antecip_consolidado_dev in anomes
--df_latam_transacoes in df_latam_transacoes
--stage_aluguel in anomes
--stage_faturamento in anomes
--stage_volumetrias in anomes
--tb_d_anomes in anomes


-------------------df_psp_fiserv
SELECT 'sandbox_analytics.account' AS tabelas, MAX(created_at) AS atualizacao FROM sandbox_analytics.tb_ap_psp_fiserv_account
UNION ALL
SELECT 'sandbox_analytics.auth' AS tabelas, MAX(created_at) AS atualizacao FROM sandbox_analytics.tb_ap_psp_fiserv_auth
UNION ALL
SELECT 'sandbox_analytics.charge' AS tabelas, MAX(created_at) AS atualizacao FROM sandbox_analytics.tb_ap_psp_fiserv_charge
UNION ALL
SELECT 'sandbox_analytics.liquidation' AS tabelas, MAX(created_at) AS atualizacao FROM sandbox_analytics.tb_ap_psp_fiserv_liquidation
UNION ALL
SELECT 'sandbox_analytics.reverse' AS tabelas, MAX(created_at) AS atualizacao FROM sandbox_analytics.tb_ap_psp_fiserv_reverse
UNION ALL

SELECT 'sandbox_analytics.resposta_fepas' AS tabelas, DATE_ADD(CURRENT_DATE(), INTERVAL 1 YEAR) AS atualizacao --FROM sandbox_analytics.tb_ap_psp_fiserv_resposta
UNION ALL
SELECT 'sandbox_planejamento_estrategico.contas' AS tabelas, DATE_ADD(CURRENT_DATE(), INTERVAL 1 YEAR) AS atualizacao --FROM sandbox_planejamento_estrategico.sexpress_tb_serpro_cnaes
UNION ALL


-------------------df_briefing_crm
SELECT 'sandbox_planejamento_estrategico.df_briefing_crm' AS tabelas, MAX(data_campanha) AS atualizacao FROM sandbox_planejamento_estrategico.tb_crm_sfmc_retorno_dash

),


mapeamento_tabelas_anomes AS (
-------------------anomes

-------------------df_cubo_consolidado
SELECT 'sandbox_planejamento_estrategico.tb_ap_antecip_consolidado_dev' AS tabelas, CAST(CONCAT(LEFT(CAST(MAX(anomes) AS STRING),4),'-',RIGHT(CAST(MAX(anomes) AS STRING),2),'-','01') AS TIMESTAMP) AS atualizacao FROM sandbox_planejamento_estrategico.tb_ap_antecip_consolidado_dev
UNION ALL
SELECT 'sandbox_planejamento_estrategico.stage_aluguel' AS tabelas, CAST(CONCAT(LEFT(CAST(MAX(anomes) AS STRING),4),'-',RIGHT(CAST(MAX(anomes) AS STRING),2),'-','01') AS TIMESTAMP) AS atualizacao FROM sandbox_planejamento_estrategico.tb_ap_aluguel_consolidado
UNION ALL
SELECT 'sandbox_planejamento_estrategico.stage_faturamento' AS tabelas, CAST(CONCAT(LEFT(CAST(MAX(anomes) AS STRING),4),'-',RIGHT(CAST(MAX(anomes) AS STRING),2),'-','01') AS TIMESTAMP) AS atualizacao FROM sandbox_planejamento_estrategico.tb_ap_faturamento_consolidado
UNION ALL
SELECT 'sandbox_planejamento_estrategico.stage_volumetrias' AS tabelas, CAST(CONCAT(LEFT(CAST(MAX(anomes) AS STRING),4),'-',RIGHT(CAST(MAX(anomes) AS STRING),2),'-','01') AS TIMESTAMP) AS atualizacao FROM sandbox_planejamento_estrategico.tb_ap_volumetrias_consolidado
UNION ALL
SELECT 'sandbox_planejamento_estrategico.stage_atencip' AS tabelas, CAST(CONCAT(LEFT(CAST(MAX(anomes) AS STRING),4),'-',RIGHT(CAST(MAX(anomes) AS STRING),2),'-','01') AS TIMESTAMP) AS atualizacao FROM sandbox_planejamento_estrategico.tb_ap_antecip_consolidado
UNION ALL
SELECT 'sandbox_planejamento_estrategico.tb_d_anomes' AS tabelas, CAST(CONCAT(LEFT(CAST(MAX(anomes) AS STRING),4),'-',RIGHT(CAST(MAX(anomes) AS STRING),2),'-','01') AS TIMESTAMP) AS atualizacao FROM sandbox_planejamento_estrategico.tb_ap_faturamento_consolidado
UNION ALL


-------------------adhoc
SELECT 'sandbox_planejamento_estrategico.adhoc_report_fin_caixa_novo' AS tabelas, CAST(CONCAT(LEFT(CAST(MAX(anomes) AS STRING),4),'-',RIGHT(CAST(MAX(anomes) AS STRING),2),'-','01') AS TIMESTAMP) AS atualizacao FROM sandbox_planejamento_estrategico.adhocs_rel_finan_caixa_novo
UNION ALL
SELECT 'sandbox_analytics.adhoc_grupo_economico' AS tabelas, CAST(CONCAT(LEFT(CAST(MAX(anomes) AS STRING),4),'-',RIGHT(CAST(MAX(anomes) AS STRING),2),'-','01') AS TIMESTAMP) AS atualizacao FROM sandbox_analytics.adhoc_grupo_economico
UNION ALL


-------------------df_auth_corporativo
SELECT 'sandbox_analytics.auth_tb_dim_cadastro' AS tabelas, CAST(CONCAT(LEFT(CAST(MAX(anomes) AS STRING),4),'-',RIGHT(CAST(MAX(anomes) AS STRING),2),'-','01') AS TIMESTAMP) AS atualizacao FROM sandbox_analytics.auth_tb_dim_cadastro
UNION ALL


-------------------df_cubo_bin
SELECT 'sandbox_planejamento_estrategico.tb_ap_cubo_bin' AS tabelas, CAST(CONCAT(LEFT(CAST(MAX(anomes) AS STRING),4),'-',RIGHT(CAST(MAX(anomes) AS STRING),2),'-','01') AS TIMESTAMP) AS atualizacao FROM sandbox_planejamento_estrategico.tb_ap_cubo_bin
UNION ALL
SELECT 'sandbox_planejamento_estrategico.tb_dates' AS tabelas, CAST(CONCAT(LEFT(CAST(MAX(anomes) AS STRING),4),'-',RIGHT(CAST(MAX(anomes) AS STRING),2),'-','01') AS TIMESTAMP) AS atualizacao FROM sandbox_planejamento_estrategico.tb_ap_cubo_bin
UNION ALL


-------------------df_sexpress_notasfiscais
SELECT 'sandbox_analytics.sexpress_tb_notasfiscais_kpis' AS tabelas, CAST(CONCAT(LEFT(CAST(MAX(anomes) AS STRING),4),'-',RIGHT(CAST(MAX(anomes) AS STRING),2),'-','01') AS TIMESTAMP) AS atualizacao FROM sandbox_analytics.sexpress_tb_notasfiscais_kpi
UNION ALL
SELECT 'sandbox_analytics.sexpress_tb_notasfiscais_provisao' AS tabelas, CAST(CONCAT(LEFT(CAST(MAX(anomes) AS STRING),4),'-',RIGHT(CAST(MAX(anomes) AS STRING),2),'-','01') AS TIMESTAMP) AS atualizacao FROM sandbox_analytics.sexpress_tb_notasfiscais_provisao
UNION ALL
SELECT 'sandbox_analytics.tb_provisao' AS tabelas, CAST(CONCAT(LEFT(CAST(MAX(anomes) AS STRING),4),'-',RIGHT(CAST(MAX(anomes) AS STRING),2),'-','01') AS TIMESTAMP) AS atualizacao FROM sandbox_analytics.sexpress_tb_notasfiscais_provisao
UNION ALL
SELECT 'sandbox_analytics.tb_estorno_provisao' AS tabelas, CAST(CONCAT(LEFT(CAST(MAX(anomes) AS STRING),4),'-',RIGHT(CAST(MAX(anomes) AS STRING),2),'-','01') AS TIMESTAMP) AS atualizacao FROM sandbox_analytics.sexpress_tb_notasfiscais_provisao
UNION ALL


-------------------df_sustentacao
--SELECT 'tb_ap_sustentacao_ecommerce' AS tabelas, CAST(CONCAT(LEFT(CAST(MAX(ano) AS STRING),4),'-',RIGHT(CAST(MAX(anomes) AS STRING),2),'-','01') AS TIMESTAMP) AS atualizacao FROM sandbox_planejamento_estrategico.tb_ap_sustentacao_ecommerce
--UNION ALL


-------------------df_alerta_receita_mdr_negativa
SELECT 'sandbox_planejamento_estrategico.tb_ap_alerta_mdr_negativo' AS tabelas, CAST(CONCAT(LEFT(CAST(MAX(anomes) AS STRING),4),'-',RIGHT(CAST(MAX(anomes) AS STRING),2),'-','01') AS TIMESTAMP) AS atualizacao FROM sandbox_planejamento_estrategico.tb_ap_alerta_mdr_negativo
UNION ALL


-------------------df_adquirencia
SELECT 'sandbox_planejamento_estrategico.tb_ap_aluguel_consolidado' AS tabelas, CAST(CONCAT(LEFT(CAST(MAX(anomes) AS STRING),4),'-',RIGHT(CAST(MAX(anomes) AS STRING),2),'-','01') AS TIMESTAMP) AS atualizacao FROM sandbox_planejamento_estrategico.tb_ap_aluguel_consolidado
UNION ALL
SELECT 'sandbox_planejamento_estrategico.tb_ap_antecip_consolidado' AS tabelas, CAST(CONCAT(LEFT(CAST(MAX(anomes) AS STRING),4),'-',RIGHT(CAST(MAX(anomes) AS STRING),2),'-','01') AS TIMESTAMP) AS atualizacao FROM sandbox_planejamento_estrategico.tb_ap_antecip_consolidado
UNION ALL
SELECT 'sandbox_planejamento_estrategico.tb_ap_faturamento_consolidado' AS tabelas, CAST(CONCAT(LEFT(CAST(MAX(anomes) AS STRING),4),'-',RIGHT(CAST(MAX(anomes) AS STRING),2),'-','01') AS TIMESTAMP) AS atualizacao FROM sandbox_planejamento_estrategico.tb_ap_faturamento_consolidado
UNION ALL
SELECT 'sandbox_planejamento_estrategico.tb_ap_terminais_consolidado' AS tabelas, CAST(CONCAT(LEFT(CAST(MAX(anomes) AS STRING),4),'-',RIGHT(CAST(MAX(anomes) AS STRING),2),'-','01') AS TIMESTAMP) AS atualizacao FROM sandbox_planejamento_estrategico.tb_ap_terminais_consolidado
UNION ALL
SELECT 'sandbox_planejamento_estrategico.tb_ap_volumetrias_consolidado' AS tabelas, CAST(CONCAT(LEFT(CAST(MAX(anomes) AS STRING),4),'-',RIGHT(CAST(MAX(anomes) AS STRING),2),'-','01') AS TIMESTAMP) AS atualizacao FROM sandbox_planejamento_estrategico.tb_ap_volumetrias_consolidado
UNION ALL 
SELECT 'sandbox_planejamento_estrategico.tb_ap_autorizacao_consolidado' AS tabelas, CAST(CONCAT(LEFT(CAST(MAX(anomes) AS STRING),4),'-',RIGHT(CAST(MAX(anomes) AS STRING),2),'-','01') AS TIMESTAMP) AS atualizacao FROM sandbox_planejamento_estrategico.tb_ap_autorizacao_consolidado
UNION ALL
SELECT 'sandbox_planejamento_estrategico.tb_ap_d_hierarquia' AS tabelas, DATE_ADD(CURRENT_DATE(), INTERVAL 1 YEAR) AS atualizacao --FROM sandbox_planejamento_estrategico.tb_ap_d_hierarquia
UNION ALL



-------------------df_autorizacao_bandeiras
SELECT 'sandbox_planejamento_estrategico.h_tb_autorizacao_bandeira' AS tabelas, CAST(CONCAT(LEFT(CAST(MAX(anomes) AS STRING),4),'-',RIGHT(CAST(MAX(anomes) AS STRING),2),'-','01') AS TIMESTAMP) AS atualizacao FROM sandbox_planejamento_estrategico.h_tb_autorizacao_bandeira
)


SELECT 
    split_part(tabelas, '.', 1) AS sandbox,
    split_part(tabelas, '.', 2) AS tabela, 
    CAST(atualizacao AS TIMESTAMP) AS atualizacao, 
    CASE 
        WHEN atualizacao > DATE_ADD(CURRENT_DATE(),-2) 
        THEN "OK" 
        ELSE "NOK" 
    END AS critica,
    DATEDIFF(atualizacao, DATE_ADD(CURRENT_DATE(), INTERVAL -2 DAY)) AS atraso
FROM mapeamento_tabelas

UNION ALL

SELECT 
    split_part(tabelas, '.', 1) AS sandbox,
    split_part(tabelas, '.', 2) AS tabela, 
    CAST(atualizacao AS TIMESTAMP) AS atualizacao, 
    CASE 
        WHEN atualizacao >= TRUNC(CURRENT_DATE(), 'MM')  
        THEN "OK" 
        ELSE "NOK" 
    END AS critica,
    DATEDIFF(atualizacao, TRUNC(CURRENT_DATE(), 'MM')) AS atraso
FROM mapeamento_tabelas_anomes
ORDER BY atraso DESC


----------------SEM ACESSO---------------------
/* 

-------------------df_Clover_MEX_AQAS
SELECT 'cat_part_int_number_codi_redes_v1' AS tabelas, MAX(date_column) AS atualizacao FROM cat_part_int_number_codi_redes_v1
UNION ALL
SELECT 'catalogo_carga_v1' AS tabelas, MAX(date_column) AS atualizacao FROM catalogo_carga_v1
UNION ALL
SELECT 'page1_data_azul_v1' AS tabelas, MAX(date_column) AS atualizacao FROM page1_data_azul_v1
UNION ALL
SELECT 'page1_data_bancolombia_v1' AS tabelas, MAX(date_column) AS atualizacao FROM page1_data_bancolombia_v1
UNION ALL
SELECT 'page1_data_banitsmo_v1' AS tabelas, MAX(date_column) AS atualizacao FROM page1_data_banitsmo_v1
UNION ALL
SELECT 'page1_data_butter_v1' AS tabelas, MAX(date_column) AS atualizacao FROM page1_data_butter_v1
UNION ALL
SELECT 'page1_data_mexico_v1' AS tabelas, MAX(date_column) AS atualizacao FROM page1_data_mexico_v1
UNION ALL
SELECT 'page1_data_sbi_v1' AS tabelas, MAX(date_column) AS atualizacao FROM page1_data_sbi_v1
UNION ALL
SELECT 'page2_data_azul_v1' AS tabelas, MAX(date_column) AS atualizacao FROM page2_data_azul_v1
UNION ALL
SELECT 'page2_data_bancolombia_v1' AS tabelas, MAX(date_column) AS atualizacao FROM page2_data_bancolombia_v1
UNION ALL
SELECT 'page2_data_banitsmo_v1' AS tabelas, MAX(date_column) AS atualizacao FROM page2_data_banitsmo_v1
UNION ALL
SELECT 'page2_data_butter_v1' AS tabelas, MAX(date_column) AS atualizacao FROM page2_data_butter_v1
UNION ALL
SELECT 'page2_data_mexico_v1' AS tabelas, MAX(date_column) AS atualizacao FROM page2_data_mexico_v1
UNION ALL
SELECT 'page2_data_sbi_v1' AS tabelas, MAX(date_column) AS atualizacao FROM page2_data_sbi_v1
UNION ALL
SELECT 'page3_dcc_hora_azul_v1' AS tabelas, MAX(date_column) AS atualizacao FROM page3_dcc_hora_azul_v1
UNION ALL
SELECT 'page3_dcc_top_azul_v1' AS tabelas, MAX(date_column) AS atualizacao FROM page3_dcc_top_azul_v1
UNION ALL
SELECT 'page4_top_azul_v1' AS tabelas, MAX(date_column) AS atualizacao FROM page4_top_azul_v1
UNION ALL
SELECT 'page4_top_bancolombia_v1' AS tabelas, MAX(date_column) AS atualizacao FROM page4_top_bancolombia_v1
UNION ALL
SELECT 'page4_top_banitsmo_v1' AS tabelas, MAX(date_column) AS atualizacao FROM page4_top_banitsmo_v1
UNION ALL
SELECT 'page4_top_butter_v1' AS tabelas, MAX(date_column) AS atualizacao FROM page4_top_butter_v1
UNION ALL
SELECT 'page4_top_mexico_v1' AS tabelas, MAX(date_column) AS atualizacao FROM page4_top_mexico_v1
UNION ALL
SELECT 'page4_top_sbi_v1' AS tabelas, MAX(date_column) AS atualizacao FROM page4_top_sbi_v1
UNION ALL


-------------------df_crm_dynamics_365
SELECT 'account' AS tabelas, MAX(date_column) AS atualizacao FROM account
UNION ALL
SELECT 'annotation' AS tabelas, MAX(date_column) AS atualizacao FROM annotation
UNION ALL
SELECT 'incident' AS tabelas, MAX(date_column) AS atualizacao FROM incident
UNION ALL
SELECT 'opportunity' AS tabelas, MAX(date_column) AS atualizacao FROM opportunity
UNION ALL
SELECT 'orig_annotation' AS tabelas, MAX(date_column) AS atualizacao FROM orig_annotation
UNION ALL
SELECT 'orig_incident' AS tabelas, MAX(date_column) AS atualizacao FROM orig_incident
UNION ALL
SELECT 'orig_opportunity' AS tabelas, MAX(date_column) AS atualizacao FROM orig_opportunity
UNION ALL
SELECT 'orig_se_resolucao_ocorrencia' AS tabelas, MAX(date_column) AS atualizacao FROM orig_se_resolucao_ocorrencia
UNION ALL
SELECT 'queue' AS tabelas, MAX(date_column) AS atualizacao FROM queue
UNION ALL
SELECT 'queueitem' AS tabelas, MAX(date_column) AS atualizacao FROM queueitem
UNION ALL
SELECT 'se_agt' AS tabelas, MAX(date_column) AS atualizacao FROM se_agt
UNION ALL
SELECT 'se_atividades_das_implantacoes' AS tabelas, MAX(date_column) AS atualizacao FROM se_atividades_das_implantacoes
UNION ALL
SELECT 'se_canal' AS tabelas, MAX(date_column) AS atualizacao FROM se_canal
UNION ALL
SELECT 'se_fluxo_aprovacao' AS tabelas, MAX(date_column) AS atualizacao FROM se_fluxo_aprovacao
UNION ALL
SELECT 'se_fluxohomologacao' AS tabelas, MAX(date_column) AS atualizacao FROM se_fluxohomologacao
UNION ALL
SELECT 'se_go_to_green' AS tabelas, MAX(date_column) AS atualizacao FROM se_go_to_green
UNION ALL
SELECT 'se_gruposoluo' AS tabelas, MAX(date_column) AS atualizacao FROM se_gruposoluo
UNION ALL
SELECT 'se_implantacoes' AS tabelas, MAX(date_column) AS atualizacao FROM se_implantacoes
UNION ALL
SELECT 'se_macro_certificacao' AS tabelas, MAX(date_column) AS atualizacao FROM se_macro_certificacao
UNION ALL
SELECT 'se_macro_comercial' AS tabelas, MAX(date_column) AS atualizacao FROM se_macro_comercial
UNION ALL
SELECT 'se_macro_desenvolvimento' AS tabelas, MAX(date_column) AS atualizacao FROM se_macro_desenvolvimento
UNION ALL
SELECT 'se_macro_faturamento' AS tabelas, MAX(date_column) AS atualizacao FROM se_macro_faturamento
UNION ALL
SELECT 'se_macro_hardware' AS tabelas, MAX(date_column) AS atualizacao FROM se_macro_hardware
UNION ALL
SELECT 'se_macro_monitoramento' AS tabelas, MAX(date_column) AS atualizacao FROM se_macro_monitoramento
UNION ALL
SELECT 'se_macro_sustentacao' AS tabelas, MAX(date_column) AS atualizacao FROM se_macro_sustentacao
UNION ALL
SELECT 'se_macroativacaoproducao' AS tabelas, MAX(date_column) AS atualizacao FROM se_macroativacaoproducao
UNION ALL
SELECT 'se_macroimplantacao' AS tabelas, MAX(date_column) AS atualizacao FROM se_macroimplantacao
UNION ALL
SELECT 'se_macroproducaoassistida' AS tabelas, MAX(date_column) AS atualizacao FROM se_macroproducaoassistida
UNION ALL
SELECT 'se_macroprodutoincidentesgaps' AS tabelas, MAX(date_column) AS atualizacao FROM se_macroprodutoincidentesgaps
UNION ALL
SELECT 'se_macrotreinamento' AS tabelas, MAX(date_column) AS atualizacao FROM se_macrotreinamento
UNION ALL
SELECT 'se_novosprojetos' AS tabelas, MAX(date_column) AS atualizacao FROM se_novosprojetos
UNION ALL
SELECT 'se_resolucao_ocorrencia' AS tabelas, MAX(date_column) AS atualizacao FROM se_resolucao_ocorrencia
UNION ALL
SELECT 'se_tempo_servicos' AS tabelas, MAX(date_column) AS atualizacao FROM se_tempo_servicos
UNION ALL
SELECT 'se_vizzoo' AS tabelas, MAX(date_column) AS atualizacao FROM se_vizzoo
UNION ALL
SELECT 'systemuser' AS tabelas, MAX(date_column) AS atualizacao FROM systemuser
UNION ALL
SELECT 'task' AS tabelas, MAX(date_column) AS atualizacao FROM task
UNION ALL
SELECT 'team' AS tabelas, MAX(date_column) AS atualizacao FROM team
UNION ALL


-------------------df_365_account
SELECT 'orig_account' AS tabelas, MAX(date_column) AS atualizacao FROM orig_account
UNION ALL
SELECT 'orig_licenciamento' AS tabelas, MAX(date_column) AS atualizacao FROM orig_licenciamento
UNION ALL
SELECT 'orig_se_fluxohomologacao' AS tabelas, MAX(date_column) AS atualizacao FROM orig_se_fluxohomologacao
UNION ALL
SELECT 'orig_se_vizzoo' AS tabelas, MAX(date_column) AS atualizacao FROM orig_se_vizzoo
UNION ALL 
SELECT 'se_fluxohomologacao' AS tabelas, MAX(date_column) AS atualizacao FROM se_fluxohomologacao
UNION ALLL
SELECT 'se_vizzoo' AS tabelas, MAX(date_column) AS atualizacao FROM se_vizzoo
UNION ALL 
*/