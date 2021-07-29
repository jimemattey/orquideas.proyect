alt <- getData(
  "worldclim",
  var = "alt",
  res = .5,
  lon = -84,
  lat = 10)

altitud_cr <-
  alt %>%
  mask(Provincias_CRS) %>%
  crop(Provincias_CRS)

altitud_orquideas <-
  alt %>%
  mask(orquideas_CRS) %>%
  crop(orquideas_CRS)


clip_centro_cr <-
  raster(
    xmn = -84.10,
    xmx = -83.90,
    ymn = 9.90,
    ymx = 10.10,
    res = 0.1
  )




leaflet() %>%
  setView(lng = -84.0, lat = 10.0, zoom = 7.45) %>%
  addTiles(group = "OpenStreetMap") %>%
  addRasterImage(altitud_orquideas, colors = "red", group = "Altitud de las orquideas") %>%
  addRasterImage(altitud_cr, colors = "YlGnBu", group = "Altitud Cr") %>%
  addLayersControl(
    baseGroups = c("OpenStreetMap"),
    overlayGroups = c("Altitud", "Altitud de las orquideas")
  )





e.sum <- orquideas_CRS %>% group_by(especies = format(species)) %>%
  summarize(suma_registros = n())

e.sum <- orquideas_CRS %>% group_by(genero = format(genus)) %>%
  summarize(suma_registros = n())







orquideas$species[orquideas$species == ""]<- "otros"

orqui_top <- orquideas %>% 
orqui_top <- orquideas %>% 
orqui_top <- orquideas %>% 
orqui_top <- orquideas %>% 
orqui_top <- orquideas %>% 
orqui_top <- orquideas %>% 
orqui_top <- orquideas %>% 
orqui_top <- orquideas %>% 
orqui_top <- orquideas %>% 
orqui_top <- orquideas %>% 
  group_by(species) %>% 


orqui_top <- orqui_top %>% filter(!na) %>% top_n(10) 