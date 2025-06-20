# ALXprodev-Devops

# API Request Automation - Pokémon API

This shell script automates the process of retrieving data for the Pokémon **Pikachu** from the [Pokémon API](https://pokeapi.co/).

## Description

- Makes an API GET request to retrieve Pikachu's data.
- Saves the response JSON data to `data.json`.
- If the request fails (non-200 HTTP status), logs the error with the status code to `errors.txt`.
- Removes the `data.json` file if the request fails to avoid saving partial data.

## Usage

1. Make the script executable:

```bash
chmod +x apiAutomation-0x00.sh
