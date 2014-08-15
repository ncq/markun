# -*- coding: utf-8 -*-
# unicornワーカープロセスの数
worker_processes 2

# pidFileのパス
pid "tmp/pids/unicorn.pid"
# ログFileのパス
stderr_path "log/unicorn.stderr.log"
stdout_path "log/unicorn.stdout.log"

