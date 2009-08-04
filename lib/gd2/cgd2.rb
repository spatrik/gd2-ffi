module CGD2
  
  def self.lib_path
     "/opt/local/lib/libgd.2.dylib"
  end
  extend FFI::Library
  ffi_lib lib_path
  
  # BGD_DECLARE(gdImagePtr) gdImageCreate (int sx, int sy)
  attach_function :gdImageCreate, [:int, :int], :pointer
  
  # void gdImageFilledRectangle(gdImagePtr im, int x1, int y1, int x2, int y2, int color) (FUNCTION)
  attach_function :gdImageFilledRectangle, [:pointer, :int, :int, :int, :int, :int], :void
  
  #char *gdImageStringFT(gdImagePtr im, int *brect, int fg, char *fontname, double ptsize, double angle, int x, int y, char *string) (FUNCTION)
  attach_function :gdImageStringFT, [:pointer, :pointer, :int, :string, :double, :double, :int, :int, :string], :pointer
end