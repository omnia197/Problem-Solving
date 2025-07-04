import pygame

class Player(pygame.sprite.Sprite):
    def __init__(self, x, y, w, h):
        super().__init__()
        self.image = pygame.image.load("images/spaceShip.png").convert_alpha()
        self.image = pygame.transform.scale(self.image, (w, h))
        self.rect = self.image.get_rect(topleft=(x, y))
        self.x_velocity = 0
        self.y_velocity = 0

    def move(self, dx, dy):
        self.rect.x += dx
        self.rect.y += dy
        if self.rect.left < 0:
            self.rect.left = 0
        if self.rect.right > 800:
            self.rect.right = 800
        if self.rect.top < 0:
            self.rect.top = 0
        if self.rect.bottom > 800:
            self.rect.bottom = 800
    def move_right(self, velocity):
        self.x_velocity = velocity

    def move_left(self, velocity):
        self.x_velocity = -velocity

    def move_up(self, velocity):
        self.y_velocity = -velocity

    def move_down(self, velocity):
        self.y_velocity = velocity

    def stop(self):
        self.x_velocity = 0
        self.y_velocity = 0

    def draw(self, win):
        win.blit(self.image, self.rect)

    def loop(self, FPS):
        self.move(self.x_velocity, self.y_velocity)
        self.x_velocity = 0
        self.y_velocity = 0
