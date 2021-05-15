APP = myapp
LED = myled

# Add any other object files to this list below
APP_OBJS = myapp.o
APP_OBJS += led.o

all: build

build: $(APP) $(LED)

$(APP): $(APP_OBJS)
	$(CC) $(LDFLAGS) -o $@ $(APP_OBJS) $(LDLIBS)

$(LED): $(APP_OBJS)
	$(CC) $(LDFLAGS) -o $@ $(APP_OBJS) $(LDLIBS)

