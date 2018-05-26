json.extract! room, :id, :name, :shortname, :occupancy, :men, :adults, :children, :subroom, :anchorate, :price, :availability, :board, :boards, :rtype, :rtype_name, :dec_avail, :min_price, :max_price, :woodoo, :created_at, :updated_at
json.url room_url(room, format: :json)
