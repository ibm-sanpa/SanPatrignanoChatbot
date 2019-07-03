## Steps di integrazione con Facebook Messenger

 Questo video descrive tutti gli steps di integrazione tra il chabot realizzato con Watson Assistant e Facebook Messenger.
 
 [![](http://img.youtube.com/vi/8o-FFU5sYNM/0.jpg)](http://www.youtube.com/watch?v=8o-FFU5sYNM "")

 Di seguito una descrizione degli steps principali di integrazione.
 
### 1. Crea pagina Facebook

Collegati al tuo account Facebook e in alto a destra sulla freccia in basso clicca su **Gestisci Pagina** e poi su **Crea Pagina**, scegli se la pagina è un'azienda, brand, community o altro. Inserisci il **Nome** e la **Categoria**, poi anche l'**Indirizzo**. Carica l'immagine del profilo e la copertina.

### 2. Creazione di un applicazione Facebook

Vai a questo [link](http://developers.facebook.com) e loggati usando le tue credenziali Facebook. Clicca sul menu **Le mie app** e selezione la voce **Aggiungi una nuova**. Apparirà il pannello **Crea un nuovo ID app** e inserisci il **Nome Visualizzato** e l'**Indirizzo e-mail di contatto**, poi clicca sul bottone **Crea ID App**. Conferma che non sei un robot e clicca sul bottone **Invia**. Dal menu selezione **Impostazioni**->**Di Base** e Mostra la chiave segreta che dovrai copiare e incollare per poterla usare nello step 3.

### 3. Integra il tuo Chatbot con Facebook

Dalla home di Watson Assistant selezione l'Assistant del tuo chatbot. Nel pannello a sinistra **Integrations** seleziona **Facebook Messanger** e compila il form inserendo i seguenti valori:
- Nome
- Descrizione
- Chiave segreta (creata nello step 2)
- Normativa Privacy URL

Attiva l'app con il bottone in alto.

### 4. Configura Facebook Messanger

Vai sul sito [Facebook for developers](http://developers.facebook.com) e clicca su **Prodotti (+)** e poi clicca sul bottone **Configura** relativo a Messanger. Seleziona la pagina Facebook creata nello step 1. Per generare il **Token d'accesso della Pagina** clicca sul bottone **Modifica autorizzazioni**.

A questo punto bisogna configurare i webhooks cliccando sul bottone **Ricevi gli aggiornamenti sugli eventi** e inserisci il **Callback URL** che puoi prendere dal pannello dello step 3. Nei **Campi relativi all'iscrizione** selezionare **messages** e **messagging_postback* e clicca il bottone **Verifica e Salva**.

Nella sezione **Webhooks** seleziona la pagina e clicca sul bottone **Effettua l'Iscrizione**

### 4. Attiva il pulsante "Invia un Messaggio"

Nella pagina facebook clicca su **Aggiungi un pulsante**, apri il tab **Contatto**, seleziona **Invia un Messaggio** e poi clicca sul bottone **Avanti**. Seleziona **Messanger** come luogo di reindirizzamento e clicca sul bottone **Fine**.

### 5. Attiva il bottone Inizia

L'Integrazione del chatbot in facebook funziona in modo diverso rispetto all'integrazione con Wordpress. In facebook è sempre l'utente a dover cominciare la comunicazione. Per questo motivo solo la prima volta che l'utente interagisce con il chatbot dovrà apparire il bottone Inizia che farà iniziare la conversazione e nel nodo Welcome sarà necessario configurare la condizione in questo modo:

```#welcome or conversation_start```

Per far apparire il bottone Inizia bisogna inviare il seguente comando da shell:

```
curl -X POST -H "Contenjson" -d '{ "get_started": {"payload": "Inizia"} }' "https://graph.facebook.com/v2.6/me/messenger_profile?access_token=PAGE_ACCESS_TOKEN"
```

dove PAGE_AGGESS_TOKEN è quello che abbiamo configurato nello step 4.

Modifica il messaggio di Benvenuto andando su **Impostazioni -> Messaggi -> Impostazioni Generali** e cambia **Mostra Saluto di Messanger**.

**Importante!!!** Per testare che il nodo Welcome venga attivato quando si Inizia la conversazione, bisogna resettare tutto il dialogo. Per fare ciò da chatbot cliccare: Opzioni->Apri in Messanger. In Messanger in alto a destra, dove compare il logo della pagina, c'è la rotellina delle Impostazioni, clicca su di essa e seleziona l'opzione Elimina.

## Troubleshooting

Le rich responses aggiunte ad un dialogo sono mostrate in Facebook come atteso, tranne alcune eccezzioni. Di seguito elenchiamo due di queste exceptions che abbiamo implementato per il nostro chabot:

1. **Image**. Questo response type permette di visualizzare un'immagine in Facebook Messenger. In questo caso è necessario utilizzare come response type "image" nel dialog.

2. **Option**. Questo response type mostra una lista di opzione che l'utente può selezionare. Per visualizzare le options va sempre  specificato il titolo in Watson Assistant mentre la description non verrà mai visualizzata ache se specificata.

3. **Welcome Node**. Gran parte delle integrazioni non consentono di visualizzare il welcome node. [A questo link ](https://cloud.ibm.com/docs/services/assistant?topic=assistant-dialog-start) è descritto una soluzione alternativa che risolve questo problerma.

[Cliccando qui ](https://cloud.ibm.com/docs/services/assistant?topic=assistant-deploy-facebook#deploy-facebook=) è possibile trovare un elenco completo delle best practise da utilizzare



