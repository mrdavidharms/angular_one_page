if Rails.env.development?
  customers = [
    {
      name: "Bill",
      email: "1992@o.com",
      phone_number: "12232313"
    }, {
      name: "Frank",
      email: "1992@o.com",
      phone_number: "65475868"
    }, {
      name: "Charles",
      email: "1992@o.com",
      phone_number: "68545"
    }, {
      name: "Kim",
      email: "1992@o.com",
      phone_number: "84765765"
    }, {
      name: "Metz",
      email: "dfhssha@o.com",
      phone_number: "453765"
    }
  ]

  customers.each do |customer_params|
    name = customer_params[:name]
    customer = Customer.find_or_initialize_by!(name: name)
    customer.assign_attributes(customer_params)
    customer.save!
  end
end
