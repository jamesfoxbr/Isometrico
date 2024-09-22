---@diagnostic disable: undefined-global, lowercase-global

TILE_WIDTH = 100
TILE_HEIGHT = 50

GRID_SIZE = 10

x_start = love.graphics.getWidth() / 2 - TILE_WIDTH / 2
y_start = 50

tile_images = {}

grid = {
    {3, 3, 3, 3, 3, 3, 3, 3, 3, 3},
    {3, 1, 1, 1, 1, 1, 1, 1, 1, 3},
    {3, 1, 1, 1, 1, 1, 1, 1, 1, 3},
    {3, 1, 1, 1, 1, 1, 1, 1, 1, 3},
    {3, 1, 1, 2, 1, 1, 1, 1, 1, 3},
    {3, 1, 1, 2, 1, 1, 1, 1, 1, 3},
    {3, 1, 1, 1, 1, 1, 1, 1, 1, 3},
    {3, 1, 1, 1, 1, 1, 1, 2, 1, 3},
    {3, 1, 1, 1, 1, 1, 1, 1, 1, 3},
    {3, 3, 3, 3, 3, 3, 3, 3, 3, 3}
}

function love.load()
    table.insert(tile_images, love.graphics.newImage("/tiles/grass.png"))
    table.insert(tile_images, love.graphics.newImage("/tiles/sand.png"))
    table.insert(tile_images, love.graphics.newImage("/tiles/water.png"))
end

function love.update(dt)
    
end

function love.draw()
    draw_grid()
end

function draw_tile(img, x, y)
    local x_screen = x_start + (x - y) * TILE_WIDTH / 2
    local y_screen = y_start + (x + y) * TILE_HEIGHT / 2
    love.graphics.draw(img, x_screen, y_screen)
end

function draw_grid()
    x_start = love.graphics.getWidth() / 2 - TILE_WIDTH / 2;
    y_start = 50;
    for i = 1, GRID_SIZE do
        for j = 1, GRID_SIZE do
            draw_tile(tile_images[grid[j][i]], i, j)
        end
    end
end