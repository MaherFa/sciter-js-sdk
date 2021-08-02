# Alternative GNU Make project makefile autogenerated by Premake

ifndef config
  config=debug_x64
endif

ifndef verbose
  SILENT = @
endif

.PHONY: clean prebuild

SHELLTYPE := posix
ifeq (.exe,$(findstring .exe,$(ComSpec)))
	SHELLTYPE := msdos
endif

# Configurations
# #############################################

RESCOMP = windres
INCLUDES += -I../../../include -I../../../demos.lite/sciter-glfw-opengl -I../../../demos.lite/glfw/include -I../../../demos.lite/glfw/deps
FORCE_INCLUDE +=
ALL_CPPFLAGS += $(CPPFLAGS) -MMD -MP $(DEFINES) $(INCLUDES)
ALL_RESFLAGS += $(RESFLAGS) $(DEFINES) $(INCLUDES)
LIBS +=
LDDEPS +=
LINKCMD = $(CXX) -o "$@" $(OBJECTS) $(RESOURCES) $(ALL_LDFLAGS) $(LIBS)
define PREBUILDCMDS
endef
define PRELINKCMDS
endef
define POSTBUILDCMDS
endef

ifeq ($(config),debug_x64)
TARGETDIR = ../../../bin.lite/linux/x64
TARGET = $(TARGETDIR)/glfw-opengl
OBJDIR = obj/x64/Debug/glfw-opengl
DEFINES += -DDEVICE=DESKTOP -D_GNU_SOURCE -DDEBUG -D_DEBUG -DWINDOWLESS -D_GLFW_X11
ALL_CFLAGS += $(CFLAGS) $(ALL_CPPFLAGS) -m64 -g `pkg-config gtk+-3.0 --cflags` `pkg-config fontconfig --cflags` -fPIC -Wno-unknown-pragmas -Wno-write-strings -ldl
ALL_CXXFLAGS += $(CXXFLAGS) $(ALL_CPPFLAGS) -m64 -g -std=c++17 `pkg-config gtk+-3.0 --cflags` `pkg-config fontconfig --cflags` -fPIC -Wno-unknown-pragmas -Wno-write-strings -ldl
ALL_LDFLAGS += $(LDFLAGS) -L/usr/lib64 -m64 -fPIC -Wall -pthread -lm -lX11 -lXrandr -lXinerama -lXcursor -lGL -lGLU -ldl

else ifeq ($(config),debug_arm32)
TARGETDIR = ../../../bin.lite/linux/arm32
TARGET = $(TARGETDIR)/glfw-opengl
OBJDIR = obj/arm32/Debug/glfw-opengl
DEFINES += -DDEVICE=DESKTOP -D_GNU_SOURCE -DDEBUG -D_DEBUG -DWINDOWLESS -D_GLFW_X11
ALL_CFLAGS += $(CFLAGS) $(ALL_CPPFLAGS) -g `pkg-config gtk+-3.0 --cflags` `pkg-config fontconfig --cflags` -fPIC -Wno-unknown-pragmas -Wno-write-strings -ldl
ALL_CXXFLAGS += $(CXXFLAGS) $(ALL_CPPFLAGS) -g -std=c++17 `pkg-config gtk+-3.0 --cflags` `pkg-config fontconfig --cflags` -fPIC -Wno-unknown-pragmas -Wno-write-strings -ldl
ALL_LDFLAGS += $(LDFLAGS) -fPIC -Wall -pthread -lm -lX11 -lXrandr -lXinerama -lXcursor -lGL -lGLU -ldl

else ifeq ($(config),release_x64)
TARGETDIR = ../../../bin.lite/linux/x64
TARGET = $(TARGETDIR)/glfw-opengl
OBJDIR = obj/x64/Release/glfw-opengl
DEFINES += -DDEVICE=DESKTOP -D_GNU_SOURCE -DNDEBUG -DWINDOWLESS -D_GLFW_X11
ALL_CFLAGS += $(CFLAGS) $(ALL_CPPFLAGS) -m64 -flto -Os `pkg-config gtk+-3.0 --cflags` `pkg-config fontconfig --cflags` -fPIC -Wno-unknown-pragmas -Wno-write-strings -ldl
ALL_CXXFLAGS += $(CXXFLAGS) $(ALL_CPPFLAGS) -m64 -flto -Os -std=c++17 `pkg-config gtk+-3.0 --cflags` `pkg-config fontconfig --cflags` -fPIC -Wno-unknown-pragmas -Wno-write-strings -ldl
ALL_LDFLAGS += $(LDFLAGS) -L/usr/lib64 -m64 -flto -s -fPIC -Wall -pthread -lm -lX11 -lXrandr -lXinerama -lXcursor -lGL -lGLU -ldl

else ifeq ($(config),release_arm32)
TARGETDIR = ../../../bin.lite/linux/arm32
TARGET = $(TARGETDIR)/glfw-opengl
OBJDIR = obj/arm32/Release/glfw-opengl
DEFINES += -DDEVICE=DESKTOP -D_GNU_SOURCE -DNDEBUG -DWINDOWLESS -D_GLFW_X11
ALL_CFLAGS += $(CFLAGS) $(ALL_CPPFLAGS) -flto -Os `pkg-config gtk+-3.0 --cflags` `pkg-config fontconfig --cflags` -fPIC -Wno-unknown-pragmas -Wno-write-strings -ldl
ALL_CXXFLAGS += $(CXXFLAGS) $(ALL_CPPFLAGS) -flto -Os -std=c++17 `pkg-config gtk+-3.0 --cflags` `pkg-config fontconfig --cflags` -fPIC -Wno-unknown-pragmas -Wno-write-strings -ldl
ALL_LDFLAGS += $(LDFLAGS) -flto -s -fPIC -Wall -pthread -lm -lX11 -lXrandr -lXinerama -lXcursor -lGL -lGLU -ldl

