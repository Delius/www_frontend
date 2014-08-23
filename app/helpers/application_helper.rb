module ApplicationHelper

def nav_items

	{
		displaytext: 'Companies',
		controllername: 'companies',
		linkurl: companies-path
	},
	{
		displaytext: 'Projects',
		controllername: 'projects',
		linkurl: projects_path
	},
	{
		displaytext: 'Works',
		controllername: 'works',
		linkurl: works_path
	}




	def display_nav_item(displaytext, controllername, linkurl)
		rav("<li#{controllername==controllername ? 'class="acitve"' : ''}>#{link_to displaytext, linkurl}</li>")
	end
end