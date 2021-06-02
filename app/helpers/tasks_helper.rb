module TasksHelper

  def my_tasks
    Task.where(user_id: current_user)
  end
end