import pygame
import random

class Star(pygame.sprite.Sprite):
    def __init__(self, screen_width, screen_height):
        super().__init__()
        self.image = pygame.image.load("images/star.png").convert_alpha()
        self.image = pygame.transform.scale(self.image, (40, 40))
        self.rect = self.image.get_rect()
        self.rect.x = random.randint(50, screen_width - 50)
        self.rect.y = random.randint(50, screen_height - 50)

    def draw(self, screen):
        screen.blit(self.image, self.rect)
