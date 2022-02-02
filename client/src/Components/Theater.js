import React, {useState, useEffect} from "react";
import axios from 'axios';

const Theater = () => {
  const [theaters, setTheaters] = useState([])

  useEffect(()=>{
    getTheaters()
  },[])

  const getTheaters = async () => {
    try {
      let data = await axios.get('/api/theaters')
      console.log(data)
      setTheaters(data.data)
    } catch (error) {
      alert("Error Occured getting Theaters")
    }
  }
  const renderTheaters = () => {
    theaters.map((t) => {
      return(
        <div>
          <h1>{t.name}</h1>
        </div>
        )
    })
  }

  return (
    <div>
      {renderTheaters()}
    </div>
  )
}

export default Theater;
