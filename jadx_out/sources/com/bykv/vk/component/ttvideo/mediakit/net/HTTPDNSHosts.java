package com.bykv.vk.component.ttvideo.mediakit.net;

import android.os.Handler;
import android.text.TextUtils;
import com.anythink.core.common.m.f;
import com.bykv.vk.component.ttvideo.mediakit.net.AVMDLNetClient;
import java.lang.reflect.Method;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class HTTPDNSHosts {
    private static final String TAG = "BatchParseHTTPDNSHosts";
    private static String mTTDNSServer = "/q?host=";
    protected boolean mCancelled = false;
    protected Handler mHandler;
    public String[] mHostnames;
    private int mHttpDNSType;
    public String mId;
    protected AVMDLNetClient mNetClient;

    public HTTPDNSHosts(String[] strArr, AVMDLNetClient aVMDLNetClient, int i2, Handler handler) throws Exception {
        this.mHttpDNSType = 2;
        this.mNetClient = null;
        if (i2 != 2) {
            throw new Exception("type is not own");
        }
        if (strArr == null || strArr.length == 0) {
            throw new Exception("host array is valid");
        }
        this.mHttpDNSType = i2;
        this.mHostnames = strArr;
        this.mNetClient = aVMDLNetClient;
        if (aVMDLNetClient == null) {
            this.mNetClient = new AVMDLHTTPNetwork();
        }
        this.mHttpDNSType = i2;
        this.mHandler = handler;
    }

    private String _getURL() {
        StringBuilder sb = new StringBuilder();
        sb.append("https://" + AVMDLDNSParser.mGlobalOwnDNSParseHost + mTTDNSServer);
        int i2 = 0;
        int i3 = 0;
        while (true) {
            String[] strArr = this.mHostnames;
            if (i2 >= strArr.length) {
                return sb.toString();
            }
            if (!TextUtils.isEmpty(strArr[i2])) {
                if (i3 == 0) {
                    sb.append(this.mHostnames[i2]);
                } else {
                    sb.append("," + this.mHostnames[i2]);
                }
                i3++;
            }
            i2++;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void _handleResponse(JSONObject jSONObject, Error error) {
        String.format("****http dns id:%s type:%d", this.mId, Integer.valueOf(this.mHttpDNSType));
        if (error != null) {
            String.format("handle response receive err:%s", error.errStr);
            return;
        }
        if (jSONObject == null || jSONObject.length() == 0) {
            String.format("json null err", new Object[0]);
            return;
        }
        try {
            parseResult(jSONObject);
        } catch (Throwable th) {
            String.format("handle response exception:%s", th.toString());
        }
        String.format("****parse end", new Object[0]);
    }

    private void parseResult(JSONObject jSONObject) throws JSONException {
        if (jSONObject == null) {
            return;
        }
        try {
            JSONArray jSONArray = jSONObject.getJSONArray("dns");
            for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                AVMDLDNSInfo aVMDLDNSInfo = parserResultForSingleHost(jSONArray.getJSONObject(i2));
                if (aVMDLDNSInfo != null) {
                    IPCache.getInstance().put(aVMDLDNSInfo.mHost, aVMDLDNSInfo);
                }
            }
        } catch (Exception unused) {
        }
    }

    private AVMDLDNSInfo parserResultForSingleHost(JSONObject jSONObject) throws JSONException {
        String str;
        long j2;
        String string;
        int i2 = this.mHttpDNSType;
        String str2 = "";
        if (i2 == 2 || i2 == 1) {
            if (jSONObject != null && jSONObject.length() != 0) {
                int iOptInt = jSONObject.has("ttl") ? jSONObject.optInt("ttl") : 60;
                String strOptString = jSONObject.has(f.bU) ? jSONObject.optString(f.bU) : null;
                long jCurrentTimeMillis = System.currentTimeMillis() + (iOptInt * 1000);
                JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("ips");
                if (jSONArrayOptJSONArray != null && jSONArrayOptJSONArray.length() != 0) {
                    for (int i3 = 0; i3 < jSONArrayOptJSONArray.length(); i3++) {
                        try {
                            string = jSONArrayOptJSONArray.getString(i3);
                        } catch (Exception unused) {
                            string = null;
                        }
                        if (!TextUtils.isEmpty(string)) {
                            str2 = TextUtils.isEmpty(str2) ? str2 + string : str2 + "," + string;
                        }
                    }
                    str = strOptString;
                    j2 = jCurrentTimeMillis;
                }
            }
            return null;
        }
        j2 = 0;
        str = null;
        String str3 = str2;
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str3)) {
            String.format("parse result host:%s ips:%s expiredT:%d", str, str3, Long.valueOf(j2));
            return new AVMDLDNSInfo(this.mHttpDNSType, str, str3, j2, this.mId);
        }
        return null;
    }

    public void cancel() {
        if (this.mCancelled) {
            return;
        }
        this.mCancelled = true;
        this.mNetClient.cancel();
    }

    public void start() throws SecurityException {
        String str_getURL = _getURL();
        for (Method method : this.mNetClient.getClass().getDeclaredMethods()) {
            if (method.getName().equals("startTask") && method.getParameterTypes().length == 5) {
                this.mNetClient.startTask(str_getURL, null, null, 0, new AVMDLNetClient.CompletionListener() { // from class: com.bykv.vk.component.ttvideo.mediakit.net.HTTPDNSHosts.1
                    @Override // com.bykv.vk.component.ttvideo.mediakit.net.AVMDLNetClient.CompletionListener
                    public void onCompletion(JSONObject jSONObject, Error error) {
                        HTTPDNSHosts.this._handleResponse(jSONObject, error);
                    }
                });
                return;
            }
        }
        this.mNetClient.startTask(str_getURL, null, new AVMDLNetClient.CompletionListener() { // from class: com.bykv.vk.component.ttvideo.mediakit.net.HTTPDNSHosts.2
            @Override // com.bykv.vk.component.ttvideo.mediakit.net.AVMDLNetClient.CompletionListener
            public void onCompletion(JSONObject jSONObject, Error error) {
                HTTPDNSHosts.this._handleResponse(jSONObject, error);
            }
        });
    }
}
