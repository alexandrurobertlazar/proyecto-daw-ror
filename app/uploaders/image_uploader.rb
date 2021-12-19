class ImageUploader < Shrine

    ## Valida si se envía una foto o no
    ## También revisa su tamaño y demás
    Attacher.validate do
        validate_size      1..5*1024*1024 # Maximo 5GB de tamaño
        validate_mime_type %w[image/jpeg image/png image/webp image/tiff]
        validate_extension %w[jpg jpeg png webp tiff tif]
    end
end