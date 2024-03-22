# This file is generated by gyp; do not edit.

TOOLSET := target
TARGET := tree_sitter_typescript_binding
DEFS_Debug := \
	'-DNODE_GYP_MODULE_NAME=tree_sitter_typescript_binding' \
	'-DUSING_UV_SHARED=1' \
	'-DUSING_V8_SHARED=1' \
	'-DV8_DEPRECATION_WARNINGS=1' \
	'-DV8_DEPRECATION_WARNINGS' \
	'-DV8_IMMINENT_DEPRECATION_WARNINGS' \
	'-D_GLIBCXX_USE_CXX11_ABI=1' \
	'-D_DARWIN_USE_64_BIT_INODE=1' \
	'-D_LARGEFILE_SOURCE' \
	'-D_FILE_OFFSET_BITS=64' \
	'-DOPENSSL_NO_PINSHARED' \
	'-DOPENSSL_THREADS' \
	'-DBUILDING_NODE_EXTENSION' \
	'-DDEBUG' \
	'-D_DEBUG' \
	'-DV8_ENABLE_CHECKS'

# Flags passed to all source files.
CFLAGS_Debug := \
	-O0 \
	-gdwarf-2 \
	-mmacosx-version-min=10.15 \
	-arch arm64 \
	-Wall \
	-Wendif-labels \
	-W \
	-Wno-unused-parameter

# Flags passed to only C files.
CFLAGS_C_Debug := \
	-fno-strict-aliasing

# Flags passed to only C++ files.
CFLAGS_CC_Debug := \
	-std=gnu++17 \
	-stdlib=libc++ \
	-fno-rtti \
	-fno-exceptions \
	-fno-strict-aliasing

# Flags passed to only ObjC files.
CFLAGS_OBJC_Debug :=

# Flags passed to only ObjC++ files.
CFLAGS_OBJCC_Debug :=

INCS_Debug := \
	-I/Users/itamarlevy-or/Library/Caches/node-gyp/18.5.0/include/node \
	-I/Users/itamarlevy-or/Library/Caches/node-gyp/18.5.0/src \
	-I/Users/itamarlevy-or/Library/Caches/node-gyp/18.5.0/deps/openssl/config \
	-I/Users/itamarlevy-or/Library/Caches/node-gyp/18.5.0/deps/openssl/openssl/include \
	-I/Users/itamarlevy-or/Library/Caches/node-gyp/18.5.0/deps/uv/include \
	-I/Users/itamarlevy-or/Library/Caches/node-gyp/18.5.0/deps/zlib \
	-I/Users/itamarlevy-or/Library/Caches/node-gyp/18.5.0/deps/v8/include \
	-I$(srcdir)/node_modules/nan \
	-I$(srcdir)/typescript/src

DEFS_Release := \
	'-DNODE_GYP_MODULE_NAME=tree_sitter_typescript_binding' \
	'-DUSING_UV_SHARED=1' \
	'-DUSING_V8_SHARED=1' \
	'-DV8_DEPRECATION_WARNINGS=1' \
	'-DV8_DEPRECATION_WARNINGS' \
	'-DV8_IMMINENT_DEPRECATION_WARNINGS' \
	'-D_GLIBCXX_USE_CXX11_ABI=1' \
	'-D_DARWIN_USE_64_BIT_INODE=1' \
	'-D_LARGEFILE_SOURCE' \
	'-D_FILE_OFFSET_BITS=64' \
	'-DOPENSSL_NO_PINSHARED' \
	'-DOPENSSL_THREADS' \
	'-DBUILDING_NODE_EXTENSION'

# Flags passed to all source files.
CFLAGS_Release := \
	-O3 \
	-gdwarf-2 \
	-mmacosx-version-min=10.15 \
	-arch arm64 \
	-Wall \
	-Wendif-labels \
	-W \
	-Wno-unused-parameter

# Flags passed to only C files.
CFLAGS_C_Release := \
	-fno-strict-aliasing

# Flags passed to only C++ files.
CFLAGS_CC_Release := \
	-std=gnu++17 \
	-stdlib=libc++ \
	-fno-rtti \
	-fno-exceptions \
	-fno-strict-aliasing

# Flags passed to only ObjC files.
CFLAGS_OBJC_Release :=

# Flags passed to only ObjC++ files.
CFLAGS_OBJCC_Release :=

