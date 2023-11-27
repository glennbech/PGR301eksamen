1A:
- generer en access key for aws cli
- naviger til repository settings -> secrets and variables -> actions
- her lag 2 nye repository secrets. navn: AWS_ACCESS_KEY_ID med tegnene fra access key til aws nøkkelen. navn: AWS_SECRET_ACCESS_KEY med tegnene fra Secret access key til aws nøkkelen.
- eventuelt endre aws-region hvis iam rollen trenger det.

3B:
- hvis man ikke har gjort det enda, følg stegene til 1A
- hvis sensor ikke har tilgang til ecr bildet må sensor oprette sin egen ecr og endre alle instanser av: "244530008913.dkr.ecr.eu-west-1.amazonaws.com/2027-ecr" til sit eget.
- endre prefix under terraforn env i yml filen til sin egen bruker
- hvis sensor ikke har tilgang til iam rollen og policien endre om nødvendig (tror ikke dette vil være nødvendig men vanskelig å sjekke uten en annen bruker)

4A:
- jeg valgte gauge for hvor mange unike bilder systemet har sett. med tanke på videre utvikling om man vil legge til funksjoner for å manuelt se på bildene med violations og fjerne dem kan man ikke ha counter siden den ikke går ann å minske
- jeg valgte timer på "public ResponseEntity<PPEResponse> scanFaceForPPE" for å kunne få tilbakemelding ved uventede problemer som store bøtte størrelser kan skape uforutsette problemer, og kunne få beskjed hvis applikasjonen tar uventet lang tid til å utføre opperasjonen
- jeg valgte counter for den totale mengden bilder applikasjonen har gått gjennom for å kunne få en bedre oversikt over hvor mye applikasjonen blir brukt. en simpel counter for metode kall ville ikke være tilstrekkelig siden den ikke ser forskjellen på et kall med 100 bilder versus 50 kall med 1 bilde.

5A:
CI er å hjelpe med å implementere kode fra flere utviklere som jobber på samme applisjon kontinuerling, ved hjelp av automatiske systemer som kan for eksempel bygge/compilere/publisere kode automatisk når utvikler committer sin kode.
noen av fordelene med CI er man kan finne mulige feil og konflikter med en gang en utvikler committer sin kode, ved automatiske prosesser vil det redusere risiko for manuelle feil, siden man comitter hyppigere til den branchen man jobber med vil det bli mindre fare for kravsomme merg conflikter.
i github bruker man github actions for å automatisere prosesser etter en utvikler pusher sin kode til repositoriet, man får umiddelbar feilmelding gjennom github actions dersom en commit feiler. Hver gang en commit blir pushet vil github actions gjennomgå de stegene som er automatisert for den branchen. det er viktig å ikke la sensetiv informasjon ligge i åpene filer, men heller bruke repository secrets til å lagre sensetiv inhold.

5B:
1:
scrum består av sprints som tar for seg en del av en backlog hver gang. scrum er fokusert på fleksibilitet og sammarbeid i et team på rundt 4-7 utviklere.
scrum er serlig sterk på fleksibilitet ovenfor produktet, kontinuerlig sammarbeid med produkt eier, og effektiv håndtering av mindre pakker per sprint.
utfordringer ved scrum kan være vansker med å håndtere større prosjekter siden et scrum team ikke burde være større enn rundt 8 personer, og scrum krever god kommunikasjon både mellom team medlemmer og mellom team og produkteier.

2:
DevOps består av kontinuerlig integrasjon av kode gjennom automatiserte utviklings og driftssykluser. devops fokuserer også på kontinuerlig tilbakemelding og overvåking av både kode og applikasjoner i drift.
ved kontinuerlig overvåking og tilbakemelding vil DevOps føre til bedre kode kvalitet, det vil også være rask å få kode fra utvikler ut til kunden. ved hjelp av gode overvåkings systemer vil det være lettere å finne hvor applikasjoner krasjer, og dermed redusere tiden applikasjonen er utilgjengelig for kunden.
DevOps er spesielt sterk når det kommer til effektivitet med leveranse av kode, og forkortede utviklingssykluser. utfordringen med devops er hovedsakelig kompleksitet rundt å lage de automatiserte systemene, siden det er viktig å sette dem opp både uten feil, og grundige tilbakemeldinger.

3:
både devops og scrum hjelper med at prosjektet er mer fleksibelt til endringer
i prinsippet fokuserer scrum itterasjon, mens DevOps fokuserer mer på automatisering av testing og leveranse av kode. siden scrum starter med kodingen med en gang vil leveransetempoet være svert høyt med en gang, mens DevOps vil bruke tid i starten til å lage automatiseringen av tester og leveransen. etter devops har bygget ferdig automatiseringen vil kodekvaliteten sikres av de automatiske testene, noe scrum ikke vil ha tilgang til så det blir større fare for dårlig kodekvalitet. Leveranse tempoet til DevOps vil også bli noe raskere enn scrum, siden scrum må vente til slutten av sprinten før de leverer koden de har jobbet på til kunden. DevOps vil kunne kontinuerlig levere kode til bruker så snart den er ferdig ved hjelp av automatiseringen.

I min erfaring vil scrum være å foretrekke når det kommer til mindre applikasjoner som ikke trenger mye vedlikehold, siden en rask start og kontinuerlig kommunikasjon med produkteier vil gi et resultat som produkteier aksepterer på et kort tidsskjema.
Jeg ville foretrukket DevOps hvis jeg skulle jobbe med et større system, eller applikasjonen/systemet trenger mye vedlikehold, siden god kodekvalitet og rask oppdagelse av feil vil væære nødvendig for begge. det kan bli veldig tidskrevende å finne feil i større systemer uten gode varsler, og en rask reaksjon til produksjons feil vil gi minst mulig downtime for brukere.

C:

hvis funksjonen krever ekstra steg eller jobs på github actions ville jeg opprettet dem på forhånd før jeg committer funksjonen. jeg ville brukt micrometrics med alarmer til å overvåke den nye funksjonen, kanskje satt litt mer "agressive" alarmer så man får tidlig beskjed hvis funksjonen ikke fungerer som forventet. når jeg commter funskjonen til github repoet ville jeg så klart følge med på github actions for å se at alt fremdeles kjører som det skal. 

feedbacken hjelper med kontinuerlig forbedring på flere måter. En god feilmelding som viser akkurat hva som hendte og hvor vil hjelpe å raskt kunne løse feilen, i tillegg kan den stoppe små feil som fort kan bygge seg opp om man ikke blir advart. en timer widget på cloudwatch kan hjelpe å itterere en funksjon til å enklerer se hvor det kan finnes bottlenecks. i en tidlig fase av utviklingen vil automatisert infrastruktur og tester lede til en raskere utviklingsprosess med mer solid kode. infrastrukturen vil gjøre det enklere for flere utviklerer å jobbe på samme prosjekt uten store merg conflikter. automatiserte tester vil føre til rask oppdagelse av feil, og dermed en sterkere kode base. I produksjons fasen vil overvåking og alarmer gi umidelbar tilbakemelding om noe uventet skulle skje med produksjonsmiljøet.
