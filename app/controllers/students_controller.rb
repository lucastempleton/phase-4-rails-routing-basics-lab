class StudentsController < ApplicationController
    def index
        students = Student.all
        render json: students
    end
    # def show
    #     student = Students.find(params[:id])
    #     render json: student
    # end
    @@studentgrades = Student.order(:grade).reverse
    def grades
        
        render json: @@studentgrades
    end
    def highest_grade
        highestgrade = Student.maximum(:grade)
        student = Student.find_by(grade: highestgrade)
        render json: student
    end
end
