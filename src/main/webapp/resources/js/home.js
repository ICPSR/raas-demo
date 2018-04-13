var Home = React.createClass({displayName: "Home",  
  render: function() {
    return (
    React.createElement("div", null, 
    	React.createElement(Nav, {activeTab: "home"}), 
    	React.createElement("div", {className: "container-fluid theme-showcase", role: "main"}, 
    		React.createElement("h4", null, "Welcome to Open ICPSR")
		)
    )
    );
  }
});