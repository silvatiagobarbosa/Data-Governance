WITH mapeamento_tabelas AS (

-------------------df_bin
    SELECT 
        'sandbox_analytics.bintefisv_tb_dim_calendar' AS tabelas, 
        d AS datas, 
        COUNT(*) AS linhas 
    FROM sandbox_analytics.bintefisv_tb_dim_calendar
    GROUP BY d
    UNION ALL    
    SELECT 
        'sandbox_analytics.bintefisv_tb_dim_merchant' AS tabelas, 
        last_sales_transaction_date AS datas, 
        COUNT(*) AS linhas
    FROM sandbox_analytics.bintefisv_tb_dim_merchant
    GROUP BY last_sales_transaction_date
    UNION ALL    
    SELECT 
        'sandbox_analytics.bintefisv_tb_dim_calendar' AS tabelas, 
        d AS datas,
        COUNT(*) AS linhas
    FROM sandbox_analytics.bintefisv_tb_dim_calendar
    GROUP BY d
    UNION ALL
    SELECT 
        'sandbox_analytics.bintefisv_tb_dim_merchant' AS tabelas, 
        last_sales_transaction_date AS datas, 
        COUNT(*) AS linhas
    FROM sandbox_analytics.bintefisv_tb_dim_merchant
    GROUP BY last_sales_transaction_date
    UNION ALL
    SELECT 
        'sandbox_analytics.bintefisv_tb_dim_merchant_logical_terminal' AS tabelas, 
        date_last_change AS datas, 
        COUNT(*) AS linhas
    FROM sandbox_analytics.bintefisv_tb_dim_merchant_logical_terminal
    GROUP BY date_last_change
    UNION 
    SELECT 
        'sandbox_analytics.bintefisv_tb_fact_boarding' AS tabelas, 
        reference_date AS datas, 
        COUNT(*) AS linhas
    FROM sandbox_analytics.bintefisv_tb_fact_boarding
    GROUP BY reference_date
    UNION ALL
    SELECT 
        'sandbox_analytics.bintefisv_tb_fact_merchant_billing_terminal' AS tabelas, 
        capture_date AS datas, 
        COUNT(*) AS linhas
    FROM sandbox_analytics.bintefisv_tb_fact_merchant_billing_terminal
    GROUP BY capture_date
    UNION ALL
    SELECT 
        'sandbox_analytics.bintefisv_tb_fact_prepayment' AS tabelas, 
        data_ref AS datas, 
        COUNT(*) AS linhas
    FROM sandbox_analytics.bintefisv_tb_fact_prepayment
    GROUP BY data_ref
    UNION ALL
    SELECT 
        'sandbox_planejamento_estrategico.corp_tb_fact_terminais' AS tabelas, 
        busi_dt AS datas, 
        COUNT(*) AS linhas
    FROM sandbox_planejamento_estrategico.h_tb_07_tecnologia_equipamento
    GROUP BY busi_dt
    UNION ALL
    SELECT 
        'sandbox_planejamento_estrategico.vw_ap_cadastro_corporativo' AS tabelas, 
        merchant_boarding_date AS datas, 
        COUNT(*) AS linhas
    FROM sandbox_planejamento_estrategico.vw_ap_cadastro_corporativo
    GROUP BY merchant_boarding_date
    UNION ALL
    SELECT 
        'sandbox_planejamento_estrategico.vw_ap_receitas_corporativo' AS tabelas, 
        data_ref AS datas, 
        COUNT(*) AS linhas
    FROM sandbox_planejamento_estrategico.vw_ap_receitas_corporativo
    GROUP BY data_ref
    UNION ALL
    SELECT 
        'sandbox_analytics.bintefisv_tb_dim_product' AS tabelas, 
        CAST(DATE_ADD(CURRENT_DATE(), INTERVAL 1 YEAR) AS TIMESTAMP) AS datas, 
        COUNT(*) AS linhas
    FROM sandbox_analytics.bintefisv_tb_dim_product
    UNION ALL
    SELECT 
        'sandbox_analytics.d_canais' AS tabelas, 
        CAST(DATE_ADD(CURRENT_DATE(), INTERVAL 1 YEAR) AS TIMESTAMP) AS datas, 
        COUNT(*) AS linhas
    FROM sandbox_analytics.h_vw_canais
    UNION ALL
    SELECT 
        'sandbox_analytics.bintefisv_tb_dim_relationship_channel_act' AS tabelas, 
        CAST(DATE_ADD(CURRENT_DATE(), INTERVAL 1 YEAR) AS TIMESTAMP) AS datas, 
        COUNT(*) AS linhas
    FROM sandbox_analytics.bintefisv_tb_dim_relationship_channel_act
    UNION ALL
    --SELECT 'srv.dim_calendar' AS tabelas, d) AS TIMESTAMP) AS datas FROM srv.dim_calendar
    --UNION ALL
    --DF bintefisv_dm_transacoes_boarding is here
    --DF df_dim_calendar is here


-------------------caixalotericas_dm_transacoes
    SELECT 
        'sandbox_analytics.caixalotericas_tb_dim_calendar' AS tabelas, 
        d AS datas, 
        COUNT(*) AS linhas
    FROM sandbox_analytics.caixalotericas_tb_dim_calendar
    GROUP BY d
    UNION ALL
    SELECT 
        'sandbox_analytics.caixalotericas_tb_dim_merchant' AS tabelas, 
        last_sales_transaction_date AS datas, 
        COUNT(*) AS linhas
    FROM sandbox_analytics.caixalotericas_tb_dim_merchant
    GROUP BY last_sales_transaction_date 
    UNION ALL
    SELECT 
        'sandbox_analytics.caixalotericas_tb_dim_merchant_logical_terminal' AS tabelas, 
        date_last_change AS datas, 
        COUNT(*) AS linhas
    FROM sandbox_analytics.caixalotericas_tb_dim_merchant_logical_terminal
    GROUP BY date_last_change 
    UNION ALL
    SELECT 
        'sandbox_analytics.caixalotericas_tb_fact_merchant_billing_terminal' AS tabelas, 
        sales_date AS datas, 
        COUNT(*) AS linhas
    FROM sandbox_analytics.caixalotericas_tb_fact_merchant_billing_terminal
    GROUP BY sales_date 
    UNION ALL
    SELECT 
        'sandbox_analytics.caixalotericas_tb_dim_cnpj_pgw' AS tabelas, 
        CAST(DATE_ADD(CURRENT_DATE(), INTERVAL 1 YEAR) AS TIMESTAMP) AS datas, 
        COUNT(*) AS linhas
    FROM sandbox_analytics.caixalotericas_tb_dim_cnpj_pgw
    UNION ALL
    SELECT 
        'sandbox_analytics.caixalotericas_tb_dim_geography' AS tabelas, 
        CAST(DATE_ADD(CURRENT_DATE(), INTERVAL 1 YEAR) AS TIMESTAMP) AS datas, 
        COUNT(*) AS linhas
    FROM sandbox_analytics.caixalotericas_tb_dim_geography
    UNION ALL
    SELECT 
        'sandbox_analytics.caixalotericas_tb_dim_product' AS tabelas, 
        CAST(DATE_ADD(CURRENT_DATE(), INTERVAL 1 YEAR) AS TIMESTAMP) AS datas, 
        COUNT(*) AS linhas
    FROM sandbox_analytics.caixalotericas_tb_dim_product
    UNION ALL
    SELECT 
        'sandbox_analytics.caixalotericas_tb_dim_relationship_channel_act' AS tabelas, 
        CAST(DATE_ADD(CURRENT_DATE(), INTERVAL 1 YEAR) AS TIMESTAMP) AS datas, 
        COUNT(*) AS linhas
    FROM sandbox_analytics.caixalotericas_tb_dim_relationship_channel_act
    UNION ALL


-------------------cubo_consolidado_clover
    SELECT 
        'sandbox_planejamento_estrategico.clover_tb_fact_antecipacao' AS tabelas, 
        data_ref AS datas, 
        COUNT(*) AS linhas
    FROM sandbox_planejamento_estrategico.clover_tb_fact_antecipacao
    GROUP BY data_ref
    UNION ALL
    SELECT 
        'sandbox_planejamento_estrategico.clover_tb_fact_faturamento' AS tabelas, 
        data_ref AS datas, 
        COUNT(*) AS linhas
    FROM sandbox_planejamento_estrategico.clover_tb_fact_faturamento
    GROUP BY data_ref 
    UNION ALL
    SELECT 
        'sandbox_planejamento_estrategico.clover_tb_fact_volumetrias_vendas' AS tabelas, 
        event_dt AS datas, 
        COUNT(*) AS linhas
    FROM sandbox_planejamento_estrategico.clover_tb_fact_volumetrias_vendas
    GROUP BY event_dt 
    UNION ALL
    SELECT 
        'sandbox_analytics.clover_aluguel_consolidado' AS tabelas, 
        CAST(DATE_ADD(CURRENT_DATE(), INTERVAL 1 YEAR) AS TIMESTAMP) AS datas, 
        COUNT(*) AS linhas
    FROM sandbox_analytics.clover_aluguel_consolidado
    UNION ALL
    SELECT 
        'sandbox_analytics.clover_antecipacao_consolidado' AS tabelas, 
        CAST(DATE_ADD(CURRENT_DATE(), INTERVAL 1 YEAR) AS TIMESTAMP) AS datas, 
        COUNT(*) AS linhas
    FROM sandbox_analytics.clover_antecipacao_consolidado
    UNION ALL
    SELECT 
        'sandbox_analytics.clover_autorizacao_consolidado' AS tabelas, 
        CAST(DATE_ADD(CURRENT_DATE(), INTERVAL 1 YEAR) AS TIMESTAMP) AS datas, 
        COUNT(*) AS linhas
    FROM sandbox_analytics.clover_autorizacao_consolidado
    UNION ALL
    SELECT 
        'sandbox_analytics.clover_faturamento_consolidado' AS tabelas, 
        CAST(DATE_ADD(CURRENT_DATE(), INTERVAL 1 YEAR) AS TIMESTAMP) AS datas, 
        COUNT(*) AS linhas
    FROM sandbox_analytics.clover_faturamento_consolidado
    UNION ALL
    SELECT 
        'sandbox_planejamento_estrategico.clover_tb_dim_merchants' AS tabelas, 
        CAST(DATE_ADD(CURRENT_DATE(), INTERVAL 1 YEAR) AS TIMESTAMP) AS datas, 
        COUNT(*) AS linhas
    FROM sandbox_planejamento_estrategico.clover_tb_dim_merchants
    UNION ALL
    SELECT 
        'sandbox_analytics.clover_terminais_consolidado' AS tabelas, 
        CAST(DATE_ADD(CURRENT_DATE(), INTERVAL 1 YEAR) AS TIMESTAMP) AS datas, 
        COUNT(*) AS linhas
    FROM sandbox_analytics.clover_terminais_consolidado
    UNION ALL
    SELECT 
        'sandbox_analytics.clover_volumetrias_consolidado' AS tabelas, 
        CAST(DATE_ADD(CURRENT_DATE(), INTERVAL 1 YEAR) AS TIMESTAMP) AS datas, 
        COUNT(*) AS linhas
    FROM sandbox_analytics.clover_volumetrias_consolidado
    UNION ALL
    