else
  $(error "invalid configuration $(config)")
endif

# Per File Configurations
# #############################################


# File sets
# #############################################

OBJECTS :=

OBJECTS += $(OBJDIR)/basic.o
OBJECTS += $(OBJDIR)/behavior_drawing.o
OBJECTS += $(OBJDIR)/context.o
OBJECTS += $(OBJDIR)/egl_context.o
OBJECTS += $(OBJDIR)/glad.o
OBJECTS += $(OBJDIR)/glx_context.o
OBJECTS += $(OBJDIR)/init.o
OBJECTS += $(OBJDIR)/input.o
OBJECTS += $(OBJDIR)/linux_joystick.o
OBJECTS += $(OBJDIR)/monitor.o
OBJECTS += $(OBJDIR)/osmesa_context.o
OBJECTS += $(OBJDIR)/posix_thread.o
OBJECTS += $(OBJDIR)/posix_time.o
OBJECTS += $(OBJDIR)/vulkan.o
OBJECTS += $(OBJDIR)/window.o
OBJECTS += $(OBJDIR)/x11_init.o
OBJECTS += $(OBJDIR)/x11_monitor.o
OBJECTS += $(OBJDIR)/x11_window.o
OBJECTS += $(OBJDIR)/xkb_unicode.o

# Rules
# #############################################

all: $(TARGET)
	@:

$(TARGET): $(OBJECTS) $(LDDEPS) | $(TARGETDIR)
	$(PRELINKCMDS)
	@echo Linking glfw-opengl
	$(SILENT) $(LINKCMD)
	$(POSTBUILDCMDS)

$(TARGETDIR):
	@echo Creating $(TARGETDIR)
ifeq (posix,$(SHELLTYPE))
	$(SILENT) mkdir -p $(TARGETDIR)
else
	$(SILENT) mkdir $(subst /,\\,$(TARGETDIR))
endif

$(OBJDIR):
	@echo Creating $(OBJDIR)
ifeq (posix,$(SHELLTYPE))
	$(SILENT) mkdir -p $(OBJDIR)
else
	$(SILENT) mkdir $(subst /,\\,$(OBJDIR))
endif

clean:
	@echo Cleaning glfw-opengl
ifeq (posix,$(SHELLTYPE))
	$(SILENT) rm -f  $(TARGET)
	$(SILENT) rm -rf $(OBJDIR)
else
	$(SILENT) if exist $(subst /,\\,$(TARGET)) del $(subst /,\\,$(TARGET))
	$(SILENT) if exist $(subst /,\\,$(OBJDIR)) rmdir /s /q $(subst /,\\,$(OBJDIR))
endif

prebuild: | $(OBJDIR)
	$(PREBUILDCMDS)

ifneq (,$(PCH))
$(OBJECTS): $(GCH) | $(PCH_PLACEHOLDER)
$(GCH): $(PCH) | prebuild
	@echo $(notdir $<)
	$(SILENT) $(CXX) -x c++-header $(ALL_CXXFLAGS) -o "$@" -MF "$(@:%.gch=%.d)" -c "$<"
$(PCH_PLACEHOLDER): $(GCH) | $(OBJDIR)
ifeq (posix,$(SHELLTYPE))
	$(SILENT) touch "$@"
else
	$(SILENT) echo $null >> "$@"
endif
else
$(OBJECTS): | prebuild
endif


# File Rules
# #############################################

$(OBJDIR)/glad.o: ../../../demos.lite/glfw/deps/glad.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/context.o: ../../../demos.lite/glfw/src/context.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/egl_context.o: ../../../demos.lite/glfw/src/egl_context.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/glx_context.o: ../../../demos.lite/glfw/src/glx_context.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/init.o: ../../../demos.lite/glfw/src/init.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/input.o: ../../../demos.lite/glfw/src/input.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/linux_joystick.o: ../../../demos.lite/glfw/src/linux_joystick.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/monitor.o: ../../../demos.lite/glfw/src/monitor.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/osmesa_context.o: ../../../demos.lite/glfw/src/osmesa_context.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/posix_thread.o: ../../../demos.lite/glfw/src/posix_thread.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/posix_time.o: ../../../demos.lite/glfw/src/posix_time.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/vulkan.o: ../../../demos.lite/glfw/src/vulkan.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/window.o: ../../../demos.lite/glfw/src/window.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/x11_init.o: ../../../demos.lite/glfw/src/x11_init.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/x11_monitor.o: ../../../demos.lite/glfw/src/x11_monitor.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/x11_window.o: ../../../demos.lite/glfw/src/x11_window.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/xkb_unicode.o: ../../../demos.lite/glfw/src/xkb_unicode.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/basic.o: ../../../demos.lite/sciter-glfw-opengl/basic.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/behavior_drawing.o: ../../../include/behaviors/behavior_drawing.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"

-include $(OBJECTS:%.o=%.d)
ifneq (,$(PCH))
  -include $(PCH_PLACEHOLDER).d
endif