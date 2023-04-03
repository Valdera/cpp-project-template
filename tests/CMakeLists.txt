if(ENABLE_TESTING)
    set(TEST_SOURCES "${CMAKE_CURRENT_SOURCE_DIR}/main.cpp")

    add_executable(${UNIT_TEST_NAME} ${TEST_SOURCES})

    target_link_libraries(${UNIT_TEST_NAME} PUBLIC ${LIBRARY_NAME})
    target_link_libraries(${UNIT_TEST_NAME} PRIVATE ${CONAN_CATCH2})

    if(ENABLE_COVERAGE)
        set(COVERAGE_MAIN "coverage")
        set(COVERAGE_EXCLUDES
            "${PROJECT_SOURCE_DIR}/app/*"
            "${PROJECT_SOURCE_DIR}/cmake/*"
            "${PROJECT_SOURCE_DIR}/docs/*"
            "${PROJECT_SOURCE_DIR}/external/*"
            "${PROJECT_SOURCE_DIR}/tests/*"
            "${PROJECT_SOURCE_DIR}/build/*"
            "${CONAN_CATCH2_ROOT}/*"
            "${CONAN_CXXOPTS_ROOT}/*"
            "/usr/include/*")
        setup_target_for_coverage_lcov(
            NAME
            ${COVERAGE_MAIN}
            EXECUTABLE
            ${UNIT_TEST_NAME}
            DEPENDENCIES
            ${UNIT_TEST_NAME})
    endif()
endif()
