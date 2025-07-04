# Foursight

A 95% accurate early cancer detection tool which uses micro-RNA sequences as input.

- 🌐 **[Project Board](https://projectboard.world/ysc/project/foursight-analysis-of-cancerous-genetic-profiles-with-artificial-neural-networks)**
- 🤖 **[AI Training](https://www.kaggle.com/code/koralkulacoglu/microarray-cancer-classification)**
- 📊 **[Differential Analysis](https://www.kaggle.com/code/koralkulacoglu/microarray-cancer-differential-gene-analysis)**

![image](https://github.com/redmac135/foursight/assets/62809012/2cd4a8b7-82ef-4d27-8df1-6907f3ff3383)

## Installation

Clone the repository:

```bash
https://github.com/redmac135/foursight.git
cd foursight
```

Create .env file using the format
```
PORT=<port number>
SECRET_KEY=<django secret key>
ALLOWED_HOSTS=localhost,127.0.0.1,example.com
CSRF_TRUSTED_ORIGINS=http://localhost,http://127.0.0.1,https://example.com
```

Start the server with docker compose

```bash
docker compose up -d
```