-------------------adhoc
    SELECT 
        'sandbox_analytics.adhoc_7molinos' AS tabelas, 
        dt_ref AS datas, 
        COUNT(*) AS linhas
    FROM sandbox_analytics.adhoc_7molinos
    GROUP BY dt_ref
    UNION ALL
    SELECT 
        'sandbox_analytics.adhoc_daily_metrics_merchant_report' AS tabelas, 
        data_ref AS datas, 
        COUNT(*) AS linhas
    FROM sandbox_analytics.adhoc_daily_metrics_merchant_report
    GROUP BY data_ref 
    UNION ALL
    SELECT 
        'sandbox_analytics.adhoc_provisao_sicredi' AS tabelas, 
        data_ref AS datas, 
        COUNT(*) AS linhas
    FROM sandbox_analytics.adhoc_provisao_sicredi
    GROUP BY data_ref
    UNION ALL
    SELECT 
        'sandbox_analytics.adhoc_report_fin_caixa' AS tabelas, 
        dt_ref AS datas, 
        COUNT(*) AS linhas
    FROM sandbox_analytics.adhoc_report_fin_caixa
    GROUP BY dt_ref
    UNION ALL 
    --adhoc_report_fin_caixa_novo in anomes
    --azulzinha_tb_fact_transacoes in df_azulzinha_pay
    --tb_avaliacoes_app_gestao in df_qualidade
    --adhoc_grupo_economico in anomes


-------------------df_adquirencia
    SELECT 
        'sandbox_analytics.claro_tb_dim_merchant' AS tabelas, 
        last_sales_transaction_date AS datas, 
        COUNT(*) AS linhas
    FROM sandbox_analytics.claro_tb_dim_merchant
    GROUP BY last_sales_transaction_date
    UNION ALL
    SELECT 
        'sandbox_analytics.claro_tb_dim_merchant_logical_terminal' AS tabelas, 
        date_last_change AS datas, 
        COUNT(*) AS linhas
    FROM sandbox_analytics.claro_tb_dim_merchant_logical_terminal
    GROUP BY date_last_change
    UNION ALL
    SELECT 
        'sandbox_analytics.claro_tb_fact_merchant_billing_terminal' AS tabelas, 
        capture_date AS datas, 
        COUNT(*) AS linhas
    FROM sandbox_analytics.claro_tb_fact_merchant_billing_terminal
    GROUP BY capture_date
    UNION ALL
    SELECT 
        'sandbox_analytics.claro_tb_fact_prepayment' AS tabelas, 
        data_ref AS datas, 
        COUNT(*) AS linhas
    FROM sandbox_analytics.claro_tb_fact_prepayment
    GROUP BY data_ref
    UNION ALL
    SELECT 
        'sandbox_analytics.sicobtef_tb_f_transacoes' AS tabelas, 
        data_ref AS datas, 
        COUNT(*) AS linhas
    FROM sandbox_analytics.sicobtef_tb_f_transacoes
    GROUP BY data_ref
    UNION ALL
    SELECT 
        'sandbox_analytics.sicobtef_tb_f_agenda' AS tabelas, 
        data_ref AS datas, 
        COUNT(*) AS linhas
    FROM sandbox_analytics.sicobtef_tb_f_transacoes
    GROUP BY data_ref
    UNION ALL
    SELECT 
        'sandbox_analytics.sicobtef_vw_f_aluguel_pago' AS tabelas, 
        data_ref AS datas, 
        COUNT(*) AS linhas
    FROM sandbox_analytics.sicobtef_vw_f_aluguel_pago
    GROUP BY data_ref
    UNION ALL
    SELECT 
        'sandbox_analytics.tbsafras_f_aluguel' AS tabelas, 
        data_ref AS datas, 
        COUNT(*) AS linhas
    FROM sandbox_analytics.tbsafras_f_aluguel
    GROUP BY data_ref
    UNION ALL
    SELECT 
        'sandbox_analytics.tbsafras_f_antecipacao' AS tabelas, 
        data_ref AS datas, 
        COUNT(*) AS linhas
    FROM sandbox_analytics.tbsafras_f_antecipacao
    GROUP BY data_ref
    UNION ALL
    SELECT 
        'sandbox_analytics.tbsafras_f_credenciamento' AS tabelas, 
        data_ref AS datas, 
        COUNT(*) AS linhas
    FROM sandbox_analytics.tbsafras_f_credenciamento
    GROUP BY data_ref
    UNION ALL
    SELECT 
        'sandbox_analytics.tbsafras_f_faturamento' AS tabelas, 
        data_ref AS datas, 
        COUNT(*) AS linhas
    FROM sandbox_analytics.tbsafras_f_faturamento
    GROUP BY data_ref
    UNION ALL
    SELECT 
        'sandbox_analytics.claro_tb_dim_product' AS tabelas, 
        CAST(DATE_ADD(CURRENT_DATE(), INTERVAL 1 YEAR) AS TIMESTAMP) AS datas, 
        COUNT(*) AS linhas
    FROM sandbox_analytics.claro_tb_dim_product
    UNION ALL
    SELECT 
        'sandbox_analytics.claro_tb_dim_relationship_channel_act' AS tabelas, 
        CAST(DATE_ADD(CURRENT_DATE(), INTERVAL 1 YEAR) AS TIMESTAMP) AS datas, 
        COUNT(*) AS linhas
    FROM sandbox_analytics.claro_tb_dim_relationship_channel_act
    UNION ALL
    SELECT 
        'sandbox_analytics.claro_tb_fact_boarding' AS tabelas, 
        CAST(DATE_ADD(CURRENT_DATE(), INTERVAL 1 YEAR) AS TIMESTAMP) AS datas, 
        COUNT(*) AS linhas
    FROM sandbox_analytics.claro_tb_fact_boarding
    UNION ALL 
    SELECT 
        'sandbox_analytics.sicobtef_vw_d_cadastro' AS tabelas, 
        CAST(DATE_ADD(CURRENT_DATE(), INTERVAL 1 YEAR) AS TIMESTAMP) AS datas, 
        COUNT(*) AS linhas
    FROM sandbox_analytics.sicobtef_vw_d_cadastro
    UNION ALL 
    SELECT 
        'sandbox_planejamento_estrategico.tbsafras_d_hierarquia' AS tabelas, 
        merchant_boarding_date AS datas, 
        COUNT(*) AS linhas
    FROM sandbox_analytics.h_tb_01_cadastro_nova
    GROUP BY merchant_boarding_date 
    UNION ALL
    SELECT 
        'sandbox_planejamento_estrategico.tb_rebate_sicredi_coops' AS tabelas, 
        CAST(DATE_ADD(CURRENT_DATE(), INTERVAL 1 YEAR) AS TIMESTAMP) AS datas, 
        COUNT(*) AS linhas
    FROM sandbox_planejamento_estrategico.tb_rebate_sicredi_coops
    UNION ALL
    SELECT 
        'sandbox_analytics.h_vw_canais' AS tabelas, 
        CAST(DATE_ADD(CURRENT_DATE(), INTERVAL 1 YEAR) AS TIMESTAMP) AS datas, 
        COUNT(*) AS linhas
    FROM sandbox_analytics.h_vw_canais
    UNION ALL
    SELECT 
        'dominio.tipo_cartao' AS tabelas, 
        CAST(DATE_ADD(CURRENT_DATE(), INTERVAL 1 YEAR) AS TIMESTAMP) AS datas, 
        COUNT(*) AS linhas
    FROM dominio.tipo_cartao
    UNION ALL
    SELECT 
        'dominio.tipo_mensagem_autorizacao' AS tabelas, 
        CAST(DATE_ADD(CURRENT_DATE(), INTERVAL 1 YEAR) AS TIMESTAMP) AS datas, 
        COUNT(*) AS linhas
    FROM dominio.tipo_mensagem_autorizacao
    UNION ALL
    SELECT 
        'dominio.tipo_terminal' AS tabelas, 
        CAST(DATE_ADD(CURRENT_DATE(), INTERVAL 1 YEAR) AS TIMESTAMP) AS datas, 
        COUNT(*) AS linhas
    FROM dominio.tipo_terminal
    UNION ALL
    SELECT 
        'dominio.tipo_transacao_autorizacao' AS tabelas, 
        CAST(DATE_ADD(CURRENT_DATE(), INTERVAL 1 YEAR) AS TIMESTAMP) AS datas, 
        COUNT(*) AS linhas
    FROM dominio.tipo_transacao_autorizacao
    UNION ALL
    SELECT 
        'dominio.categoria_autorizacao' AS tabelas, 
        CAST(DATE_ADD(CURRENT_DATE(), INTERVAL 1 YEAR) AS TIMESTAMP) AS datas, 
        COUNT(*) AS linhas
    FROM dominio.categoria_autorizacao
    UNION ALL
    SELECT 
        'dominio.codigo_resposta_autorizacao' AS tabelas, 
        CAST(DATE_ADD(CURRENT_DATE(), INTERVAL 1 YEAR) AS TIMESTAMP) AS datas, 
        COUNT(*) AS linhas
    FROM dominio.codigo_resposta_autorizacao
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
    SELECT 
        'sandbox_analytics.tb_dim_calendar' AS tabelas, 
        d AS datas, 
        COUNT(*) AS linhas
    FROM sandbox_analytics.tb_dim_calendar
    GROUP BY d
    UNION ALL
    SELECT 
        'sandbox_analytics.auth_tb_dim_merchant' AS tabelas, 
        last_sales_transaction_date AS datas, 
        COUNT(*) AS linhas
    FROM sandbox_analytics.auth_tb_dim_merchant
    GROUP BY last_sales_transaction_date 
    UNION ALL
    SELECT 
        'sandbox_analytics.auth_tb_fact_authorization_terminal' AS tabelas, 
        sales_date AS datas, 
        COUNT(*) AS linhas
    FROM sandbox_analytics.auth_tb_fact_authorization_terminal
    GROUP BY sales_date
    UNION ALL
    SELECT 
        'sandbox_planejamento_estrategico.auth_tb_cod_resp_autorizacao' AS tabelas, 
        CAST(DATE_ADD(CURRENT_DATE(), INTERVAL 1 YEAR) AS TIMESTAMP) AS datas, 
        COUNT(*) AS linhas
    FROM sandbox_planejamento_estrategico.auth_tb_cod_resp_autorizacao
    UNION ALL
    SELECT 
        'sandbox_planejamento_estrategico.auth_tb_tipo_cartao_bandeira' AS tabelas, 
        CAST(DATE_ADD(CURRENT_DATE(), INTERVAL 1 YEAR) AS TIMESTAMP) AS datas, 
        COUNT(*) AS linhas
    FROM sandbox_planejamento_estrategico.auth_tb_tipo_cartao_bandeira
    UNION ALL
    SELECT 
        'sandbox_planejamento_estrategico.dim_card_type_transaction' AS tabelas, 
        CAST(DATE_ADD(CURRENT_DATE(), INTERVAL 1 YEAR) AS TIMESTAMP) AS datas, 
        COUNT(*) AS linhas
    FROM sandbox_analytics.td_dim_card_type_transaction
    UNION ALL
    SELECT 
        'sandbox_analytics.auth_tb_dim_abecs' AS tabelas, 
        CAST(DATE_ADD(CURRENT_DATE(), INTERVAL 1 YEAR) AS TIMESTAMP) AS datas, 
        COUNT(*) AS linhas
    FROM sandbox_analytics.auth_tb_dim_abecs
    UNION ALL
    SELECT 
        'sandbox_analytics.tb_dim_auth_response_code' AS tabelas, 
        CAST(DATE_ADD(CURRENT_DATE(), INTERVAL 1 YEAR) AS TIMESTAMP) AS datas, 
        COUNT(*) AS linhas
    FROM sandbox_analytics.tb_dim_auth_response_code
    UNION ALL
    SELECT 
        'sandbox_analytics.tb_dim_auth_transaction_category' AS tabelas, 
        CAST(DATE_ADD(CURRENT_DATE(), INTERVAL 1 YEAR) AS TIMESTAMP) AS datas, 
        COUNT(*) AS linhas
    FROM sandbox_analytics.tb_dim_auth_transaction_category
    UNION ALL
    SELECT 
        'sandbox_analytics.tb_dim_auth_transaction_type' AS tabelas, 
        CAST(DATE_ADD(CURRENT_DATE(), INTERVAL 1 YEAR) AS TIMESTAMP) AS datas, 
        COUNT(*) AS linhas
    FROM sandbox_analytics.tb_dim_auth_transaction_type
    UNION ALL
    SELECT 
        'sandbox_analytics.tb_dim_bin' AS tabelas, 
        CAST(DATE_ADD(CURRENT_DATE(), INTERVAL 1 YEAR) AS TIMESTAMP) AS datas, 
        COUNT(*) AS linhas
    FROM sandbox_analytics.tb_dim_bin
    UNION ALL
    SELECT 
        'sandbox_analytics.tb_dim_boarding_channel' AS tabelas, 
        CAST(DATE_ADD(CURRENT_DATE(), INTERVAL 1 YEAR) AS TIMESTAMP) AS datas, 
        COUNT(*) AS linhas
    FROM sandbox_analytics.tb_dim_boarding_channel
    UNION ALL
    SELECT 
        'sandbox_analytics.tb_dim_business_partner' AS tabelas, 
        CAST(DATE_ADD(CURRENT_DATE(), INTERVAL 1 YEAR) AS TIMESTAMP) AS datas, 
        COUNT(*) AS linhas
    FROM sandbox_analytics.tb_dim_business_partner
    UNION ALL
    SELECT 
        'sandbox_analytics.tb_dim_card_type' AS tabelas, 
        CAST(DATE_ADD(CURRENT_DATE(), INTERVAL 1 YEAR) AS TIMESTAMP) AS datas, 
        COUNT(*) AS linhas
    FROM sandbox_analytics.tb_dim_card_type
    UNION ALL
    SELECT 
        'sandbox_analytics.tb_dim_entry_mode' AS tabelas, 
        CAST(DATE_ADD(CURRENT_DATE(), INTERVAL 1 YEAR) AS TIMESTAMP) AS datas, 
        COUNT(*) AS linhas
    FROM sandbox_analytics.tb_dim_entry_mode
    UNION ALL
    SELECT 
        'sandbox_analytics.tb_dim_geography' AS tabelas, 
        CAST(DATE_ADD(CURRENT_DATE(), INTERVAL 1 YEAR) AS TIMESTAMP) AS datas, 
        COUNT(*) AS linhas
    FROM sandbox_analytics.tb_dim_geography
    UNION ALL
    SELECT 
        'sandbox_analytics.tb_dim_institution' AS tabelas, 
        CAST(DATE_ADD(CURRENT_DATE(), INTERVAL 1 YEAR) AS TIMESTAMP) AS datas, 
        COUNT(*) AS linhas
    FROM sandbox_analytics.tb_dim_institution
    UNION ALL
    SELECT 
        'sandbox_analytics.tb_dim_message_type' AS tabelas, 
        CAST(DATE_ADD(CURRENT_DATE(), INTERVAL 1 YEAR) AS TIMESTAMP) AS datas, 
        COUNT(*) AS linhas
    FROM sandbox_analytics.tb_dim_message_type
    UNION ALL
    SELECT 
        'sandbox_analytics.tb_dim_segment_cnae' AS tabelas, 
        CAST(DATE_ADD(CURRENT_DATE(), INTERVAL 1 YEAR) AS TIMESTAMP) AS datas, 
        COUNT(*) AS linhas
    FROM sandbox_analytics.tb_dim_segment_cnae
    UNION ALL
    SELECT 
        'sandbox_analytics.tb_dim_terminal_type' AS tabelas, 
        CAST(DATE_ADD(CURRENT_DATE(), INTERVAL 1 YEAR) AS TIMESTAMP) AS datas, 
        COUNT(*) AS linhas
    FROM sandbox_analytics.tb_dim_terminal_type
    UNION ALL
    -- auth_tb_dim_cadastro in anomes


