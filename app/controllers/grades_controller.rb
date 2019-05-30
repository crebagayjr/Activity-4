class GradesController < ApplicationController

    def index
        @grades = Grade.all
    end
   
    def show
        @grade = Grade.find(params[:id])
     end

     def average
        @average = (@grade.prelim+@grade.prefi+@grade.midterm+@grade.final)/4
     end

     def new
        @grade = Grade.new
     end

     def create
        @grade = Grade.new
    
        @grade.name = params[:grade][:name]
        @grade.course = params[:grade][:course]
        @grade.idnumber = params[:grade][:idnumber]
        @grade.prelim = params[:grade][:prelim]
        @grade.midterm = params[:grade][:midterm]
        @grade.prefi = params[:grade][:prefi]
        @grade.final = params[:grade][:final]

        @grade.save
        redirect_to "/grades"
    end

    


end
