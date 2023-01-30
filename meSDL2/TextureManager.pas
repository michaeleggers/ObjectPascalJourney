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
			WriteLn('LoadTexture: loading file ', TextureFile);
		except
			begin
				WriteLn('Could not load file Test.png');
				// Load default texture or something...
			end;
		end;
		
		LoadTexture := nil;
	end;

end.