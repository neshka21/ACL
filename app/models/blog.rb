class Blog < ApplicationRecord
	mount_uploader :img, ImgUploader
end
