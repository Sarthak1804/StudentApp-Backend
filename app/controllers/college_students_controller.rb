class CollegeStudentsController < ApplicationController
  before_action :set_college_student, only: %i[ show edit update destroy ]
  # GET /college_students or /college_students.json
  def index
    @college_students = ListCollegeStudents.run!
    render json: @college_students
  end

  # GET /college_students/1 or /college_students/1.json
  def show
    @find_college_student = find_college_student!
    render json: @find_college_student
  end

  # GET /college_students/new
  def new
    @college_student = CreateCollegeStudent.new
    render json: @college_student
  end

  # GET /college_students/1/edit
  def edit
    render json: find_college_student!

  end

  # POST /college_students or /college_students.json
  def create
    @college_student = CollegeStudent.new(college_student_params)

    respond_to do |format|
      if @college_student.save
        format.html { redirect_to @college_student, notice: "College student was successfully created." }
        format.json { render :show, status: :created, location: @college_student }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @college_student.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /college_students/1 or /college_students/1.json
  def update
    inputs = { college_student: find_college_student! }.reverse_merge(params[:college_student])
    outcome = UpdateCollegeStudent.run(inputs)

    if outcome.valid?
      render json: outcome.result
    else
      @college_student = outcome
      render(:edit)
    end
  end

  # DELETE /college_students/1 or /college_students/1.json
  def destroy
    DestroyCollegeStudent.run!(college_student: find_college_student!)
    render json: {}
  end

  def search
    render :json => SearchCollegeStudent.run(params).result
  end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_college_student
      @college_student = CollegeStudent.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def college_student_params
      params.require(:college_student).permit(:name, :email)
    end

    def find_college_student!
      outcome = FindCollegeStudent.run(params)

      if outcome.valid?
        outcome.result
      else
        fail ActiveRecord::RecordNotFound, outcome.errors.full_messages.to_sentence
      end
    end

    def render_json(hash)
      render :json => hash
    end
end
