package com.androidquery.callback;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.util.Xml;
import android.view.View;
import com.androidquery.auth.AccountHandle;
import com.androidquery.auth.GoogleHandle;
import com.androidquery.util.AQUtility;
import com.androidquery.util.Common;
import com.androidquery.util.Constants;
import com.androidquery.util.Progress;
import com.androidquery.util.XmlDom;
import com.anythink.core.common.m.AbstractC1114b;
import com.sigmob.sdk.base.e;
import com.sigmob.sdk.base.n;
import java.io.ByteArrayInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.zip.GZIPInputStream;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.HttpHost;
import org.apache.http.HttpResponse;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpDelete;
import org.apache.http.client.methods.HttpEntityEnclosingRequestBase;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.methods.HttpPut;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.conn.params.ConnManagerParams;
import org.apache.http.conn.params.ConnPerRouteBean;
import org.apache.http.conn.scheme.PlainSocketFactory;
import org.apache.http.conn.scheme.Scheme;
import org.apache.http.conn.scheme.SchemeRegistry;
import org.apache.http.conn.scheme.SocketFactory;
import org.apache.http.conn.ssl.SSLSocketFactory;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.impl.conn.tsccm.ThreadSafeClientConnManager;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.protocol.HttpContext;
import org.json.JSONArray;
import org.json.JSONObject;
import org.json.JSONTokener;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: classes.dex */
public abstract class AbstractAjaxCallback<T, K> implements Runnable {
    private static String AGENT = null;
    private static boolean GZIP = true;
    private static int NETWORK_POOL = 4;
    private static int NET_TIMEOUT = 30000;
    private static boolean REUSE_CLIENT = true;
    private static final String boundary = "*****";
    private static DefaultHttpClient client = null;
    private static ExecutorService fetchExe = null;
    private static final String lineEnd = "\r\n";
    private static SocketFactory ssf = null;
    private static Transformer st = null;
    private static final String twoHyphens = "--";
    private boolean abort;
    private WeakReference<Activity> act;
    private AccountHandle ah;
    private boolean blocked;
    private File cacheDir;
    private String callback;
    private boolean completed;
    private Map<String, String> cookies;
    private long expire;
    protected boolean fileCache;
    private Object handler;
    private Map<String, String> headers;
    protected boolean memCache;
    private String networkUrl;
    private Map<String, Object> params;
    private WeakReference<Object> progress;
    private HttpHost proxy;
    private boolean reauth;
    private boolean refresh;
    private HttpUriRequest request;
    protected T result;
    protected AjaxStatus status;
    private File targetFile;
    private Transformer transformer;
    private Class<T> type;
    private String url;
    private Reference<Object> whandler;
    private static final Class<?>[] DEFAULT_SIG = {String.class, Object.class, AjaxStatus.class};
    private static int lastStatus = 200;
    private int policy = 0;
    private int timeout = 0;
    private String encoding = "UTF-8";
    private int method = 4;
    private boolean uiCallback = true;
    private int retry = 0;

    private void afterWork() throws IOException {
        String str = this.url;
        if (str != null && this.memCache) {
            memPut(str, this.result);
        }
        callback();
        clear();
    }

    private void backgroundWork() throws Throwable {
        if (!this.refresh && this.fileCache) {
            fileWork();
        }
        if (this.result == null) {
            datastoreWork();
        }
        if (this.result == null) {
            networkWork();
        }
    }

    public static void cancel() {
        ExecutorService executorService = fetchExe;
        if (executorService != null) {
            executorService.shutdownNow();
            fetchExe = null;
        }
        BitmapAjaxCallback.clearTasks();
    }

    private void clear() {
        this.whandler = null;
        this.handler = null;
        this.progress = null;
        this.request = null;
        this.transformer = null;
        this.ah = null;
        this.act = null;
    }

    private void copy(InputStream inputStream, OutputStream outputStream, int i2) throws IOException {
        WeakReference<Object> weakReference = this.progress;
        Object obj = weakReference != null ? weakReference.get() : null;
        AQUtility.copy(inputStream, outputStream, i2, obj != null ? new Progress(obj) : null);
    }

