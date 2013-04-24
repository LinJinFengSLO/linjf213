# encoding = UTF-8

#require 'rubygems'
##  require 'iconv'
#require "roo"


class Week1sController < ApplicationController
  # GET /week1s
  # GET /week1s.json
  def index






    #------test1.rb [
#    require 'rubygems'
##  require 'iconv'
#    require 'roo'

    s = Roo::Excel.new("simple_spreadsheet.xls")

    if s==nil then
      puts 'AAAAA'
    else
      puts 'BBBBB'
    end

    s.default_sheet = s.sheets.first

    1.upto(8) do |line|
      roll = s.cell(line,'A')
      puts "#{roll} -------------"
    end


    1.upto(8) do |line|
      roll = s.cell(line,'C')
      puts "#{roll} -------------"
    end


    1.upto(8) do |line|
      roll1 = s.cell(line,'A')
      roll2 = s.cell(line,'B')
      roll3 = s.cell(line,'C')
      roll4 = s.cell(line,'D')
      roll5 = s.cell(line,'E')
      puts "#{roll1} --#{roll2} --#{roll3}  ---#{roll4} ---#{roll5} ---"
    end



    #-------test1.rb ]




    @week1s = Week1.all

    #@week1s[0].mon1='语文'
    #@week1s[1].mon1='shuxue'


    1.upto(8) do |line|
      @week1s[line].mon1 = s.cell(line,'A')
      @week1s[line].tue1 = s.cell(line,'B')
      @week1s[line].wed1 = s.cell(line,'C')
      @week1s[line].thu1 = s.cell(line,'D')
      @week1s[line].fri1 = s.cell(line,'E')

     # puts "#{roll1} --#{roll2} --#{roll3}  ---#{roll4} ---#{roll5} ---"
    end


    9.upto(Week1.all.count()-1) do |line|
      @week1s[line].mon1 = "=========="
      @week1s[line].tue1 = "=========="
      @week1s[line].wed1 = "=========="
      @week1s[line].thu1 = "=========="
      @week1s[line].fri1 = "=========="

      # puts "#{roll1} --#{roll2} --#{roll3}  ---#{roll4} ---#{roll5} ---"
    end

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @week1s }
    end
  end

  # GET /week1s/1
  # GET /week1s/1.json
  def show
    @week1 = Week1.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @week1 }
    end
  end

  # GET /week1s/new
  # GET /week1s/new.json
  def new
    @week1 = Week1.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @week1 }
    end
  end

  # GET /week1s/1/edit
  def edit
    @week1 = Week1.find(params[:id])
  end

  # POST /week1s
  # POST /week1s.json
  def create
    @week1 = Week1.new(params[:week1])

    respond_to do |format|
      if @week1.save
        format.html { redirect_to @week1, notice: 'Week1 was successfully created.' }
        format.json { render json: @week1, status: :created, location: @week1 }
      else
        format.html { render action: "new" }
        format.json { render json: @week1.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /week1s/1
  # PUT /week1s/1.json
  def update
    @week1 = Week1.find(params[:id])

    respond_to do |format|
      if @week1.update_attributes(params[:week1])
        format.html { redirect_to @week1, notice: 'Week1 was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @week1.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /week1s/1
  # DELETE /week1s/1.json
  def destroy
    @week1 = Week1.find(params[:id])
    @week1.destroy

    respond_to do |format|
      format.html { redirect_to week1s_url }
      format.json { head :no_content }
    end
  end
end
