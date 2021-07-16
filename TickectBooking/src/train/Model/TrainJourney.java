package train.Model;

public class TrainJourney {

	private int JourneyID;
	private String TrainID;
	private String TrainName;
	private String FromStation;
	private String ToStation;
	private String StartTime;
	private String EndTime;
	private String Frequency;
	private String TrainType;
	private String AvailableTrain;
	private String FClassPrice;
	private String SClassPrice;
	private String TClassPrice;
	private String TotalDistance;

	public TrainJourney(int journeyID, String trainID, String trainName, String fromStation, String toStation,
			String startTime, String endTime, String frequency, String trainType, String availableTrain,
			String fClassPrice, String sClassPrice, String tClassPrice, String totalDistance) {
		super();
		JourneyID = journeyID;
		TrainID = trainID;
		TrainName = trainName;
		FromStation = fromStation;
		ToStation = toStation;
		StartTime = startTime;
		EndTime = endTime;
		Frequency = frequency;
		TrainType = trainType;
		AvailableTrain = availableTrain;
		FClassPrice = fClassPrice;
		SClassPrice = sClassPrice;
		TClassPrice = tClassPrice;
		TotalDistance = totalDistance;
	}

	public int getJourneyID() {
		return JourneyID;
	}

	public String getTrainID() {
		return TrainID;
	}

	public String getTrainName() {
		return TrainName;
	}

	public String getFromStation() {
		return FromStation;
	}

	public String getToStation() {
		return ToStation;
	}

	public String getStartTime() {
		return StartTime;
	}

	public String getEndTime() {
		return EndTime;
	}

	public String getFrequency() {
		return Frequency;
	}

	public String getTrainType() {
		return TrainType;
	}

	public String getAvailableTrain() {
		return AvailableTrain;
	}

	public String getFClassPrice() {
		return FClassPrice;
	}

	public String getSClassPrice() {
		return SClassPrice;
	}

	public String getTClassPrice() {
		return TClassPrice;
	}

	public String getTotalDistance() {
		return TotalDistance;
	}

}
