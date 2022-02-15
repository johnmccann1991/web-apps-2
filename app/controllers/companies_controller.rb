class CompaniesController < ApplicationController

  def index
    @companies = Company.all
  end

  def show
    # .find(123) is the same as .where({ id: 123 })[0]
    @company = Company.find(params["id"])
  end

def new
  @company = company.new
end

def create
  @company = company.new(params["Company"])
  @company.save
  redirect_to "/companies"
end

end
