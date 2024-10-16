library(DiagrammeR)

grViz("
  digraph hierarchical_diagram {

    # Node defaults with subtle gradients for style
    node [fontname = Helvetica, shape = box, style = 'filled,rounded', penwidth = 2]
    
    # Level 1: Root level nodes (Muted green for foundational figures)
    Grinnell [label = 'Joseph P. Grinnell\n(Field: Zoology)\nKey Work: Niche Concept', color = '#8B7765', fillcolor = '#A3C293', fontcolor = 'black']
    Miller [label = 'Alden H. Miller\n(Field: Ornithology)\nKey Work: Evolutionary Ecology', color = '#8B7765', fillcolor = '#A3C293', fontcolor = 'black']
    Clarke [label = 'George L. Clarke\n(Field: Limnology)\nKey Work: Freshwater Plankton Ecology', color = '#8B7765', fillcolor = '#A3C293', fontcolor = 'black']
    Dunlap [label = 'Donald G. Dunlap\n(Field: Ecology)\nKey Work: Fine scale habitat selection', color = '#8B7765', fillcolor = '#A3C293', fontcolor = 'black']
    Leopold [label = 'Aldo Leopold\n(Field: Conservation Biology)\nKey Work: Land Ethic, A Sand County Almanac', color = '#8B7765', fillcolor = '#A3C293', fontcolor = 'black']
    
    # Level 2: Students of Level 1 (Earthy brown shades)
    Hooper [label = 'Emmet T. Hooper\n(Field: Mammalogy)\nKey Work: Species Diversity', color = '#8B7765', fillcolor = '#C2B280', fontcolor = 'black']
    Bartholomew [label = 'George A. Bartholomew\n(Field: Behavioral Ecology)\nKey Work: Ecophysiology', color = '#8B7765', fillcolor = '#C2B280', fontcolor = 'black']
    Grewe [label = 'Alfred H. Grewe\n(Field: Wildlife Biology)\nKey Work: Waterfowl and Upland Bird Habitat', color = '#8B7765', fillcolor = '#C2B280', fontcolor = 'black']
    Buss [label = 'Irven O. Buss\n(Field: Wildlife Biology)\nKey Work: African Elephant Ecology', color = '#8B7765', fillcolor = '#C2B280', fontcolor = 'black']
    
    # Level 3: Ecologists (Darker brown for later descendants)
    Brown [label = 'James H. Brown\n(Field: Macroecology)\nKey Work: Metabolic Theory of Ecology', color = '#4E342E', fillcolor = '#D3A561', fontcolor = 'black']
    Starkey [label = 'Edward E. Starkey\n(Field: Ecosystem Ecology)\nKey Work: National Park Management', color = '#4E342E', fillcolor = '#D3A561', fontcolor = 'black']
    
    # Level 4: Modern Academics (Lighter beige and olive tones)
    Heske [label = 'Edward J. Heske\n(Field: Mammalogy)\nKey Work: Small Mammal Ecology', color = '#5D4037', fillcolor = '#A69F7C', fontcolor = 'black']
    Leslie [label = 'David M. Leslie, Jr.\n(Field: Wildlife Management)\nKey Work: Pronghorn Ecology', color = '#5D4037', fillcolor = '#A69F7C', fontcolor = 'black']
    
    # Level 5: Emerging Ecologists (Olive greens and dark tan)
    Ahlers [label = 'Adam A. Ahlers\n(Field: Wildlife Biology)\nKey Work: Landscape Ecology', color = '#6B5B4B', fillcolor = '#8F9779', fontcolor = 'black']
    Jenks [label = 'Jonathan A. Jenks\n(Field: Conservation Biology)\nKey Work: Big Game Ecology', color = '#6B5B4B', fillcolor = '#8F9779', fontcolor = 'black']
    
    # Level 6: Current Scholar (Dark muted earth tone for latest generation)
    Werdel [label = 'Ty J. Werdel\n(Field: Wildlife Ecology)\nCurrent Research: Prairie Ecosystem Conservation', color = '#6B5B4B', fillcolor = '#8F9779', fontcolor = 'black']

    # Edge styling and varying thickness for influence
    edge [penwidth = 1.5, color = '#8B7765', style = solid]

    # Define edges connecting nodes with labels for degrees
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


