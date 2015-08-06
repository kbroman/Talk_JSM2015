# text within <span id="fade"></span>:
#   on click, fade out and then remove
d3.select("body")
  .select("span#fade")
  .on "click", () ->
    console.log("click")
    d3.select(this).transition()
                   .duration(5000)
                   .ease("linear")
                   .style("opacity", 0)
                   .transition()
                   .delay(6500)
                   .duration(0)
                   .remove()
