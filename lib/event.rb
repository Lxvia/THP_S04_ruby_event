require 'pry'
require 'time'

class Event
    attr_accessor :start_date, :duration

    def initialize(start_date, duration, title, attendees)
        @start_date = Time.parse(start_date)
        @duration = duration.to_i
        @title = title
        @attendees = [attendees]
    end

    def postpone_24h
        @start_date += (3600 * 24)
    end

    def end_date
        end_date = @start_date + (@duration * 60)
        return end_date.hour
    end

    def is_past?
        Time.now > @start_date
    end

    def is_future?
        !self.is_past? # ! est le contraire de ?
    end

    def to_s 
        puts "Titre : #{@title}"
        puts "Date de début : #{@start_date}"
        puts "Durée : #{@duration}minutes"
        puts "Invités : #{@attendees.join(", ")}" # .join permet de ne pas voir les [] de l'array et choisir comment séparer les handles
    end


end

binding.pry
puts "end of file"