import os
import subprocess
from datetime import datetime

# ✅ Lista de datas a serem preenchidas com commits retroativos
datas_para_commit = [
    "2024-07-01", "2024-07-03", "2024-07-05",
    "2024-08-07", "2024-09-12", "2024-10-15",
    "2024-11-18", "2024-12-20"
]

# 🧠 Função que faz um commit em uma data específica
def fazer_commit_em_data(data_str):
    data = datetime.strptime(data_str, "%Y-%m-%d")
    nome_arquivo = f"commit_{data_str}.txt"

    # Cria o arquivo com conteúdo de teste
    with open(nome_arquivo, "w") as f:
        f.write(f"Commit automático em {data_str}\n")

    # Adiciona o arquivo ao Git
    subprocess.run(["git", "add", nome_arquivo])

    # Define variáveis de ambiente para autor e data retroativa
    env = os.environ.copy()
    data_formatada = data.strftime("%Y-%m-%dT12:00:00")
    env["GIT_AUTHOR_DATE"] = data_formatada
    env["GIT_COMMITTER_DATE"] = data_formatada

    # Faz o commit com mensagem personalizada
    subprocess.run(["git", "commit", "-m", f"Commit retroativo em {data_str}"], env=env)

# 🔁 Executa para cada data
for data in datas_para_commit:
    fazer_commit_em_data(data)

# 🔁 Faz o push ao final
subprocess.run(["git", "push", "origin", "main"])  # ou "master", se for seu branch principal
