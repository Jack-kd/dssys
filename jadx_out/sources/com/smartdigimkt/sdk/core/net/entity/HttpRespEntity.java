package com.smartdigimkt.sdk.core.net.entity;

/* loaded from: classes5.dex */
public class HttpRespEntity {
    private int httpCode;
    private Object interceptResult;
    private int interceptStatusCode;
    private boolean isIntercept;
    private long reqNextTime;
    private String urlKey;

    private HttpRespEntity() {
    }

    public static HttpRespEntity create() {
        return new HttpRespEntity();
    }

    public int getHttpCode() {
        return this.httpCode;
    }

    public Object getInterceptResult() {
        return this.interceptResult;
    }

    public int getInterceptStatusCode() {
        return this.interceptStatusCode;
    }

    public long getReqNextTime() {
        return this.reqNextTime;
    }

    public String getUrlKey() {
        return this.urlKey;
    }

    public boolean isIntercept() {
        return this.isIntercept;
    }

    public void setHttpCode(int i2) {
        this.httpCode = i2;
    }

    public void setIntercept(boolean z2) {
        this.isIntercept = z2;
    }

    public void setInterceptResult(Object obj) {
        this.interceptResult = obj;
    }

    public void setInterceptStatusCode(int i2) {
        this.interceptStatusCode = i2;
    }

    public void setReqNextTime(long j2) {
        this.reqNextTime = j2;
    }

    public void setUrlKey(String str) {
        this.urlKey = str;
    }

    public String toString() {
        return "HttpRespEntity{urlKey='" + this.urlKey + "', statusCode=" + this.httpCode + ", reqNextTime=" + this.reqNextTime + ", isIntercept=" + this.isIntercept + ", interceptStatusCode=" + this.interceptStatusCode + ", interceptResult=" + this.interceptResult + '}';
    }
}
