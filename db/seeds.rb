# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


users = User.create ([  {User id: 16, provider: "linkedin", uid: "95evirp5qy", name: "Megan Kakitsubo", location: "Greater Los Angeles Area",
                        image_url: "https://media.licdn.com/mpr/mprx/0_YCazetsTQH7rRx-MjNZN_8HTQ2arY7O4ACszaQY8QgplYxhNN1nv_APT5SAlOpPzACqREnr37USAjw-qcAId8QADoUSKjwk4NAI9wbXh3sZpcgxk48gZI1oAEaB8Nw1djt7J2MBTbit",
                        url: "https://www.linkedin.com/pub/megan-kakitsubo/65/344/62b", created_at: "2015-06-19 17:59:55", updated_at: "2015-06-19 18:04:40",
                        email: "megankaki@gmail.com", username: "Megan Kakitsubo", first_name: "Megan", last_name: "Kakitsubo", country: "us",
                        latitude: nil, longitude: nil, address: nil, city: nil, state: nil, zipcode: nil,
                        current_location: "[\"34.0131295\", \"-118.49516549999998\"]” },

                        {User id: 1, provider: "linkedin", uid: "a6Lnixk4BC", name: "Daley Meistrell", location: "Greater Los Angeles Area",
                        image_url: "https://media.licdn.com/mpr/mprx/0_N-oHBQTmFXd7gIjpN9sUBX12F3f00eyp9zOBBXGO4bRfh2wy4qVXJknrd27hy7grvAH9Z_y6U3Py",
                        url: "https://www.linkedin.com/pub/daley-meistrell/50/307/11a",
                        created_at: "2015-06-18 16:08:26", updated_at: "2015-06-19 17:29:44", email: "daley@bodyglove.com", username: "Daley Meistrell",
                        first_name: "Daley", last_name: "Meistrell", country: "us", latitude: nil, longitude: nil, address: nil, city: nil, state: nil, zipcode: nil,
                        current_location: "[\"34.0131608\", \"-118.4951012\"]”},


                        {User id: 3, provider: "linkedin", uid: "0hNQeZTxeX", name: "Kevin Mehrabi", location: "Greater Los Angeles Area",
                        image_url: "https://media.licdn.com/mpr/mprx/0_Srapvx9AsTBXtX417qd7vpLtV_-drbM17cV_vpQfLQ64fimP39OrRy-3qDtcP8Z0u12GsUZy12uV",
                        url: "https://www.linkedin.com/in/kmehrabi",
                        created_at: "2015-06-19 17:09:36", updated_at: "2015-06-19 18:47:19", email: "Kevin.Mehrabi@gmail.com", username: "Kevin Mehrabi",
                        first_name: "Kevin", last_name: "Mehrabi", country: "us", latitude: nil, longitude: nil, address: nil, city: nil, state: nil, zipcode: nil,
                        current_location: "[\"34.0131714\", \"-118.49512530000001\"]"},

                      ])