-------------------df_vendas_faturamento
    SELECT 
        'sandbox_planejamento_estrategico.tb_ap_faturamento' AS tabelas, 
        event_dt AS datas, 
        COUNT(*) AS linhas
    FROM sandbox_planejamento_estrategico.tb_ap_faturamento
    GROUP BY event_dt
    UNION ALL
    SELECT 
        'sandbox_planejamento_estrategico.tb_ap_tecnologias' AS tabelas, 
        event_dt AS datas, 
        COUNT(*) AS linhas
    FROM sandbox_planejamento_estrategico.tb_ap_tecnologias
    GROUP BY event_dt
    UNION ALL
    SELECT 
        'sandbox_planejamento_estrategico.tb_ap_antecip' AS tabelas, 
        event_dt AS datas, 
        COUNT(*) AS linhas
    FROM sandbox_planejamento_estrategico.tb_ap_antecip
    GROUP BY event_dt
    UNION ALL
    SELECT 
        'sandbox_planejamento_estrategico.tb_ap_volumetrias_vendas' AS tabelas, 
        event_dt AS datas, 
        COUNT(*) AS linhas
    FROM sandbox_planejamento_estrategico.tb_ap_volumetrias_vendas
    GROUP BY event_dt
    UNION ALL
    SELECT 
        'sandbox_planejamento_estrategico.tb_i_event' AS tabelas, 
        event_dt AS datas, 
        COUNT(*) AS linhas
    FROM sandbox_planejamento_estrategico.tb_ap_faturamento
    GROUP BY event_dt
    UNION ALL
    SELECT 
        'sandbox_planejamento_estrategico.tb_referencia' AS tabelas, 
        event_dt AS datas, 
        COUNT(*) AS linhas
    FROM sandbox_planejamento_estrategico.tb_ap_faturamento
    GROUP BY event_dt
    UNION ALL


-------------------df_azulzinha_pay
    SELECT 
        'sandbox_analytics.azulzinha_tb_fact_tagueamento' AS tabelas, 
        dt_atualizacao AS datas, 
        COUNT(*) AS linhas
    FROM sandbox_analytics.azulzinha_tb_fact_tagueamento
    GROUP BY dt_atualizacao 
    UNION ALL
    SELECT 
        'sandbox_analytics.azulzinha_tb_fact_transacoes' AS tabelas, 
        dt_pagamento AS datas, 
        COUNT(*) AS linhas
    FROM sandbox_analytics.azulzinha_tb_fact_transacoes
    GROUP BY dt_pagamento
    UNION ALL
    
