FactoryBot.define do
  factory :tutee do
    id {1}
    first_name {'Bob'}
    last_name {'Burgers'}
    email {'bobburgers@berkeley.edu'}
    sid {123456789}
    birthdate {'1992-01-01'}
  end
  factory :invalid_firstname_b, parent: :tutee do
    id {1}
    first_name {nil}
    last_name {'Burgers'}
    email {'bobburgers@berkeley.edu'}
    sid {'123456789'}
    birthdate {'1992-01-01'}
  end
  factory :invalid_lastname_b, parent: :tutee do
    id {1}
    first_name {'Bob'}
    last_name {nil}
    email {'bobburgers@berkeley.edu'}
    sid {123456789}
    birthdate {'1992-01-01'}
  end
  factory :invalid_firstname_d, parent: :tutee do
    id {1}
    first_name {'Bob123'}
    last_name {"Burgers"}
    email {'bobburgers@berkeley.edu'}
    sid {123456789}
    birthdate {'1992-01-01'}
  end
  factory :invalid_lastname_d, parent: :tutee do
    id {1}
    first_name {'Bob'}
    last_name {"Burgers123"}
    email {'bobburgers@berkeley.edu'}
    sid {123456789}
    birthdate {'1992-01-01'}
  end
  factory :invalid_email_b, parent: :tutee do
    id {1}
    first_name {'Bob'}
    last_name {"Burgers"}
    email {nil}
    sid {123456789}
    birthdate {'1992-01-01'}
  end
  factory :invalid_email_i, parent: :tutee do
    id {1}
    first_name {'Bob'}
    last_name {"Burgers"}
    email {'bobburgers@gmail.com'}
    sid {123456789}
    birthdate {'1992-01-01'}
  end
  factory :invalid_email_f, parent: :tutee do
    id {1}
    first_name {'Bob'}
    last_name {"Burgers"}
    email {'bobburgers@berkeley.edu'}
    sid {123456789}
    birthdate {'3992-01-01'}
  end
  factory :invalid_sid, parent: :tutee do
    id {1}
    first_name {'Bob'}
    last_name {'Burgers'}
    email {'bobburgers@berkeley.edu'}
    sid {nil}
    birthdate {'1992-01-01'}

    # id {10}
    # sid  {3033298048954}
    # first_name {"Duy"}
    # last_name {"Nguyen"}
    # email {"duy@berkeley.edu"}
  end
end
