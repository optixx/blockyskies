WARN_ERROR=-Werror
HOST_WARNINGS=$(WARN_ERROR) -pedantic-errors -Wfatal-errors -Wall  -Wextra -Wno-unused-parameter -Wshadow -Wno-missing-field-initializers -Wno-absolute-value -Wno-pedantic -Wno-deprecated-declarations -DMAGICKCORE_QUANTUM_DEPTH=16  -DMAGICKCORE_HDRI_ENABLE=0 
HOST_CFLAGS=$(HOST_WARNINGS) -O3 $(EXTRA_CFLAGS) -I/usr/local/Cellar/libpng/1.6.21/include -I../ -I../pngquant/lib/ -I/usr/local/Cellar/imagemagick/6.9.3-0_2/include/ImageMagick-6 

LDFLAGS=$(HOST_WARNINGS) -O3 $(EXTRA_CFLAGS) -L../pngquant/lib/ -limagequant

$(PROGRAM): out bin $(OBJS) 
	gcc $(OBJS) -o $(PROGRAM) $(LIBS)

-include $(OBJS:.o=.d)

out/%.o: %.c
	gcc -c $(HOST_CFLAGS) $< -o $@ 
	@gcc -MM $(HOST_CFLAGS) $*.c > out/$*.d
	@mv -f out/$*.d out/$*.d.tmp
	@sed  's/^.*\:/out\/&/' < out/$*.d.tmp > out/$*.d
	@rm -f out/$*.d.tmp

out:
	mkdir out

bin:
	mkdir bin

clean:
	rm -rf out bin *~
