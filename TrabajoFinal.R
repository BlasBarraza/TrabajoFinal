library("rvest")
CA<-"https://www.casamarilla.cl/guitarras"
LeerCA<-read_html(CA)
ReLeerCA<-html_node(LeerCA,".col-main.grid12-9.grid-col2-main.no-gutter")
CAlinks<-html_nodes(ReLeerCA,".button")
LinksCa<-html_attr(CAlinks,"href")

#Crearemos un for para que recorra página por pagina, hasta el final. 
for(i in 1:3){
  PageCa<-paste('https://www.casamarilla.cl/guitarras/electricas?p=i',sep = "")
  print(PageCa)
  ReadPage<-read_html(PageCa)
  DataCA<-html_nodes(ReadPage,".item")
  DataCa2<-html_node(DataCa,".button")
}

