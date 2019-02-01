## Esegui la Demo del Chatbot in locale

Abbiamo clonato quest'[applicazione Node.js](https://github.com/watson-developer-cloud/assistant-simple) per poter avere uno strumento che facesse il rendering dei contenuti del chatbot come immagini, pulsanti, pause, ecc. Questa applicazione sarà molto utile anche come demo per mostrare le funzionalità del chatbot. Queste sono le istruzioni per eseguire l'applicazione in locale.

```
1. cd <work_dir>
2. git clone https://github.ibm.com/SDANGELO/SanPatrignano
3. cd SanPatrignano
4. npm install
5. npm start
6. Crea un .env file con il seguente contenuto:
   ASSISTANT_ID=xxxxxxxxxxxxxxxxxxxx
   ASSISTANT_USERNAME=apikey
   ASSISTANT_PASSWORD=xxxxxxxxxxxxxxxxxxxx
   ASSISTANT_URL=https://gateway-<region>.watsonplatform.net/assistant/api
```

## Esegui la Demo Node.js del Chatbot con Eclipse

Questa è la procedura per importare il progetto della Demo Node.js in Eclipse. Come prima cosa prepara l'ambiente Eclipse scaricando [Eclipse Oxygen 3](http://eclipse.bluemix.net/packages/epp.bmt/?cm_mc_uid=86302448733915472421149&cm_mc_sid_50200000=46579901547662801853) contiene già i plugins per lavorare con IBM Cloud. Installa il plugin Nodeclipse per gestire progetti Node.js. Clicca su Help->Eclipse Marketplace e cerca il plugin Nodeclipse e installalo.

Assicurati di avere la chiave privata per accedere al sito github.ibm.com. Se non la possiedi esegui la [seguente documentazione](https://help.github.com/articles/connecting-to-github-with-ssh/).

```
1. Configura le chiavi SSH in Eclipse. Vai in Eclipse->Preferences->General->
   Network Connections->SSH2 e inserisci il path della chiave privata in private 
   keys. 
2. Importa il progetto da Git. Clicca il tasto destro nel Project Explorer e 
   Selezione Import->Import... Seleziona Git->Projects from git e poi seleziona 
   clone URI. Inserisci l'URI del repository ssh:///github.ibm.com/SDANGELO/SanPatrignano.git 
   e assicurati di scegliere ssh come protocollo e git come utente. Non serve 
   la password. Clicca su Finish.
3. Crea un projetto Node.js. Seleziona Node->Node.js Project. Inserisci il 
   nome del progetto (SanPatrignano) e clicca Finish.
4. Installa le dipendenze. Tasto destro sul progetto SanPatrignano e poi 
   Run as->npm install.
5. Crea un .env file con il seguente contenuto:
   ASSISTANT_ID=xxxxxxxxxxxxxxxxxxxx
   ASSISTANT_USERNAME=apikey
   ASSISTANT_PASSWORD=xxxxxxxxxxxxxxxxxxxx
   ASSISTANT_URL=https://gateway-<region>.watsonplatform.net/assistant/api
6. Esegui l'applicazione. Tasto destro sul progetto SanPatrignano e poi 
   Run as->Run configurations... Seleziona Node.js application e poi 
   crea una nuova applicazione. Inserire server.js come applicazione 
   principale e poi cliccare su Run.
7. Apri il browser e connettiti a localhost:3000
```
