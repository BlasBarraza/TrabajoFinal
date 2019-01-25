library('rvest')
RCA<-read_html("https://www.casamarilla.cl/guitarras/electricas")
DataCasaAmarilla<-html_nodes(RCA,".item")
DataCasaAmarilla2<-html_nodes(DataCasaAmarilla,'[type="button"]')
EnlacesCA<-html_attr(DataCasaAmarilla2,"href")

#Extraer informacion del link dentro.
  DataProductosPrueba<-"https://www.casamarilla.cl/jackson-guitarra-electrica-pro-series-soloist-sl7-ht.html"
  DataProductosCA<-read_html(DataProductosPrueba)
#TITULO
  Titulo1<-html_nodes(DataProductosCA,".product-primary-column.product-shop.grid12-6")
  Titulo<-html_nodes(Titulo1,"h1")
  TextoTitulo<-html_text(Titulo) 
  TextoFinal<-gsub("\"","",TextoTitulo)
  TablaTitulo<-table(TextoTitulo)
  DFTitulo<-as.data.frame(TablaTitulo)
#PRECIO
    Precio2<-html_nodes(Titulo1,'[itemprop="offers"]')
    Precio3<-html_nodes(Precio2,".escyber")
    Precio1<-html_nodes(Precio3,".price")
    Precio<-html_text(Precio1)
#Limpiar Informacion de Precios.
   Precios1<-gsub("[.]","",Precio)
   Precios2<-gsub("\n"," ",Precios1)
   Precios3<-gsub("$","",Precios2)[[1]]
   Precios<-gsub("\\$","",Precios3)
#Crear Data Frame de Precios
   TablaPrecio<-table(Precios)
   DFPrecio<-as.data.frame(TablaPrecio)
   


  

  
