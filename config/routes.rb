Rails.application.routes.draw do

  # As a user, I can list tasks
  get "tasks", to: "tasks#index"

  # As a user, I can add a new task
  # step1 get the form
  get "tasks/new", to: "tasks#new", as: :new_task

  # As a user, I can view the details of a task
  get "tasks/:id", to: "tasks#show", as: :task

  # step2 post create form
  post "tasks", to: "tasks#create"

  # As a user, I can edit a task (mark as completed / update title & details)
  # Step 1, GET the form
  get "tasks/:id/edit", to: "tasks#edit"
  # Step 2, PATCH the form
  patch "tasks/:id", to: "tasks#update"

  # As a user, I can remove a task
  delete "tasks/:id", to: "tasks#destroy"

end
