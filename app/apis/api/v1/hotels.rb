module API
  module V1
    class Hotels < Grape::API
      resource :roomTypes do
        get '/:hotel_code' do
          rooms = 
            if params[:hotel_code] == '051621'
              [ { "room_type" => "YG", 
                  "room_name" => "和颐商务标准房", 
                  "price" => 120, 
                  "amount" => 2, 
                  "sale_code" => "791" }, 
                { "room_type" => "YE", 
                  "room_name" => "和颐商务大床房", 
                  "price" => 120, 
                  "amount" => 2, 
                  "sale_code" => "791" }]
            else
              [{ "room_type" => "YN", 
                  "room_name" => "和N商务房", 
                  "price" => 88, 
                  "amount" => 0, 
                  "sale_code" => "791" }]
            end
          { "result" => "查询成功", 
            "result_code" => 0, 
            "roomType" => { 
                      "id" => params[:hotel_code], 
                      "date" => "20150607", 
                      "room_types" => rooms
                      } }
        end
      end
      resource :hotels do
        get '/' do
          _hotels = 
          if params[:page].present?
            [{
                      "id" => "051601",
                      "hotel_code" => "051601",
                      "name" => "徐州苏宁广场彭城路店",
                      "tel" => "0516-83729188",
                      "address" => "徐州市云龙区彭城路93号（市中心泛亚大厦北楼）",
                      "photo" => "http://image-homeinn.b0.upaiyun.com/homeinns/051601_a.jpg",
                      "lat" => 34.2650539,
                      "lng" => 117.1949108,
                      "region_name" => "云龙区",
                      "service" => "506,500,501",
                      "brand" => "rujia",
                      "ready" => true,
                      "amount" => 1,
                      "price" => 105,
                      "sum_avg" => 4.6
                  },
                  {
                      "id" => "M51601",
                      "hotel_code" => "M51601",
                      "name" => "莫泰-徐州戏马台步行街建国东路店（内宾）",
                      "tel" => "0516-85550168",
                      "address" => "徐州市云龙区建国东路145号（靠近解放南路；中国人寿大楼）",
                      "photo" => "http://image-homeinn.b0.upaiyun.com/motel/M51601_a.jpg",
                      "lat" => 34.2636524,
                      "lng" => 117.1983223,
                      "region_name" => "云龙区",
                      "service" => "506,500,501",
                      "brand" => "motai",
                      "ready" => true,
                      "amount" => 1,
                      "price" => 105,
                      "sum_avg" => 4.5
                  },
                  {
                      "id" => "051604",
                      "hotel_code" => "051604",
                      "name" => "徐州戏马台步行街店",
                      "tel" => "0516-83902222",
                      "address" => "徐州市云龙区解放路128号（同仁居戏马台样板店南50米）",
                      "photo" => "http://image-homeinn.b0.upaiyun.com/homeinns/051604_a.jpg",
                      "lat" => 34.2615033,
                      "lng" => 117.1985863,
                      "region_name" => "云龙区",
                      "service" => "506,500,501",
                      "brand" => "rujia",
                      "ready" => true,
                      "amount" => 1,
                      "price" => 105,
                      "sum_avg" => 4.6
                  },
                  {
                      "id" => "051618",
                      "hotel_code" => "051618",
                      "name" => "徐州鼓楼区政府堤北祥和店",
                      "tel" => "0516-82979999",
                      "address" => "江苏省徐州市鼓楼区煤港路55号",
                      "photo" => "http://image-homeinn.b0.upaiyun.com/homeinns/051618_a.jpg",
                      "lat" => 34.29349,
                      "lng" => 117.207257,
                      "region_name" => "鼓楼区",
                      "service" => "506,500,501",
                      "brand" => "rujia",
                      "ready" => true,
                      "amount" => 1,
                      "price" => 114,
                      "sum_avg" => 5
                  },
                  {
                      "id" => "051620",
                      "hotel_code" => "051620",
                      "name" => "徐州淮海西路客运西站店（原淮海西路店）",
                      "tel" => "0516-82576777",
                      "address" => "徐州市泉山区淮海西路延长段420号-1",
                      "photo" => "http://image-homeinn.b0.upaiyun.com/homeinns/051620_a.jpg",
                      "lat" => 34.261827,
                      "lng" => 117.146497,
                      "region_name" => "泉山区",
                      "service" => "506,500,501",
                      "brand" => "rujia",
                      "ready" => true,
                      "amount" => 1,
                      "price" => 114,
                      "sum_avg" => 4.7
                  }]
          else
            [
                  {
                      "id" => "051621",
                      "hotel_code" => "051621",
                      "name" => "徐州西苑矿山路段庄广场店",
                      "tel" => "0516-82571777",
                      "address" => "徐州市泉山区矿山路枫林绿洲24号楼",
                      "photo" => "http://image-homeinn.b0.upaiyun.com/homeinns/051621_a.jpg",
                      "lat" => 34.271615,
                      "lng" => 117.159748,
                      "region_name" => "泉山区",
                      "service" => "506,500,501",
                      "brand" => "rujia",
                      "ready" => true,
                      "amount" => 1,
                      "price" => 114,
                      "sum_avg" => 4.7
                  },
                  {
                      "id" => "051609",
                      "hotel_code" => "051609",
                      "name" => "徐州中央百大云龙公园店",
                      "tel" => "0516-85609888",
                      "address" => "江苏省徐州市泉山区王陵路68号（中山路与王陵路交叉口向西200米，第二职业中学对面）",
                      "photo" => "http://image-homeinn.b0.upaiyun.com/homeinns/051609_a.jpg",
                      "lat" => 34.2621327,
                      "lng" => 117.1908128,
                      "region_name" => "泉山区",
                      "service" => "506,500,501",
                      "brand" => "rujia",
                      "ready" => true,
                      "amount" => 1,
                      "price" => 114,
                      "sum_avg" => 4.7
                  },
                  {
                      "id" => "051608",
                      "hotel_code" => "051608",
                      "name" => "徐州建国西路大润发店（内宾）",
                      "tel" => "0516-85615555",
                      "address" => "徐州市泉山区纺织东路7号（靠近：大润发）",
                      "photo" => "http://image-homeinn.b0.upaiyun.com/homeinns/051608_a.jpg",
                      "lat" => 34.2653413,
                      "lng" => 117.1683464,
                      "region_name" => "泉山区",
                      "service" => "506,500,501",
                      "brand" => "rujia",
                      "ready" => true,
                      "amount" => 1,
                      "price" => 122,
                      "sum_avg" => 4.7
                  },
                  {
                      "id" => "051611",
                      "hotel_code" => "051611",
                      "name" => "徐州淮海西路段庄广场店",
                      "tel" => "0516-85860000",
                      "address" => "徐州市淮海西路288号（近徐州金鹰人民广场店、斜淮海西路和二环西路交叉路口之间；徐州第六人民医院对面。段庄广场爱客来超市隔壁一楼）",
                      "photo" => "http://image-homeinn.b0.upaiyun.com/homeinns/051611_a.jpg",
                      "lat" => 34.268305,
                      "lng" => 117.164231,
                      "region_name" => "泉山区",
                      "service" => "506,500,501",
                      "brand" => "rujia",
                      "ready" => true,
                      "amount" => 1,
                      "price" => 122,
                      "sum_avg" => 4.7
                  },
                  {
                      "id" => "051613",
                      "hotel_code" => "051613",
                      "name" => "徐州金鹰国际购物中心店",
                      "tel" => "0516-81916000",
                      "address" => "徐州鼓楼区夹河东街牌楼（1818美食广场东侧）",
                      "photo" => "http://image-homeinn.b0.upaiyun.com/homeinns/051613_a.jpg",
                      "lat" => 34.2760339,
                      "lng" => 117.1931734,
                      "region_name" => "鼓楼区",
                      "service" => "506,500,501",
                      "brand" => "rujia",
                      "ready" => true,
                      "amount" => 1,
                      "price" => 131,
                      "sum_avg" => 4.6
                  }]
          end
          {
              "result" => "ok",
              "result_code" => 0,
              "hotels" => _hotels
          }
        end
      end
    end
  end
end
