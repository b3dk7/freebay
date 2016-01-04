every 2.minutes do
  runner "Offer.where(expiration: Date.new(0)..Date.today-1).destroy_all"
end
