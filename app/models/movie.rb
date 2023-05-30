class Movie < ActiveRecord::Base

    def self.create_with_title(title)
        Movie.create(title: title)
    end

    def self.first_movie
        Movie.first
    end

    def self.last_movie
        Movie.last
    end

    def self.count
        Movie.count
    end

    def self.find_movie_with_id(id)
        Movie.find(id)
    end

    def self.find_movie_with_attributes(title, release_date)
        Movie.find_by(title: title, release_date: release_date)
    end

    def self.find_movies_after_2002
        Movie.where('release_date > ?', 2002)
      end
      
    def update_with_attributes(attributes)
        update(attributes)
      end
    
    
      def self.update_all_titles(new_title)
        update_all(title: new_title)
      end
    
   
      def self.delete_by_id(id)
        delete(id)
      end
    
      
      def self.delete_all_movies
        delete_all
      end
end