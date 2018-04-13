var Footer = React.createClass({
	displayName: "Footer",

	render: function () {
		return React.createElement(
			"div",
			null,
			React.createElement(
				"div",
				{ className: "footerNav" },
				React.createElement(
					"a",
					{ href: "about.jsp" },
					"About openICPSR"
				),
				'\u00A0\u00A0',
				"|",
				'\u00A0\u00A0',
				React.createElement(
					"a",
					{ href: "#" },
					"Privacy"
				),
				'\u00A0\u00A0',
				"|",
				'\u00A0\u00A0',
				React.createElement(
					"a",
					{ href: "#" },
					"FAQs"
				),
				'\u00A0\u00A0',
				"|",
				'\u00A0\u00A0',
				React.createElement(
					"a",
					{ href: "#" },
					"Plans & Pricing"
				),
				'\u00A0\u00A0',
				"|",
				'\u00A0\u00A0',
				React.createElement(
					"a",
					{ href: "#" },
					"Contact us"
				)
			),
			React.createElement(
				"div",
				{ id: "copyrightLine" },
				React.createElement(
					"a",
					{ href: "#" },
					React.createElement("img", { src: "resources/images/openICPSR-footer.png", alt: "open I C P S R" })
				),
				'\u00A9',
				" ",
				React.createElement(
					"a",
					{ href: "http://www.icpsr.umich.edu" },
					"Inter-university Consortium for Political and Social Research"
				),
				", 2015."
			)
		);
	}
});