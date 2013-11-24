ActiveAdmin.register Post do

  form do |f|
    f.inputs "Post" do
      f.input :topic
      f.input :body
    end
    f.actions
  end

  controller do
    def permitted_params
      params.permit post: [:topic, :body]
    end
  end
end
