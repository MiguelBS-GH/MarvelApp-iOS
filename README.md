MarvelApp iOS

Creada con swift 5 y Xcode 13.


//-\\//-\\//-\\//-\\//-\\//-\\//-\\//-\\//-\\//-\\//-\\//-\\//-\\//-\\//-\\//-\\//-\\//-\\//-\\//-\\//-\\//-\\//-\\//-\\//-\\

IMPORTANTE:                      

El codigo de la app no tiene ni la publicKey ni la privateKey ya que es de uso personal. Sin ellas no te funcionará.
Se tendra que generar una desde la api de Marvel que se indica mas abajo.

\\-//\\-//\\-//\\-//\\-//\\-//\\-//\\-//\\-//\\-//\\-//\\-//\\-//\\-//\\-//\\-//\\-//\\-//\\-//\\-//\\-//\\-//\\-//\\-//\\-//


Esta app consiste en una base de datos de superheroes de Marvel y su correspondiente descripción.
Los datos se han recogido mediante la API de Marvel: https://developer.marvel.com/docs

Hay dos ventanas:
 - La primera y principal es la lista de superhéroes.
 - La segunda es el detalle decada superhéroe. Para acceder a esta solo hace falta pinchar en uno de los personajes y se abrirá las descripción de este.
 
Para conseguir acceder a la información se ha utilizado URLSession.
Se ha tenido que obtener un código MD5 para acceder a la información.
