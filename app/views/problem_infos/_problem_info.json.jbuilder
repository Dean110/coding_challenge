json.extract! problem_info, :id, :key, :answer, :username_id, :created_at, :updated_at
json.url problem_info_url(problem_info, format: :json)
