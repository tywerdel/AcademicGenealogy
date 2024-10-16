library(DiagrammeR)
library(htmlwidgets)
library(htmltools) 

genealogy_diagram <- grViz("
  digraph hierarchical_diagram {

    # Edge styling and interactivity
    edge [penwidth = 1.5, color = '#8B7765', style = solid, arrowsize=0.2]

    # Node defaults with subtle gradients, hover effects, and adjusted font size
    node [fontname = Helvetica, shape = box, style = 'filled,rounded', penwidth = 2, fontsize=6, margin='0.03,0.01']
    
    # Graph attributes for spacing
    graph [ranksep=.25, nodesep=0.1]
    
   # Level 1: Scientific Legends
    Pinchot [label = 'Gifford Pinchot\nSilviculture\nAmerican Forestry', 
            tooltip = 'Father of American Forestry', 
            URL = 'https://en.wikipedia.org/wiki/Gifford_Pinchot', 
            target = '_blank', color = '#8B7765', fillcolor = '#004d00', fontcolor = '#FFFFFF']
            
    Ritter [label = 'William E. Ritter\nEvolutionary Biology\nMarine Biology', 
            tooltip = 'Marine biologist at UC Berkeley', 
            URL = 'https://en.wikipedia.org/wiki/William_Emerson_Ritter', 
            target = '_blank', color = '#8B7765', fillcolor = '#004d00', fontcolor = '#FFFFFF']    
        
    Agassiz [label = 'Alexander Agassiz\nChemistry\nMarine Chemistry', 
             tooltip = 'Chemist and marine biologist at Harvard', 
             URL = 'https://en.wikipedia.org/wiki/Alexander_Agassiz', 
             target = '_blank', color = '#8B7765', fillcolor = '#004d00', fontcolor = '#FFFFFF']       
            
    Merriam [label = 'John C. Merriam\nPaleontology\nPaleontological Discoveries', 
         tooltip = 'Paleontologist at Carnegie Institution', 
         URL = 'https://en.wikipedia.org/wiki/John_C._Merriam', 
         target = '_blank', color = '#8B7765', fillcolor = '#004d00', fontcolor = '#FFFFFF']   
             
Gordon [label = 'Kenneth L. Gordon\nEvolutionary Biology\nVertegrate Evolution', 
        tooltip = 'Biologist at Oregon State University', 
        URL = 'https://scarc.library.oregonstate.edu/findingaids/index.php?p=collections/findingaid&id=93', 
        target = '_blank', color = '#8B7765', fillcolor = '#004d00', fontcolor = '#FFFFFF']
            
Blake [label = 'Irving H. Blake\nSilviculture\nForest Ecology', 
       tooltip = 'University of Nebraska academic', 
       URL = 'https://www.jstor.org/action/doBasicSearch?Query=au%3A%22Irving+H.+Blake%22&so=rel', 
       target = '_blank', color = '#8B7765', fillcolor = '#004d00', fontcolor = '#FFFFFF']
            
Jordan [label = 'David S. Jordan\nMarine Ecology\nSystematics of Fishes', 
            tooltip = 'Stanford University, Marine Ecology', 
            URL = 'https://en.wikipedia.org/wiki/David_Starr_Jordan', 
            target = '_blank', color = '#8B7765', fillcolor = '#004d00', fontcolor = '#FFFFFF']
                
Gilbert [label = 'Charles H. Gilbert\nEcology\nMarine and Freshwater', 
             tooltip = 'Stanford University, Ecology', 
             URL = 'https://en.wikipedia.org/wiki/Charles_Henry_Gilbert', 
             target = '_blank', color = '#8B7765', fillcolor = '#004d00', fontcolor = '#FFFFFF']
                
Mark [label = 'Edward L. Mark\nDevelopmental Biology\nMarine Invertebrates', 
      tooltip = 'Developmental Biologist at Harvard', 
      URL = 'https://en.wikipedia.org/wiki/Edward_Laurens_Mark', 
      target = '_blank', color = '#8B7765', fillcolor = '#004d00', fontcolor = '#FFFFFF']  

# Level 2: Before Wildlife Science
Bigelow [label = 'Henry B. Bigelow\nOceanography\nOceanographic Studies', 
        tooltip = 'Harvard oceanographer', 
        URL = 'https://en.wikipedia.org/wiki/Henry_Bryant_Bigelow', 
        target = '_blank', color = '#C2B280', fillcolor = '#006400', fontcolor = '#F0F8FF']
            
Storm [label = 'Robert M. Storm\nEvolutionary Biology\nEvolutionary Adaptations', 
       tooltip = 'Evolutionary biologist at Oregon State', 
       URL = 'https://www.jstor.org/stable/25140836?seq=1', 
       target = '_blank', color = '#C2B280', fillcolor = '#006400', fontcolor = '#F0F8FF']
           
Hudson [label = 'George E. Hudson\nEvolutionary Biology\nAvian Evolution', 
        tooltip = 'Academic at Washington State University', 
        URL = 'https://labs.wsu.edu/hudson-biological-reserve/dr-george-hudson/', 
        target = '_blank', color = '#C2B280', fillcolor = '#006400', fontcolor = '#F0F8FF']
            
Graves [label = 'Henry S. Graves\nSilviculture\nForest Management', 
        tooltip = 'Yale University, Silviculture', 
        URL = 'https://en.wikipedia.org/wiki/Henry_S._Graves', 
        target = '_blank', color = '#C2B280', fillcolor = '#006400', fontcolor = '#F0F8FF']
    
Gilbert_2 [label = 'Charles H. Gilbert\nEcology\nMarine and Freshwater', 
            tooltip = 'Stanford University, Ecology', 
            URL = 'https://en.wikipedia.org/wiki/Charles_Henry_Gilbert', 
            target = '_blank', color = '#C2B280', fillcolor = '#006400', fontcolor = '#F0F8FF']
                 
Miller_2 [label = 'Loye H. Miller\nOrnithology\nBird Morphology', 
          tooltip = 'Ornithologist known for work on bird morphology and evolution', 
          URL = 'https://en.wikipedia.org/wiki/Loye_Holmes_Miller', 
          target = '_blank', color = '#C2B280', fillcolor = '#006400', fontcolor = '#F0F8FF']

Grinnell_2 [label = 'Joseph P. Grinnell\nZoology\nNiche Concept', 
          tooltip = 'Pioneer of the Niche Concept in Zoology', 
          URL = 'https://en.wikipedia.org/wiki/Joseph_Grinnell', 
          target = '_blank', color = '#C2B280', fillcolor = '#006400', fontcolor = '#F0F8FF']

# Level 3: Conservation Legends
Grinnell [label = 'Joseph P. Grinnell\nZoology\nNiche Concept', 
          tooltip = 'Pioneer of the Niche Concept in Zoology', 
          URL = 'https://en.wikipedia.org/wiki/Joseph_Grinnell', 
          target = '_blank', color = '#D3A561', fillcolor = '#2e8b57', fontcolor = '#FAFAD2']

Miller [label = 'Alden H. Miller\nOrnithology\nEvolutionary Ecology', 
        tooltip = 'Evolutionary Ornithologist', 
        URL = 'https://en.wikipedia.org/wiki/Alden_H._Miller', 
        target = '_blank', color = '#D3A561', fillcolor = '#2e8b57', fontcolor = '#FAFAD2']

Clarke [label = 'George L. Clarke\nLimnology\nPlankton Ecology', 
        tooltip = 'Notable Limnologist', 
        URL = 'https://books.google.com/books/about/Elements_Of_Ecology.html?id=-meCjgEACAAJ', 
        target = '_blank', color = '#D3A561', fillcolor = '#2e8b57', fontcolor = '#FAFAD2']

Dunlap [label = 'Donald G. Dunlap\nEcology\nHabitat selection', 
        tooltip = 'Ecologist with a focus on habitat selection', 
        URL = 'https://www.journals.uchicago.edu/doi/pdf/10.1086/physzool.41.4.30155478?casa_token=B2u3vcYQo1MAAAAA:DxNgMF23SybevWfO-9y1heyEWvb9hOJ0Ykwk57xkq5TQ7-05lhy4G7U6vkes8s6_GfKWsh80VF9i', 
        target = '_blank', color = '#D3A561', fillcolor = '#2e8b57', fontcolor = '#FAFAD2']

Leopold [label = 'Aldo Leopold\nWildlife Management\nLand Ethic', 
         tooltip = 'Father of Wildlife Conservation', 
         URL = 'https://en.wikipedia.org/wiki/Aldo_Leopold', 
         target = '_blank', color = '#D3A561', fillcolor = '#2e8b57', fontcolor = '#FAFAD2']

# Level 4: Students of Level 3
Hooper [label = 'Emmet T. Hooper\nMammalogy\nSpecies Diversity', 
        tooltip = 'Mammalogist who studied species diversity', 
        URL = 'https://www.jstor.org/action/doBasicSearch?Query=au%3A%22Emmet+T.+Hooper%22&so=rel', 
        target = '_blank', color = '#A69F7C', fillcolor = '#66cdaa']

Bartholomew [label = 'George A. Bartholomew\nBehavioral Ecology\nEcophysiology', 
             tooltip = 'Known for contributions to behavioral ecology', 
             URL = 'https://www.nasonline.org/wp-content/uploads/2024/06/bartholomew-george-a.pdf', 
             target = '_blank', color = '#A69F7C', fillcolor = '#66cdaa']

Grewe [label = 'Alfred H. Grewe\nWildlife Biology\nAvian Habitat', 
       tooltip = 'Studied bird habitat and waterfowl', 
       URL = 'https://digitalcommons.morris.umn.edu/do/search/?q=author_lname%3A%22Grewe%22%20author_fname%3A%22Alfred%22&start=0&context=2070509&facet=', 
       target = '_blank', color = '#A69F7C', fillcolor = '#66cdaa']

Buss [label = 'Irven O. Buss\nWildlife Biology\nElephant Ecology', 
      tooltip = 'African elephant ecologist', 
      URL = 'http://ntserver1.wsulibs.wsu.edu/masc/finders/mssm_051.htm', 
      target = '_blank', color = '#A69F7C', fillcolor = '#66cdaa']

# Level 5: Ecologists
Brown [label = 'James H. Brown\nMacroecology\nMetabolic Theory', 
       tooltip = 'Known for the Metabolic Theory of Ecology', 
       URL = 'https://en.wikipedia.org/wiki/James_Brown_(ecologist)', 
       target = '_blank', color = '#8F9779', fillcolor = '#8fbc8f']

Starkey [label = 'Edward E. Starkey\nEcosystem Ecology\nNational Parks', 
         tooltip = 'Worked on National Park management', 
         URL = 'https://www.jstor.org/action/doBasicSearch?Query=au%3A%22Edward+E.+Starkey%22&so=rel', 
         target = '_blank', color = '#8F9779', fillcolor = '#8fbc8f']

# Level 6: Modern Academics
Heske [label = 'Edward J. Heske\nMammalogy\nMammal Ecology', 
       tooltip = 'Small mammal ecologist', 
       URL = 'https://scholar.google.com/citations?user=Z05w-rsAAAAJ&hl=en&oi=sra', 
       target = '_blank', color = '#5D4037', fillcolor = '#c2b280']

Leslie [label = 'David M. Leslie, Jr.\nWildlife Management\nPronghorn Ecology', 
        tooltip = 'Pronghorn ecologist', 
        URL = 'https://scholar.google.com/citations?user=ZT7oIWwAAAAJ&hl=en&oi=ao', 
        target = '_blank', color = '#5D4037', fillcolor = '#c2b280']

# Level 7: Emerging Ecologists
Ahlers [label = 'Adam A. Ahlers\nWildlife Biology\nLandscape Ecology', 
        tooltip = 'Known for furbearer ecology', 
        URL = 'http://www.ahlerswildlifelab.com/people.html', 
        target = '_blank', color = '#6B5B4B', fillcolor = '#d3a561']

Jenks [label = 'Jonathan A. Jenks\nConservation Biology\nGame Ecology', 
       tooltip = 'Known for big game ecology', 
       URL = 'https://www.sdstate.edu/directory/jonathan-jenks', 
       target = '_blank', color = '#6B5B4B', fillcolor = '#d3a561']

# Level 8: Current Scholar
Werdel [label = 'Ty J. Werdel\nWildlife Ecology\nPrairie Ecosystems', 
        tooltip = 'Researching prairie ecosystems', 
        URL = 'https://rwfm.tamu.edu/people/werdel-ty/', 
        target = '_blank', color = '#6B5B4B', fillcolor = '#deb887']



# Define edges connecting nodes
Mark -> Bigelow
Agassiz -> Bigelow
Gilbert -> Grinnell_2
Merriam -> Miller_2
Ritter -> Miller_2
Jordan -> Gilbert_2
Pinchot -> Graves
Blake -> Hudson
Gordon -> Storm
Bigelow -> Clarke
Grinnell_2 -> Miller
Miller_2 -> Miller
Gilbert_2 -> Grinnell
Graves -> Leopold
Hudson -> Dunlap
Storm -> Dunlap
Grinnell -> Hooper 
Miller -> Bartholomew 
Clarke -> Bartholomew 
Dunlap -> Grewe 
Leopold -> Buss 
Hooper -> Brown 
Bartholomew -> Brown 
Grewe -> Starkey 
Buss -> Starkey 
Brown -> Heske 
Starkey -> Leslie 
Leslie -> Jenks 
Heske -> Ahlers 
Ahlers -> Werdel 
Jenks -> Werdel

  }
")

genealogy_diagram

# Modify widget to fit 100% width and height using custom CSS
full_screen_widget <- genealogy_diagram

# Use prependContent to add custom full-screen CSS
full_screen_widget <- prependContent(
  full_screen_widget,
  htmltools::tags$style(
    "html, body {width: 98%; height: 100%; margin: 10; padding: 0; overflow: hidden;}
     .grViz {width: 100% !important; height: 100vh !important;}"
  )
)

# Save the widget with full-screen capability
saveWidget(full_screen_widget, file = "academic_genealogy.html", selfcontained = TRUE)