-------------------df_qualidade
    SELECT 
        'fat_bloqueio_agenda' AS tabelas, 
        data_fraud_flag AS datas, 
        COUNT(*) AS linhas
    FROM sandbox_planejamento_estrategico.fat_bloqueio_agenda
    GROUP BY data_fraud_flag 
    UNION ALL
    SELECT 
        'fat_saldo_clientes' AS tabelas, 
        date_cycle_start AS datas, 
        COUNT(*) AS linhas
    FROM sandbox_planejamento_estrategico.fat_saldo_clientes
    GROUP BY date_cycle_start
    UNION ALL
    SELECT 
        'tb_avaliacoes_app_gestao' AS tabelas, 
        answer_date AS datas, 
        COUNT(*) AS linhas
    FROM sandbox_planejamento_estrategico.tb_avaliacoes_app_gestao
    GROUP BY answer_date
    UNION ALL
    SELECT 
        'tb_base_instalada' AS tabelas, 
        record_date AS datas, 
        COUNT(*) AS linhas
    FROM sandbox_planejamento_estrategico.tb_base_instalada
    GROUP BY record_date
    UNION ALL
    SELECT 
        'tb_tickets_logistica' AS tabelas, 
        captured_dt AS datas, 
        COUNT(*) AS linhas
    FROM sandbox_planejamento_estrategico.tb_tickets_logistica
    GROUP BY captured_dt
    UNION ALL
    SELECT 
        'dominio.tipo_ticket' AS tabelas, 
        CAST(DATE_ADD(CURRENT_DATE(), INTERVAL 1 YEAR) AS TIMESTAMP) AS datas, 
        COUNT(*) AS linhas
    FROM dominio.tipo_ticket
    UNION ALL
    SELECT 
        'dominio.dim_status_conta' AS tabelas, 
        CAST(DATE_ADD(CURRENT_DATE(), INTERVAL 1 YEAR) AS TIMESTAMP) AS datas, 
        COUNT(*) AS linhas
    FROM dominio.status_conta
    UNION ALL
    SELECT 
        'dominio.dim_razao_status_merchant' AS tabelas, 
        CAST(DATE_ADD(CURRENT_DATE(), INTERVAL 1 YEAR) AS TIMESTAMP) AS datas, 
        COUNT(*) AS linhas
    FROM dominio.razao_status_merchant
    UNION ALL
    --tipo_terminal in df_adquirencia
    --dim_calendar in df_bin


-------------------df_broker
    SELECT 
        'sandbox_analytics.fact_analitica' AS tabelas, 
        data_ref AS datas, 
        COUNT(*) AS linhas
    FROM sandbox_analytics.broker_tb_fact_analitica
    GROUP BY data_ref
    UNION ALL
    SELECT 
        'sandbox_analytics.fact_antecipacao' AS tabelas, 
        data_ref AS datas, 
        COUNT(*) AS linhas
    FROM sandbox_analytics.broker_tb_fact_antecipacao
    GROUP BY data_ref
    UNION ALL
    SELECT 
        'sandbox_analytics.dim_bank' AS tabelas, 
        CAST(DATE_ADD(CURRENT_DATE(), INTERVAL 1 YEAR) AS TIMESTAMP) AS datas, 
        COUNT(*) AS linhas
    FROM sandbox_analytics.broker_tb_dim_bank
    UNION ALL
    SELECT 
        'sandbox_analytics.dim_channel' AS tabelas, 
        CAST(DATE_ADD(CURRENT_DATE(), INTERVAL 1 YEAR) AS TIMESTAMP) AS datas, 
        COUNT(*) AS linhas
    FROM sandbox_analytics.broker_tb_dim_channel
    UNION ALL
    SELECT 
        'sandbox_analytics.dim_institution' AS tabelas, 
        CAST(DATE_ADD(CURRENT_DATE(), INTERVAL 1 YEAR) AS TIMESTAMP) AS datas, 
        COUNT(*) AS linhas
    FROM sandbox_analytics.broker_tb_dim_institution
    UNION ALL
    
-------------------df_bsc
    SELECT 
        'sandbox_planejamento_estrategico.tb_bsc_dt_atualizacao' AS tabelas, 
        data_ref AS datas, 
        COUNT(*) AS linhas
    FROM sandbox_planejamento_estrategico.tb_bsc_dt_atualizacao
    GROUP BY data_ref
    UNION ALL
    SELECT 
        'sandbox_planejamento_estrategico.tb_bsc_real_cli' AS tabelas, 
        dt_atualizacao AS datas, 
        COUNT(*) AS linhas
    FROM sandbox_planejamento_estrategico.tb_bsc_real_cli
    GROUP BY dt_atualizacao
    UNION ALL
    SELECT 
        'sandbox_planejamento_estrategico.tb_bsc_target_fin' AS tabelas, 
        dt_atualizacao AS datas, 
        COUNT(*) AS linhas
    FROM sandbox_planejamento_estrategico.tb_bsc_target_fin
    GROUP BY dt_atualizacao
    UNION ALL
    SELECT 
        'sandbox_planejamento_estrategico.tb_bsc_target_oper' AS tabelas, 
        dt_atualizacao AS datas, 
        COUNT(*) AS linhas
    FROM sandbox_planejamento_estrategico.tb_bsc_target_oper
    GROUP BY dt_atualizacao
    UNION ALL
    SELECT 
        'sandbox_planejamento_estrategico.tb_f_bsc_real_fin' AS tabelas, 
        data_ref AS datas, 
        COUNT(*) AS linhas
    FROM sandbox_planejamento_estrategico.tb_f_bsc_real_fin
    GROUP BY data_ref 
    UNION ALL
    SELECT 
        'sandbox_planejamento_estrategico.tb_f_bsc_real_oper' AS tabelas, 
        dt_atualizacao AS datas, 
        COUNT(*) AS linhas
    FROM sandbox_planejamento_estrategico.tb_f_bsc_real_oper
    GROUP BY dt_atualizacao
    UNION ALL
    SELECT 
        'sandbox_planejamento_estrategico.tb_d_bsc_hierarquia' AS tabelas, 
        CAST(DATE_ADD(CURRENT_DATE(), INTERVAL 1 YEAR) AS TIMESTAMP) AS datas, 
        COUNT(*) AS linhas
    FROM sandbox_planejamento_estrategico.tb_d_bsc_hierarquia
    UNION ALL
    
-------------------df_cadastro_nova_completa
    SELECT 
        'sandbox_planejamento_estrategico.h_tb_01_cadastro_nova' AS tabelas, 
        merchant_boarding_date AS datas, 
        COUNT(*) AS linhas
    FROM sandbox_planejamento_estrategico.h_tb_01_cadastro_nova
    GROUP BY merchant_boarding_date
    UNION ALL


-------------------df_clover
    SELECT 
        'sandbox_analytics.clover_fact_faturamento' AS tabelas, 
        data_ref AS datas, 
        COUNT(*) AS linhas
    FROM sandbox_analytics.clover_fact_faturamento
    GROUP BY data_ref
    UNION ALL
    SELECT 
        'sandbox_analytics.clover_tb_dim_cadastro' AS tabelas, 
        merchant_installation_date AS datas, 
        COUNT(*) AS linhas
    FROM sandbox_analytics.clover_tb_dim_cadastro
    GROUP BY merchant_installation_date
    UNION ALL
    SELECT 
        'sandbox_analytics.clover_tb_dim_calendar' AS tabelas, 
        d AS datas, 
        COUNT(*) AS linhas
    FROM sandbox_analytics.clover_tb_dim_calendar
    GROUP BY d
    UNION ALL
    SELECT 
        'sandbox_analytics.clover_tb_dim_devic_type' AS tabelas, 
        CAST(DATE_ADD(CURRENT_DATE(), INTERVAL 1 YEAR) AS TIMESTAMP) AS datas, 
        COUNT(*) AS linhas
    FROM sandbox_analytics.clover_tb_dim_devic_type
    UNION ALL
    SELECT 
        'sandbox_analytics.clover_tb_dim_relationship' AS tabelas, 
        CAST(DATE_ADD(CURRENT_DATE(), INTERVAL 1 YEAR) AS TIMESTAMP) AS datas, 
        COUNT(*) AS linhas
    FROM sandbox_analytics.clover_tb_dim_relationship
    UNION ALL
    

-------------------df_corporativo_analitico
    SELECT 
        'sandbox_planejamento_estrategico.h_tb_datas' AS tabelas, 
        data_ref AS datas, 
        COUNT(*) AS linhas
    FROM sandbox_planejamento_estrategico.h_tb_datas
    GROUP BY data_ref
    UNION ALL
    SELECT 
        'sandbox_planejamento_estrategico.tb_d_cadastro' AS tabelas, 
        merchant_boarding_date AS datas, 
        COUNT(*) AS linhas
    FROM sandbox_planejamento_estrategico.desenv_tb_d_cadastro
    GROUP BY merchant_boarding_date
    UNION ALL
    SELECT 
        'sandbox_planejamento_estrategico.vw_ap_faturamento_corporativo' AS tabelas, 
        data_ref AS datas, 
        COUNT(*) AS linhas
    FROM sandbox_planejamento_estrategico.vw_ap_faturamento_corporativo
    GROUP BY data_ref
    UNION ALL
    SELECT 
        'sandbox_planejamento_estrategico.vw_ap_terminais_corporativo' AS tabelas, 
        busi_dt AS datas, 
        COUNT(*) AS linhas
    FROM sandbox_planejamento_estrategico.vw_ap_terminais_corporativo
    GROUP BY busi_dt
    UNION ALL
    --vw_ap_cadastro_corporativo in df_bin
    --vw_ap_receitas_corporativo in df_bin
    

-------------------df_cubo_bin
    SELECT 
        'sandbox_planejamento_estrategico.tb_ap_cubo_bin_cadastro' AS tabelas, 
        dt_boarding AS datas, 
        COUNT(*) AS linhas
    FROM sandbox_planejamento_estrategico.tb_ap_cubo_bin_cadastro
    GROUP BY dt_boarding
    UNION ALL
    SELECT 
        'sandbox_planejamento_estrategico.dates_cadastro' AS tabelas, 
        dt_boarding AS datas, 
        COUNT(*) AS linhas
    FROM sandbox_planejamento_estrategico.tb_ap_cubo_bin_cadastro
    GROUP BY dt_boarding
    UNION ALL
    --tb_ap_cubo_bin in anomes
    --tb_dates in anomes
    

