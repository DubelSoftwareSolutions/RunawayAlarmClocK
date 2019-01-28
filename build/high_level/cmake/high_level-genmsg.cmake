# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "high_level: 1 messages, 0 services")

set(MSG_I_FLAGS "-Ihigh_level:/home/kdabek/ROSWorkspace/src/high_level/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(high_level_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/kdabek/ROSWorkspace/src/high_level/msg/EventInfo.msg" NAME_WE)
add_custom_target(_high_level_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "high_level" "/home/kdabek/ROSWorkspace/src/high_level/msg/EventInfo.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(high_level
  "/home/kdabek/ROSWorkspace/src/high_level/msg/EventInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/high_level
)

### Generating Services

### Generating Module File
_generate_module_cpp(high_level
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/high_level
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(high_level_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(high_level_generate_messages high_level_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/kdabek/ROSWorkspace/src/high_level/msg/EventInfo.msg" NAME_WE)
add_dependencies(high_level_generate_messages_cpp _high_level_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(high_level_gencpp)
add_dependencies(high_level_gencpp high_level_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS high_level_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(high_level
  "/home/kdabek/ROSWorkspace/src/high_level/msg/EventInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/high_level
)

### Generating Services

### Generating Module File
_generate_module_eus(high_level
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/high_level
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(high_level_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(high_level_generate_messages high_level_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/kdabek/ROSWorkspace/src/high_level/msg/EventInfo.msg" NAME_WE)
add_dependencies(high_level_generate_messages_eus _high_level_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(high_level_geneus)
add_dependencies(high_level_geneus high_level_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS high_level_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(high_level
  "/home/kdabek/ROSWorkspace/src/high_level/msg/EventInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/high_level
)

### Generating Services

### Generating Module File
_generate_module_lisp(high_level
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/high_level
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(high_level_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(high_level_generate_messages high_level_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/kdabek/ROSWorkspace/src/high_level/msg/EventInfo.msg" NAME_WE)
add_dependencies(high_level_generate_messages_lisp _high_level_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(high_level_genlisp)
add_dependencies(high_level_genlisp high_level_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS high_level_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(high_level
  "/home/kdabek/ROSWorkspace/src/high_level/msg/EventInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/high_level
)

### Generating Services

### Generating Module File
_generate_module_nodejs(high_level
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/high_level
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(high_level_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(high_level_generate_messages high_level_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/kdabek/ROSWorkspace/src/high_level/msg/EventInfo.msg" NAME_WE)
add_dependencies(high_level_generate_messages_nodejs _high_level_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(high_level_gennodejs)
add_dependencies(high_level_gennodejs high_level_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS high_level_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(high_level
  "/home/kdabek/ROSWorkspace/src/high_level/msg/EventInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/high_level
)

### Generating Services

### Generating Module File
_generate_module_py(high_level
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/high_level
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(high_level_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(high_level_generate_messages high_level_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/kdabek/ROSWorkspace/src/high_level/msg/EventInfo.msg" NAME_WE)
add_dependencies(high_level_generate_messages_py _high_level_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(high_level_genpy)
add_dependencies(high_level_genpy high_level_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS high_level_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/high_level)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/high_level
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(high_level_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/high_level)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/high_level
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(high_level_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/high_level)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/high_level
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(high_level_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/high_level)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/high_level
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(high_level_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/high_level)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/high_level\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/high_level
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(high_level_generate_messages_py std_msgs_generate_messages_py)
endif()
