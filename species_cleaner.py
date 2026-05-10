# Raw field notes with messy formatting
field_observations = ["  lion", "TIGER ", "  gecko", "pArrot ", "  ElePhant", "lion  "]

# Use a 'Set' to remove duplicates automatically
cleaned_species = {animal.strip().capitalize() for animal in field_observations}

print("--- Biodiversity Data Report ---")
print(f"Total entries processed: {len(field_observations)}")
print(f"Unique species identified: {list(cleaned_species)}")
print(f"Count: {len(cleaned_species)} unique species.")
