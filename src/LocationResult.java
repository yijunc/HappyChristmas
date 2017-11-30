import java.util.ArrayList;
import java.util.List;

public class LocationResult {

    private static final String iconPath = "/images/markers.png";
    private static final int width = 50;
    private static final int height = 50;

    private List<Location> result;

    public LocationResult() {
        result = new ArrayList<>();
    }

    public void addToResult(Location loc) {
        loc.setIconPath(iconPath);
        loc.setWidth(width);
        loc.setHeight(height);
        result.add(loc);
    }
}
