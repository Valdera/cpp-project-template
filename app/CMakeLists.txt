set(EXE_SOURCES
    "main.cpp")

add_executable(${EXECUTABLE_NAME} ${EXE_SOURCES})

target_link_libraries(${EXECUTABLE_NAME} PUBLIC
    ${LIBRARY_NAME}
    fmt::fmt
    spdlog::spdlog_header_only
    nlohmann_json
    ${CONAN_CXXOPTS})
