In questa pagina abbiamo raccolto alcune best practices che, a nostro avviso, possono risultare utili per disegnare il nostro chatbot.

1. **Posiziona il tuo chatbot**. Prima di cominciare il disegno di qualunque chatbot il primo problema da risolvere è quello del Posizionamento. Vale la seguente equazione:

                              Posizionamento=Ruolo+Scopo+Proattività

**Ruolo**: qual'è il ruolo del chatbot? E' un operatore virtuale di customer support? makerketing? Stabilire in anticipo il ruolo ci consente di definire i problemi che aiuta a risolvere e a disegnare i dialoghi adatti al ruolo che ricopre.

**Scopo**: quel'è l'obiettivo del chatbot? Quale problema deve aiutare a risolvere? Definendo in maniera precisa lo scopo del chatbot eviteremo di creare uno strumento general purpose inutile che probabilmente non riuscirà mai a coprire l'infinito ventaglio delle richieste dell'utente. Definendo lo scopo restringiamo il suo campo d'azione e potremo guidare meglio l'utente nella conversazione. E' meglio risolvere pochi problemi ma bene che tanti male.

**Proattività**: quanto proattivo o reattivo vogliamo il nostro chatbot? Vogliamo che guidi l'utente quanto più possibile attraverso scelte obbligate o desideriamo reagire alle richieste dell'utente in maniera completamente reattiva?

2. **Definisci il tono e la personalità del tuo chatbot**. Ogni chatbot dovrebbe avere una proprio tono (o voce) e personalità. Sviluppare queste qualità richiederebbe un articolo a parte, ma in pratica bisogna stabilire il tono (formale o informale) che il chatbot dovrà avere con i suoi utenti. Inoltre, è buona norma è consigliato aggiungere un nome e un volto al chatbot.

3. **Come rappresenti il tuo chatbot influenzerà l'esperienza utente**. Le persone rispondono ai volti. Noi antropomorfizziamo le cose per loro natura e i chatbot non fanno eccezione. Il modo in cui gli utenti percepiscono il tuo chatbot influisce assolutamente sul modo in cui interagiscono e interagiscono con esso; l'immagine del profilo che scegli per il tuo chatbot gioca un ruolo importante nel plasmare la percezione dell'utente. La maggior parte dei chatbot correnti è rappresentata da immagini di oggetti inanimati o forme astratte come loghi, microfoni o fumetti. L'utilizzo di oggetti inanimati per rappresentare i chatbot non è sbagliato, dovresti pensare a come la rappresentazione influirà sugli utenti. Abbiamo scoperto che le immagini dei profili più accattivanti sono di volti. L'immagine non deve essere di un volto umano, ma solo qualcosa a cui un utente può parlare e attribuire un personaggio e parlare.

![Voce e Carattere](img/Voice_and_Character.png?raw=true)

4. **Crea le giuste aspettative**. E' bello poter avere un chatbot che si comporti come un essere umano ma, purtroppo, non esiste ancora una macchina capace di superare il [Test di Touring](https://it.wikipedia.org/wiki/Test_di_Turing). Per questo motivo, non creare aspettative che il tuo chatbot non potrà soddisfare. Fai subito capire all'utente quale tipo di servizio potrà ricevere senza creare false aspettative. Ad esempio, il chatbot di Kayak appena comincia dichiara da subito cosa potrà aiutarci a fare.

![Kayak chatbot](img/Kayak-Welcome.png?raw=true)

5. **Usa componenti UI (es. bottoni) come paletti in una conversazione**. In una GUI tradizionale vale il motto **What You See Is What You Get** (WYSIWYG), comunque in un chatbot le strade che un utente può decidere di percorrere sono infinite. Per questo motivo potrebbe essere utile usare componenti UI (es. bottoni) per fissare dei paletti ed evitare che l'utente divaghi cercando interazioni che vanno oltre la capacità del Bot. 

![Guard Rails](img/Guard-Rails.png?raw=true)

6. **Fai in modo che i bottoni menu, quick reply e redirect siano distinguibili e funzionali**. Ci sono tre tipi di bottoni che puoi usare:
    1. bottoni menu;
    2. quick reply;
    3. redirect.
E' importante che l'interfaccia utente aiuti l'utente a distinguere tra bottoni di menu da quelli di quick reply o redirect. I primi servono a selezionare un path di conversazione. Non sono legati al contesto e l'utente potrebbe anche decidere di fare scroll back e digitarlo di nuovo. I bottoni di quick reply replicano ad una domanda e sono legati al contesto. Dovrebbero sparire dopo che vengono premuti per evitare che l'utente li riprema. I bottoni di redirect semplicemente ridirezionano l'utente verso un sito. Qui di seguito un esempio di bottoni menu e quick reply.

![Bottoni Menu](img/Menu_Buttons.png?raw=true)
![Quick Reply](img/Quick_Reply_Buttons.jpeg?raw=true)

In questo esempio il chatbot è un cattivo esempio di implementazione di questa best practice.

![Hipmunk chatbot](img/Hipmunk-Buttons.png?raw=true)

7. **Dai all'utente il tempo di leggere il messaggio con una pausa**. Uno degli errori più comuni e visibili effettuati nei chatbot è il caricamento dei messaggi senza tempi di attesa o il caricamento di messaggi con tempi di attesa ancora troppo brevi. Inviare i messaggi troppo velocemente distrae l'utente, poiché i nuovi messaggi spostano il testo che l'utente sta ancora leggendo.

