# Src files
file(GLOB_RECURSE LVGL_FONTS_SRCS
    ${LVGL_FONTS_ROOT_DIR}/src/*.c
    ${LVGL_FONTS_ROOT_DIR}/src/*.cc
    ${LVGL_FONTS_ROOT_DIR}/src/*.cpp
)
# Include
set(LVGL_FONTS_INCS
    ${LVGL_FONTS_ROOT_DIR}/src/
)


add_library(${PROJECT_NAME} ${LVGL_FONTS_SRCS})
target_include_directories(${PROJECT_NAME} PUBLIC ${LVGL_FONTS_INCS})
target_link_libraries(${PROJECT_NAME} PUBLIC lvgl)