INCS_Release := \
	-I/Users/itamarlevy-or/Library/Caches/node-gyp/18.5.0/include/node \
	-I/Users/itamarlevy-or/Library/Caches/node-gyp/18.5.0/src \
	-I/Users/itamarlevy-or/Library/Caches/node-gyp/18.5.0/deps/openssl/config \
	-I/Users/itamarlevy-or/Library/Caches/node-gyp/18.5.0/deps/openssl/openssl/include \
	-I/Users/itamarlevy-or/Library/Caches/node-gyp/18.5.0/deps/uv/include \
	-I/Users/itamarlevy-or/Library/Caches/node-gyp/18.5.0/deps/zlib \
	-I/Users/itamarlevy-or/Library/Caches/node-gyp/18.5.0/deps/v8/include \
	-I$(srcdir)/node_modules/nan \
	-I$(srcdir)/typescript/src

OBJS := \
	$(obj).target/$(TARGET)/typescript/src/parser.o \
	$(obj).target/$(TARGET)/typescript/src/scanner.o \
	$(obj).target/$(TARGET)/tsx/src/parser.o \
	$(obj).target/$(TARGET)/tsx/src/scanner.o \
	$(obj).target/$(TARGET)/bindings/node/binding.o

# Add to the list of files we specially track dependencies for.
all_deps += $(OBJS)

# CFLAGS et al overrides must be target-local.
# See "Target-specific Variable Values" in the GNU Make manual.
$(OBJS): TOOLSET := $(TOOLSET)
$(OBJS): GYP_CFLAGS := $(DEFS_$(BUILDTYPE)) $(INCS_$(BUILDTYPE))  $(CFLAGS_$(BUILDTYPE)) $(CFLAGS_C_$(BUILDTYPE))
$(OBJS): GYP_CXXFLAGS := $(DEFS_$(BUILDTYPE)) $(INCS_$(BUILDTYPE))  $(CFLAGS_$(BUILDTYPE)) $(CFLAGS_CC_$(BUILDTYPE))
$(OBJS): GYP_OBJCFLAGS := $(DEFS_$(BUILDTYPE)) $(INCS_$(BUILDTYPE))  $(CFLAGS_$(BUILDTYPE)) $(CFLAGS_C_$(BUILDTYPE)) $(CFLAGS_OBJC_$(BUILDTYPE))
$(OBJS): GYP_OBJCXXFLAGS := $(DEFS_$(BUILDTYPE)) $(INCS_$(BUILDTYPE))  $(CFLAGS_$(BUILDTYPE)) $(CFLAGS_CC_$(BUILDTYPE)) $(CFLAGS_OBJCC_$(BUILDTYPE))

# Suffix rules, putting all outputs into $(obj).

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(srcdir)/%.c FORCE_DO_CMD
	@$(call do_cmd,cc,1)

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(srcdir)/%.cc FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

# Try building from generated source, too.

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(obj).$(TOOLSET)/%.c FORCE_DO_CMD
	@$(call do_cmd,cc,1)

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(obj).$(TOOLSET)/%.cc FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(obj)/%.c FORCE_DO_CMD
	@$(call do_cmd,cc,1)

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(obj)/%.cc FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

# End of this set of suffix rules
### Rules for final target.
LDFLAGS_Debug := \
	-undefined dynamic_lookup \
	-Wl,-search_paths_first \
	-mmacosx-version-min=10.15 \
	-arch arm64 \
	-L$(builddir) \
	-stdlib=libc++

LIBTOOLFLAGS_Debug := \
	-undefined dynamic_lookup \
	-Wl,-search_paths_first

LDFLAGS_Release := \
	-undefined dynamic_lookup \
	-Wl,-search_paths_first \
	-mmacosx-version-min=10.15 \
	-arch arm64 \
	-L$(builddir) \
	-stdlib=libc++

LIBTOOLFLAGS_Release := \
	-undefined dynamic_lookup \
	-Wl,-search_paths_first

LIBS :=

$(builddir)/tree_sitter_typescript_binding.node: GYP_LDFLAGS := $(LDFLAGS_$(BUILDTYPE))
$(builddir)/tree_sitter_typescript_binding.node: LIBS := $(LIBS)
$(builddir)/tree_sitter_typescript_binding.node: GYP_LIBTOOLFLAGS := $(LIBTOOLFLAGS_$(BUILDTYPE))
$(builddir)/tree_sitter_typescript_binding.node: TOOLSET := $(TOOLSET)
$(builddir)/tree_sitter_typescript_binding.node: $(OBJS) FORCE_DO_CMD
	$(call do_cmd,solink_module)

all_deps += $(builddir)/tree_sitter_typescript_binding.node
# Add target alias
.PHONY: tree_sitter_typescript_binding
tree_sitter_typescript_binding: $(builddir)/tree_sitter_typescript_binding.node

# Short alias for building this executable.
.PHONY: tree_sitter_typescript_binding.node
tree_sitter_typescript_binding.node: $(builddir)/tree_sitter_typescript_binding.node

# Add executable to "all" target.
.PHONY: all
all: $(builddir)/tree_sitter_typescript_binding.node

