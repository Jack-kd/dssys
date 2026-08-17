package androidx.webkit;

import android.webkit.WebResourceResponse;
import androidx.webkit.internal.WebViewFeatureInternal;
import com.baidu.mobads.sdk.internal.cb;
import java.io.InputStream;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.chromium.support_lib_boundary.WebViewProviderFactoryBoundaryInterface;

/* loaded from: classes.dex */
public class WebResourceResponseCompat {
    private List<String> mCookies = Collections.EMPTY_LIST;
    private final WebResourceResponse mWrapped;

    public WebResourceResponseCompat(String str, String str2, InputStream inputStream) {
        WebResourceResponse webResourceResponse = new WebResourceResponse(str, str2, inputStream);
        this.mWrapped = webResourceResponse;
        webResourceResponse.setResponseHeaders(Collections.EMPTY_MAP);
    }

    private String serializeMultiCookieHeader(List<String> list) {
        if (list.isEmpty()) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        for (String str : list) {
            if (!b.a(str)) {
                if (sb.length() > 0) {
                    sb.append(WebViewProviderFactoryBoundaryInterface.MULTI_COOKIE_VALUE_SEPARATOR);
                }
                sb.append(str.trim());
            }
        }
        return sb.toString();
    }

    public static WebResourceResponseCompat toWebResourceResponseCompat(WebResourceResponse webResourceResponse) {
        int statusCode = webResourceResponse.getStatusCode();
        String reasonPhrase = webResourceResponse.getReasonPhrase();
        if (statusCode < 100) {
            statusCode = 200;
        }
        int i2 = statusCode;
        if (reasonPhrase == null) {
            reasonPhrase = cb.f11288k;
        }
        return new WebResourceResponseCompat(webResourceResponse.getMimeType(), webResourceResponse.getEncoding(), i2, reasonPhrase, webResourceResponse.getResponseHeaders(), webResourceResponse.getData());
    }

    public List<String> getCookies() {
        return this.mCookies;
    }

    public InputStream getData() {
        return this.mWrapped.getData();
    }

    public String getEncoding() {
        return this.mWrapped.getEncoding();
    }

    public String getMimeType() {
        return this.mWrapped.getMimeType();
    }

    public String getReasonPhrase() {
        return this.mWrapped.getReasonPhrase();
    }

    public Map<String, String> getResponseHeaders() {
        return this.mWrapped.getResponseHeaders();
    }

    public int getStatusCode() {
        return this.mWrapped.getStatusCode();
    }

    public void setCookies(List<String> list) {
        if (!WebViewFeatureInternal.COOKIE_INTERCEPT.isSupportedByWebView()) {
            throw WebViewFeatureInternal.getUnsupportedOperationException();
        }
        this.mCookies = list;
    }

    public void setData(InputStream inputStream) {
        this.mWrapped.setData(inputStream);
    }

    public void setEncoding(String str) {
        this.mWrapped.setEncoding(str);
    }

    public void setMimeType(String str) {
        this.mWrapped.setMimeType(str);
    }

    public void setResponseHeaders(Map<String, String> map) {
        this.mWrapped.setResponseHeaders(map);
    }

    public void setStatusCodeAndReasonPhrase(int i2, String str) {
        this.mWrapped.setStatusCodeAndReasonPhrase(i2, str);
    }

    public WebResourceResponse toWebResourceResponse() {
        Map<String, String> responseHeaders = this.mWrapped.getResponseHeaders();
        HashMap map = responseHeaders != null ? new HashMap(responseHeaders) : new HashMap();
        if (!this.mCookies.isEmpty()) {
            map.put(WebViewProviderFactoryBoundaryInterface.MULTI_COOKIE_HEADER_NAME, serializeMultiCookieHeader(this.mCookies));
        }
        int statusCode = this.mWrapped.getStatusCode();
        String reasonPhrase = this.mWrapped.getReasonPhrase();
        if (statusCode < 100) {
            statusCode = 200;
            reasonPhrase = cb.f11288k;
        }
        return new WebResourceResponse(this.mWrapped.getMimeType(), this.mWrapped.getEncoding(), statusCode, reasonPhrase, map, this.mWrapped.getData());
    }

    public WebResourceResponseCompat(String str, String str2, int i2, String str3, Map<String, String> map, InputStream inputStream) {
        this.mWrapped = new WebResourceResponse(str, str2, i2, str3, map == null ? Collections.EMPTY_MAP : map, inputStream);
    }
}
