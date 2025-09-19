#!/usr/bin/env python3
"""
简单的HTTP服务器，用于解决CORS问题
运行此脚本后，在浏览器中访问 http://localhost:8000
"""

import http.server
import socketserver
import os
import webbrowser
from urllib.parse import unquote

class CORSRequestHandler(http.server.SimpleHTTPRequestHandler):
    def end_headers(self):
        # 添加CORS头
        self.send_header('Access-Control-Allow-Origin', '*')
        self.send_header('Access-Control-Allow-Methods', 'GET, POST, OPTIONS')
        self.send_header('Access-Control-Allow-Headers', 'Content-Type')
        super().end_headers()
    
    def do_OPTIONS(self):
        # 处理预检请求
        self.send_response(200)
        self.end_headers()
    
    def log_message(self, format, *args):
        # 自定义日志格式
        print(f"[{self.date_time_string()}] {format % args}")

def start_server():
    PORT = 8000
    
    # 确保在正确的目录中启动服务器
    os.chdir(os.path.dirname(os.path.abspath(__file__)))
    
    with socketserver.TCPServer(("", PORT), CORSRequestHandler) as httpd:
        print(f"🚀 服务器已启动!")
        print(f"📁 服务目录: {os.getcwd()}")
        print(f"🌐 访问地址: http://localhost:{PORT}")
        print(f"📖 绘本平台: http://localhost:{PORT}/index.html")
        print(f"🧪 文件测试: http://localhost:{PORT}/test-file-access.html")
        print("\n按 Ctrl+C 停止服务器")
        
        # 自动打开浏览器
        try:
            webbrowser.open(f'http://localhost:{PORT}/index.html')
        except:
            pass
        
        try:
            httpd.serve_forever()
        except KeyboardInterrupt:
            print("\n\n🛑 服务器已停止")

if __name__ == "__main__":
    start_server()

