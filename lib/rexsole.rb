require "rexsole/version"
require "regex"

module Rexsole
  Username = /\A[a-zA-Z0-9_]*\z/

  # Dni (spanish ID card)
  Dni = /\A\d{8}[A-Za-z]{1}\z/

  # URL
  Url = URL = /(\A\z)|(\A(http|https):\/\/[a-z0-9]+([\-\.]{1}[a-z0-9]+)*\.[a-z]{2,5}(([0-9]{1,5})?\/.*)?\z)/ix

  # Domain
  Domain = /(\A\z)|(\A[a-z0-9]+([\-\.]{1}[a-z0-9]+)*\.[a-z]{2,5}(([0-9]{1,5})?)?\z)/ix

  # CreditCard
  CreditCard = /\A(\d{4}-){3}\d{4}\z|\A(\d{4}\s){3}\d{4}\z|\A\d{16}\z/

  # MasterCard credit card
  MasterCard = /\A5[1-5]\d{14}\z/

  # Visa credit card
  Visa = /\A4\d{15}\z/

  # US Social Security
  USSocialSecurity = /\A\d{3}-\d{2}-\d{4}\z/

  # General postal code
  GeneralPostalCode = /\A\d{5}\z/

  # US ZIP code
  ZIPCode = /\A(\d{5}\z)|(\d{5}-\d{4}\z)/

  # Twitter username
  TwitterUsername = /\A([a-z0-9\_])+\z/ix

  # Github username
  GithubUsername = /\A([a-z0-9\_\-])+\z/ix

  # Slideshare username
  SlideshareUsername = /\A([a-z0-9])+\z/ix

  # Del.icio.us username
  DeliciousUsername = /\A([a-z0-9\_\-])+\z/ix

  # Email
  Email = /\A([\w\!\#\z\%\&\'\*\+\-\/\=\?\\A\`{\|\}\~]+\.)*[\w\+-]+@((((([a-z0-9]{1}[a-z0-9\-]{0,62}[a-z0-9]{1})|[a-z])\.)+[a-z]{2,6})|(\d{1,3}\.){3}\d{1,3}(\:\d{1,5})?)\z/i

  # UUID
  UUID = /\A([0-9a-fA-F]{32}|[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12})\z/

  # Date DB format YYYY-MM-DD
  DBDate = /\A\d{4}-(#{("01".."12").to_a.join("|")})-(#{("01".."31").to_a.join("|")})\z/

  # Date Time DB format YYYY-MM-DD hh:mm:ss
  DBDateTime = /\A\d{4}-(#{("01".."12").to_a.join("|")})-(#{("01".."31").to_a.join("|")})\s(#{("00".."23").to_a.join("|")}):(#{("00".."59").to_a.join("|")}):(#{("00".."59").to_a.join("|")})\z/

  # SpanishBankAccountNumber
  SpanishBankAccountNumber = /\A\d{4}[ -]?\d{4}[ -]?\d{2}[ -]?\d{10}\z/
end
