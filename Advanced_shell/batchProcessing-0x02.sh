
#!/bin/bash

# Directory to store JSON files
OUTPUT_DIR="pokemon_data"

# Create directory if it doesn't exist
mkdir -p "$OUTPUT_DIR"

# List of Pokémon names
pokemon_list=("bulbasaur" "ivysaur" "venusaur" "charmander" "charmeleon")

# Loop through each Pokémon and fetch data
for pokemon in "${pokemon_list[@]}"; do
  echo "Fetching data for $pokemon..."

  # Fetch the data and save to the file
  curl -s "https://pokeapi.co/api/v2/pokemon/$pokemon" -o "$OUTPUT_DIR/$pokemon.json"

  # Check if curl succeeded and file is not empty
  if [ $? -eq 0 ] && [ -s "$OUTPUT_DIR/$pokemon.json" ]; then
    echo "Saved data to $OUTPUT_DIR/$pokemon.json "
  else
    echo "Failed to fetch data for $pokemon "
  fi

  # Delay between requests to avoid rate-limiting (e.g., 2 seconds)
  sleep 2
done
