APP_STL := gnustl_static
APP_CPPFLAGS := -frtti -DCOCOS2D_JAVASCRIPT=1 -DCC_ENABLE_CHIPMUNK_INTEGRATION=1 -fsigned-char -fexceptions #-std=c++11
APP_LDFLAGS := -latomic
#APP_ALLOW_MISSING_DEPS=true

APP_SHORT_COMMANDS := true
ifeq ($(NDK_DEBUG),1)
  APP_CPPFLAGS += -DCOCOS2D_DEBUG=1
  APP_OPTIM := debug
else
  APP_CPPFLAGS += -DNDEBUG
  APP_OPTIM := release
endif
