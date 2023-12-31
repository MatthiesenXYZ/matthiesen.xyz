import { getCollection } from "astro:content";

export async function getPosts() {
    const hddreports = (await getCollection('hddreports')); 
    return hddreports.map((hddreports) => ({
        serial: hddreports.data.serial, 
        make: hddreports.data.make, 
        model: hddreports.data.model,
        date: hddreports.data.reportDate, 
        capacity: hddreports.data.capacity, 
        size: hddreports.data.size, 
        type: hddreports.data.type,
        isSSD: hddreports.data.isSSD,
        pdf: hddreports.data.pdf,
        manuDate: hddreports.data.manuDate,
        }));
}

export async function GET( { } ){
    return new Response(
        JSON.stringify(await getPosts()),{
            status: 200, 
            headers: {"Content-Type": "application/json"}
        }
    )
}