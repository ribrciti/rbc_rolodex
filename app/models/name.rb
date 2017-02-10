class Name < ApplicationRecord

  scope :sorted, lambda {order ("subjects.position ASC")}

  def full_name
    return "#{first_name} #{last_name}".strip if (first_name || last_name) 
    "Anonymous" 
  end

  def m_initial
    return "#{middle_initial}".upcase
  end
end
