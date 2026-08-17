package com.androidquery.callback;

import com.androidquery.util.AQUtility;
import com.baidu.mobads.sdk.internal.cb;
import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.util.Arrays;
import java.util.Collections;
import java.util.Date;
import java.util.List;
import org.apache.http.Header;
import org.apache.http.client.CookieStore;
import org.apache.http.cookie.Cookie;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.protocol.HttpContext;

/* loaded from: classes.dex */
public class AjaxStatus {
    public static final int AUTH_ERROR = -102;
    public static final int DATASTORE = 2;
    public static final int DEVICE = 5;
    public static final int FILE = 3;
    public static final int MEMORY = 4;
    public static final int NETWORK = 1;
    public static final int NETWORK_ERROR = -101;
    public static final int TRANSFORM_ERROR = -103;
    private DefaultHttpClient client;
    private Closeable close;
    private int code;
    private HttpContext context;
    private byte[] data;
    private boolean done;
    private long duration;
    private String error;
    private File file;
    private Header[] headers;
    private boolean invalid;
    private String message;
    private boolean reauth;
    private String redirect;
    private boolean refresh;
    private int source;
    private long start;
    private Date time;

    public AjaxStatus() {
        this.code = 200;
        this.message = cb.f11288k;
        this.time = new Date();
        this.source = 1;
        this.start = System.currentTimeMillis();
    }

    public AjaxStatus client(DefaultHttpClient defaultHttpClient) {
        this.client = defaultHttpClient;
        return this;
    }

    public void close() throws IOException {
        AQUtility.close(this.close);
        this.close = null;
    }

    public void closeLater(Closeable closeable) {
        this.close = closeable;
    }

    public AjaxStatus code(int i2) {
        this.code = i2;
        return this;
    }

    public AjaxStatus context(HttpContext httpContext) {
        this.context = httpContext;
        return this;
    }

    public AjaxStatus data(byte[] bArr) {
        this.data = bArr;
        return this;
    }

    public AjaxStatus done() {
        this.duration = System.currentTimeMillis() - this.start;
        this.done = true;
        this.reauth = false;
        return this;
    }

    public AjaxStatus error(String str) {
        this.error = str;
        return this;
    }

    public boolean expired(long j2) {
        return System.currentTimeMillis() - this.time.getTime() > j2 && getSource() != 1;
    }

    public AjaxStatus file(File file) {
        this.file = file;
        return this;
    }

    public DefaultHttpClient getClient() {
        return this.client;
    }

    public int getCode() {
        return this.code;
    }

    public List<Cookie> getCookies() {
        HttpContext httpContext = this.context;
        if (httpContext == null) {
            return Collections.EMPTY_LIST;
        }
        CookieStore cookieStore = (CookieStore) httpContext.getAttribute("http.cookie-store");
        return cookieStore == null ? Collections.EMPTY_LIST : cookieStore.getCookies();
    }

    public byte[] getData() {
        return this.data;
    }

    public boolean getDone() {
        return this.done;
    }

    public long getDuration() {
        return this.duration;
    }

    public String getError() {
        return this.error;
    }

    public File getFile() {
        return this.file;
    }

    public String getHeader(String str) {
        if (this.headers == null) {
            return null;
        }
        int i2 = 0;
        while (true) {
            Header[] headerArr = this.headers;
            if (i2 >= headerArr.length) {
                return null;
            }
            if (str.equalsIgnoreCase(headerArr[i2].getName())) {
                return this.headers[i2].getValue();
            }
            i2++;
        }
    }

    public List<Header> getHeaders() {
        Header[] headerArr = this.headers;
        return headerArr == null ? Collections.EMPTY_LIST : Arrays.asList(headerArr);
    }

    public boolean getInvalid() {
        return this.invalid;
    }

    public String getMessage() {
        return this.message;
    }

    public boolean getReauth() {
        return this.reauth;
    }

    public String getRedirect() {
        return this.redirect;
    }

    public boolean getRefresh() {
        return this.refresh;
    }

    public int getSource() {
        return this.source;
    }

    public Date getTime() {
        return this.time;
    }

    public AjaxStatus headers(Header[] headerArr) {
        this.headers = headerArr;
        return this;
    }

    public AjaxStatus invalidate() {
        this.invalid = true;
        return this;
    }

    public AjaxStatus message(String str) {
        this.message = str;
        return this;
    }

    public AjaxStatus reauth(boolean z2) {
        this.reauth = z2;
        return this;
    }

    public AjaxStatus redirect(String str) {
        this.redirect = str;
        return this;
    }

    public AjaxStatus refresh(boolean z2) {
        this.refresh = z2;
        return this;
    }

    public AjaxStatus reset() throws IOException {
        this.duration = System.currentTimeMillis() - this.start;
        this.done = false;
        close();
        return this;
    }

    public AjaxStatus source(int i2) {
        this.source = i2;
        return this;
    }

    public AjaxStatus time(Date date) {
        this.time = date;
        return this;
    }

    public AjaxStatus(int i2, String str) {
        this.code = 200;
        this.message = cb.f11288k;
        this.time = new Date();
        this.source = 1;
        this.start = System.currentTimeMillis();
        this.code = i2;
        this.message = str;
    }
}