-------------------df_fat_merchant_metrics
    SELECT 
        'sandbox_planejamento_estrategico.vw_fat_merchant_metrics' AS tabelas, 
        data_ref AS datas, 
        COUNT(*) AS linhas
    FROM sandbox_planejamento_estrategico.vw_fat_merchant_metrics
    GROUP BY data_ref
    UNION ALL
    

-------------------df_dominios
    SELECT 
        'dominio.razao_chargeback' AS tabelas, 
        CAST(DATE_ADD(CURRENT_DATE(), INTERVAL 1 YEAR) AS TIMESTAMP) AS datas, 
        COUNT(*) AS linhas
    FROM dominio.razao_chargeback
    UNION ALL
    SELECT 
        'dominio.tb_d_mcc' AS tabelas, 
        CAST(DATE_ADD(CURRENT_DATE(), INTERVAL 1 YEAR) AS TIMESTAMP) AS datas, 
        COUNT(*) AS linhas
    FROM dominio.mcc
    UNION ALL
    --categoria_autorizacao in df_adquirencia
    --codigo_resposta_autorizacao in df_adquirencia
    --tipo_cartao in df_adquirencia
    --estado in df_cef


-------------------df_fepas_hubcard
    SELECT 
        'sandbox_analytics.se_fepascard_tb_fact_transacao' AS tabelas, 
        data_transacao AS datas, 
        COUNT(*) AS linhas
    FROM sandbox_analytics.se_fepascard_tb_fact_transacao
    GROUP BY data_transacao
    UNION ALL
    SELECT 
        'sandbox_analytics.se_fepashub_tb_fact_transacao' AS tabelas, 
        data_transacao AS datas, 
        COUNT(*) AS linhas
    FROM sandbox_analytics.se_fepashub_tb_fact_transacao
    GROUP BY data_transacao
    UNION ALL
    SELECT 
        'sandbox_analytics.se_fepascard_tb_dim_bandeiras' AS tabelas, 
        CAST(DATE_ADD(CURRENT_DATE(), INTERVAL 1 YEAR) AS TIMESTAMP) AS datas, 
        COUNT(*) AS linhas
    FROM sandbox_analytics.se_fepascard_tb_dim_bandeiras
    UNION ALL
    SELECT 
        'sandbox_analytics.se_fepascard_tb_dim_rede_destino' AS tabelas, 
        CAST(DATE_ADD(CURRENT_DATE(), INTERVAL 1 YEAR) AS TIMESTAMP) AS datas, 
        COUNT(*) AS linhas
    FROM sandbox_analytics.se_fepascard_tb_dim_rede_destino
    UNION ALL
    SELECT 
        'sandbox_analytics.se_fepashub_tb_dim_rede_captura' AS tabelas, 
        CAST(DATE_ADD(CURRENT_DATE(), INTERVAL 1 YEAR) AS TIMESTAMP) AS datas, 
        COUNT(*) AS linhas
    FROM sandbox_analytics.se_fepashub_tb_dim_rede_captura
    UNION ALL
    SELECT 
        'sandbox_analytics.se_fepashub_tb_dim_status_transacao' AS tabelas, 
        CAST(DATE_ADD(CURRENT_DATE(), INTERVAL 1 YEAR) AS TIMESTAMP) AS datas, 
        COUNT(*) AS linhas
    FROM sandbox_analytics.se_fepashub_tb_dim_status_transacao
    UNION ALL
    SELECT 
        'sandbox_analytics.se_fepashub_tb_dim_tipo_mensagem' AS tabelas, 
        CAST(DATE_ADD(CURRENT_DATE(), INTERVAL 1 YEAR) AS TIMESTAMP) AS datas, 
        COUNT(*) AS linhas
    FROM sandbox_analytics.se_fepashub_tb_dim_tipo_mensagem
    UNION ALL
    SELECT 
        'sandbox_analytics.se_fepashub_tb_dim_tipo_voucher' AS tabelas, 
        CAST(DATE_ADD(CURRENT_DATE(), INTERVAL 1 YEAR) AS TIMESTAMP) AS datas, 
        COUNT(*) AS linhas
    FROM sandbox_analytics.se_fepashub_tb_dim_tipo_voucher
    UNION ALL
    
-------------------df_latam_transacoes
    SELECT 
        'sandbox_planejamento_estrategico.dim_latam_merchant' AS tabelas, 
        boarding_date AS datas, 
        COUNT(*) AS linhas
    FROM sandbox_planejamento_estrategico.dim_latam_merchant
    GROUP BY boarding_date
    UNION ALL
    SELECT 
        'sandbox_planejamento_estrategico.dim_latam_capture_method' AS tabelas, 
        CAST(DATE_ADD(CURRENT_DATE(), INTERVAL 1 YEAR) AS TIMESTAMP) AS datas, 
        COUNT(*) AS linhas
    FROM sandbox_planejamento_estrategico.dim_latam_capture_method
    UNION ALL
    SELECT 
        'sandbox_planejamento_estrategico.dim_latam_currency' AS tabelas, 
        CAST(DATE_ADD(CURRENT_DATE(), INTERVAL 1 YEAR) AS TIMESTAMP) AS datas, 
        COUNT(*) AS linhas
    FROM sandbox_planejamento_estrategico.dim_latam_currency
    UNION ALL
    SELECT 
        'sandbox_planejamento_estrategico.dim_latam_institution' AS tabelas, 
        CAST(DATE_ADD(CURRENT_DATE(), INTERVAL 1 YEAR) AS TIMESTAMP) AS datas, 
        COUNT(*) AS linhas
    FROM sandbox_planejamento_estrategico.dim_latam_institution
    UNION ALL
    SELECT 
        'sandbox_planejamento_estrategico.dim_latam_product' AS tabelas, 
        CAST(DATE_ADD(CURRENT_DATE(), INTERVAL 1 YEAR) AS TIMESTAMP) AS datas, 
        COUNT(*) AS linhas
    FROM sandbox_planejamento_estrategico.dim_latam_product
    UNION ALL
    SELECT 
        'sandbox_planejamento_estrategico.dim_latam_service' AS tabelas, 
        CAST(DATE_ADD(CURRENT_DATE(), INTERVAL 1 YEAR) AS TIMESTAMP) AS datas, 
        COUNT(*) AS linhas
    FROM sandbox_planejamento_estrategico.dim_latam_service
    UNION ALL
    SELECT 
        'sandbox_planejamento_estrategico.dim_latam_tran_type' AS tabelas, 
        CAST(DATE_ADD(CURRENT_DATE(), INTERVAL 1 YEAR) AS TIMESTAMP) AS datas, 
        COUNT(*) AS linhas
    FROM sandbox_planejamento_estrategico.dim_latam_tran_type
    UNION ALL
    --SELECT 'sandbox_planejamento_estrategico.latam_f_gnrc_transactions' AS tabelas, CAST(DATE_ADD(CURRENT_DATE(), INTERVAL 1 YEAR) AS TIMESTAMP) AS datas --FROM sandbox_planejamento_estrategico.latam_f_gnrc_transactions
    --UNION ALL

-------------------df_log_cargas
    SELECT 
        'sandbox_planejamento_estrategico.tb_ap_log_carga' AS tabelas, 
        dt_ult_ref AS datas, 
        COUNT(*) AS linhas
    FROM sandbox_planejamento_estrategico.tb_ap_log_cargas
    GROUP BY dt_ult_ref
    UNION ALL

-------------------df_sexpress
    SELECT 
        'sandbox_analytics.sexpress_tb_crm_account' AS tabelas, 
        created AS datas, 
        COUNT(*) AS linhas
    FROM sandbox_analytics.sexpress_tb_crm_account
    GROUP BY created
    UNION ALL
    SELECT 
        'sexpress_tb_estado_transacao' AS tabelas, 
        CAST(DATE_ADD(CURRENT_DATE(), INTERVAL 1 YEAR) AS TIMESTAMP) AS datas, 
        COUNT(*) AS linhas
    FROM sandbox_analytics.sexpress_tb_estado_transacao
    UNION ALL
    SELECT 
        'sexpress_tb_produtos_transacional' AS tabelas, 
        CAST(DATE_ADD(CURRENT_DATE(), INTERVAL 1 YEAR) AS TIMESTAMP) AS datas, 
        COUNT(*) AS linhas
    FROM sandbox_analytics.sexpress_tb_produtos_transacional
    UNION ALL
    SELECT 
        'sexpress_tb_rede_autorizadora_transacional' AS tabelas, 
        CAST(DATE_ADD(CURRENT_DATE(), INTERVAL 1 YEAR) AS TIMESTAMP) AS datas, 
        COUNT(*) AS linhas
    FROM sandbox_analytics.sexpress_tb_rede_autorizadora_transacional
    UNION ALL
    SELECT 
        'sexpress_tb_tipo_produto_transacional' AS tabelas, 
        CAST(DATE_ADD(CURRENT_DATE(), INTERVAL 1 YEAR) AS TIMESTAMP) AS datas, 
        COUNT(*) AS linhas
    FROM sandbox_analytics.sexpress_tb_tipo_produto_transacional
    UNION ALL
    --SELECT 'dim_contas' AS tabelas, date_column) AS TIMESTAMP) AS datas FROM dim_contas
    --UNION ALL
    --SELECT 'dim_parceiros' AS tabelas, date_column) AS TIMESTAMP) AS datas FROM dim_parceiros
    --UNION AL
    
