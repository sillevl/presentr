module ApplicationHelper
	def revealInitializeDefault
       javascript_include_tag "reveal_initialize_default.js" 
    end 

    def enableSlideNumbers
    	javascript_tag "Reveal.configure({ slideNumber: true })"
    end

end
