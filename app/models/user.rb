class User < ApplicationRecord
    # 大文字小文字を区別しない
    validates :user_name, uniqueness: { case_sensitive: false }
end
