# Curso Chef

#### Gerando o "cookbook"
```bash
chef generate cookbook cookbooks/apache apache
```

#### Gerando uma receita
```bash
chef generate recipe cookbooks/apache/ server
```

#### Rodar uma receita especifica
```bash 
sudo chef-client -z cookbooks/apache/recipes/server.rb
```

#### Rodar uma receita em um cookbook especifico
```bash 
sudo chef-client -z --runlist "apache::server"
```

ou

```bash 
sudo chef-client -z -r "apache::server"
```

#### Rodar mais de uma receita em cookbooks diferentes
```bash 
sudo chef-client -zr "recipe[workstation::setup],recipe[apache::server]"
```

#### Rodar a receita default de um cookbook
```bash 
sudo chef-client -zr "recipe[apache]"
```

#### Rodar a receita default de mais de um cookbook
```bash 
sudo chef-client -zr "recipe[workstation],recipe[apache]"
```
