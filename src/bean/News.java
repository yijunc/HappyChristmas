package bean;

import java.util.Date;

public class News {
    private String title;
    private String brief;
    private String content;
    private Date postDate;
    private String poster;
    private int newsId;

    public String getTitle() {
        return title;
    }

    public News setTitle(String title) {
        this.title = title;
        return this;
    }

    public String getBrief() {
        return brief;
    }

    public News setBrief(String brief) {
        this.brief = brief;
        return this;
    }

    public String getContent() {
        return content;
    }

    public News setContent(String content) {
        this.content = content;
        return this;
    }

    public Date getPostDate() {
        return postDate;
    }

    public News setPostDate(Date postDate) {
        this.postDate = postDate;
        return this;
    }

    public String getPoster() {
        return poster;
    }

    public News setPoster(String poster) {
        this.poster = poster;
        return this;
    }

    public int getNewsId() {
        return newsId;
    }

    public News setNewsId(int newsId) {
        this.newsId = newsId;
        return this;
    }
}
