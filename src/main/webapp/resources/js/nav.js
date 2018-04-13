var Nav = React.createClass({displayName: "Nav",
	render: function(){
		return (React.createElement("nav", {className: "navbar navbar-inverse"}, 
			  React.createElement("div", {className: "container"}, 
			    React.createElement("div", {className: "navbar-header"}, 
			      React.createElement("button", {type: "button", className: "navbar-toggle collapsed", "data-toggle": "collapse", "data-target": "#bs-example-navbar-collapse-1"}, 
			        React.createElement("span", {className: "sr-only"}, "Toggle navigation"), 
			        React.createElement("span", {className: "icon-bar"}), 
			        React.createElement("span", {className: "icon-bar"}), 
			        React.createElement("span", {className: "icon-bar"})
			      ), 
			      React.createElement("a", {className: "navbar-brand", href: "."}, React.createElement("img", {src: "resources/images/openICPSR-footer.png", alt: "open I C P S R"}))
			    ), 
			
			    React.createElement("div", {className: "collapse navbar-collapse", id: "bs-example-navbar-collapse-1"}, 
			      React.createElement("ul", {className: "nav navbar-nav"}, 
			        React.createElement("li", {className: this.props.activeTab == 'home'?"active":""}, React.createElement("a", {href: "."}, "Home ", React.createElement("span", {className: "sr-only"}, "(current)"))), 
			        
					React.createElement("li", {className: "dropdown"}, 
						React.createElement("a", {href: "#", className: "dropdown-toggle", "data-toggle": "dropdown", role: "button", "aria-expanded": "false"}, "Find Data ", React.createElement("span", {className: "caret"})), 
						React.createElement("ul", {className: "dropdown-menu", role: "menu"}, 
							React.createElement("li", null, React.createElement("a", {href: "#"}, "Browse all data"))
						)
					), 
					React.createElement("li", {className: "dropdown"}, 
						React.createElement("a", {href: "#", className: "dropdown-toggle", "data-toggle": "dropdown", role: "button", "aria-expanded": "false"}, "Share Data ", React.createElement("span", {className: "caret"})), 
						React.createElement("ul", {className: "dropdown-menu", role: "menu"}, 
							React.createElement("li", null, React.createElement("a", {href: "#"}, "New projects/view projects")), 
							React.createElement("li", null, React.createElement("a", {href: "#"}, "Purchase codes"))
						)
					), 
					React.createElement("li", {className: "dropdown"}, 
						React.createElement("a", {href: "#", className: "dropdown-toggle", "data-toggle": "dropdown", role: "button", "aria-expanded": "false"}, "Institutional Repositories ", React.createElement("span", {className: "caret"})), 
						React.createElement("ul", {className: "dropdown-menu", role: "menu"}, 
							React.createElement("li", null, React.createElement("a", {href: "#"}, "Learn about repositories")), 
							React.createElement("li", null, React.createElement("a", {href: "#"}, "Request a new repository"))
						)
					), 
			        
			        React.createElement("li", {className: this.props.activeTab == 'admin'?"active":""}, React.createElement("a", {href: "./admin"}, "Admin ", React.createElement("span", {className: "sr-only"}, "(current)")))
			       ), 
			       React.createElement("ul", {className: "nav navbar-nav navbar-right"}, 
			       React.createElement("li", null, React.createElement("a", {href: userjson.identifier, target: "_profile"}, userjson.displayName))
			      )
			    )
			  )
			));
	}
});
