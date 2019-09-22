class LogController < ApplicationController
  def start_time
    parent = Card.find(params[:card_id])
    @log = Log.create!(created_at: Time.current.strftime("%H:%M:%S"), card: parent)
    redirect_to :root
  end

  def end_time
    parent = Card.find(params[:card_id])
    latest_log = Log.where(card: parent).order('created_at desc').first
    return redirect_to :root unless latest_log

    latest_log.update!(end_time: Time.current.strftime("%H:%M:%S"))
    latest_log.update!(total_time:latest_log.end_time - latest_log.created_at)
    redirect_to :root 
    
  end

  def total_time
  end

  def new
  end

  def cleate
  end

  def update
  end

  def destroy
  end
end
