<?php
if (function_exists('opcache_reset')) {
    if (opcache_reset()) {
        echo "✅ OPcache limpado com sucesso!";
    } else {
        echo "❌ Falha ao limpar o OPcache.";
    }
} else {
    echo "⚠️ A extensão OPcache não está ativa nesta instância.";
}