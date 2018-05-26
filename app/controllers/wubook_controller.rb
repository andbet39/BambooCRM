class WubookController < ApplicationController
  
  def index 
  
  
    WubookService.instance.username='AT035'
    WubookService.instance.password='Giada123'
    WubookService.instance.lcode='1377875938'
    WubookService.instance.token='bamboo:rome'
    reserv = WubookService.instance.fetchReservation('24/05/2018','25/05/2018') 

    logger.debug reserv

  
  end
  
  def fetchRooms

    WubookService.instance.username='AT035'
    WubookService.instance.password='Giada123'
    WubookService.instance.lcode='1377875938'
    WubookService.instance.token='bamboo:rome'

    rooms = WubookService.instance.fetchRooms 
   
    rooms.each() do |r|
      if Room.where(id:r["id"]).exists?
        logger.info ("Room already fetched")
      else
        logger.debug r
        Room.create(r)
      end
    end
  end
end
