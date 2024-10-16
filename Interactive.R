library(DiagrammeR)

grViz("
  digraph hierarchical_diagram {

    # Node defaults with subtle gradients and hover effects
    node [fontname = Helvetica, shape = box, style = 'filled,rounded', penwidth = 2]

    # Level 1: Root level nodes
    Grinnell [label = 'Joseph P. Grinnell\n(Field: Zoology)\nKey Work: Niche Concept', 
              tooltip = 'Pioneer of the Niche Concept in Zoology', 
              URL = 'https://en.wikipedia.org/wiki/Joseph_Grinnell', 
              target = '_blank', color = '#8B7765', fillcolor = '#A3C293']

    Miller [label = 'Alden H. Miller\n(Field: Ornithology)\nKey Work: Evolutionary Ecology', 
            tooltip = 'Evolutionary Ornithologist', 
            URL = 'https://en.wikipedia.org/wiki/Alden_H._Miller', 
            target = '_blank', color = '#8B7765', fillcolor = '#A3C293']

    Clarke [label = 'George L. Clarke\n(Field: Limnology)\nKey Work: Freshwater Plankton Ecology', 
            tooltip = 'Notable Limnologist', 
            URL = 'https://books.google.com/books/about/Elements_Of_Ecology.html?id=-meCjgEACAAJ', 
            target = '_blank', color = '#8B7765', fillcolor = '#A3C293']

    Dunlap [label = 'Donald G. Dunlap\n(Field: Ecology)\nKey Work: Fine scale habitat selection', 
            tooltip = 'Ecologist with a focus on habitat selection', 
            URL = 'https://www.journals.uchicago.edu/doi/pdf/10.1086/physzool.41.4.30155478?casa_token=B2u3vcYQo1MAAAAA:DxNgMF23SybevWfO-9y1heyEWvb9hOJ0Ykwk57xkq5TQ7-05lhy4G7U6vkes8s6_GfKWsh80VF9i', 
            target = '_blank', color = '#8B7765', fillcolor = '#A3C293']

    Leopold [label = 'Aldo Leopold\n(Field: Conservation Biology)\nKey Work: Land Ethic, A Sand County Almanac', 
             tooltip = 'Father of Wildlife Conservation', 
             URL = 'https://en.wikipedia.org/wiki/Aldo_Leopold', 
             target = '_blank', color = '#8B7765', fillcolor = '#A3C293']

    # Level 2: Students of Level 1 (Solid colors)
    Hooper [label = 'Emmet T. Hooper\n(Field: Mammalogy)\nKey Work: Species Diversity', 
            tooltip = 'Mammalogist who studied species diversity', 
            URL = 'https://www.jstor.org/action/doBasicSearch?Query=au%3A%22Emmet+T.+Hooper%22&so=rel', 
            target = '_blank', color = '#8B7765', fillcolor = '#C2B280']

    Bartholomew [label = 'George A. Bartholomew\n(Field: Behavioral Ecology)\nKey Work: Ecophysiology', 
                 tooltip = 'Known for contributions to behavioral ecology', 
                 URL = 'https://www.nasonline.org/wp-content/uploads/2024/06/bartholomew-george-a.pdf', 
                 target = '_blank', color = '#8B7765', fillcolor = '#C2B280']

    Grewe [label = 'Alfred H. Grewe\n(Field: Wildlife Biology)\nKey Work: Waterfowl and Upland Bird Habitat', 
           tooltip = 'Studied bird habitat and waterfowl', 
           URL = 'https://digitalcommons.morris.umn.edu/do/search/?q=author_lname%3A%22Grewe%22%20author_fname%3A%22Alfred%22&start=0&context=2070509&facet=', 
           target = '_blank', color = '#8B7765', fillcolor = '#C2B280']

    Buss [label = 'Irven O. Buss\n(Field: Wildlife Biology)\nKey Work: African Elephant Ecology', 
           tooltip = 'African elephant ecologist', 
           URL = 'http://ntserver1.wsulibs.wsu.edu/masc/finders/mssm_051.htm', 
           target = '_blank', color = '#8B7765', fillcolor = '#C2B280']

    # Level 3: Ecologists (Darker brown for later descendants)
    Brown [label = 'James H. Brown\n(Field: Macroecology)\nKey Work: Metabolic Theory of Ecology', 
           tooltip = 'Known for the Metabolic Theory of Ecology', 
           URL = 'https://en.wikipedia.org/wiki/James_Brown_(ecologist)', 
           target = '_blank', color = '#4E342E', fillcolor = '#D3A561']

    Starkey [label = 'Edward E. Starkey\n(Field: Ecosystem Ecology)\nKey Work: National Park Management', 
             tooltip = 'Worked on National Park management', 
             URL = 'https://www.jstor.org/action/doBasicSearch?Query=au%3A%22Edward+E.+Starkey%22&so=rel', 
             target = '_blank', color = '#4E342E', fillcolor = '#D3A561']

    # Level 4: Modern Academics (Lighter beige and olive tones)
    Heske [label = 'Edward J. Heske\n(Field: Mammalogy)\nKey Work: Small Mammal Ecology', 
           tooltip = 'Small mammal ecologist', 
           URL = 'https://scholar.google.com/citations?user=Z05w-rsAAAAJ&hl=en&oi=sra', 
           target = '_blank', color = '#5D4037', fillcolor = '#A69F7C']

    Leslie [label = 'David M. Leslie, Jr.\n(Field: Wildlife Management)\nKey Work: Pronghorn Ecology', 
            tooltip = 'Pronghorn ecologist', 
            URL = 'https://scholar.google.com/citations?user=ZT7oIWwAAAAJ&hl=en&oi=ao', 
            target = '_blank', color = '#5D4037', fillcolor = '#A69F7C']

    # Level 5: Emerging Ecologists (Olive greens and dark tan)
    Ahlers [label = 'Adam A. Ahlers\n(Field: Wildlife Biology)\nKey Work: Landscape Ecology', 
            tooltip = 'Studied landscape ecology', 
            URL = 'http://www.ahlerswildlifelab.com/people.html', 
            target = '_blank', color = '#6B5B4B', fillcolor = '#8F9779']

    Jenks [label = 'Jonathan A. Jenks\n(Field: Conservation Biology)\nKey Work: Big Game Ecology', 
           tooltip = 'Known for big game ecology', 
           URL = 'https://www.sdstate.edu/directory/jonathan-jenks', 
           target = '_blank', color = '#6B5B4B', fillcolor = '#8F9779']

    # Level 6: Current Scholar (Dark muted earth tone for latest generation)
    Werdel [label = 'Ty J. Werdel\n(Field: Wildlife Ecology)\nCurrent Research: Prairie Ecosystem Conservation', 
            tooltip = 'Researching prairie ecosystems', 
            URL = 'https://rwfm.tamu.edu/people/werdel-ty/', 
            target = '_blank', color = '#6B5B4B', fillcolor = '#8F9779']

    # Edge styling and interactivity
    edge [penwidth = 1.5, color = '#8B7765', style = solid]

    # Define edges connecting nodes
    Grinnell -> Hooper [penwidth = 2]
    Miller -> Bartholomew [penwidth = 1.8]
    Clarke -> Bartholomew [penwidth = 1.5]
    Dunlap -> Grewe [penwidth = 1.5]
    Leopold -> Buss [penwidth = 2]
    Hooper -> Brown [penwidth = 2]
    Bartholomew -> Brown [penwidth = 1.8]
    Grewe -> Starkey [penwidth = 1.6]
    Buss -> Starkey [penwidth = 1.5]
    Brown -> Heske [penwidth = 1.8]
    Starkey -> Leslie [penwidth = 1.5]
    Leslie -> Jenks [penwidth = 1.7]
    Heske -> Ahlers [penwidth = 1.8]
    Ahlers -> Werdel [penwidth = 2]
    Jenks -> Werdel [penwidth = 2]

  }
")


