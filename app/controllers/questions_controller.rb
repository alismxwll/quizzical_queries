class QuestionsController <ApplicationController
  def index
    @questions = Questoion.all
  end

  def new
    @question = Question.new
  end

  def create
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

end