I tempi di attesa dovrebbero, ovviamente, dipendere dalla lunghezza dei messaggi e dal loro ordine di apparizione.

Quando i messaggi vengono inviati uno dopo l'altro, è più naturale fermarsi un po' più a lungo con ogni nuovo messaggio, anche se potrebbero essere della stessa lunghezza, in modo che gli utenti abbiano il tempo di terminare la lettura dei vecchi messaggi prima che i nuovi messaggi vengano inviati.

Da un punto di vista di usabilità dovrebbero anche apparire i classici tre puntini che fanno capire che il chatbot sta scrivendo.

8. **Dai la possibilità di ricominciare la conversazione**. Capita spesso anche nelle interfacce utenti GUI a cui siamo abituati di perderci nella navigazione. Quello che tendenzialmente facciamo è quello di ricominciare da capo premendo sul pulsante Home. A maggior ragione questo può accadere in un chatbot. Dare la possibilità di poter ricominciare la conversazione quando l'utente si sente perso. Kia per il suo chatbot per la vettura Niro ha risolto con un carosello di alternative in cui si da la possibilità di ricominciare, di parlare con un umano o continuare la conversazione.

![Kia Niro chatbot](img/Kia-Niro-Restart.gif?raw=true)

9. **Quando ridirezioni l'utente ad un sito web usa le webview**. Alcune piattaforme come Facebook consentono di aprire pagine web all'interno di Messanger stesso tramite il meccanismo delle [web views](https://developers.facebook.com/docs/messenger-platform/webview/). Questo meccanismo evita l'apertura di un'altra applicazione (il browser) che su dispositivi come un telefonino possono annoiare.

10. **Quando ridirezioni l'utente ad una pagina web fai in modo che essa contenga solo informazioni rilevanti alla sua richiesta**. Se un messaggio di risposta del chatbot offre un approfondimento su una pagina web tramite un link, bisogna fare in modo che quella pagina contenga solo informazioni rilevante all'informazione che l'utente desidera. Evitare di redirizionare l'utente a una pagina che risponde si ai dubbi dell'utente ma che contiene mille altre informazioni che non gli interessano.

11. **L'Abuso di componenti UI (es. bottoni) può dare l'impressione di capacità limitate**. L'Uso di bottoni e repliche veloci è sicuramente un buon metodo per mantenere l'utente sull'happy path ed evitare che si inoltri in terreni inesplorati, comunque l'eccesso di questi espedienti può dare la percezione di una capacità limitata del chatbot. Quando l'utente vede dei bottoni tende a cliccarli anziché usare il text field. Questo perché l'utente può avere la percezione che usando il text field il chatbot non si comporti come previsto. Quando si progetta un chatbot che oltre ai bottoni offre la possibilità di inserire un testo nel text field, renderlo evidente come fa Expedia nel seguente esempio. Skyscanner, invece, è un esempio da non seguire.

![Expedia vs Skyscanner](img/Expedia_vs_Skyscanner.png?raw=true)

12. **Mantieni il contesto della tua conversazione in maniera appropriata**. Durante una conversazione ci potrebbe essere la necessità di mantenere un contesto, come ad esempio i dati per la prenotazione di un volo. E' fondamentale mantenere questo contesto in maniera appropriata e fare in modo che l'utente possa cambiarlo nel modo più semplice possibile. In quest'esempio l'utente vuole cambiare la data di ritorno per il volo. Skyscanner offre questa possibilità ma nella seconda immagine non sembra le cose vadano come sperate.

![Skyscanner_modify_context](img/Skyscanner_modify_context.png?raw=true)

13. **Cerca di rispondere con messaggi brevi e concisi**. Gli utenti su Internet sono alla ricerca di informazioni brevi che rispondono subito ai loro interrogativi. Se una risposta del chatbot è troppo lunga potrebbe incoraggiare il lettore ad andare via. Pianificare messaggi non più lungi di 90 caratteri (tre linee su un telefonino). Preferibilmente, un messaggio non dovrebbe essere più lungo di 63 caratteri (2 linee su un telefonino).

14. **Testa sempre il chatbot sui dispositivi su cui dovrà funzionare**. La dimensione dell'area del chatbot influenza la user experience dell'utente finale. Se l'utente è costretto a fare scrolling per leggere l'intero messaggio potrebbe stufarsi ed abbandonare la chat. Quindi quando si progettano i dialoghi verificare sui vari device l'esperienza utente.

15. **Rispondi ai quick reply in prima persona**. Un chatbot è una conversazione tra un umano e una macchina. Quando disegniamo il chatbot decidiamo se la voce è formale o meno come descritto al punto 1, ad ogni modo nei quick reply usare sempre la prima persona.




2. [Best Design Practices for Chatbots ](https://medium.com/@lifeinromania/best-design-practices-for-chatbots-61aeedd1fb1e)

3. [Best Practices for Designing a Conversational Chatbot Experience](https://www.progress.com/blogs/best-practices-for-designing-a-conversational-chatbot-experience)

4. [Handling complex dialog flow](https://github.ibm.com/SDANGELO/SanPatrignano/wiki/Handling-complex-dialog-flow)
