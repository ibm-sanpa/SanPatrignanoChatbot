Nella sessione di Design Thinking (DT) tenuta nel secondo incontro si è cercato di individuare due semplici scenari da poter subito implementare con Watson Assistant. L'Obiettivo di questa sessione non era quello di creare una sessione di disegno rigida agli schemi del processo DT, bensì cercare di coinvolgere in maniera informale il team di San Patrignano costituito per la maggior parte da persone non tecniche. Il secondo obiettivo era calarsi nei loro panni per capire realmente il problema che andava risolto.

## Stakeholders Map

Come prima cosa abbiamo cercato di individuare le Personas coinvolte. E' venuto fuori il seguente schema.

![Personas](designthinking/thumbnails/Personas.jpg?raw=true)

Iterando varie volte è venuto fuori il seguente elenco delle Personas in ordine di importanza:

1. Ospite
2. Familiare
3. Donatore
4. Associazioni
5. Aziende
6. Volontari
7. Clienti
8. Sponsor
9. Amici/Curiosi

Poiché nel tempo a disposizione riteniamo sia impossibile coprire gli scenari legati a tutte queste Personas abbiamo pensato di coprire gli scenari più significativi in maniera completa affinché il team di San Patrignano possa impadronirsi di tutti gli strumenti necessari per creare in proprio un chatbot.

## Empathy Maps

Dalla lista delle Personas abbiamo deciso di esplorare le due principali che sono poi quelle che si rivolgono maggiormente alla comunità per chiedere informazioni di varia natura:

* Ospite
* Familiare

![Ospite](designthinking/thumbnails/Ospite.jpg?raw=true)

![Familiare](designthinking/thumbnails/Familiare.jpg?raw=true)

## Scenarios Map

Dopo aver individuato le Personas da analizzare e fatte le dovute considerazioni per immedesirmarci in ciò che dicono, fanno, pensano e sentono abbiamo individuato due scenario per la richiesta di informazioni sia da parte dell'ospite che da quella del familiare. Questo è stato il risultato.

![Ospite - Richiesta Informazioni](designthinking/thumbnails/Ospite-RichiestaInformazione.jpg?raw=true)

![Familiare - Richiesta Informazioni](designthinking/thumbnails/Familiare-RichiestaInformazione.jpg?raw=true)

### Struttura Scenari

I seguenti schemi sono stati costruiti dopo discussioni del dominio in cui il chatbot si troverà ad operare. Abbiamo visto che un Familiare o un Ospite quando entra in contatto con la comunità vuole sapere due cose fondamentali:

* come funziona il percorso di recupero;
* come si fa ad entrare nella comunità.

Il Percorso di recupero è basato fondamentalmente su due pilastri:

* **Settori di formazione**. Sono oltre 50 e sono strutture in cui l'ospite, attraverso il lavoro e l'interazione con altri compagni, si inserisce piano piano nel contesto sociale della comunità guidato da un tutor e da supervisori. Attraverso questo scambio quotidiano si cerca anche di ricostruire un legame con la famiglia. 
* **Scuola**. Attraverso la scuola, invece, l'ospite avrà la possibilità di recuperare gli anni persi a causa della dipendenza e avere un sufficiente livello culturale per reinserirsi nella società.

L'entrata in comunità avviene in tre modi possibili:

* **Associazioni**. Sono comunità locali composti da genitori di ex ospiti e/o ex ospiti guidati da esperti del settore.
* **Contatto diretto**. Lo staff valuta lo stato del futuro ospite e lo rimanda verso associazioni locali o SERT. Solo se ci sono le condizioni si può fissare un colloquio per l'ingresso in comunità.
* **SERT**. Centri specializzati locali per la cura da tossicodipendenza.

![Struttura scenari Familiare/Ospite](designthinking/thumbnails/Struttura_Scenario_Ospite_Familiare.jpg?raw=true)

Le donazioni possono essere regolari o una tantum. Le donazioni regolari sono quasi sempre in forma monetaria e i pagamenti possono essere con carta di credito o RID. Le donazioni una tantum possono essere sia in forma di soldi ma anche come beni o lasciti. Nel caso di donazioni una tantum con soldi i pagamenti possono avvenire con bollettino postale, carta di credito, bonifico. San Patrignano non accetta soldi dai futuri ospiti o da familiari di ospiti. Ad ogni modo, quest'ultimi possono dare una mano alla comunità sottoscrivendo un abbonamento al giornale. I donatori possono detrarre le loro donazioni dalla loro dichiarazione dei redditi per cui è frequente la richiesta di ricevute.

![Struttura scenari Donazione](designthinking/thumbnails/Struttura_Scenario_Donazioni.jpg?raw=true)

# Disegno Dialoghi con MURAL

Dopo una discussione informale abbiamo utilizzato Mural per il design dei dialoghi così da poter individuare Intenti, Entity e Nodi di Dialogo da utilizzare poi in Watson Assistant.

<a href="https://app.mural.co/t/bringyourhomeinthecognitiveera1272/m/bringyourhomeinthecognitiveera1272/1552035557839/9baeae887d99f31b48562411bc4660faab318f9c" target="_blank" rel="noopener noreferrer" style="transform: translate(-50%, -50%);top: 50%;left: 50%; position: absolute; z-index: 30; border: none; display: block; height: 50px; background: transparent;"> <img src="https://app.mural.co/static/images/btn-enter-mural.svg" alt="ENTER THE MURAL" width="233" height="50"> </a> <p style="margin-top: 10px;margin-bottom: 60px;line-height: 24px; font-size: 16px;font-family: Proxima Nova, sans-serif;font-weight: 400; color: #888888;"/>

