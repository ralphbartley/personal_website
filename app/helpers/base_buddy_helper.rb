module BaseBuddyHelper

    def draw_svg_data(base_data)
        base_data.html_safe
    end

    def add_tile(shape, design, connected_tile_vertical_offset, connected_tile_sides, optional)
        
        tile_count = design.tile_count
        angle = connected_tile_vertical_offset
        sides = connected_tile_sides
        tile = Tile.new(shape, tile_count, tile_sides, vertical_offset)
        if optional == false
            design.add_tile(tile)
        end
    end

end
