program meSDL2;

uses
    sdl2, entity;

var
    window : PSDL_Window;
    renderer : PSDL_Renderer;
    event : PSDL_Event;
    running : Boolean;
    player : TEntity;

begin
  SDL_Init(SDL_INIT_EVERYTHING);

  window := SDL_CreateWindow('My Pascal SDL2 program',
                             SDL_WINDOWPOS_UNDEFINED,
                             SDL_WINDOWPOS_UNDEFINED,
                             800, 600,
                             0);

  renderer := SDL_CreateRenderer(window, -1, SDL_RENDERER_ACCELERATED);
  
  new(event);

  player := CreateEntity(20.34, 340.3, 'player.png');

  SDL_ShowWindow(window);

  SDL_SetRenderDrawColor(renderer, 100, 80, 120, 255);
  SDL_RenderClear(renderer);
  SDL_RenderPresent(renderer);

  WriteLn('Start main loop...');
  running := True;
  while running = True do
  begin
    while SDL_PollEvent(event) = 1 do
    begin
      case event^.type_ of
        SDL_QUITEV: begin
             running := False;      
        end;
      end;
      if event^.type_ = SDL_KEYDOWN Then
      begin
          WriteLn('key pressed');
          if event^.key.keysym.sym = SDLK_ESCAPE Then running := False;
      end; // SDL_KEYDOWN events
    end; // SDL_PollEvent

  end; // Main Loop

  SDL_DestroyRenderer(renderer);
  SDL_DestroyWindow(window);
  SDL_Quit();

end.


