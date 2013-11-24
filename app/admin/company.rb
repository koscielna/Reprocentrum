ActiveAdmin.register Company do
  controller do
    def permitted_params
      params.permit company: [:name, :url, :logo]
    end
  end
end
