# Projeto para manuseio de popups

Os testes foram desenvolvidos com o framework Cucumber, Capybara para os step definitions e Rspec para validação dos resultados esperados. O projeto está estruturado utilizando padrão page objects em linguagem Ruby. Um relatório é criado no final da execução dos testes em HTML. O projeto está associado ao Circle Ci para ingração contínua.

O objetivo é testar modais, popups e carrossel de fotos do bootstrap.

# O projeto está estruturado da seguinte forma:

- popup_modal_carousel
    * cucumber
      + features
        * hooks
        * page_objects (trabalha com a gem site_prism para o padrão page objects)
        * specifications (Cucumber BDD)
        * step_definitions (desenvolvido em Capybara, Ruby e Rspec)
        - support
          * config
          * knowledgebase
      + screenshots
        - test_passed
          * run_date
        - test_failed
          * run_date
      * cucumber.yml (for Circle ci)
      + features_report.json (trabalha gerando relatórios em html quando associado o json ao plugin do Jenkins)
      + features_report.html (relatório da execução dos testes em html com screenshot nos resultados esperados)

# Driver necessário:

- Por padrão os testes serão executados no Chrome.
- Instale o Nodejs (Next, Next e Finish) https://nodejs.org/en/ e depois o comando abaixo:

```ruby
npm install -g chromedriver
```

# Configurando o ambiente:

- Necessário ruby 2.3.3
- Instalando o bundler. Navegue na pasta \popup_modal_carousel e execute o seguinte comando:

```ruby
gem install bundler
```

# Instalando as gems:
Execute o seguinte comando dentro da raiz do projeto:

```ruby
bundle install
```

# Executando os testes:

Na pasta \popup_modal_carousel\cucumber, execute o comando abaixo para execução de todos os testes:

```ruby
cucumber
```

# Relatório dos testes em HTML:
Após a execução dos testes estará disponível um relatório na pasta \popup_modal_carousel\cucumber\features_report.html
obs.: Os screenshots estarão disponíveis no pé de cada funcionalidade do relatório.
