class Message
    include ActiveModel::Validations
    include ActiveModel::Conversion
    extend ActiveModel::Naming
    attr_accessor :name, :email, :subject, :body, :tag_id
    validates :name, :email, :subject, :body, :tag_id,  :presence => true
    validates :email, :format => { :with => %r{.+@.+\..+} }, :allow_blank => true
    def initialize(attributes = {})
        attributes.each do |name, value|
            send("#{name}=", value)
        end
    end
    def persisted?
        false
    end
end
