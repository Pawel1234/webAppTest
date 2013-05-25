package pl.test;

import java.text.DateFormatSymbols;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

import javax.faces.model.SelectItem;

import org.apache.log4j.Logger;

//this a backing bean assosiated with a registration form
public class RegisterForm {

	// logger
	private static final Logger logger = Logger.getLogger(RegisterForm.class);
	// properties
	private String name;
	private boolean contactMe;
	private Integer[] bestDaysToContact;
	private Integer yearOfBirth;
	private String[] colors = null;
	private String[] languages = null;
	private int education;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		logger.debug("setting name");
		this.name = name;
	}

	public boolean isContactMe() {
		return contactMe;
	}

	public void setContactMe(boolean contactMe) {
		logger.debug("setting contact");
		this.contactMe = contactMe;
	}

	public Integer[] getBestDaysToContact() {
		return bestDaysToContact;
	}

	public void setBestDaysToContact(Integer[] bestDaysToContact) {
		logger.debug("setting best days to contact");
		this.bestDaysToContact = bestDaysToContact;
	}

	public Integer getYearOfBirth() {
		return yearOfBirth;
	}

	public void setYearOfBirth(Integer yearsOfBirth) {
		logger.debug("setting yearOfBrith");
		this.yearOfBirth = yearsOfBirth;
	}

	public String[] getColors() {
		return colors;
	}

	public void setColors(String[] colors) {
		logger.debug("setting colors");
		this.colors = colors;
	}

	public String[] getLanguages() {
		return languages;
	}

	public void setLanguages(String[] languages) {
		// logger.info("setting languages");
		this.languages = languages;
	}

	public int getEducation() {
		return education;
	}

	public void setEducation(int education) {
		// logger.info("setting education");
		this.education = education;
	}

	// non class member properties...
	// constants

	private static final int HIGH_SCHOOL = 1;
	private static final int BACHELOR = 2;
	private static final int MASTER = 3;
	private static final int DOCTORATE = 4;

	private static SelectItem[] colorItems = new SelectItem[] {
			new SelectItem("Red"), new SelectItem("Blue"),
			new SelectItem("Yello"), new SelectItem("Green"),
			new SelectItem("Orange"), };
	private static SelectItem[] languageItems = new SelectItem[] {
			new SelectItem("en", "English"), new SelectItem("fr", "French"),
			new SelectItem("it", "Italian"), new SelectItem("es", "Spanish"),
			new SelectItem("ru", "Russian") };
	private static SelectItem[] educationItems = new SelectItem[] {
			new SelectItem(new Integer(HIGH_SCHOOL), "High School"),
			new SelectItem(new Integer(BACHELOR), "Bachelor's"),
			new SelectItem(new Integer(MASTER), "Master's"),
			new SelectItem(new Integer(DOCTORATE), "Doctorate"), };
	private static List birthYears;
	private static SelectItem[] daysOfTheWeek;

	static {
		birthYears = new ArrayList();
		for (int i = 1900; i < 2000; i++) {
			birthYears.add(new SelectItem(new Integer(i)));
		}
		DateFormatSymbols symbols = new DateFormatSymbols();
		String[] weekDays = symbols.getWeekdays();
		daysOfTheWeek = new SelectItem[7];
		for (int i = Calendar.SUNDAY; i <= Calendar.SATURDAY; i++) {
			daysOfTheWeek[i - 1] = new SelectItem(new Integer(i), weekDays[i]);
		}
	}

	private static String concatenate(Object[] values) {
		if (values == null) {
			return "";
		}
		StringBuffer r = new StringBuffer();
		for (int i = 0; i < values.length; i++) {
			if (i > 0) {
				r.append(",");
			}

			r.append(values[i].toString());

		}
		return r.toString();
	}

	// PROPERTY: yearItems
	public List getYearItems() {
		return birthYears;

	}

	// PROPERTY: daysOfTheWeekItems
	public SelectItem[] getDaysOfTheWeekItems() {
		return daysOfTheWeek;
	}

	// PROPERTY: colorItems
	public SelectItem[] getColorItems() {
		return colorItems;
	}

	// PROPERTY: languageItems
	public SelectItem[] getLanguageItems() {
		return languageItems;
	}

	// PROPERTY: educationItems
	public SelectItem[] getEducationItems() {
		return educationItems;
	}

	// PROPERTY: bestDaysConcatenated
	public String getBestDaysConcatenated() {
		String concatenate = concatenate(bestDaysToContact);
		return concatenate;
	}

	// PROPERTY: languagesConcatenated
	public String getLanguagesConcatenated() {
		String concatenate = concatenate(languages);
		return concatenate;

	}

	// PROPERTY: colorsConcatenated
	public String getColorsConcatenated() {
		String concatenate = concatenate(colors);
		return concatenate;

	}

}
