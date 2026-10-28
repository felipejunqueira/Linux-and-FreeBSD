# 🐧 Linux vs. FreeBSD: Arquitetura, Filosofia e Mecânica de Kernel

Estudo aprofundado comparando os dois ecossistemas fundamentais do universo Unix-like: a abordagem pragmática e modular do **Linux** versus a coerência arquitetural integrada do **FreeBSD**.

[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](./LICENSE)

---

## 📖 Artigos e Ensaios

O repositório inclui ensaios teóricos completos disponíveis em português e inglês:
* 🇧🇷 **[A Filosofia e a História: Pragmatismo vs. Coerência](./A%20filosofia%20e%20a%20história.md)**
* 🇺🇸 **[Philosophy and History: Pragmatism vs. Coherence](./Philosophy%20and%20History_%20Pragmatism%20vs.md)**

### Tópicos Abordados:
- **Origens e Genealogia:** A linhagem direta do BSD (Bell Labs, CSRG Berkeley) versus a gênese independente de Linus Torvalds.
- **Modelo de Desenvolvimento:** "O Bazar" (distribuições, múltiplos subsistemas) vs. "A Catedral" (sistema-base unificado com `src`).
- **Mecanismos de Inicialização:** `systemd` e modularidade dinâmica versus o `rc.d` clássico e determinístico do BSD.
- **Licenciamento:** GPLv2 (Copyleft restritivo) versus Licença BSD (Permissiva e orientada à indústria).

---

## 💻 Demonstração Prática: A Ilusão da Memória (`LinuxFreeBSD.c`)

O programa `LinuxFreeBSD.c` disseca experimentalmente como o kernel abstrai a memória para processos de espaço de usuário:
- Demonstra a chamada de sistema `fork()` e a duplicação do espaço de endereçamento virtual.
- Evidencia a mecânica de **Copy-on-Write (CoW)**: como ponteiros virtuais idênticos em pai e filho apontam para a mesma moldura física de página até que ocorra uma escrita.

### Como Compilar e Executar:
```bash
# Compilar com GCC ou Clang
gcc -Wall -Wextra LinuxFreeBSD.c -o memory_cow

# Executar
./memory_cow
```

---

## 👤 Autor

* **Felipe Junqueira Leite**  
  * Graduando em Ciência da Computação — **UFABC**  
  * GitHub: [@felipejunqueira](https://github.com/felipejunqueira)
