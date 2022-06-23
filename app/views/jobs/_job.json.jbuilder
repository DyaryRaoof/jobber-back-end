json.extract! job, :id, :title, :description, :duration, :tags, :budget, :user_id, :isOpen, :category_id, :created_at, :updated_at
json.url job_url(job, format: :json)
