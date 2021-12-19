module ApplicationHelper

    ## Para añadir links a imágenes
    def link_to_image(image_path, target_link,options={})
        link_to(image_tag(image_path, :border => "0"), target_link, options)
    end
end