-------------------df_sexpress_notasfiscais
    SELECT 
        'sandbox_analytics.sexpress_tb_notasfiscais_espelho' AS tabelas, 
        data_emissao AS datas, 
        COUNT(*) AS linhas
    FROM sandbox_analytics.sexpress_tb_notasfiscais_espelho
    GROUP BY data_emissao
    UNION ALL
    SELECT 
        'sandbox_analytics.f_espelho' AS tabelas, 
        data_emissao AS datas, 
        COUNT(*) AS linhas
    FROM sandbox_analytics.sexpress_tb_notasfiscais_espelho
    GROUP BY data_emissao
    UNION ALL
    SELECT 
        'sandbox_analytics.d_periodo' AS tabelas, 
        data_emissao AS datas, 
        COUNT(*) AS linhas
    FROM sandbox_analytics.sexpress_tb_notasfiscais_espelho
    GROUP BY data_emissao
    UNION ALL
    SELECT 
        'sandbox_analytics.tb_canceladas' AS tabelas, 
        data_emissao AS datas, 
        COUNT(*) AS linhas
    FROM sandbox_analytics.sexpress_tb_notasfiscais_espelho
    GROUP BY data_emissao
    UNION ALL
    SELECT 
        'sandbox_analytics.sexpress_tb_notasfiscais_canceladas' AS tabelas, 
        data_emissao AS datas, 
        COUNT(*) AS linhas
    FROM sandbox_analytics.sexpress_tb_notasfiscais_espelho
    GROUP BY data_emissao
    UNION ALL
    SELECT 
        'sandbox_analytics.sexpress_tb_notasfiscais_eventual' AS tabelas, 
        data_pagamento AS datas, 
        COUNT(*) AS linhas
    FROM sandbox_analytics.sexpress_tb_notasfiscais_eventual
    GROUP BY data_pagamento
    UNION ALL
    SELECT 
        'sandbox_analytics.sexpress_tb_notasfiscais_canal' AS tabelas, 
        CAST(DATE_ADD(CURRENT_DATE(), INTERVAL 1 YEAR) AS TIMESTAMP) AS datas, 
        COUNT(*) AS linhas
    FROM sandbox_analytics.sexpress_tb_notasfiscais_canal
    UNION ALL
    SELECT 
        'sandbox_analytics.sexpress_tb_notasfiscais_classificacao' AS tabelas, 
        CAST(DATE_ADD(CURRENT_DATE(), INTERVAL 1 YEAR) AS TIMESTAMP) AS datas, 
        COUNT(*) AS linhas
    FROM sandbox_analytics.sexpress_tb_notasfiscais_classificacao
    UNION ALL
    SELECT 
        'sandbox_analytics.sexpress_tb_notasfiscais_distribuicao' AS tabelas, 
        CAST(DATE_ADD(CURRENT_DATE(), INTERVAL 1 YEAR) AS TIMESTAMP) AS datas, 
        COUNT(*) AS linhas
    FROM sandbox_analytics.sexpress_tb_notasfiscais_distribuicao
    UNION ALL
    --sexpress_tb_notasfiscais_kpis in anomes
    --sexpress_tb_notasfiscais_provisao in anomes
    --tb_provisao in anomes
    --tb_estorno_provisao in anomes
    --isv in sharepoint
    --Executivos in sharepoint
    --excecao_tipo_cobranca in sharepoint


-------------------df_sexpress_transacoes
    SELECT 
        'sandbox_analytics.sexpress_tb_transacional' AS tabelas, 
        dt_transaction AS datas, 
        COUNT(*) AS linhas
    FROM sandbox_analytics.sexpress_tb_transacional
    GROUP BY dt_transaction
    UNION ALL
    SELECT 
        'sandbox_analytics.sexpress_dim_produto_macro' AS tabelas, 
        dt_transaction  AS datas, 
        COUNT(*) AS linhas
    FROM sandbox_analytics.sexpress_tb_transacional
    GROUP BY dt_transaction
    UNION ALL
    SELECT 
        'sandbox_analytics.sexpress_tb_atual' AS tabelas, 
        dt_transaction AS datas, 
        COUNT(*) AS linhas
    FROM sandbox_analytics.sexpress_tb_transacional
    GROUP BY dt_transaction
    UNION ALL
    SELECT 
        'sandbox_analytics.sexpress_tb_consolidado' AS tabelas, 
        dt_transaction AS datas, 
        COUNT(*) AS linhas
    FROM sandbox_analytics.sexpress_tb_transacional
    GROUP BY dt_transaction
    UNION ALL
    SELECT 
        'sandbox_analytics.sexpress_dim_cliente' AS tabelas, 
        CAST(DATE_ADD(CURRENT_DATE(), INTERVAL 1 YEAR) AS TIMESTAMP) AS datas, 
        COUNT(*) AS linhas
    FROM sandbox_analytics.sexpress_dim_cliente
    UNION ALL
    SELECT 
        'sandbox_analytics.sexpress_dim_cnpj' AS tabelas, 
        CAST(DATE_ADD(CURRENT_DATE(), INTERVAL 1 YEAR) AS TIMESTAMP) AS datas, 
        COUNT(*) AS linhas
    FROM sandbox_analytics.sexpress_dim_cnpj
    UNION ALL
    SELECT 
        'sandbox_analytics.sexpress_dim_integrador' AS tabelas, 
        CAST(DATE_ADD(CURRENT_DATE(), INTERVAL 1 YEAR) AS TIMESTAMP) AS datas, 
        COUNT(*) AS linhas
    FROM sandbox_analytics.sexpress_dim_integrador
    UNION ALL
    SELECT 
        'sandbox_planejamento_estrategico.sexpress_tb_serpro_cnaes' AS tabelas, 
        CAST(DATE_ADD(CURRENT_DATE(), INTERVAL 1 YEAR) AS TIMESTAMP) AS datas, 
        COUNT(*) AS linhas
    FROM sandbox_planejamento_estrategico.sexpress_tb_serpro_cnaes
    UNION ALL
    SELECT 
        'sandbox_analytics.sexpress_tb_estado_transacao' AS tabelas, 
        CAST(DATE_ADD(CURRENT_DATE(), INTERVAL 1 YEAR) AS TIMESTAMP) AS datas, 
        COUNT(*) AS linhas
    FROM sandbox_analytics.sexpress_tb_estado_transacao
    UNION ALL
    SELECT 
        'sandbox_analytics.sexpress_tb_produtos_transacional' AS tabelas, 
        CAST(DATE_ADD(CURRENT_DATE(), INTERVAL 1 YEAR) AS TIMESTAMP) AS datas, 
        COUNT(*) AS linhas
    FROM sandbox_analytics.sexpress_tb_produtos_transacional
    UNION ALL
    SELECT 
        'sandbox_analytics.sexpress_tb_rede_autorizadora_transacional' AS tabelas, 
        CAST(DATE_ADD(CURRENT_DATE(), INTERVAL 1 YEAR) AS TIMESTAMP) AS datas, 
        COUNT(*) AS linhas
    FROM sandbox_analytics.sexpress_tb_rede_autorizadora_transacional
    UNION ALL
    -- sexpress_tb_tipo_produto_transacional in df_sexpress
    -- sexpress_tb_crm_account in df_sexpress
    
-------------------df_smartpos
    SELECT 
        'sandbox_analytics.smartpos_tb_fact_sitef_caixa' AS tabelas, 
        datatrans AS datas, 
        COUNT(*) AS linhas
    FROM sandbox_analytics.smartpos_tb_fact_sitef_caixa
    GROUP BY datatrans
    UNION ALL
    SELECT 
        'sandbox_analytics.smartpos_tb_fact_sitef_sicredi' AS tabelas, 
        datatrans AS datas, 
        COUNT(*) AS linhas
    FROM sandbox_analytics.smartpos_tb_fact_sitef_sicredi
    GROUP BY datatrans
    UNION ALL
    SELECT 
        'sandbox_planejamento_estrategico.tb_smartpos_dim_merchant_n' AS tabelas, 
        merchant_boarding_date AS datas, 
        COUNT(*) AS linhas
    FROM sandbox_planejamento_estrategico.tb_smartpos_dim_merchant_n
    GROUP BY merchant_boarding_date
    UNION ALL
    SELECT 
        'sandbox_planejamento_estrategico.tb_smartpos_dim_merchants' AS tabelas, 
        merchant_boarding_date AS datas, 
        COUNT(*) AS linhas
    FROM sandbox_planejamento_estrategico.tb_smartpos_dim_merchants
    GROUP BY merchant_boarding_date
    UNION ALL
    SELECT 
        'sandbox_planejamento_estrategico.tb_smartpos_fact_boarding' AS tabelas, 
        merchant_boarding_date AS datas, 
        COUNT(*) AS linhas
    FROM sandbox_planejamento_estrategico.tb_smartpos_fact_boarding
    GROUP BY merchant_boarding_date
    UNION ALL
    SELECT 
        'sandbox_planejamento_estrategico.tb_smartpos_fact_dados_estatisticos' AS tabelas, 
        dt_ref AS datas, 
        COUNT(*) AS linhas
    FROM sandbox_planejamento_estrategico.tb_smartpos_fact_dados_estatisticos
    GROUP BY dt_ref
    UNION ALL
    SELECT 
        'sandbox_planejamento_estrategico.tb_smartpos_fact_faturamento_new' AS tabelas, 
        capture_date AS datas, 
        COUNT(*) AS linhas
    FROM sandbox_planejamento_estrategico.tb_smartpos_fact_faturamento_new
    GROUP BY capture_date
    UNION ALL
    SELECT 
        'sandbox_planejamento_estrategico.tb_smartpos_fact_rent' AS tabelas, 
        data_ref AS datas, 
        COUNT(*) AS linhas
    FROM sandbox_planejamento_estrategico.tb_smartpos_fact_rent
    GROUP BY data_ref
    UNION ALL
    SELECT 
        'sandbox_analytics.smartpos_tb_dim_clientes_apt' AS tabelas, 
        CAST(DATE_ADD(CURRENT_DATE(), INTERVAL 1 YEAR) AS TIMESTAMP) AS datas, 
        COUNT(*) AS linhas
    FROM sandbox_analytics.smartpos_tb_dim_clientes_apt
    UNION ALL


