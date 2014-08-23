module ApplicationHelper
	def display_nav_item(displaytext, controllername, linkurl)
		rav("<li#{controllername==controllername ? 'class="acitve"' : ''}>#{link_to displaytext, linkurl}</li>")
	end
end