class BasicContact
  attr_accessor :firstname, :secondname

  def initialize(firstname, secondname)
    @firstname = firstname
    @secondname = secondname
  end

  def to_s
    "Name: " + @firstname + "Surname: " + @secondname
  end
end

class Contact < BasicContact
  attr_accessor :firstname, :secondname, :number, :skype, :email, :instagram

  def initialize(firstname, secondname, number, email)
    @firstname = firstname
    @secondname = secondname
    @number = number
    @email = email
  end

  def to_s
    "Name: " + @firstname + "Surname: " + @secondname + "number: " + @number + " email: " + @email
  end
end

class SocialContact < Contact
  attr_accessor :skype, :instagram

  def initialize(skype, instagram)
    super(firstname, secondname, phone, email)
    @skype = skype
    @instagram = instagram
  end

end

class ContactsArray
  attr_accessor :array

  def initialize(array)
    @array = array
  end

  def add(obj)
    @array.append obj
  end

  def find_by_name(name)
    @array.each do |i|
      i.firstname.start_with? name
    end
  end

  def sort_by_name
    @array.sort do |a, b|
      a.firstname > b.firstname
    end
  end

  def to_s
    array.each do |item|
      puts item
    end
  end
end
