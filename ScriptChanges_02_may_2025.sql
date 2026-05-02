-- Script: Add invalidated_tokens table for JWT logout blacklist
-- Date: 02-May-2025
-- Run this script in each tenant DB (emr, emr2, ...)

-- 1. Main table
CREATE TABLE `invalidated_tokens` (
    `id`           bigint NOT NULL,
    `token`        VARCHAR(512) NOT NULL,
    `username`     varchar(255) DEFAULT NULL,
    `expiry`       datetime(6) NOT NULL,
    `logout_time`  datetime(6) NOT NULL,
    PRIMARY KEY (`id`),
    KEY `idx_expiry` (`expiry`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 2. Sequence table (required by Hibernate GenerationType.AUTO)
CREATE TABLE `invalidated_tokens_seq` (
    `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 3. Seed the sequence
INSERT INTO `invalidated_tokens_seq` VALUES (1);
