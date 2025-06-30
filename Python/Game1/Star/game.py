import pygame
import gif_pygame
from player import Player
from meteor import Meteor
from star import Star
import random

pygame.init()
FPS = 60
WIDTH, HEIGHT = 800, 800
window = pygame.display.set_mode((WIDTH, HEIGHT))
pygame.display.set_caption("Serius Reach")
bg_gif = gif_pygame.load("images/starsMoving.gif")
gif_pygame.transform.scale(bg_gif, (WIDTH, HEIGHT))

player1 = Player(400, 700, 80, 80)
meteors = []
meteor_spawn_delay = 50
star = None
star_spawn_time = random.randint(5, 10) * FPS 
frame_count = 0
clock = pygame.time.Clock()

font = pygame.font.SysFont(None, 80)

def show_message(text, color):
    msg = font.render(text, True, color)
    msg_rect = msg.get_rect(center=(WIDTH // 2, HEIGHT // 2))
    window.blit(msg, msg_rect)
    pygame.display.flip()
    pygame.time.delay(3000)

def main(window):
    global frame_count, star
    running = True

    while running:
        clock.tick(FPS)
        frame_count += 1

        for event in pygame.event.get():
            if event.type == pygame.QUIT:
                running = False


        keys = pygame.key.get_pressed()
        if keys[pygame.K_RIGHT]:
            player1.move_right(5)
        elif keys[pygame.K_LEFT]:
            player1.move_left(5)
        elif keys[pygame.K_UP]:
            player1.move_up(5)
        elif keys[pygame.K_DOWN]:
            player1.move_down(5)
        else:
            player1.stop()

        player1.loop(FPS)


        if frame_count % meteor_spawn_delay == 0:
            for _ in range(random.randint(2, 4)): 
                meteors.append(Meteor(WIDTH, HEIGHT))


        bg_gif.render(window, (0, 0))

 
        for meteor in meteors[:]:
            meteor.update()
            meteor.draw(window)

            if player1.rect.colliderect(meteor.rect):
                show_message("YOU LOST", (255, 255, 255))
                running = False

            if (meteor.rect.top > HEIGHT or meteor.rect.left > WIDTH or meteor.rect.right < 0):
                meteors.remove(meteor)


        if frame_count == star_spawn_time and star is None:
            star = Star(WIDTH, HEIGHT)

        if star:
            star.draw(window)
            if player1.rect.colliderect(star.rect):
                show_message("YOU WIN!", (255, 255, 255))
                running = False

        player1.draw(window)
        pygame.display.flip()

    pygame.quit()
    quit()

if __name__ == "__main__":
    main(window)
