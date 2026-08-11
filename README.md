# Configuração Pessoal do Neovim (Baseada no LazyVim)

Esta é uma configuração estritamente pessoal, desenvolvida para atender às minhas necessidades diárias de desenvolvimento, e não tem o objetivo de competir com distribuições consolidadas do ecossistema Neovim.

## 🛠️ Requisitos

* Os mesmos pré-requisitos exigidos pelo [LazyVim](https://www.lazyvim.org/).
* `pio` (PlatformIO Core) instalado globalmente para o funcionamento do plugin do PlatformIO.

---

## 🚀 Uso em Projetos PlatformIO

Para que o `clangd` funcione corretamente (evitando diagnósticos falsos e falta de referências), é necessário gerar o arquivo `compile_commands.json` na raiz do projeto. Para isso, execute o seguinte comando:

```bash
pio run -t compiledb
```

Isso permitirá que o clangd indexe o projeto adequadamente.
Tratando falsos positivos do Clangd

Mesmo com o banco de dados de compilação gerado, o clangd pode apresentar warnings ou erros visuais devido a flags específicas do toolchain da arquitetura do microcontrolador (que não são nativamente reconhecidas por ele).

Para mitigar a poluição visual causada por esses falsos positivos, crie um arquivo chamado .clangd na raiz do seu projeto com o seguinte conteúdo:

```YAML
CompileFlags:
  Remove:
    - -mlongcalls
    - -mtext-section-literals
    - -fipa-pta
    - -free
```

Com esse conjunto mínimo de ajustes, o ambiente estará totalmente funcional e pronto para o desenvolvimento com o PlatformIO de forma confortável.

## 🌐 Uso Geral (Outras Linguagens)

Para projetos que não utilizam o PlatformIO ou que rodam em outras linguagens, o ecossistema funciona de forma nativa e automática. Todas as linguagens suportadas e declaradas em lua/plugins/lsp.lua funcionarão sem a necessidade de configurações adicionais (inclusive projetos em C/C++ convencionais que não sejam voltados para embarcados).
