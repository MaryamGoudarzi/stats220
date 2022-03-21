library(magick)

# square one
person_in bed <- image_read("https://media.istockphoto.com/photos/common-cold-in-bed-picture-id1134952723?k=20&m=1134952723&s=612x612&w=0&h=bhFxubHEj_ui29RvvJuCRBpqrZ4tmvh9MnDLoQH9BAo=") %>%
  image_scale(500)

# square two
normalsickpeople_text <- image_blank(width = 500, 
                            height = 600, 
                            color = "ff99ff") %>%
  image_annotate(text = "People with the normal flu",
                 color = "ff9999", 
                 size = 90,
                 font = "Impact",
                 gravity = "center")

# square three
person_travelling <- image_read("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTq3dIeMtY-6LtzPBu6QnHNs-GL8AmoLEhIYw&usqp=CAU") %>%
  image_scale(500)

# square four
peoplewithcoronavirus_text <- image_blank(width = 500,
                          height = 600,
                          color = "6699ff") %>%
  image_annotate(text = "People with the coronavirus",
                 color = "ff3300"
                 size = 90, 
                 font = "Impact"
                 gravity = "center")

# making the whole thing
c(top_row, bottom_row) %>%
  image_append(stack = TRUE) %>%
  image_scale(900)

# saving meme as an image file
image_write(meme, "my_coronavirusmeme.png")