-------------------df_tefisv
    SELECT 
        'sandbox_analytics.tefisv_tb_dim_calendar' AS tabelas, 
        d AS datas, 
        COUNT(*) AS linhas 
    FROM sandbox_analytics.bintefisv_tb_dim_calendar
    GROUP BY d
    UNION ALL
    SELECT 
        'sandbox_analytics.tefisv_tb_dim_merchant' AS tabelas, 
        merchant_boarding_date AS datas, 
        COUNT(*) AS linhas
    FROM sandbox_analytics.tefisv_tb_dim_merchant
    GROUP BY merchant_boarding_date
    UNION ALL
    SELECT 
        'sandbox_analytics.tefisv_tb_dim_merchant_logical_terminal' AS tabelas, 
        date_last_change AS datas, 
        COUNT(*) AS linhas
    FROM sandbox_analytics.tefisv_tb_dim_merchant_logical_terminal
    GROUP BY date_last_change
    UNION ALL
    SELECT 
        'sandbox_analytics.tefisv_tb_fact_boarding' AS tabelas, 
        boarding_date AS datas, 
        COUNT(*) AS linhas
    FROM sandbox_analytics.tefisv_tb_fact_boarding
    GROUP BY boarding_date
    UNION ALL
    SELECT 
        'sandbox_analytics.tefisv_tb_fact_merchant_billing_terminal' AS tabelas, 
        capture_date AS datas, 
        COUNT(*) AS linhas
    FROM sandbox_analytics.tefisv_tb_fact_merchant_billing_terminal
    GROUP BY capture_date
    UNION ALL
    SELECT 
        'sandbox_analytics.tefisv_tb_fact_prepayment' AS tabelas, 
        data_ref AS datas, 
        COUNT(*) AS linhas
    FROM sandbox_analytics.tefisv_tb_fact_prepayment
    GROUP BY data_ref
    UNION ALL
    SELECT 
        'sandbox_analytics.tefisv_tb_dim_product' AS tabelas, 
        CAST(DATE_ADD(CURRENT_DATE(), INTERVAL 1 YEAR) AS TIMESTAMP) AS datas, 
        COUNT(*) AS linhas
    FROM sandbox_analytics.bintefisv_tb_dim_product
    UNION ALL
    SELECT 
        'sandbox_analytics.tefisv_tb_dim_relationship_channel_act' AS tabelas, 
        CAST(DATE_ADD(CURRENT_DATE(), INTERVAL 1 YEAR) AS TIMESTAMP) AS datas, 
        COUNT(*) AS linhas
    FROM sandbox_analytics.tefisv_tb_dim_relationship_channel_act
    UNION ALL
    
-------------------df_ap_sicredi
    SELECT 
        'tb_ap_antecip_' AS tabelas, 
        event_dt AS datas, 
        COUNT(*) AS linhas
    FROM sandbox_planejamento_estrategico.tb_ap_antecip
    GROUP BY event_dt
    UNION ALL
    SELECT 
        'tb_ap_antecip_sic' AS tabelas, 
        event_dt AS datas, 
        COUNT(*) AS linhas
    FROM sandbox_planejamento_estrategico.tb_ap_antecip
    GROUP BY event_dt
    UNION ALL
    SELECT 
        'tb_ap_faturamento_sic' AS tabelas, 
        event_dt AS datas, 
        COUNT(*) AS linhas
    FROM sandbox_planejamento_estrategico.tb_ap_faturamento
    GROUP BY event_dt
    UNION ALL
    SELECT 
        'tb_ap_tecnologias_sic' AS tabelas, 
        event_dt AS datas, 
        COUNT(*) AS linhas
    FROM sandbox_planejamento_estrategico.tb_ap_tecnologias
    GROUP BY event_dt
    UNION ALL
    SELECT 
        'tb_ap_volumetrias_vendas_sic' AS tabelas, 
        event_dt AS datas, 
        COUNT(*) AS linhas
    FROM sandbox_planejamento_estrategico.tb_ap_volumetrias_vendas
    GROUP BY event_dt
    UNION ALL
    --h_vw_canais in df_adquirencia
    --tb_ap_antecip in df_vendas_faturamento
    --tb_ap_tecnologias in df_vendas_faturamento
    --tb_referencia in df_vendas_faturamento
    --tb_ap_faturamento in df_vendas_faturamento
    
-------------------df_sexpress_temp
    SELECT 
        'sandbox_planejamento_estrategico.transacional_bf_se' AS tabelas, 
        data_trn AS datas, 
        COUNT(*) AS linhas
    FROM sandbox_planejamento_estrategico.transacional_bf_se
    GROUP BY data_trn
    UNION ALL
    
-------------------df_FLEX
    SELECT 
        'sandbox_planejamento_estrategico.d_cadastro' AS tabelas, 
        merchant_boarding_date AS datas, 
        COUNT(*) AS linhas
    FROM sandbox_planejamento_estrategico.h_tb_01_cadastro_nova
    GROUP BY merchant_boarding_date
    UNION ALL
    SELECT 
        'sandbox_planejamento_estrategico.f_antecip' AS tabelas, 
        data_ref AS datas, 
        COUNT(*) AS linhas
    FROM sandbox_planejamento_estrategico.h_tb_04_antecipacao_pura
    GROUP BY data_ref
    UNION ALL
    SELECT 
        'sandbox_planejamento_estrategico.f_faturamento' AS tabelas, 
        dt_ref AS datas, 
        COUNT(*) AS linhas
    FROM sandbox_planejamento_estrategico.tb_flex_faturamento
    GROUP BY dt_ref
    UNION ALL
    SELECT 
        'sandbox_planejamento_estrategico.f_volumetrias_vendas' AS tabelas, 
        event_dt AS datas, 
        COUNT(*) AS linhas
    FROM sandbox_planejamento_estrategico.tb_ap_volumetrias_vendas
    GROUP BY event_dt
    UNION ALL


-------------------df_cubo_consolidado
    SELECT 
        'tb_d_hierarquia' AS tabelas, 
        CAST(DATE_ADD(CURRENT_DATE(), INTERVAL 1 YEAR) AS TIMESTAMP) AS datas, 
        COUNT(*) AS linhas
    FROM sandbox_planejamento_estrategico.tb_d_hierarquia_comercial_sicredi
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
    SELECT 
        'sandbox_analytics.account' AS tabelas, 
        created_at AS datas, 
        COUNT(*) AS linhas
    FROM sandbox_analytics.tb_ap_psp_fiserv_account
    GROUP BY created_at
    UNION ALL
    SELECT 
        'sandbox_analytics.auth' AS tabelas, 
        created_at AS datas, 
        COUNT(*) AS linhas
    FROM sandbox_analytics.tb_ap_psp_fiserv_auth
    GROUP BY created_at
    UNION ALL
    SELECT 
        'sandbox_analytics.charge' AS tabelas, 
        created_at AS datas, 
        COUNT(*) AS linhas
    FROM sandbox_analytics.tb_ap_psp_fiserv_charge
    GROUP BY created_at
    UNION ALL
    SELECT 
        'sandbox_analytics.liquidation' AS tabelas, 
        created_at AS datas, 
        COUNT(*) AS linhas
    FROM sandbox_analytics.tb_ap_psp_fiserv_liquidation
    GROUP BY created_at
    UNION ALL
    SELECT 
        'sandbox_analytics.reverse' AS tabelas, 
        created_at AS datas, 
        COUNT(*) AS linhas
    FROM sandbox_analytics.tb_ap_psp_fiserv_reverse
    GROUP BY created_at
    UNION ALL
    SELECT 
        'sandbox_analytics.resposta_fepas' AS tabelas, 
        CAST(DATE_ADD(CURRENT_DATE(), INTERVAL 1 YEAR) AS TIMESTAMP) AS datas, 
        COUNT(*) AS linhas
    FROM sandbox_analytics.tb_ap_psp_fiserv_resposta
    UNION ALL
    SELECT 
        'sandbox_planejamento_estrategico.contas' AS tabelas, 
        CAST(DATE_ADD(CURRENT_DATE(), INTERVAL 1 YEAR) AS TIMESTAMP) AS datas, 
        COUNT(*) AS linhas
    FROM sandbox_planejamento_estrategico.sexpress_tb_serpro_cnaes
    UNION ALL
    
-------------------df_briefing_crm
    SELECT 
        'sandbox_planejamento_estrategico.df_briefing_crm' AS tabelas, 
        data_campanha AS datas, 
        COUNT(*) AS linhas
    FROM sandbox_planejamento_estrategico.tb_crm_sfmc_retorno_dash
    GROUP BY data_campanha 
    UNION ALL

