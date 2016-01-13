module ClassroomsHelper
  def self.access_code
    code = generate_code

    while Classroom.find_by_access_code code
      code = generate_code
    end

    code
  end

  protected

  def self.generate_code
    first   = SecureRandom.random_number(1000)
    second  = SecureRandom.random_number(1000)

    "#{first}-#{second}"
  end
end