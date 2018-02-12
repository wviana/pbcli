# pbcli

A cli for a internal project manager used in the company that I work for

## Dependencies

### jq
You'll need [jq](https://stedolan.github.io/jq/) for running this application.

Mac: `brew install jq` 

Debian/Ubuntu: `sudo apt install jq`


### Projectbox acoount
You'll also need valid user and password for acessing [projectbox](http://projectbox.softbox.com.br)

### Projectbox autentication cookie.
- Get into [projectbox](http://projectbox.softbox.com.br)
- open your browser inspector (probably F12)
- select the network tab
- find a request having the authentication cookie.

Authentication cookie will look like this 
```
Cookie: authtoken=d2VzbGV5dmlhbmElYWM3Mzg2NDU3O6ZmM2NIxNjYWFhOGY5ZTAyY2RmYjVT%3D; roles=%7B%22RmvFeriado%22%3Atrue%2C%22CadEditTarefa%22%3Atrue%2C%22VisualizarAlocacaoRecursos%22%3Atrue%2C%22BuscarUsuario%22%3Atrue%2C%22CadEditClassTarefa%22%3Atrue%2C%22EditDiarioBordo%22%3Atrue%2C%22CadEditFeriado%22%3Atrue%2C%22VisAtvRecurso%22%3Atrue%2C%22RmvCmpPersl%22%3Atrue%2C%22BuscarProjeto%22%3Atrue%2C%22RelMarcosEntregas%22%3Atrue%2C%22RmvPrjtCmpPersl%22%3Atrue%2C%22RmvSprint%22%3Atrue%2C%22MenuCad%22%3Atrue%2C%22ValidaScoreTarefa%22%3Atrue%2C%22BuscarIssue%22%3Atrue%2C%22CadEditRecurso%22%3Atrue%2C%22RmvIssue%22%3Atrue%2C%22RmvRelease%22%3Atrue%2C%22BuscarRecurso%22%3Atrue%2C%22MenuProj%22%3Atrue%2C%22VisIssuesPrivados%22%3Atrue%2C%22CadEditCmpPersl%22%3Atrue%2C%22CadEditRelease%22%3Atrue%2C%22BuscarTarefa%22%3Atrue%2C%22CadEditSprint%22%3Atrue%2C%22AltStatusTarefaOutros%22%3Atrue%2C%22CadEditIssue%22%3Atrue%2C%22RmvItemDiarioBordo%22%3Atrue%2C%22ResetarSenha%22%3Atrue%2C%22RmvTarefa%22%3Atrue%2C%22BuscarTiposTarefa%22%3Atrue%2C%22BuscarHistoria%22%3Atrue%2C%22SprintTaskBoard%22%3Atrue%2C%22RmvHistoria%22%3Atrue%2C%22CadEditMarco%22%3Atrue%2C%22CadPrjtCmpPersl%22%3Atrue%2C%22RmvAnexoTarefa%22%3Atrue%2C%22InserirProjetoAlocacao%22%3Atrue%2C%22CadEditHistoria%22%3Atrue%2C%22RelAlocacao%22%3Atrue%2C%22VisClassTarefa%22%3Atrue%2C%22EditIssueOutros%22%3Atrue%2C%22EditProductBacklog%22%3Atrue%2C%22RmvAnexoIssue%22%3Atrue%2C%22VisGrafTarefasTask%22%3Atrue%2C%22BuscarCmpPersl%22%3Atrue%2C%22RelAcompanhamento%22%3Atrue%2C%22CadEditUsuario%22%3Atrue%2C%22AlterarStatusTarefaForaSprint%22%3Atrue%2C%22CadHistoriaMassa%22%3Atrue%2C%22EditRmvComentario%22%3Atrue%2C%22RmvAnexoHistoria%22%3Atrue%2C%22RmvRecurso%22%3Atrue%2C%22VisDiarioBordo%22%3Atrue%2C%22MinhasAtividades%22%3Atrue%2C%22CadTarefaMassa%22%3Atrue%2C%22MenuRelat%22%3Atrue%2C%22CadEditProjeto%22%3Atrue%7D; userinfo=%7B%22senha_resetada%22%3Afalse%2C%22ativo%22%3Atrue%2C%22primeiro_acesso%22%3Afalse%2C%22roles%22%3A%7B%22RmvFeriado%22%3Atrue%2C%22CadEditTarefa%22%3Atrue%2C%22VisualizarAlocacaoRecursos%22%3Atrue%2C%22BuscarUsuario%22%3Atrue%2C%22CadEditClassTarefa%22%3Atrue%2C%22EditDiarioBordo%22%3Atrue%2C%22CadEditFeriado%22%3Atrue%2C%22VisAtvRecurso%22%3Atrue%2C%22RmvCmpPersl%22%3Atrue%2C%22BuscarProjeto%22%3Atrue%2C%22RelMarcosEntregas%22%3Atrue%2C%22RmvPrjtCmpPersl%22%3Atrue%2C%22RmvSprint%22%3Atrue%2C%22MenuCad%22%3Atrue%2C%22ValidaScoreTarefa%22%3Atrue%2C%22BuscarIssue%22%3Atrue%2C%22CadEditRecurso%22%3Atrue%2C%22RmvIssue%22%3Atrue%2C%22RmvRelease%22%3Atrue%2C%22BuscarRecurso%22%3Atrue%2C%22MenuProj%22%3Atrue%2C%22VisIssuesPrivados%22%3Atrue%2C%22CadEditCmpPersl%22%3Atrue%2C%22CadEditRelease%22%3Atrue%2C%22BuscarTarefa%22%3Atrue%2C%22CadEditSprint%22%3Atrue%2C%22AltStatusTarefaOutros%22%3Atrue%2C%22CadEditIssue%22%3Atrue%2C%22RmvItemDiarioBordo%22%3Atrue%2C%22ResetarSenha%22%3Atrue%2C%22RmvTarefa%22%3Atrue%2C%22BuscarTiposTarefa%22%3Atrue%2C%22BuscarHistoria%22%3Atrue%2C%22SprintTaskBoard%22%3Atrue%2C%22RmvHistoria%22%3Atrue%2C%22CadEditMarco%22%3Atrue%2C%22CadPrjtCmpPersl%22%3Atrue%2C%22RmvAnexoTarefa%22%3Atrue%2C%22InserirProjetoAlocacao%22%3Atrue%2C%22CadEditHistoria%22%3Atrue%2C%22RelAlocacao%22%3Atrue%2C%22VisClassTarefa%22%3Atrue%2C%22EditIssueOutros%22%3Atrue%2C%22EditProductBacklog%22%3Atrue%2C%22RmvAnexoIssue%22%3Atrue%2C%22VisGrafTarefasTask%22%3Atrue%2C%22BuscarCmpPersl%22%3Atrue%2C%22RelAcompanhamento%22%3Atrue%2C%22CadEditUsuario%22%3Atrue%2C%22AlterarStatusTarefaForaSprint%22%3Atrue%2C%22CadHistoriaMassa%22%3Atrue%2C%22EditRmvComentario%22%3Atrue%2C%22RmvAnexoHistoria%22%3Atrue%2C%22RmvRecurso%22%3Atrue%2C%22VisDiarioBordo%22%3Atrue%2C%22MinhasAtividades%22%3Atrue%2C%22CadTarefaMassa%22%3Atrue%2C%22MenuRelat%22%3Atrue%2C%22CadEditProjeto%22%3Atrue%7D%2C%22id_funcionalidade%22%3A%22AlterarStatusTarefaForaSprint%22%2C%22nome%22%3A%22Wesley%20Viana%22%2C%22id%22%3A196%2C%22login%22%3A%22wesleyviana%22%7D; JSESSIONID=6lYeBKodZIBj4VtVR9Jv8uOyHLXUMneYV62kwNp6.projectbox
``` 

- Place this on `cookie` file on the same folder as you have the *pbcli* script.

## Usage

For now we have a ideia of how most of the usage will look like. It's inpired by docker cli interface.

```
usage: 
  ./pbcli <command> <options>
```

For now there is just a test command that shows all projects you're in.

`./pbcli projeto ls`  or just `./pbcli projeto` 

The ideia is to be able to list all projets by the command above. Than you would be able to list all sprints in a project by `./pbcli sprint -p <projet-id> ls`.

Something simillar for stories in a sprint (`./pbcli stories -p <project-id> -s <sprint-id> ls`) and continue the ideia until as specific task.

## Contribution

Please feel free to colaborate with the project by:  
- [openning issues](https://github.com/wviana/pbcli/issues).
- making pull requests.
- improving this readme file.
- chatting on our [telegram group](https://t.me/joinchat/BZz7YU2pAZ_H5LmZ4Of2Jg).