-------------------df_cef
    SELECT 
        'sandbox_analytics.caixaatacado_tb_dim_merchant' AS tabelas, 
        merchant_boarding_date AS datas, 
        COUNT(*) AS linhas
    FROM sandbox_analytics.caixaatacado_tb_dim_merchant
    GROUP BY merchant_boarding_date
    UNION ALL
    SELECT 
        'sandbox_analytics.caixaatacado_tb_dim_merchant_logical_terminal' AS tabelas, 
        date_last_change AS datas, 
        COUNT(*) AS linhas
    FROM sandbox_analytics.caixaatacado_tb_dim_merchant_logical_terminal
    GROUP BY date_last_change
    UNION ALL
    SELECT 
        'sandbox_analytics.caixaatacado_tb_fact_boarding' AS tabelas, 
        boarding_date AS datas, 
        COUNT(*) AS linhas
    FROM sandbox_analytics.caixaatacado_tb_fact_boarding
    GROUP BY boarding_date
    UNION ALL
    SELECT 
        'sandbox_analytics.caixaatacado_tb_fact_merchant_billing_terminal' AS tabelas, 
        sales_date AS datas, 
        COUNT(*) AS linhas
    FROM sandbox_analytics.caixaatacado_tb_fact_merchant_billing_terminal
    GROUP BY sales_date
    UNION ALL
    SELECT 
        'sandbox_analytics.caixaatacado_tb_fact_prepayment' AS tabelas, 
        data_ref AS datas, 
        COUNT(*) AS linhas
    FROM sandbox_analytics.caixaatacado_tb_fact_prepayment
    GROUP BY data_ref
    UNION ALL
    SELECT 
        'sandbox_analytics.caixalotericas_tb_dim_merchant' AS tabelas, 
        merchant_boarding_date AS datas, 
        COUNT(*) AS linhas
    FROM sandbox_analytics.caixalotericas_tb_dim_merchant
    GROUP BY merchant_boarding_date
    UNION ALL
    SELECT 
        'sandbox_analytics.caixalotericas_tb_dim_merchant_logical_terminal' AS tabelas, 
        date_last_change AS datas, 
        COUNT(*) AS linhas
    FROM sandbox_analytics.caixalotericas_tb_dim_merchant_logical_terminal
    GROUP BY date_last_change
    UNION ALL
    SELECT 
        'sandbox_analytics.caixalotericas_tb_fact_merchant_billing_terminal' AS tabelas, 
        sales_date AS datas, 
        COUNT(*) AS linhas
    FROM sandbox_analytics.caixalotericas_tb_fact_merchant_billing_terminal
    GROUP BY sales_date
    UNION ALL
    SELECT 
        'sandbox_analytics.caixamonit_tb_contatados' AS tabelas, 
        dt_ref_alerta AS datas, 
        COUNT(*) AS linhas
    FROM sandbox_analytics.caixamonit_tb_contatados
    GROUP BY dt_ref_alerta
    UNION ALL
    SELECT 
        'sandbox_analytics.caixamonit_tb_monitoramento_inat' AS tabelas, 
        dt_atualizacao AS datas, 
        COUNT(*) AS linhas
    FROM sandbox_analytics.caixamonit_tb_monitoramento_inat
    GROUP BY dt_atualizacao
    UNION ALL
    SELECT 
        'sandbox_analytics.caixamonit_tb_monitoramento_na' AS tabelas, 
        dt_atualizacao AS datas, 
        COUNT(*) AS linhas
    FROM sandbox_analytics.caixamonit_tb_monitoramento_na
    GROUP BY dt_atualizacao
    UNION ALL
    SELECT 
        'sandbox_analytics.caixamonit_tb_monitoramento_oc' AS tabelas, 
        dt_atualizacao AS datas, 
        COUNT(*) AS linhas
    FROM sandbox_analytics.caixamonit_tb_monitoramento_oc
    GROUP BY dt_atualizacao
    UNION ALL
    SELECT 
        'sandbox_analytics.caixamonit_tb_monitoramento_qf' AS tabelas, 
        dt_atualizacao AS datas, 
        COUNT(*) AS linhas
    FROM sandbox_analytics.caixamonit_tb_monitoramento_qf
    GROUP BY dt_atualizacao
    UNION ALL
    SELECT 
        'sandbox_analytics.churn_tb_lista_clientes_caixa' AS tabelas, 
        dt_ref_alerta AS datas, 
        COUNT(*) AS linhas
    FROM sandbox_analytics.churn_tb_lista_clientes_caixa
    GROUP BY dt_ref_alerta
    UNION ALL
    SELECT 
        'sandbox_analytics.churn_tb_lista_clientes_caixa_agg' AS tabelas, 
        dt_ref_alerta AS datas, 
        COUNT(*) AS linhas
    FROM sandbox_analytics.churn_tb_lista_clientes_caixa_agg
    GROUP BY dt_ref_alerta
    UNION ALL
    SELECT 
        'sandbox_planejamento_estrategico.h_tb_07_tecnologia_equipamento' AS tabelas, 
        busi_dt AS datas, 
        COUNT(*) AS linhas
    FROM sandbox_planejamento_estrategico.h_tb_07_tecnologia_equipamento
    GROUP BY busi_dt
    UNION ALL
    SELECT 
        'tb_ap_caixa_pjmais_cadastro' AS tabelas, 
        merchant_boarding_date AS datas, 
        COUNT(*) AS linhas
    FROM sandbox_planejamento_estrategico.tb_ap_caixa_pjmais_cadastro
    GROUP BY merchant_boarding_date
    UNION ALL
    SELECT 
        'tb_ap_caixa_pjmais_transacoes' AS tabelas, 
        data_ref AS datas, 
        COUNT(*) AS linhas
    FROM sandbox_planejamento_estrategico.tb_ap_caixa_pjmais_transacoes
    GROUP BY data_ref
    UNION ALL
    SELECT 
        'tb_ap_cubo_caixa' AS tabelas, 
        data_ref AS datas, 
        COUNT(*) AS linhas
    FROM sandbox_planejamento_estrategico.tb_ap_cubo_caixa
    GROUP BY data_ref
    UNION ALL
    SELECT 
        'tb_ap_cubo_caixa_cadastro' AS tabelas, 
        dt_boarding AS datas, 
        COUNT(*) AS linhas
    FROM sandbox_planejamento_estrategico.tb_ap_cubo_caixa_cadastro
    GROUP BY dt_boarding
    UNION 
    SELECT 
        'sandbox_planejamento_estrategico.tb_ap_cef_inativos' AS tabelas, 
        dt_boarding AS datas, 
        COUNT(*) AS linhas
    FROM sandbox_planejamento_estrategico.tb_ap_cubo_caixa_cadastro
    GROUP BY dt_boarding
    UNION ALL
    SELECT 
        'sandbox_planejamento_estrategico.tb_ap_cef_nunca_ativados' AS tabelas, 
        dt_boarding AS datas, 
        COUNT(*) AS linhas
    FROM sandbox_planejamento_estrategico.tb_ap_cubo_caixa_cadastro
    GROUP BY dt_boarding
    UNION ALL
    SELECT 
        'sandbox_analytics.caixaatacado_tb_dim_product' AS tabelas, 
        CAST(DATE_ADD(CURRENT_DATE(), INTERVAL 1 YEAR) AS TIMESTAMP) AS datas, 
        COUNT(*) AS linhas
    FROM sandbox_analytics.caixaatacado_tb_dim_product
    UNION ALL
    SELECT 
        'sandbox_analytics.caixaatacado_tb_dim_relationship_channel_act' AS tabelas, 
        CAST(DATE_ADD(CURRENT_DATE(), INTERVAL 1 YEAR) AS TIMESTAMP) AS datas, 
        COUNT(*) AS linhas
    FROM sandbox_analytics.caixaatacado_tb_dim_relationship_channel_act
    UNION ALL
    SELECT 
        'sandbox_analytics.caixalotericas_tb_dim_cnpj_pgw' AS tabelas, 
        CAST(DATE_ADD(CURRENT_DATE(), INTERVAL 1 YEAR) AS TIMESTAMP) AS datas, 
        COUNT(*) AS linhas
    FROM sandbox_analytics.caixalotericas_tb_dim_cnpj_pgw
    UNION ALL
    SELECT 
        'sandbox_analytics.caixalotericas_tb_dim_geography' AS tabelas, 
        CAST(DATE_ADD(CURRENT_DATE(), INTERVAL 1 YEAR) AS TIMESTAMP) AS datas, 
        COUNT(*) AS linhas
    FROM sandbox_analytics.caixalotericas_tb_dim_geography
    UNION ALL
    SELECT 
        'sandbox_analytics.caixalotericas_tb_dim_product' AS tabelas, 
        CAST(DATE_ADD(CURRENT_DATE(), INTERVAL 1 YEAR) AS TIMESTAMP) AS datas, 
        COUNT(*) AS linhas
    FROM sandbox_analytics.caixalotericas_tb_dim_product
    UNION ALL
    SELECT 
    'sandbox_analytics.caixalotericas_tb_dim_relationship_channel_act' AS tabelas, 
    CAST(DATE_ADD(CURRENT_DATE(), INTERVAL 1 YEAR) AS TIMESTAMP) AS datas, 
    COUNT(*) AS linhas
    FROM sandbox_analytics.caixalotericas_tb_dim_relationship_channel_act
    UNION 
    SELECT 
        'sandbox_analytics.caixamonit_dim_modelo' AS tabelas, 
        CAST(DATE_ADD(CURRENT_DATE(), INTERVAL 1 YEAR) AS TIMESTAMP) AS datas, 
        COUNT(*) AS linhas
    FROM sandbox_analytics.caixamonit_dim_modelo
    UNION ALL
    SELECT 
        'dominio.estado' AS tabelas, 
        CAST(DATE_ADD(CURRENT_DATE(), INTERVAL 1 YEAR) AS TIMESTAMP) AS datas, 
        COUNT(*) AS linhas
    FROM dominio.estado
    UNION ALL
    SELECT 
        'dominio.mcc' AS tabelas, 
        CAST(DATE_ADD(CURRENT_DATE(), INTERVAL 1 YEAR) AS TIMESTAMP) AS datas, 
        COUNT(*) AS linhas
    FROM dominio.mcc
    UNION ALL
    SELECT 
        'sandbox_planejamento_estrategico.tb_ap_d_segmento_presumido_valores' AS tabelas, 
        CAST(DATE_ADD(CURRENT_DATE(), INTERVAL 1 YEAR) AS TIMESTAMP) AS datas, 
        COUNT(*) AS linhas
    FROM sandbox_planejamento_estrategico.tb_ap_d_segmento_presumido_valores



---------------------------------------------------------------------
),

calculadora as (
    SELECT
        tabelas,
        CAST(AVG(linhas) AS DECIMAL) as media_linhas,
        CAST(STDDEV(linhas) AS DECIMAL) as devio_padrao_linhas
    FROM mapeamento_tabelas 
    GROUP BY tabelas
)

SELECT 
    split_part(m.tabelas, '.', 1) AS sandbox,
    split_part(m.tabelas, '.', 2) AS tabelas,
    m.datas AS datas, 
    m.linhas AS linhas,
    c.media_linhas,
    c.devio_padrao_linhas,
    CAST((c.media_linhas - c.devio_padrao_linhas) AS DECIMAL) as limite_inferior,
    CASE 
        WHEN m.linhas < (c.media_linhas - c.devio_padrao_linhas)
        THEN "NOK"
        ELSE "OK"
    END AS critica
FROM mapeamento_tabelas m
LEFT JOIN calculadora c ON c.tabelas = m.tabelas
ORDER BY critica ASC


