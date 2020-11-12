let errorCodes = {
    404: "Not Found! Check your URL",
    500: "Ya sorry can't help you.  Servers is down",
    403: "Authentication required - restricted",
    503: "Service is unavailable! The servers are down"
}

async function fetchData(sourceURL) {

    let resource = await fetch(sourceURL).then(response => {
        if (response.status !== 200) {
            throw new Error(`Error ${response.status}: ${errorCodes[response.status]}`);
        } 

        return response;           
    });
    let dataset = await resource.json();

    return dataset[0];
}


export { fetchData };