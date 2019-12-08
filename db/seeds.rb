# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

LightSource.create(name: "Fluorescence")
LightSource.create(name: "High Intensity Discharge")
LightSource.create(name: "LED")

Strain.create(name: "Cannabis indica - Strawberry Banana")
Strain.create(name: "Cannabis indica - Dark Star")
Strain.create(name: "Cannabis indica - Kosher Kush")
Strain.create(name: "Cannabis indica - Sunset Sherbert")
Strain.create(name: "Cannabis sativa - Ghost Train Haze")
Strain.create(name: "Cannabis sativa - Maui Wowie")
Strain.create(name: "Cannabis sativa - Sour Diesel")
Strain.create(name: "Cannabis sativa - Blue Dream")
Strain.create(name: "Cannabis sativa - Casey Jones")
Strain.create(name: "Hybrid - Cannatonic")
Strain.create(name: "Hybrid - Three Blue Kings")
Strain.create(name: "Hybrid - Larry Bird Kush")
Strain.create(name: "Hybrid - White Widow")
Strain.create(name: "Hybrid - Pineapple Express")


GrowingMethod.create(name: "Hydroponics - Clay Pebbles")
GrowingMethod.create(name: "Hydroponics - Rockwool")
GrowingMethod.create(name: "Hydroponics - Coco Coir")
GrowingMethod.create(name: "Hydroponics - Perlite")
GrowingMethod.create(name: "Soil - Fox Farm Happy Frog Potting Soil")
GrowingMethod.create(name: "Soil - Super Soft Organic Concentrate")
GrowingMethod.create(name: "Soil - Mother Earth Coco plus Perlite Mix")
GrowingMethod.create(name: "Soil - Big Rootz All-Purpose Potting Soil")

Nutrient.create(name: "TechnaFlora Recipe For Success Nutrient Bundle")
Nutrient.create(name: "Fox Farm FX14049 Liquid: Big Bloom, Grow Big, Tiger Bloom")
Nutrient.create(name: "General Hydroponics General Organics Go Box")
Nutrient.create(name: "Botanicare PURE BLEND PRO Grow + PURE BLEND PRO Bloom")

Ph.create(measure: "5.5")
Ph.create(measure: "5.6")
Ph.create(measure: "5.7")
Ph.create(measure: "5.8")
Ph.create(measure: "5.9")
Ph.create(measure: "6.0")
Ph.create(measure: "6.1")
Ph.create(measure: "6.2")
Ph.create(measure: "6.3")
Ph.create(measure: "6.4")
Ph.create(measure: "6.5")
Ph.create(measure: "6.6")
Ph.create(measure: "6.7")
Ph.create(measure: "6.8")
Ph.create(measure: "6.9")
Ph.create(measure: "7.0")


