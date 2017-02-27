class Message < ActiveRecord::Base
  enum message_type: {
    "Pastor Message"    => 1,
    "Prayer Request"    => 2,
    "Testimony"         => 3
  }

  enum status: {
    "Published"     => 1,
    "Not Published"   => 2
  }

  belongs_to :office
end
