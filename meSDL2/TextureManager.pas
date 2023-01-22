unit TextureManager;


interface
	uses sdl2;

	function LoadTexture(TextureFile : string) : PSDL_Texture;


implementation
	function LoadTexture(TextureFile : string) : PSDL_Texture;
	begin
		WriteLn('LoadTexture: loading file ', TextureFile);
		LoadTexture := nil;
	end;

end.