unit TextureManager;


interface
	uses Graphics, sdl2;

	function LoadTexture(TextureFile : string) : PSDL_Texture;


implementation
	function LoadTexture(TextureFile : string) : PSDL_Texture;
	var
		ImageData : TPicture;
	begin
		ImageData.Create;
		ImageData.LoadFromFile('Test.png');
		WriteLn('LoadTexture: loading file ', TextureFile);

		LoadTexture := nil;
	end;

end.