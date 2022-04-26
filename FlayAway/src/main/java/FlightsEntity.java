
public class FlightsEntity {
	String flightno, origin, destination, date, departure_time, arrival_time;
	int fare;

	public int getFare() {
		return fare;
	}

	public void setFare(int fare) {
		this.fare = fare;
	}

	public String getFlightno() {
		return flightno;
	}

	public void setFlightno(String flightno) {
		this.flightno = flightno;
	}

	public String getOrigin() {
		return origin;
	}

	public void setOrigin(String origin) {
		this.origin = origin;
	}

	public String getDestination() {
		return destination;
	}

	public void setDestination(String destination) {
		this.destination = destination;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getDeparture_time() {
		return departure_time;
	}

	public void setDeparture_time(String departure_time) {
		this.departure_time = departure_time;
	}

	public String getArrival_time() {
		return arrival_time;
	}

	public void setArrival_time(String arrival_time) {
		this.arrival_time = arrival_time;
	}

	public FlightsEntity() {

	}

	public FlightsEntity(String flightno, String origin, String destination, String date, String departure_time,
			String arrival_time, int fare) {
		super();
		this.flightno = flightno;
		this.origin = origin;
		this.destination = destination;
		this.date = date;
		this.departure_time = departure_time;
		this.arrival_time = arrival_time;
		this.fare = fare;
	}

	@Override
	public String toString() {
		return "FlightsEntity [flightno=" + flightno + ", origin=" + origin + ", destination=" + destination + ", date="
				+ date + ", departure_time=" + departure_time + ", arrival_time=" + arrival_time + ", fare=" + fare
				+ "]";
	}

	

}

