# Kolada AI 🇸🇪

En AI-driven applikation för att hämta och analysera svensk offentlig statistik från Kolada-databasen.

![Kolada AI](https://img.shields.io/badge/Next.js-14-black)
![Gemini](https://img.shields.io/badge/Google%20Gemini-AI-blue)
![Kolada](https://img.shields.io/badge/Kolada-API%20v3-green)

## Funktioner

- **AI-driven sökning** - Ställ frågor på naturligt språk om svensk kommunal statistik
- **Google Gemini Integration** - Använder de senaste Gemini-modellerna (3 Pro, 2.5 Pro/Flash)
- **Kolada API** - Direktåtkomst till tusentals nyckeltal för kommuner och regioner
- **Modern UI** - Next.js 14 med Tailwind CSS och Framer Motion
- **Säker** - API-nycklar sparas endast lokalt i din webbläsare

## Kom igång

### 1. Installera dependencies

```bash
cd kolada-ai
npm install
```

### 2. Skaffa en Google Gemini API-nyckel

1. Gå till [Google AI Studio](https://aistudio.google.com/apikey)
2. Skapa ett konto eller logga in
3. Skapa en ny API-nyckel (gratis)

### 3. Starta utvecklingsservern

```bash
npm run dev
```

### 4. Öppna appen

Navigera till [http://localhost:3000](http://localhost:3000) och lägg till din API-nyckel i inställningarna.

## Teknisk stack

- **Frontend**: Next.js 14, React 18, TypeScript
- **Styling**: Tailwind CSS, Framer Motion
- **AI**: Google Gemini API (@google/genai)
- **Data**: Kolada API v3
- **Icons**: Lucide React

## Exempel på frågor

- "Hur ser skolresultaten ut i Stockholm?"
- "Jämför personaltäthet i äldreomsorgen mellan Malmö och Göteborg"
- "Vilka kommuner har högst lärartäthet i förskolan?"
- "Visa kostnader för hemtjänst per invånare 2023"
- "Hur har arbetslösheten utvecklats i Kiruna kommun?"

## Om Kolada

[Kolada](https://kolada.se) är en öppen databas med nyckeltal för svenska kommuner och regioner. Databasen förvaltas av RKA (Rådet för kommunal analys) i samarbete med Sveriges Kommuner och Regioner (SKR).

### API-dokumentation

- [Kolada API v3](https://api.kolada.se/v3)
- [OpenAPI Spec](https://api.kolada.se/v3/openapi.json)

## Licens

MIT
