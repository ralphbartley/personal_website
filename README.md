Development notes
____

This project aims to create a website that will host my blog, as well as other projects, such as my rust base visualising tool.  The aim of these records is to provide a template for making guesses at implementations and to generate ideas.  Implementation will be test driven, the results of which I will compare with my predictions and reflect.

MVC
___
Blog view with posts
Rust base design tool with designs
    - Layout
        - Canvas
            - Create design
            - Save design
            - Load design
        - 
    - Plain Old Ruby Objects, decorator? Canvas is an HTML element using JS, so it would be a translation between the JS commands.
        - Why?  The PORO models don't save to the database because they're an abstraction of the design saved in the database, probably stored as text.  So Canvas needs a way of loading a design, reconstructing the base from the stored text.  
            - Square and triangle objects need to be drawn with relation to eachother, so they're probably constructed from a linked list (recursive function? since each building block has multiple connections).  
            - I'm trying to offload the computation to the client side, which is where the drawing with javascript is done.
                - When I serve up that javascript during a load the canvas needs to draw the design so am I trying to give that javascript a lot more information from the server handing over segmented data or just let the javascript handle all of the transformations from the database? or is that just the model in the end?
            
Index (blurb/github)
Internet learning tool (to come)