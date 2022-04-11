# Enkel ci-lab

## Vad går labben ut på.

Helt enkelt så behöver koden säkerhetsställas att den är så säker och testad som möjligt.
Inget ska commitas eller köras i github

I "pipelinen":
* Implementera att tester körs 
* Implementera att linter körs
* Bonus: Implementera att statisk analys körs 
* Bonus: Implementera att en säkerhetskoll körs

Mycket kan vara "ganska klart", vad innehåller projektet? (Hint: Makefile)

## Vad behöver jag?

* Docker
* Node / Npm (ej riktigt nödvändigt för övningen, mest of du vill testa något lokalt)

## Hur kör jag pipelinen lokalt.

### Bygga 

```Make docker-build```

### Testa manuellt att appen kommer upp

```Make docker-start```

### Testa manuellt att appen kommer upp

```Make docker-stop```

## Hur kör jag pipeline i github actions.

Detta ska inte göras i labben.

```git push```

