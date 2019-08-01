package model;

public class Book {

	private String name;
	private String author;
	private String publisher;
	private String publishedYear;
	private String numberOfBook;
	
	public Book() {
		// TODO Auto-generated constructor stub
	}

	public Book(String name, String author, String publisher, String publishedYear,String numberOfBook) {
		super();
		this.name = name;
		this.author = author;
		this.publisher = publisher;
		this.publishedYear = publishedYear;
		this.numberOfBook=numberOfBook;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public String getPublisher() {
		return publisher;
	}

	public void setPublisher(String publisher) {
		this.publisher = publisher;
	}

	public String getPublishedYear() {
		return publishedYear;
	}

	public void setPublishedYear(String publishedYear) {
		this.publishedYear = publishedYear;
	}

	public String getNumberOfBook() {
		return numberOfBook;
	}

	public void setNumberOfBook(String numberOfBook) {
		this.numberOfBook = numberOfBook;
	}

	@Override
	public String toString() {
		return "Book [name=" + name + ", author=" + author + ", publisher=" + publisher + ", publishedYear="
				+ publishedYear + ", numberOfBook=" + numberOfBook + "]";
	}
	
	

}
