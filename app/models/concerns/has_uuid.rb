module HasUUID
  def self.included(base)
    base.send :before_create, :generate_uuid
  end

  def self.generate
    uuid = SecureRandom.uuid.gsub('-', '')
    base62 uuid.to_i(16)
  end

  def self.base62(number)
    EncodeWithAlphabet.encode(number,
                              'abcdefghijklmnopqrstuvwxyz0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ')
  end

  private

  def generate_uuid
    self.uuid = HasUUID.generate
  end
end
