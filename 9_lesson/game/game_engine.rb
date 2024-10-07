require_relative 'hero'
require_relative 'dragon'

class GameEngine
    def initialize
        @hero = Hero.new
        @dragon = Dragon.new
        @hero_turn = true
    end

    def run
        loop do
            puts "Здоровье героя #{@hero.hit_points}"
            puts "Здоровье дракона #{@dragon.hit_points}"

            if @hero_turn
                puts "\nХодит герой!"
                puts "Что делаем? Введите 3 для зелья (#{@hero.helth_potions}) или А для аткаки:"
                action = gets.strip[0]

                if action == 'З'
                    @hero.drink_potion
                else
                    dmg = @hero.attact @dragon
                    puts "Герой ударил на #{dmg}"
                end
            else
                puts "\nХодит дракон!"
                dmg = @dragon.attact @hero
                puts "Дракон ударил на #{dmg}"
            end

            if @dragon.hit_points <=0
                puts "Герой победил"
                break
            end

            if @hero.hit_points <=0
                puts "Дракон победил"
                break
            end

            @hero_turn = !@hero_turn
        end
    end
end