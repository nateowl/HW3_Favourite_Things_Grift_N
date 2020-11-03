import { fetchData } from "./modules/fetch.js";

fetchData("./includes/functions.php").then(data => console.log(data)).catch(err => { console.log(err); })