    private String correctEncoding(byte[] bArr, String str, AjaxStatus ajaxStatus) {
        String str2 = null;
        try {
            if (!"utf-8".equalsIgnoreCase(str)) {
                return new String(bArr, str);
            }
            String charset = parseCharset(ajaxStatus.getHeader(AbstractC1114b.f5589g));
            AQUtility.debug("parsing header", charset);
            if (charset != null) {
                return new String(bArr, charset);
            }
            String str3 = new String(bArr, "utf-8");
            try {
                String charset2 = getCharset(str3);
                AQUtility.debug("parsing needed", charset2);
                if (charset2 == null || "utf-8".equalsIgnoreCase(charset2)) {
                    return str3;
                }
                AQUtility.debug("correction needed", charset2);
                String str4 = new String(bArr, charset2);
                try {
                    ajaxStatus.data(str4.getBytes("utf-8"));
                    return str4;
                } catch (Exception e2) {
                    e = e2;
                    str2 = str4;
                    AQUtility.report(e);
                    return str2;
                }
            } catch (Exception e3) {
                e = e3;
                str2 = str3;
            }
        } catch (Exception e4) {
            e = e4;
        }
    }

    private void datastoreWork() {
        T tDatastoreGet = datastoreGet(this.url);
        this.result = tDatastoreGet;
        if (tDatastoreGet != null) {
            this.status.source(2).done();
        }
    }

    public static void execute(Runnable runnable) {
        if (fetchExe == null) {
            fetchExe = Executors.newFixedThreadPool(NETWORK_POOL);
        }
        fetchExe.execute(runnable);
    }

    private static Map<String, Object> extractParams(Uri uri) {
        HashMap map = new HashMap();
        for (String str : uri.getQuery().split("&")) {
            String[] strArrSplit = str.split("=");
            if (strArrSplit.length >= 2) {
                map.put(strArrSplit[0], strArrSplit[1]);
            } else if (strArrSplit.length == 1) {
                map.put(strArrSplit[0], "");
            }
        }
        return map;
    }

    private static String extractUrl(Uri uri) {
        String str = uri.getScheme() + "://" + uri.getAuthority() + uri.getPath();
        String fragment = uri.getFragment();
        if (fragment == null) {
            return str;
        }
        return str + "#" + fragment;
    }

    private void fileWork() {
        File fileAccessFile = accessFile(this.cacheDir, getCacheUrl());
        if (fileAccessFile != null) {
            this.status.source(3);
            T tFileGet = fileGet(this.url, fileAccessFile, this.status);
            this.result = tFileGet;
            if (tFileGet != null) {
                this.status.time(new Date(fileAccessFile.lastModified())).done();
            }
        }
    }

    public static int getActiveCount() {
        ExecutorService executorService = fetchExe;
        if (executorService instanceof ThreadPoolExecutor) {
            return ((ThreadPoolExecutor) executorService).getActiveCount();
        }
        return 0;
    }

    private String getCacheUrl() {
        AccountHandle accountHandle = this.ah;
        return accountHandle != null ? accountHandle.getCacheUrl(this.url) : this.url;
    }

    private String getCharset(String str) {
        Matcher matcher = Pattern.compile("<meta [^>]*http-equiv[^>]*\"Content-Type\"[^>]*>", 2).matcher(str);
        if (matcher.find()) {
            return parseCharset(matcher.group());
        }
        return null;
    }

    private static DefaultHttpClient getClient() {
        if (client == null || !REUSE_CLIENT) {
            AQUtility.debug("creating http client");
            BasicHttpParams basicHttpParams = new BasicHttpParams();
            HttpConnectionParams.setConnectionTimeout(basicHttpParams, NET_TIMEOUT);
            HttpConnectionParams.setSoTimeout(basicHttpParams, NET_TIMEOUT);
            ConnManagerParams.setMaxConnectionsPerRoute(basicHttpParams, new ConnPerRouteBean(25));
            HttpConnectionParams.setSocketBufferSize(basicHttpParams, 8192);
            SchemeRegistry schemeRegistry = new SchemeRegistry();
            schemeRegistry.register(new Scheme("http", PlainSocketFactory.getSocketFactory(), 80));
            SocketFactory socketFactory = ssf;
            if (socketFactory == null) {
                socketFactory = SSLSocketFactory.getSocketFactory();
            }
            schemeRegistry.register(new Scheme("https", socketFactory, 443));
            client = new DefaultHttpClient(new ThreadSafeClientConnManager(basicHttpParams, schemeRegistry), basicHttpParams);
        }
        return client;
    }

    private String getEncoding(HttpEntity httpEntity) {
        Header contentEncoding;
        if (httpEntity == null || (contentEncoding = httpEntity.getContentEncoding()) == null) {
            return null;
        }
        return contentEncoding.getValue();
    }

    public static int getLastStatus() {
        return lastStatus;
    }

    private String getNetworkUrl(String str) {
        String str2 = this.networkUrl;
        if (str2 != null) {
            str = str2;
        }
        AccountHandle accountHandle = this.ah;
        return accountHandle != null ? accountHandle.getNetworkUrl(str) : str;
    }

