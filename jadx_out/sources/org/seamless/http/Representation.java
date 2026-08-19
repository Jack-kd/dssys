package org.seamless.http;

import com.sigmob.sdk.downloader.core.c;
import java.io.Serializable;
import java.net.URL;
import java.net.URLConnection;
import java.util.Date;

/* loaded from: classes5.dex */
public class Representation<E> implements Serializable {
    private CacheControl cacheControl;
    private Integer contentLength;
    private String contentType;
    private E entity;
    private String entityTag;
    private Long lastModified;
    private URL url;

    public Representation(CacheControl cacheControl, Integer num, String str, Long l2, String str2, E e2) {
        this(null, cacheControl, num, str, l2, str2, e2);
    }

    public CacheControl getCacheControl() {
        return this.cacheControl;
    }

    public Integer getContentLength() {
        Integer num = this.contentLength;
        if (num == null || num.intValue() == -1) {
            return null;
        }
        return this.contentLength;
    }

    public String getContentType() {
        return this.contentType;
    }

    public E getEntity() {
        return this.entity;
    }

    public String getEntityTag() {
        return this.entityTag;
    }

    public Long getLastModified() {
        if (this.lastModified.longValue() == 0) {
            return null;
        }
        return this.lastModified;
    }

    public Long getMaxAgeOrNull() {
        if (getCacheControl() == null || getCacheControl().getMaxAge() == -1 || getCacheControl().getMaxAge() == 0) {
            return null;
        }
        return Long.valueOf(getCacheControl().getMaxAge());
    }

    public URL getUrl() {
        return this.url;
    }

    public boolean hasBeenModified(long j2) {
        return getLastModified() == null || getLastModified().longValue() < j2;
    }

    public boolean hasEntityTagChanged(String str) {
        return (getEntityTag() == null || getEntityTag().equals(str)) ? false : true;
    }

    public boolean isExpired(long j2, long j3) {
        return j2 + (j3 * 1000) < new Date().getTime();
    }

    public boolean isNoCache() {
        return getCacheControl() != null && getCacheControl().isNoCache();
    }

    public boolean isNoStore() {
        return getCacheControl() != null && getCacheControl().isNoStore();
    }

    public boolean mustRevalidate() {
        return getCacheControl() != null && getCacheControl().isProxyRevalidate();
    }

    public String toString() {
        return "(" + getClass().getSimpleName() + ") CT: " + getContentType();
    }

    public Representation(URL url, CacheControl cacheControl, Integer num, String str, Long l2, String str2, E e2) {
        this.url = url;
        this.cacheControl = cacheControl;
        this.contentLength = num;
        this.contentType = str;
        this.lastModified = l2;
        this.entityTag = str2;
        this.entity = e2;
    }

    public boolean isExpired(long j2) {
        return getMaxAgeOrNull() == null || isExpired(j2, getMaxAgeOrNull().longValue());
    }

    public Representation(URLConnection uRLConnection, E e2) {
        this(uRLConnection.getURL(), CacheControl.valueOf(uRLConnection.getHeaderField("Cache-Control")), Integer.valueOf(uRLConnection.getContentLength()), uRLConnection.getContentType(), Long.valueOf(uRLConnection.getLastModified()), uRLConnection.getHeaderField(c.f37368g), e2);
    }
}
