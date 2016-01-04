module OffersHelper

def email_helper(text)
	email = ""
	textarray = text.split(" ")
	for i in textarray
  		if i.include? "@"
			email = i.gsub(",","")
		end
  	end

	return email
end

def remaining_info(text)
        remaining = ""
        textarray = text.split(" ")
        for i in textarray
                if !i.include? "@"
                        remaining = remaining + i + " "
                end
        end

        return remaining
end


def sort_and_paginate(x)
  return x.sort_by(&:updated_at).reverse.paginate(:page => params[:page], :per_page => 20)
end


def sort_and_paginate_home(x)
  return x.sort_by(&:updated_at).reverse.paginate(:page => params[:page], :per_page => 10)
end

def no_rec(x)
  (x.length==0 ? "no records found":nil)
end



def remove_commas(x)
  z = ""
  x.each do |y|
    z = z+" "+y
  end
  return z
end

end
