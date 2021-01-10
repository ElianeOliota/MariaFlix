from datetime import date

from django.http import HttpResponse
from django.shortcuts import render

# Create your views here.
from app.crud import Crud


def login(request):

    return render (request,'login.html')


def entrar(request):

    data={}
    data['projeto'] = 'OliotaFlix'

    login_email = request.POST.get('login_email', '')
    senha = request.POST.get('login_senha', '')
    tabela = Crud(
        user='postgres',
        password='postgres',
        host='127.0.0.1',
        dbname='MariaFlix',
        table='usuarios',
        port='5432',
        primarykey='login'
    )
    tabela.connect()

    usuario = tabela.select_custom("SELECT nome,senha,perfil FROM usuarios a WHERE"+
                                   " login = '"+ login_email+"'"+
                                   " or email= '"+login_email+"'")

    if usuario is None or len(usuario) == 0:
        data['erro']='Usuario não encontrado'
        return render(request, 'login.html',data)
    else:
        if usuario[0][1] != senha:
            data['erro'] = 'Senha incorreta'
            return render(request, 'login.html',data)
        else:
            data['usuario']= usuario[0][0]

    request.session['usuario'] = usuario[0][0]

    #context ={'usuario': usuario[0]['login']}#ler de um dict
    #context ={'usuario': tabela.select_all_json()}

    titulos = tabela.select_custom ( " select * from("
                                     " select f.nome,c.nome categoria,capa,ano,0 temporadas ,f.handle"
                                     " from filmes f "
                                     " inner join categorias c on c.handle=f.categoria"
                                     " union all "
                                     " select s.nome,c.nome categoria ,capa, ano , "
                                     " (select count(*) from temporadas where serie_id=s.handle ) temporadas,s.handle"
                                     " from series s  "
                                     " inner join categorias c on c.handle=s.categoria"
                                     " ) as titulos order by categoria" )

    data['titulos'] = titulos

    top5 = tabela.select_custom (
        " select capa,nome,ano,tipo,temporadas,count(*) from(                                    "
        " select                                                                                 "
        " f.capa,                                                                                "
        " f.handle,                                                                              "
        " f.nome,                                                                                "
        " a.data,                                                                                "
        " c.nome categoria ,                                                                     "
        " 'filmes' tipo,                                                                         "
        " f.ano,                                                                                 "
        " 0 temporadas                                                                           "
        "                                                                                        "
        " from assistidos a                                                                      "
        " inner join filmes f on f.handle = a.filme                                              "
        " inner join categorias c on c.handle=f.categoria                                        "
        " union all                                                                              "
        " select                                                                                 "
        " s.capa,                                                                                "
        " s.handle,                                                                              "
        " s.nome,                                                                                "
        " a.data,                                                                                "
        " c.nome categoria,                                                                      "
        " 'series' tipo,                                                                         "
        " s.ano,                                                                                 "
        " (select count(*) from temporadas where serie_id=s.handle ) temporadas                  "
        " from assistidos a                                                                      "
        " inner join series s on s.handle = a.serie                                              "
        " inner join categorias c on c.handle=s.categoria                                        "
        " ) as a                                                                                 "
        " where a.data >= (SELECT date_trunc('month', CURRENT_DATE))                             "
        " and a.data<= (SELECT date_trunc('month', CURRENT_DATE) + interval '1 month - 1 day')   "
        " group by  capa,nome,ano,tipo,temporadas                                                " 
        " order by count(*) desc"
        " limit 5                                                                                "
                                  )
    data['top5'] = top5

    return render (request, 'home.html', data)


def sair(request):
    return render (request,'login.html')


def assistir(request):

    data={}
    data['projeto'] = 'OliotaFlix'

    titulo = request.GET.get('titulo', '')
    handle = request.GET.get('handle', )
    tipo = request.GET.get('tipo', '')
    tabela = Crud (
        user='postgres',
        password='postgres',
        host='127.0.0.1',
        dbname='MariaFlix',
        table='assistidos',
        port='5432',
        primarykey='handle'
    )

    tabela.connect ()
    if tipo == 'series':
        tabela.insert (
            serie=handle,
            data=date.today()
        )
    else:
        tabela.insert (
            filme=handle,
            data=date.today ()
        )
    tabela.commit()

    top5 = tabela.select_custom (
        " select capa,nome,ano,tipo,temporadas,count(*) from(                                    "
        " select                                                                                 "
        " f.capa,                                                                                "
        " f.handle,                                                                              "
        " f.nome,                                                                                "
        " a.data,                                                                                "
        " c.nome categoria ,                                                                     "
        " 'filmes' tipo,                                                                         "
        " f.ano,                                                                                 "
        " 0 temporadas                                                                           "
        "                                                                                        "
        " from assistidos a                                                                      "
        " inner join filmes f on f.handle = a.filme                                              "
        " inner join categorias c on c.handle=f.categoria                                        "
        " union all                                                                              "
        " select                                                                                 "
        " s.capa,                                                                                "
        " s.handle,                                                                              "
        " s.nome,                                                                                "
        " a.data,                                                                                "
        " c.nome categoria,                                                                      "
        " 'series' tipo,                                                                         "
        " s.ano,                                                                                 "
        " (select count(*) from temporadas where serie_id=s.handle ) temporadas                  "
        " from assistidos a                                                                      "
        " inner join series s on s.handle = a.serie                                              "
        " inner join categorias c on c.handle=s.categoria                                        "
        " ) as a                                                                                 "
        " where a.data >= (SELECT date_trunc('month', CURRENT_DATE))                             "
        " and a.data<= (SELECT date_trunc('month', CURRENT_DATE) + interval '1 month - 1 day')   "
        " group by  capa,nome,ano,tipo,temporadas                                                "
        " order by count(*) desc"
        " limit 5                                                                                "
    )
    data['top5'] = top5


    titulos = tabela.select_custom ( " select * from("
                                     " select f.nome,c.nome categoria,capa,ano,0 temporadas ,f.handle"
                                     " from filmes f "
                                     " inner join categorias c on c.handle=f.categoria"
                                     " union all "
                                     " select s.nome,c.nome categoria ,capa, ano , "
                                     " (select count(*) from temporadas where serie_id=s.handle ) temporadas,s.handle"
                                     " from series s  "
                                     " inner join categorias c on c.handle=s.categoria"
                                     " ) as titulos order by categoria" )

    data['titulos'] = titulos

    data['usuario'] = request.session.get ( 'usuario', 'vazio' )

    return render ( request, 'home.html', data )