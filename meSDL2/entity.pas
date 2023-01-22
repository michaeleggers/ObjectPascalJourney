unit entity;


interface
	uses sdl2, TextureManager;
	type
		TEntity = record
			PosX : real;
			PosY : real;
			Texture : PSDL_Texture;
		end;

	function CreateEntity(x : real; y : real; TextureFile : string) : TEntity;


implementation
	var
		AssetPath : string;

	function CreateEntity(x : real; y : real; TextureFile : string) : TEntity;
		var 
			Entity : TEntity;
			TexturePath : string;
		begin			
			TexturePath := AssetPath + TextureFile;
			Entity.PosX := x;
			Entity.PosY := y;			
			Entity.Texture := LoadTexture(TexturePath);
			CreateEntity := Entity;
		end;		

initialization
begin
	AssetPath := 'assets/textures/'
end;	

end.