    private File getPreFile() throws IOException {
        File cacheFile;
        if (isStreamingContent()) {
            cacheFile = this.targetFile;
            if (cacheFile == null) {
                if (this.fileCache) {
                    cacheFile = getCacheFile();
                } else {
                    File tempDir = AQUtility.getTempDir();
                    if (tempDir == null) {
                        tempDir = this.cacheDir;
                    }
                    cacheFile = AQUtility.getCacheFile(tempDir, this.url);
                }
            }
        } else {
            cacheFile = null;
        }
        if (cacheFile == null || cacheFile.exists()) {
            return cacheFile;
        }
        try {
            cacheFile.getParentFile().mkdirs();
            cacheFile.createNewFile();
            return cacheFile;
        } catch (Exception e2) {
            AQUtility.report(e2);
            return null;
        }
    }

    private void httpDelete(String str, Map<String, String> map, AjaxStatus ajaxStatus) throws Throwable {
        AQUtility.debug("get", str);
        String strPatchUrl = patchUrl(str);
        httpDo(new HttpDelete(strPatchUrl), strPatchUrl, map, ajaxStatus);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:94:0x01b9  */
    /* JADX WARN: Type inference failed for: r4v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r4v1 */
    /* JADX WARN: Type inference failed for: r4v21 */
    /* JADX WARN: Type inference failed for: r4v22 */
    /* JADX WARN: Type inference failed for: r4v4 */
    /* JADX WARN: Type inference failed for: r4v6, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r4v7 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void httpDo(org.apache.http.client.methods.HttpUriRequest r19, java.lang.String r20, java.util.Map<java.lang.String, java.lang.String> r21, com.androidquery.callback.AjaxStatus r22) throws java.lang.Throwable {
        /*
            Method dump skipped, instructions count: 511
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.androidquery.callback.AbstractAjaxCallback.httpDo(org.apache.http.client.methods.HttpUriRequest, java.lang.String, java.util.Map, com.androidquery.callback.AjaxStatus):void");
    }

    private void httpEntity(String str, HttpEntityEnclosingRequestBase httpEntityEnclosingRequestBase, Map<String, String> map, Map<String, Object> map2, AjaxStatus ajaxStatus) throws Throwable {
        HttpEntity urlEncodedFormEntity;
        httpEntityEnclosingRequestBase.getParams().setBooleanParameter("http.protocol.expect-continue", false);
        Object obj = map2.get(Constants.POST_ENTITY);
        if (obj instanceof HttpEntity) {
            urlEncodedFormEntity = (HttpEntity) obj;
        } else {
            ArrayList arrayList = new ArrayList();
            for (Map.Entry<String, Object> entry : map2.entrySet()) {
                Object value = entry.getValue();
                if (value != null) {
                    arrayList.add(new BasicNameValuePair(entry.getKey(), value.toString()));
                }
            }
            urlEncodedFormEntity = new UrlEncodedFormEntity(arrayList, "UTF-8");
        }
        if (map != null && !map.containsKey(AbstractC1114b.f5589g)) {
            map.put(AbstractC1114b.f5589g, "application/x-www-form-urlencoded;charset=UTF-8");
        }
        httpEntityEnclosingRequestBase.setEntity(urlEncodedFormEntity);
        httpDo(httpEntityEnclosingRequestBase, str, map, ajaxStatus);
    }

    private void httpGet(String str, Map<String, String> map, AjaxStatus ajaxStatus) throws Throwable {
        AQUtility.debug("get", str);
        String strPatchUrl = patchUrl(str);
        httpDo(new HttpGet(strPatchUrl), strPatchUrl, map, ajaxStatus);
    }

    private void httpMulti(String str, Map<String, String> map, Map<String, Object> map2, AjaxStatus ajaxStatus) throws IOException {
        String str2;
        byte[] data;
        AQUtility.debug("multipart", str);
        HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
        httpURLConnection.setInstanceFollowRedirects(false);
        httpURLConnection.setConnectTimeout(NET_TIMEOUT * 4);
        httpURLConnection.setDoInput(true);
        httpURLConnection.setDoOutput(true);
        httpURLConnection.setUseCaches(false);
        httpURLConnection.setRequestMethod("POST");
        httpURLConnection.setRequestProperty("Connection", "Keep-Alive");
        httpURLConnection.setRequestProperty(AbstractC1114b.f5589g, "multipart/form-data;charset=utf-8;boundary=*****");
        if (map != null) {
            for (String str3 : map.keySet()) {
                httpURLConnection.setRequestProperty(str3, map.get(str3));
            }
        }
        String strMakeCookie = makeCookie();
        if (strMakeCookie != null) {
            httpURLConnection.setRequestProperty(e.f36239a, strMakeCookie);
        }
        AccountHandle accountHandle = this.ah;
        if (accountHandle != null) {
            accountHandle.applyToken((AbstractAjaxCallback<?, ?>) this, httpURLConnection);
        }
        DataOutputStream dataOutputStream = new DataOutputStream(httpURLConnection.getOutputStream());
        for (Map.Entry<String, Object> entry : map2.entrySet()) {
            writeObject(dataOutputStream, entry.getKey(), entry.getValue());
        }
        dataOutputStream.writeBytes("--*****--\r\n");
        dataOutputStream.flush();
        dataOutputStream.close();
        httpURLConnection.connect();
        int responseCode = httpURLConnection.getResponseCode();
        String responseMessage = httpURLConnection.getResponseMessage();
        String contentEncoding = httpURLConnection.getContentEncoding();
        if (responseCode < 200 || responseCode >= 300) {
            str2 = new String(toData(contentEncoding, httpURLConnection.getErrorStream()), "UTF-8");
            AQUtility.debug("error", str2);
            data = null;
        } else {
            data = toData(contentEncoding, httpURLConnection.getInputStream());
            str2 = null;
        }
        AQUtility.debug("response", Integer.valueOf(responseCode));
        if (data != null) {
            AQUtility.debug(Integer.valueOf(data.length), str);
        }
        ajaxStatus.code(responseCode).message(responseMessage).redirect(str).time(new Date()).data(data).error(str2).client(null);
    }

    private void httpPost(String str, Map<String, String> map, Map<String, Object> map2, AjaxStatus ajaxStatus) throws Throwable {
        AQUtility.debug("post", str);
        httpEntity(str, new HttpPost(str), map, map2, ajaxStatus);
    }

    private void httpPut(String str, Map<String, String> map, Map<String, Object> map2, AjaxStatus ajaxStatus) throws Throwable {
        AQUtility.debug("put", str);
        httpEntity(str, new HttpPut(str), map, map2, ajaxStatus);
    }

    private boolean isActive() {
        WeakReference<Activity> weakReference = this.act;
        if (weakReference == null) {
            return true;
        }
        Activity activity = weakReference.get();
        return (activity == null || activity.isFinishing()) ? false : true;
    }

    private static boolean isMultiPart(Map<String, Object> map) {
        for (Map.Entry<String, Object> entry : map.entrySet()) {
            Object value = entry.getValue();
            AQUtility.debug(entry.getKey(), value);
            if ((value instanceof File) || (value instanceof byte[]) || (value instanceof InputStream)) {
                return true;
            }
        }
        return false;
    }

    private String makeCookie() {
        Map<String, String> map = this.cookies;
        if (map == null || map.size() == 0) {
            return null;
        }
        Iterator<String> it = this.cookies.keySet().iterator();
        StringBuilder sb = new StringBuilder();
        while (it.hasNext()) {
            String next = it.next();
            String str = this.cookies.get(next);
            sb.append(next);
            sb.append("=");
            sb.append(str);
            if (it.hasNext()) {
                sb.append("; ");
            }
        }
        return sb.toString();
    }

    private void network(int i2) throws Throwable {
        if (i2 <= 1) {
            network();
            return;
        }
        for (int i3 = 0; i3 < i2; i3++) {
            try {
                network();
                return;
            } catch (IOException e2) {
                if (i3 == i2 - 1) {
                    throw e2;
                }
            }
        }
    }

    private void networkWork() throws Throwable {
        byte[] data;
        if (this.url == null) {
            this.status.code(AjaxStatus.NETWORK_ERROR).done();
            return;
        }
        try {
            network(this.retry + 1);
            AccountHandle accountHandle = this.ah;
            if (accountHandle != null && accountHandle.expired(this, this.status) && !this.reauth) {
                AQUtility.debug("reauth needed", this.status.getMessage());
                this.reauth = true;
                if (!this.ah.reauth(this)) {
                    this.status.reauth(true);
                    return;
                }
                network();
            }
            data = this.status.getData();
        } catch (Exception e2) {
            AQUtility.debug((Throwable) e2);
            this.status.code(AjaxStatus.NETWORK_ERROR).message("network error");
            data = null;
        }
        try {
            this.result = transform(this.url, data, this.status);
        } catch (Exception e3) {
            AQUtility.debug((Throwable) e3);
        }
        if (this.result == null && data != null) {
            this.status.code(AjaxStatus.TRANSFORM_ERROR).message("transform error");
        }
        lastStatus = this.status.getCode();
        this.status.done();
    }

    private String parseCharset(String str) {
        int iIndexOf;
        if (str == null || (iIndexOf = str.indexOf("charset")) == -1) {
            return null;
        }
        int iIndexOf2 = str.indexOf(";", iIndexOf);
        if (iIndexOf2 == -1) {
            iIndexOf2 = str.length();
        }
        return str.substring(iIndexOf + 7, iIndexOf2).replaceAll("[^\\w-]", "");
    }

    private static String patchUrl(String str) {
        return str.replaceAll(" ", "%20").replaceAll("\\|", "%7C");
    }

    /* JADX WARN: Multi-variable type inference failed */
    private K self() {
        return this;
    }

    public static void setAgent(String str) {
        AGENT = str;
    }

    public static void setGZip(boolean z2) {
        GZIP = z2;
    }

    public static void setNetworkLimit(int i2) {
        int iMax = Math.max(1, Math.min(25, i2));
        NETWORK_POOL = iMax;
        fetchExe = null;
        AQUtility.debug("setting network limit", Integer.valueOf(iMax));
    }

    public static void setReuseHttpClient(boolean z2) {
        REUSE_CLIENT = z2;
        client = null;
    }

    public static void setSSF(SocketFactory socketFactory) {
        ssf = socketFactory;
        client = null;
    }

    public static void setTimeout(int i2) {
        NET_TIMEOUT = i2;
    }

    public static void setTransformer(Transformer transformer) {
        st = transformer;
    }

    private byte[] toData(String str, InputStream inputStream) throws IOException {
        if ("gzip".equalsIgnoreCase(str)) {
            inputStream = new GZIPInputStream(inputStream);
        }
        return AQUtility.toBytes(inputStream);
    }

    private void wake() {
        if (this.blocked) {
            synchronized (this) {
                try {
                    notifyAll();
                } catch (Exception unused) {
                }
            }
        }
    }

    private void work(Context context) throws IOException {
        T tMemGet = memGet(this.url);
        if (tMemGet == null) {
            this.cacheDir = AQUtility.getCacheDir(context, this.policy);
            execute(this);
        } else {
            this.result = tMemGet;
            this.status.source(4).done();
            callback();
        }
    }

    private static void writeData(DataOutputStream dataOutputStream, String str, String str2, InputStream inputStream) throws IOException {
        dataOutputStream.writeBytes("--*****\r\n");
        dataOutputStream.writeBytes("Content-Disposition: form-data; name=\"" + str + "\"; filename=\"" + str2 + "\"" + lineEnd);
        dataOutputStream.writeBytes("Content-Type: application/octet-stream");
        dataOutputStream.writeBytes(lineEnd);
        dataOutputStream.writeBytes("Content-Transfer-Encoding: binary");
        dataOutputStream.writeBytes(lineEnd);
        dataOutputStream.writeBytes(lineEnd);
        AQUtility.copy(inputStream, dataOutputStream);
        dataOutputStream.writeBytes(lineEnd);
    }

    private static void writeField(DataOutputStream dataOutputStream, String str, String str2) throws IOException {
        dataOutputStream.writeBytes("--*****\r\n");
        dataOutputStream.writeBytes("Content-Disposition: form-data; name=\"" + str + "\"");
        dataOutputStream.writeBytes(lineEnd);
        dataOutputStream.writeBytes(lineEnd);
        dataOutputStream.write(str2.getBytes("UTF-8"));
        dataOutputStream.writeBytes(lineEnd);
    }

    private static void writeObject(DataOutputStream dataOutputStream, String str, Object obj) throws IOException {
        if (obj == null) {
            return;
        }
        if (obj instanceof File) {
            File file = (File) obj;
            writeData(dataOutputStream, str, file.getName(), new FileInputStream(file));
        } else if (obj instanceof byte[]) {
            writeData(dataOutputStream, str, str, new ByteArrayInputStream((byte[]) obj));
        } else if (obj instanceof InputStream) {
            writeData(dataOutputStream, str, str, (InputStream) obj);
        } else {
            writeField(dataOutputStream, str, obj.toString());
        }
    }

    public void abort() throws UnsupportedOperationException {
        this.abort = true;
        HttpUriRequest httpUriRequest = this.request;
        if (httpUriRequest == null || httpUriRequest.isAborted()) {
            return;
        }
        this.request.abort();
    }

    public File accessFile(File file, String str) {
        if (this.expire < 0) {
            return null;
        }
        File existedCacheByUrl = AQUtility.getExistedCacheByUrl(file, str);
        if (existedCacheByUrl == null || this.expire == 0 || System.currentTimeMillis() - existedCacheByUrl.lastModified() <= this.expire) {
            return existedCacheByUrl;
        }
        return null;
    }

    public void async(Activity activity) {
        if (activity.isFinishing()) {
            AQUtility.warn("Warning", "Possible memory leak. Calling ajax with a terminated activity.");
        }
        if (this.type == null) {
            AQUtility.warn("Warning", "type() is not called with response type.");
        } else {
            this.act = new WeakReference<>(activity);
            async((Context) activity);
        }
    }

    public K auth(Activity activity, String str, String str2) {
        if (str.startsWith("g.")) {
            this.ah = new GoogleHandle(activity, str, str2);
        }
        return self();
    }

    public void block() {
        if (AQUtility.isUIThread()) {
            throw new IllegalStateException("Cannot block UI thread.");
        }
        if (this.completed) {
            return;
        }
        try {
            synchronized (this) {
                this.blocked = true;
                wait(NET_TIMEOUT + 5000);
            }
        } catch (Exception unused) {
        }
    }

    public boolean cacheAvailable(Context context) {
        return this.fileCache && AQUtility.getExistedCacheByUrl(AQUtility.getCacheDir(context, this.policy), this.url) != null;
    }

    public void callback(String str, T t2, AjaxStatus ajaxStatus) {
    }

    public K cookie(String str, String str2) {
        if (this.cookies == null) {
            this.cookies = new HashMap();
        }
        this.cookies.put(str, str2);
        return self();
    }

    public T datastoreGet(String str) {
        return null;
    }

    public K encoding(String str) {
        this.encoding = str;
        return self();
    }

    public K expire(long j2) {
        this.expire = j2;
        return self();
    }

    public void failure(int i2, String str) throws IOException {
        AjaxStatus ajaxStatus = this.status;
        if (ajaxStatus != null) {
            ajaxStatus.code(i2).message(str);
            callback();
        }
    }

    public K fileCache(boolean z2) {
        this.fileCache = z2;
        return self();
    }

    public T fileGet(String str, File file, AjaxStatus ajaxStatus) {
        byte[] bytes;
        try {
            if (isStreamingContent()) {
                ajaxStatus.file(file);
                bytes = null;
            } else {
                bytes = AQUtility.toBytes(new FileInputStream(file));
            }
            return transform(str, bytes, ajaxStatus);
        } catch (Exception e2) {
            AQUtility.debug((Throwable) e2);
            return null;
        }
    }

    public void filePut(String str, T t2, File file, byte[] bArr) {
        if (file == null || bArr == null) {
            return;
        }
        AQUtility.storeAsync(file, bArr, 0L);
    }

    public File getCacheFile() {
        return AQUtility.getCacheFile(this.cacheDir, getCacheUrl());
    }

    public String getCallback() {
        return this.callback;
    }

    public Object getHandler() {
        Object obj = this.handler;
        if (obj != null) {
            return obj;
        }
        Reference<Object> reference = this.whandler;
        if (reference == null) {
            return null;
        }
        return reference.get();
    }

    public T getResult() {
        return this.result;
    }

    public AjaxStatus getStatus() {
        return this.status;
    }

    public Class<T> getType() {
        return this.type;
    }

    public String getUrl() {
        return this.url;
    }

    public K handler(Object obj, String str) {
        this.handler = obj;
        this.callback = str;
        this.whandler = null;
        return self();
    }

    public K header(String str, String str2) {
        if (this.headers == null) {
            this.headers = new HashMap();
        }
        this.headers.put(str, str2);
        return self();
    }

    public boolean isStreamingContent() {
        return File.class.equals(this.type) || XmlPullParser.class.equals(this.type) || InputStream.class.equals(this.type) || XmlDom.class.equals(this.type);
    }

    public K memCache(boolean z2) {
        this.memCache = z2;
        return self();
    }

    public T memGet(String str) {
        return null;
    }

    public void memPut(String str, T t2) {
    }

    public K method(int i2) {
        this.method = i2;
        return self();
    }

    public K networkUrl(String str) {
        this.networkUrl = str;
        return self();
    }

    public K param(String str, Object obj) {
        if (this.params == null) {
            this.params = new HashMap();
        }
        this.params.put(str, obj);
        return self();
    }

    public K params(Map<String, ?> map) {
        this.params = map;
        return self();
    }

    public K policy(int i2) {
        this.policy = i2;
        return self();
    }

    public K progress(View view) {
        return progress((Object) view);
    }

    public K proxy(String str, int i2) {
        this.proxy = new HttpHost(str, i2);
        return self();
    }

    public K refresh(boolean z2) {
        this.refresh = z2;
        return self();
    }

    public K retry(int i2) {
        this.retry = i2;
        return self();
    }

    @Override // java.lang.Runnable
    public void run() throws IOException {
        if (this.status.getDone()) {
            afterWork();
            return;
        }
        try {
            backgroundWork();
        } catch (Throwable th) {
            AQUtility.debug(th);
            this.status.code(AjaxStatus.NETWORK_ERROR).done();
        }
        if (this.status.getReauth()) {
            return;
        }
        if (this.uiCallback) {
            AQUtility.post(this);
        } else {
            afterWork();
        }
    }

    public void showProgress(final boolean z2) {
        WeakReference<Object> weakReference = this.progress;
        final Object obj = weakReference == null ? null : weakReference.get();
        if (obj != null) {
            if (AQUtility.isUIThread()) {
                Common.showProgress(obj, this.url, z2);
            } else {
                AQUtility.post(new Runnable() { // from class: com.androidquery.callback.AbstractAjaxCallback.1
                    @Override // java.lang.Runnable
                    public void run() {
                        Common.showProgress(obj, AbstractAjaxCallback.this.url, z2);
                    }
                });
            }
        }
    }

    public void skip(String str, T t2, AjaxStatus ajaxStatus) {
    }

    public K targetFile(File file) {
        this.targetFile = file;
        return self();
    }

    public K timeout(int i2) {
        this.timeout = i2;
        return self();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [T, java.io.File] */
    /* JADX WARN: Type inference failed for: r9v12, types: [T, java.io.Closeable, java.io.FileInputStream] */
    /* JADX WARN: Type inference failed for: r9v13, types: [T, org.xmlpull.v1.XmlPullParser] */
    public T transform(String str, byte[] bArr, AjaxStatus ajaxStatus) throws XmlPullParserException {
        Exception exc;
        String str2;
        if (this.type == null) {
            return null;
        }
        ?? r02 = (T) ajaxStatus.getFile();
        if (bArr != 0) {
            if (this.type.equals(Bitmap.class)) {
                return (T) BitmapFactory.decodeByteArray(bArr, 0, bArr.length);
            }
            if (this.type.equals(JSONObject.class)) {
                try {
                    str2 = new String(bArr, this.encoding);
                } catch (Exception e2) {
                    exc = e2;
                    str2 = null;
                }
                try {
                    return (T) ((JSONObject) new JSONTokener(str2).nextValue());
                } catch (Exception e3) {
                    exc = e3;
                    AQUtility.debug((Throwable) exc);
                    AQUtility.debug(str2);
                    return null;
                }
            }
            if (this.type.equals(JSONArray.class)) {
                try {
                    return (T) ((JSONArray) new JSONTokener(new String(bArr, this.encoding)).nextValue());
                } catch (Exception e4) {
                    AQUtility.debug((Throwable) e4);
                    return null;
                }
            }
            if (this.type.equals(String.class)) {
                if (ajaxStatus.getSource() == 1) {
                    AQUtility.debug("network");
                    return (T) correctEncoding(bArr, this.encoding, ajaxStatus);
                }
                AQUtility.debug(n.f36463z);
                try {
                    return (T) new String(bArr, this.encoding);
                } catch (Exception e5) {
                    AQUtility.debug((Throwable) e5);
                    return null;
                }
            }
            if (this.type.equals(byte[].class)) {
                return bArr;
            }
            Transformer transformer = this.transformer;
            if (transformer != null) {
                return (T) transformer.transform(str, this.type, this.encoding, bArr, ajaxStatus);
            }
            Transformer transformer2 = st;
            if (transformer2 != null) {
                return (T) transformer2.transform(str, this.type, this.encoding, bArr, ajaxStatus);
            }
        } else if (r02 != 0) {
            if (this.type.equals(File.class)) {
                return r02;
            }
            if (this.type.equals(XmlDom.class)) {
                try {
                    FileInputStream fileInputStream = new FileInputStream((File) r02);
                    T t2 = (T) new XmlDom(fileInputStream);
                    ajaxStatus.closeLater(fileInputStream);
                    return t2;
                } catch (Exception e6) {
                    AQUtility.report(e6);
                    return null;
                }
            }
            if (this.type.equals(XmlPullParser.class)) {
                ?? r9 = (T) Xml.newPullParser();
                try {
                    FileInputStream fileInputStream2 = new FileInputStream((File) r02);
                    r9.setInput(fileInputStream2, this.encoding);
                    ajaxStatus.closeLater(fileInputStream2);
                    return r9;
                } catch (Exception e7) {
                    AQUtility.report(e7);
                    return null;
                }
            }
            if (this.type.equals(InputStream.class)) {
                try {
                    ?? r92 = (T) new FileInputStream((File) r02);
                    ajaxStatus.closeLater(r92);
                    return r92;
                } catch (Exception e8) {
                    AQUtility.report(e8);
                }
            }
        }
        return null;
    }

    public K transformer(Transformer transformer) {
        this.transformer = transformer;
        return self();
    }

    public K type(Class<T> cls) {
        this.type = cls;
        return self();
    }

    public K uiCallback(boolean z2) {
        this.uiCallback = z2;
        return self();
    }

    public K url(String str) {
        this.url = str;
        return self();
    }

    public K weakHandler(Object obj, String str) {
        this.whandler = new WeakReference(obj);
        this.callback = str;
        this.handler = null;
        return self();
    }

    private void filePut() {
        if (this.result == null || !this.fileCache) {
            return;
        }
        byte[] data = this.status.getData();
        if (data != null) {
            try {
                if (this.status.getSource() == 1) {
                    File cacheFile = getCacheFile();
                    if (!this.status.getInvalid()) {
                        filePut(this.url, this.result, cacheFile, data);
                    } else if (cacheFile.exists()) {
                        cacheFile.delete();
                    }
                }
            } catch (Exception e2) {
                AQUtility.debug((Throwable) e2);
            }
        }
        this.status.data(null);
    }

    public void callback() throws IOException {
        showProgress(false);
        this.completed = true;
        if (!isActive()) {
            skip(this.url, this.result, this.status);
        } else if (this.callback != null) {
            AQUtility.invokeHandler(getHandler(), this.callback, true, true, new Class[]{String.class, this.type, AjaxStatus.class}, DEFAULT_SIG, this.url, this.result, this.status);
        } else {
            try {
                callback(this.url, this.result, this.status);
            } catch (Exception e2) {
                AQUtility.report(e2);
            }
        }
        filePut();
        if (!this.blocked) {
            this.status.close();
        }
        wake();
        AQUtility.debugNotify();
    }

    public K progress(Dialog dialog) {
        return progress((Object) dialog);
    }

    public String getEncoding() {
        return this.encoding;
    }

    public K progress(Object obj) {
        if (obj != null) {
            this.progress = new WeakReference<>(obj);
        }
        return self();
    }

    private HttpResponse execute(HttpUriRequest httpUriRequest, DefaultHttpClient defaultHttpClient, HttpContext httpContext) throws IOException {
        HttpHost httpHost;
        if (httpUriRequest.getURI().getAuthority().contains("_")) {
            URL url = httpUriRequest.getURI().toURL();
            if (url.getPort() == -1) {
                httpHost = new HttpHost(url.getHost(), 80, url.getProtocol());
            } else {
                httpHost = new HttpHost(url.getHost(), url.getPort(), url.getProtocol());
            }
            return defaultHttpClient.execute(httpHost, httpUriRequest, httpContext);
        }
        return defaultHttpClient.execute(httpUriRequest, httpContext);
    }

    private void network() throws Throwable {
        String str = this.url;
        Map<String, Object> map = this.params;
        if (map == null && str.length() > 2000) {
            Uri uri = Uri.parse(str);
            String strExtractUrl = extractUrl(uri);
            map = extractParams(uri);
            str = strExtractUrl;
        }
        String networkUrl = getNetworkUrl(str);
        int i2 = this.method;
        if (2 == i2) {
            httpDelete(networkUrl, this.headers, this.status);
            return;
        }
        if (3 == i2) {
            httpPut(networkUrl, this.headers, map, this.status);
            return;
        }
        if (1 == i2 && map == null) {
            map = new HashMap<>();
        }
        if (map == null) {
            httpGet(networkUrl, this.headers, this.status);
        } else if (isMultiPart(map)) {
            httpMulti(networkUrl, this.headers, map, this.status);
        } else {
            httpPost(networkUrl, this.headers, map, this.status);
        }
    }

    public K auth(AccountHandle accountHandle) {
        this.ah = accountHandle;
        return self();
    }

    public void async(Context context) {
        AjaxStatus ajaxStatus = this.status;
        if (ajaxStatus == null) {
            AjaxStatus ajaxStatus2 = new AjaxStatus();
            this.status = ajaxStatus2;
            ajaxStatus2.redirect(this.url).refresh(this.refresh);
        } else if (ajaxStatus.getDone()) {
            this.status.reset();
            this.result = null;
        }
        showProgress(true);
        AccountHandle accountHandle = this.ah;
        if (accountHandle != null && !accountHandle.authenticated()) {
            AQUtility.debug("auth needed", this.url);
            this.ah.auth(this);
        } else {
            work(context);
        }
    }
}
