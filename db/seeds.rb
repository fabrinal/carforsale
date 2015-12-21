# Create brand list

User.create(name: "fabian",phone: "08115066506", email: "fabian@rinaldi.com", password: "fabian", password_confirmation: "fabian")

brand_list = [
	"toyota","honda","daihatsu","suzuki","nissan","datsun","isuzu","mazda","mitsubishi",
	"hyundai","kia","chevrolet","ford","mercedes-benz","proton",
	"renault","volvo","volkswagen","peugeot","subaru","audi","bmw","chery"]

brand_list.each do |brand_name|
	Brand.create(:name => brand_name)
end

# #--------------------

Brand.all.each do |brand|
	car_types = []
	case(brand.name)
		when "toyota" then car_types = ["86","agya","alphard","avanza","camry","corolla altis","crown","etios","fortuner","hilux","kijang innova","land cruiser","land cruiser prado","mark x","nav 1","rush","vellfire","vios"]
		when "honda" then car_types = ["accord","brio","city","civic","cr-v","elysion","freed","mobilio","odyssey","hrv"]
		when "daihatsu" then car_types = ["ayla","gran max","luxio","sirion","terios","xenia"]
		when "suzuki" then car_types = ["apv","ertiga","grand vitara","karimun estilo","karimun wagon","splash","swift","sx4"]
		when "nissan" then car_types = ["elgrand","evalia","frontier","navara","grand livina","juke","livina","march","murano","new serena","highway star new","serena","teana","x-trail"]
		when "datsun" then car_types = ["go panca","go+ panca"]
		when "isuzu" then car_types = ["d-max","panther"]
		when "mazda" then car_types = ["2","6","8","biante","cx-5","cx-7","cx-9","mx 5","rx 8","vx 1"]
		when "mitsubishi" then car_types = ["grandis","lancer","outlander","mirage","pajero","strada"]
		when "hyundai" then car_types = ["accent","avega","grand avega","i10","i20","h1","tucson","santa fe"]
		when "kia" then car_types = ["carens","pregio","rio","sportage","travello","pride","picanto","optima","sorento"]
		when "chevrolet" then car_types = ["aveo","captiva","colorado","cruze","orlando","spark","spin","trailblazer","estate","optra magnum","tavera","zafira"]
		when "ford" then car_types = ["ecosport","escape","everest","fiesta","focus","ranger","laser"]
		when "mercedes-benz" then car_types = ["B-Class","C-Class","CLA","CLS","M-Class","R-Class","S-Class","SL-Class","SLK-Class","G-Class","V-Class","no group series"]
		when "proton" then car_types = ["savvy","gen 2","gen 2 persona","neo","saga","exora"]
		when "renault" then car_types = ["duster"]
		when "volvo" then car_types = ["C30","S80","XC90","XC60","V70"]
		when "volkswagen" then car_types = ["beetle","caravelle","golf","polo","sciroco","tiguan","touareg","touran"]
		when "peugeot" then car_types = ["206","207","308","3008","408","5008","rcz"]
		when "subaru" then car_types = ["exiga","impreza","outback","forester","xv"]
		when "audi" then car_types = ["A4","A6","03","05","07","TT"]
		when "bmw" then car_types = ["116i","120i","320i","325i","520d","520i","523i","528i","530i","535i","630Ci","645Ci","730i","X1","X3","X5","X6"]
		when "chery" then car_types = ["QQ"]
	end
	car_types.each do |type_name|
		Type.create(:name => type_name, :brand_id => brand.id)
	end
end

 car_samples = [
   {
     brand_id: Brand.find_by(name: "hyundai").id,
     type_id: Type.find_by(name: "tucson").id,
     price: 300000000,
     total_distance: 20000,
     engine_volume: 2000,
     assembly_year: 2013,
     purchase_year: 2014
   },
   {
     brand_id: Brand.find_by(name: "toyota").id,
     type_id: Type.find_by(name: "avanza").id,
     price: 180000000,
     total_distance: 20000,
     engine_volume: 1500,
     assembly_year: 2013,
     purchase_year: 2014
   },
   {
     brand_id: Brand.find_by(name: "honda").id,
     type_id: Type.find_by(name: "city").id,
     price: 200000000,
     total_distance: 40000,
     engine_volume: 1500,
     assembly_year: 2010,
     purchase_year: 2010
   },
   {
     brand_id: Brand.find_by(name: "kia").id,
     type_id: Type.find_by(name: "rio").id,
     price: 200000000,
     total_distance: 40000,
     engine_volume: 1400,
     assembly_year: 2011,
     purchase_year: 2012
   },
   {
     brand_id: Brand.find_by(name: "chevrolet").id,
     type_id: Type.find_by(name: "orlando").id,
     price: 400000000,
     total_distance: 30000,
     engine_volume: 2000,
     assembly_year: 2013,
     purchase_year: 2013
   },
   {
     brand_id: Brand.find_by(name: "hyundai").id,
     type_id: Type.find_by(name: "avega").id,
     price: 100000000,
     total_distance: 40000,
     engine_volume: 2000,
     assembly_year: 2013,
     purchase_year: 2013
   },
 ]

 car_samples.each do |car|
   Car.create(
    brand_id: car[:brand_id],
    type_id: car[:type_id],
    price: car[:price],
    total_distance: car[:total_distance],
    engine_volume: car[:engine_volume],
    assembly_year: car[:assembly_year],
    purchase_year: car[:purchase_year]
   )
 end
