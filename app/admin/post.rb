ActiveAdmin.register Post do
  controller do
    def permitted_params
      params.permit post: [:topic, :body]
    end
  end
end
