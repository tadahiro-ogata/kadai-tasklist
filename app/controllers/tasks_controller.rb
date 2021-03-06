class TasksController <ApplicationController
  before_action :require_user_logged_in
  before_action :set_task, only: [:show, :edit, :update, :destroy]
  before_action :correct_user, only: [:create, :destroy]
  
    def index
      @tasks = Task.all
    end
    
    def show
    end
    
    def new
        @task = Task.new
    end
    
    def create
        @task = Task.new(task_params)
        
        if @task.save
            flash[:success] = 'taskが正常に追加されました'
            redirect_to root_url
        else
            flash.now[:danger] = 'taskが追加されませんでした'
            render :new
        end
    end
    
    def edit
    end
    
    def update
        
        if @task.update(task_params)
            flash[:success] = 'taskが正常に更新されました'
            redirect_to @task
        else
            flash.now[:danger] = 'taskが更新されませんでした'
            render :edit
        end
    end
    
    def destroy
        @task.destroy
        
        flash[:success] = 'taskは正常に削除されました'
        redirect_to root_url
    end
    
    
    
    private
    
    def set_task
      @task = Task.find(params[:id])
    end
    
    def task_params
      params.require(:task).permit(:content, :status)
    end
    
    def correct_user
        @task = current_user.tasks.find_by(id: params[:id])
        unless @task
          redirect_to login_url
        end
    end
end
