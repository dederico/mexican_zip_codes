# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

codigo1 = Codigo.create(zip_code:"66230", locality:"Monterrey", federal_entity:"Nuevo Leon", settlements:"Centro", municipality:"San Pedro")
codigo2 = Codigo.create(zip_code:"68990", locality:"Monterrey", federal_entity:"Nuevo Leon", settlements:"Centro", municipality:"Santiago")
codigo3 = Codigo.create(zip_code:"66256", locality:"Estado de Mexico", federal_entity:"Estado de Mexico", settlements:"Centro", municipality:"Toluca")