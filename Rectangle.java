import java.awt.geom.Point2D;
import java.util.ArrayList;
import java.util.List;

/**
 * Represents a two dimensional rectangle.
 * 
 * @author Mark Royer
 *
 */
public class Rectangle {

	private float width;

	private float height;

	/**
	 * See {@link Point2D} for more information.  
	 */
	private Point2D.Float location;

	/**
	 * Create a new rectangle.
	 * 
	 * @param location
	 *            Position in 2d space
	 * @param width
	 * @param height
	 */
	public Rectangle(Point2D.Float location, float width, float height) {
		super();
		this.location = location;
		this.width = width;
		this.height = height;
		@SuppressWarnings("rawtypes")
		List l = new ArrayList();
	}

	/**
	 * @return The area of the rectangle
	 */
	public float getArea() {
		/*
		 * Standard area calculation 
		 */
		return this.width * this.height;
	}

}
