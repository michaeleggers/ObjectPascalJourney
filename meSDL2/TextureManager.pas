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
		try	
			ImageData.LoadFromFile('Test.png');
		except
			begin
				WriteLn('Could not load file Test.png');
				// Load default texture or something...
			end;
		end;
		WriteLn('LoadTexture: loading file ', TextureFile);

		LoadTexture := nil;
	end;

end.