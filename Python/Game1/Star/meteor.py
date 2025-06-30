import pygame
import random

class Meteor(pygame.sprite.Sprite):
    def __init__(self, screen_width, screen_height):
        super().__init__()

        meteor_images = ["images/meteor1.png", "images/meteor2.png",
                         "images/meteor3.png", "images/meteor4.png",
                         "images/meteor5.png"]
        selected = random.choice(meteor_images)
        self.image = pygame.image.load(selected).convert_alpha()

        scale = random.randint(40, 80)
        self.image = pygame.transform.scale(self.image, (scale, scale))
        self.rect = self.image.get_rect()

        side = random.choice(["top", "right"])
        if side == "top":
            self.rect.x = random.randint(0, screen_width - scale)
            self.rect.y = -scale
            self.dx = random.uniform(-1, 1)
            self.dy = random.uniform(2, 4)

        else:
            self.rect.x = screen_width + scale
            self.rect.y = random.randint(0, screen_height - scale)
            self.dx = random.uniform(-4, -2)
            self.dy = random.uniform(-1, 1)

    def update(self):
        self.rect.x += int(self.dx)
        self.rect.y += int(self.dy)

    def draw(self, screen):
        screen.blit(self.image, self.rect)
