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

# Public component requirement
set(LVGL_FONTS_REQUIRES
    lvgl
)

# Private component requirement
set(LVGL_FONTS_PRIV_REQUIRES
)

# Register component
idf_component_register(
    SRCS ${LVGL_FONTS_SRCS}
    INCLUDE_DIRS ${LVGL_FONTS_INCS}
    REQUIRES ${LVGL_FONTS_REQUIRES}
    PRIV_REQUIRES ${LVGL_FONTS_PRIV_REQUIRES}
)
