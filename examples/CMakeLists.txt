include_directories(
        ${CMAKE_SOURCE_DIR}/datamodel
)

add_executable(albers-write write.cc)
add_executable(albers-read read.cc)

target_link_libraries(albers-write exampledatamodel albers)
target_link_libraries(albers-read exampledatamodel albers)

install(TARGETS albers-write albers-read
  # IMPORTANT: Add the write executable to the "export-set"
  EXPORT alberscoreTargets
  RUNTIME DESTINATION "${INSTALL_BIN_DIR}" COMPONENT bin)

