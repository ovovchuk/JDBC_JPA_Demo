package com.demo.jpa.entity;

import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;


@Entity
public class Video {
    private int id;
    private String videoTitle;
    private String videoId;
    private String thumbLink;

    @Id
    @Column(name = "id", nullable = false)
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Basic
    @Column(name = "videoTitle", nullable = true, length = 255)
    public String getVideoTitle() {
        return videoTitle;
    }

    public void setVideoTitle(String videoTitle) {
        this.videoTitle = videoTitle;
    }

    @Basic
    @Column(name = "videoID", nullable = false, length = 11)
    public String getVideoId() {
        return videoId;
    }

    public void setVideoId(String videoId) {
        this.videoId = videoId;
    }

    @Basic
    @Column(name = "thumbLink", nullable = false, length = 255)
    public String getThumbLink() {
        return thumbLink;
    }

    public void setThumbLink(String thumbLink) {
        this.thumbLink = thumbLink;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Video video = (Video) o;

        if (id != video.id) return false;
        if (videoTitle != null ? !videoTitle.equals(video.videoTitle) : video.videoTitle != null) return false;
        if (videoId != null ? !videoId.equals(video.videoId) : video.videoId != null) return false;
        if (thumbLink != null ? !thumbLink.equals(video.thumbLink) : video.thumbLink != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = id;
        result = 31 * result + (videoTitle != null ? videoTitle.hashCode() : 0);
        result = 31 * result + (videoId != null ? videoId.hashCode() : 0);
        result = 31 * result + (thumbLink != null ? thumbLink.hashCode() : 0);
        return result;
    }
}
