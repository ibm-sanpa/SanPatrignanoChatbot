# Progetto Chatbot San Patrignano

Benvenuti nel progetto di collaborazione tra la Fondazione IBM e la comunità di San Patrignano. Questa collaborazione si basa su:

* Una serie di obiettivi comuni definiti all'inizio della collaborazione.
* Un insieme di incontri nella sede della comunità di San Patrignano tra un team di tecnici dell'area IBM Cloud e un gruppo   selezionato dalla comunità in base al ruolo ricoperto nell'organizzazione.

## Partecipanti

[Qui](doc/Partecipanti.md) trovi l'elenco delle persone che sono state coinvolte nell'iniziativa.

## Obiettivi

Gli obiettivi della collaborazione tra la Fondazione IBM e la comunità di San Patrignano sono i seguenti.

1. Far crescere all'interno della Comunità un Centro di Competenza su IBM Cloud.
2. Promuovere il trasferimento delle competenze acquisite dagli operatori agli ospiti della comunità.
3. Aumentare l'impiegabilità degli ospiti nella fase post-comunità.
4. Alla fine del percorso formativo i partecipanti conosceranno i fondamentali delle applicazioni “cloud native”.

La collaborazione si svolgerà con 5 incontri tra il team IBM e quello di San Patrignano nella sede di quest'ultimo. In questi incontri verrà spiegato i fondamentali della piattaforma IBM Cloud e si progetterà e realizzerà un chatbot per il sito web della comunità. Durante gli incontri si definiranno anche le attività da svolgere remotamente nell'arco di tempo che intercorre tra ciascun incontro.

## Gli Incrontri

[Qui](doc/Incontri.md) trovi un resoconto degli incontri avvenuti durante la collaborazione.

## Design Thinking

Durante gli incontri ci sono state sessioni di Design Thinking per comprendere i collezionare i requirements e individuare gli scenari da coprire con il chatbot. Un resoconto di queste sessioni lo puoi [trovi qui](doc/DesignThinking.md).

## Esempi Chatbot

[Questa pagina](doc/ChatbotExamples.md) contiene esempi di chatbot che rappresentano un po' lo stato dell'arte su questa materia.

## Best Practices

Studiare esempi di altri chatbot consente di raccogliere best practices da poter applicare poi al nostro chatbot. [Questa pagina](doc/BestPractices.md) contiene una raccolta di best practices usate nel nostro chatbot.

## Importa il chatbot in Watson Assistant

[Questo è il file](training/skill-San-Patrignano.json?raw=true) che contiene l'ultimo livello di codice del chatbot per San Patrignano. Per importarlo accedere al proprio account IBM Cloud, cliccare sul bottone **Create** Resource, scegliere il servizio Watson Assistant e inserire i seguenti campi:

* Nome Servizio
* Region
* Piano di Pricing (Standard)

cliccare sul bottone **Create**. Clicca su **Avvia Strumento** e apparirà la home page di Watson Assistant. Sul tab **Skill** clicca il bottone **Create** e poi seleziona il tab **Import skill**. Puoi a questo punto caricare il file JSON e il chatbot è pronto per essere usato..

## Integrazione con Facebook
A [questa pagina](doc/FacebookIntegration.md) puoi trovare le istruzioni per integrare il chatbot realizzato con Watson Assistant in Facebook Messenger.
Questa pagina elenca anche una serie di best practices utili per indirizzare alcune delle problematiche che gli utenti devono affrontare durante questo tipo di
intgrazione.

[Qui puoi provare il nostro chatbot di sviluppo](https://www.facebook.com/SanPa-Chatbot-372719496686347) integrato in una pagina Facebook di esempio.

## Demo del Chatbot

[Cliccando qui](https://sanpatrignano.eu-gb.mybluemix.net/) puoi accedere ad una demo live del chatbot. La demo consiste in un'applicazione Node.js che punta al servizio Watson Assistant e che permette di renderizzare pulsanti, immagini, pause, ecc. A breve verrà deployato su IBM Cloud un sito web Wordpress di test con il chatbot integrato.

A [questa pagina](doc/ConfiguraAmbienteSviluppo.md) puoi trovare le istruzioni per configurare l'ambiente di sviluppo di quest'applicazione.

## Best Practices per un Continuo miglioramento del Chatbot

[Questa è una presentazione fatta da Eric Wayne al Think19](https://1.dam.s81c.com/m/26eee8b01f0dcd09/original/4543-pdf.pdf) che mostra la metodologia per migliorare il Chatbot continuamente una volta che è andato in fase di test avanzato o produzione. Il sistema si basa sull'analisi dell'iterazione reale tra gli utenti e il chatbot.
