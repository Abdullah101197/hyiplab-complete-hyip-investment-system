INSERT INTO `email_sms_templates` (`act`, `name`, `subj`, `email_body`, `sms_body`, `shortcodes`, `email_status`, `sms_status`, `created_at`, `updated_at`) VALUES
('BALANCE_TRANSFER', 'Balance Transfer', 'Balance Transfer', NULL, NULL, '{\"wallet_type\":\"Wallet Type\",\"amount\":\"Amount\",\"charge\":\"Charge\",\"afterCharge\":\"After Charge\",\"post_balance\":\"Post Balance\",\"currency\":\"Currency Text\",\"receiver\":\"Receiver\"}', 1, 1, NULL, NULL),
('BALANCE_RECEIVE', 'Balance Receive', 'Balance Receive', NULL, NULL, '{\"wallet_type\":\"Wallet Type\",\"amount\":\"Amount\",\"post_balance\":\"Post Balance\",\"currency\":\"Currency Text\",\"sender\":\"Sender\"}', 1, 1, NULL, NULL);


ALTER TABLE general_settings 
add `p_charge` decimal(18,8) NOT NULL DEFAULT 0.00000000 COMMENT 'Percent Charge'
AFTER sn;


ALTER TABLE general_settings 
add  `f_charge` decimal(18,8) NOT NULL DEFAULT 0.00000000 COMMENT 'Fixed Charge'
AFTER sn;

ALTER TABLE general_settings 
add  `b_transfer` int(1) NOT NULL DEFAULT 0 COMMENT 'Balance Transfer Status'
AFTER sn;
