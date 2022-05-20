function love.conf(t)
end

function love.load(dt)
    love.window.setMode(500, 500)
    paddle = { x = 200, y = 450, width = 100, height = 25, speed = 150 }
    ball = {x = 250, y = 250, radius = }
end

function love.update(dt)
    if love.keyboard.isDown("a") and paddle.x - paddle.speed * dt > 0 then
        paddle.x = paddle.x - paddle.speed * dt
    end
    if love.keyboard.isDown("d") and paddle.x + paddle.speed * dt < 400 then
        paddle.x = paddle.x + paddle.speed * dt
    end
end

function love.draw(dt)
    love.graphics.circle("fill", ball.x, ball.y, ball.radius)
    love.graphics.rectangle("fill", paddle.x, paddle.y, paddle.width, paddle.height)
end
