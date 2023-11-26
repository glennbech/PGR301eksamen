1A:
- generer en access key for aws cli
- naviger til repository settings -> secrets and variables -> actions
- her lag 2 nye repository secrets. navn: AWS_ACCESS_KEY_ID med tegnene fra access key til aws nøkkelen. navn: AWS_SECRET_ACCESS_KEY med tegnene fra Secret access key til aws nøkkelen.
3B:
- 

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


Etablere og Bruke Feedback:

Testing: Automatiserte tester, inkludert enhetstester, integrasjonstester og akseptansetester.
Overvåking: Kontinuerlig overvåking av systemets ytelse i produksjon.

Feedback for Kontinuerlig Forbedring:

Iterativ utvikling: Bruk feedback til å iterere og forbedre funksjonaliteten.
Overvåking og feilretting: Hold kontinuerlig overvåking for å oppdage og løse feil raskt.
Integrasjon i Utviklingslivssyklusen:

Tidlig fase: Få tidlig tilbakemelding fra brukere og automatiserte tester.
Produksjon: Overvåking gir kontinuerlig tilbakemelding om ytelse og på