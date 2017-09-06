#hotel_spec.rb
require_relative 'spec_helper.rb'
describe "The Hotel class" do

  before do
    @myhotel = Hotel_Chain::MyHotel.new
  end

  describe "Initializing the Hotel" do

    it "can be initialized" do
      @myhotel.class.must_be_kind_of Class
    end

    it "The hotel can be initialized with a set number of room objects" do
      @myhotel.array_of_rooms.length.must_equal 20
    end

    it "Returns an array" do
      @myhotel.array_of_rooms.must_be_kind_of Array
    end

    # it "Hotel object contains an array of room objects" do
    #   hotel = Hotel_Chain::MyHotel.new
    #   hotel.list_of_rooms[0].must_be_instance_of Hotel_Chain::Room
    # end

  end # end describe

  describe "list_of_rooms method" do

    it "Prints a statement to the user" do
      proc {@myhotel.list_rooms}.wont_be_nil
    end

    it "Returns an array with length 20" do
      @myhotel.list_rooms.length.must_equal 20

    end

    it "gives expected statement at 0 position" do
      @myhotel.list_rooms[0].must_equal "1. Room 1 - $200/night"
    end
  end #end describe list of rooms method

  describe "it stores reservation objects" do

    it "it stores a reservation and returns the array length" do
    #every time a new reservation is created in the reservation class, it calls the store_reservation method and stores that reservation object"
    @myhotel.store_reservation("8/13/17", "8/16/17")
    @myhotel.store_reservation("9/25/17", "9/29/17")
    @myhotel.reservations_array.length.must_equal 2
    end

  end


  describe "print_reservations_by_date method" do

    it "it can list all reservations by date" do
    #you can input a specific date
    #it returns any reservations which occur on a specific date
    #it iterates through all reservation object
    #(Time.now..Time.now+4).cover?(Time.now)
    end

  end



end
