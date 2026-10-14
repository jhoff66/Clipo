<p align="center"><img src="docs/icon.png" width="128" alt="Ícone do Clipo"></p>

<h1 align="center">Clipo</h1>

<p align="center">Gerenciador de área de transferência para macOS, na barra de menus.<br>Guarda o que você copia e cola de novo com um atalho.</p>

## Instalar

No Terminal:

```bash
curl -fsSL https://raw.githubusercontent.com/jhoff66/Clipo/main/install.sh | bash
```

O comando baixa a última versão, instala em **Aplicativos** e abre o Clipo. Rodar de novo atualiza.

Funciona em Macs Apple Silicon e Intel, com macOS 13 ou superior.

### Ou baixando manualmente

1. Baixe o `Clipo.zip` na [última versão](https://github.com/jhoff66/Clipo/releases/latest).
2. Descompacte e arraste o **Clipo.app** para a pasta **Aplicativos**.
3. Na primeira abertura o macOS bloqueia o app, porque ele não é assinado por um desenvolvedor cadastrado na Apple. Libere em **Ajustes do Sistema > Privacidade e Segurança > Abrir Mesmo Assim**, ou rode `xattr -cr /Applications/Clipo.app` no Terminal.

## Permissão de Acessibilidade

Para colar direto no app em uso, o Clipo simula ⌘V, e o macOS exige a permissão de Acessibilidade. Abra **Ajustes do Sistema > Privacidade e Segurança > Acessibilidade** e ative a chave do **Clipo**.

Sem a permissão o Clipo continua funcionando, mas só copia o item; você cola com ⌘V.

## Como usar

- **Clique no clipe** da barra de menus ou aperte **⌘2** para abrir a lista. O clique direito abre o menu.
- Na lista, digite para buscar e use as teclas:

| Tecla | Ação |
|---|---|
| ↑ ↓ | navegar |
| Enter | colar o item selecionado |
| ⇧Enter | só copiar, sem colar |
| 1–9 | colar direto o item numerado |
| ⌘D | favoritar ou desfavoritar |
| ⌘⌫ | excluir |
| Esc | fechar |

Nas **Preferências** você troca o atalho e escolhe quantos itens guardar (5 a 50), quais botões aparecem em cada item e onde a lista abre. Favoritos não têm limite. Conteúdo de gerenciadores de senha não é guardado.

## Desinstalar

Feche o Clipo e rode:

```bash
rm -rf /Applications/Clipo.app ~/Library/Application\ Support/Clipo
```

---

Powered by **Jhosefer Luque**. © 2026, todos os direitos reservados. Uso gratuito; veja a [licença](LICENSE).
