document.addEventListener("DOMContentLoaded", function () {
    loadtHTMLTable([])
})

function loadtHTMLTable(data) {
    const table = document.querySelector("table tbody")

    if (data.length === 0) {
        table.innerHTML = "<tr><td class='no-data' colspan='5'>No Data</td></tr>"
        return
    }
}