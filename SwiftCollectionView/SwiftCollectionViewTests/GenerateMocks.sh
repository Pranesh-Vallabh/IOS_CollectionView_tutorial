OUTPUT_FILE="$PROJECT_DIR/${PROJECT_NAME}Tests/GeneratedMocks.swift"

echo "Generated Mocks File = $OUTPUT_FILE"

# Define input directory. Change "${PROJECT_DIR}/${PROJECT_NAME}" to your project's root source folder, if it's not the default name.
INPUT_DIR="${PROJECT_DIR}/Pods/ApiPod/ApiPod"
BEER_INPUT_DIR="${PROJECT_DIR}/${PROJECT_NAME}"
echo "Mocks Input Directory = $INPUT_DIR"


# Generate mock files, include as many input files as you'd like to create mocks for.
"${PODS_ROOT}/Cuckoo/run" generate --testable "$PROJECT_NAME" \
--output "${OUTPUT_FILE}" \
"$BEER_INPUT_DIR/ApiPodHeader.swift" \
"$INPUT_DIR/Services/Networkable.swift" \
"$INPUT_DIR/Services/Networking.swift" 
#\
#"$INPUT_DIR/Controllers/ApiListViewable.swift" \
#"$INPUT_DIR/Repository/ApiDataGetable.swift" \
#"$INPUT_DIR/Services/Networkable.swift" \
#"$INPUT_DIR/Services/Networking.swift"
