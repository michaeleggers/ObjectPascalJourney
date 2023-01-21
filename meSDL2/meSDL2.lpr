program meSDL2;

uses
    sdl2;

var
    window : PSDL_Window;
    renderer: PSDL_Renderer;
    event: PSDL_Event;
    running: Boolean;


begin
  SDL_Init(SDL_INIT_EVERYTHING);

  window := SDL_CreateWindow('My Pascal SDL2 program',
                             SDL_WINDOWPOS_UNDEFINED,
                             SDL_WINDOWPOS_UNDEFINED,
                             800, 600,
                             0);

  renderer := SDL_CreateRenderer(window, -1, SDL_RENDERER_ACCELERATED);
  new(event);

  SDL_ShowWindow(window);

  SDL_SetRenderDrawColor(renderer, 100, 80, 120, 255);
  SDL_RenderClear(renderer);
  SDL_RenderPresent(renderer);

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
    end; // SDL_PollEvent

  end; // Main Loop

  SDL_DestroyRenderer(renderer);
  SDL_DestroyWindow(window);
  SDL_Quit();

end.

