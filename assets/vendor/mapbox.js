import mapboxgl from "mapbox-gl";

const MapTrace = {
  /**
   * Initializes the map with the given configuration and displays it on the specified container.
   *
   * @return {mapboxgl.Map} The map object.
   */
  initMap() {
    mapboxgl.accessToken =
      "pk.eyJ1Ijoid2FydWkiLCJhIjoiY2xzMzhqdmVyMHI2cDJucXh5dTJ6cWx0ZSJ9.UoFCq0yofR5VWFcvav13HQ";

    const mapConfig = {
      container: "map",
      style: "mapbox://styles/mapbox/navigation-day-v1",
      center: [36.821216, -1.278514],
      zoom: 11,
      attributionControl: false,
    };

    const map = new mapboxgl.Map(mapConfig);

    map.addControl(new mapboxgl.NavigationControl());

    // const list_stops = JSON.parse(this.el.dataset.list_stops);
    //
    // for (let stop of list_stops) {
    //   new mapboxgl.Marker().setLngLat([stop[2][0], stop[2][1]]).addTo(map);
    // }

    return map;
  },

  mounted() {
    this.initMap();
  },
};

export { MapTrace };
