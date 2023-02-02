class Production < ApplicationRecord
    validates_presence_of :title, :budget, :description, :director, :genre, :image
    validates :title, length: {maximum:50}
    validates :description, length: {in: 5...250}
    validates :budget, numericality: {greater_than: 0, message:"More $$$$ Plz"}
    validates :image, format: {with: %r{.(jpg|png)\Z}i, message: "The file type for an image must be a jpg or png"} 


    validate :genre, :no_more_musicals

    def no_more_musicals
        if self.genre == 'Musical' && Production.where("genre = 'Musical'").count > 1
            errors.add :genre, "Sorry No more Musicals"
        end 
    end 
end
