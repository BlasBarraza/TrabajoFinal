ListaLinks<-list()
ListaLinks<-c(ListaLinks,LinksCa)

PageCa<-paste('https://www.casamarilla.cl/guitarras/electricas?p=1',sep = "")
print(PageCa)
ReadPage<-read_html(PageCa)
DataCA<-html_nodes(ReadPage,".item")
DataCa2<-html_nodes(DataCa,".actions clearer")
