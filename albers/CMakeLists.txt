configure_file(config.h.in "${CMAKE_CURRENT_BINARY_DIR}/config.h" @ONLY)

include_directories(
        ${CMAKE_CURRENT_SOURCE_DIR}
)

file(GLOB sources *.cc)
file(GLOB headers *.h)

ROOT_GENERATE_DICTIONARY(AlbersDict PyEventStore.h Registry.h CollectionBase.h LINKDEF LinkDef.h )

add_library(albers SHARED ${sources} ${}AlbersDict.cxx ${headers} config.h.in)
target_link_libraries(albers ${ROOT_LIBRARIES} ${ROOT_COMPONENT_LIBRARIES})

set_target_properties(albers PROPERTIES
  PUBLIC_HEADER "${headers};${CMAKE_CURRENT_BINARY_DIR}/config.h")

install(TARGETS albers
  # IMPORTANT: Add the albers library to the "export-set"
  EXPORT alberscoreTargets
  RUNTIME DESTINATION "${INSTALL_BIN_DIR}" COMPONENT bin
  LIBRARY DESTINATION "${INSTALL_LIB_DIR}" COMPONENT shlib
  PUBLIC_HEADER DESTINATION "${INSTALL_INCLUDE_DIR}/albers"
    COMPONENT dev)

# Install the pcm dictionaries along with the libraries
if (${ROOT_VERSION} GREATER 6)
  install(FILES
    "${PROJECT_BINARY_DIR}/albers/AlbersDict_rdict.pcm"
    DESTINATION "${INSTALL_LIB_DIR}" COMPONENT dev)
endif()
