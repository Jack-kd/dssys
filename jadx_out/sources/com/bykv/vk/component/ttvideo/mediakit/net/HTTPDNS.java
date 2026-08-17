package com.bykv.vk.component.ttvideo.mediakit.net;

import android.os.Handler;
import android.text.TextUtils;
import com.bykv.vk.component.ttvideo.mediakit.net.AVMDLNetClient;
import java.lang.reflect.Method;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class HTTPDNS extends BaseDNS {
    private static final String TAG = "HTTPDNS";
    private static String mGoogleDNSServer = "/resolve?name=";
    private static String mTTDNSServer = "/q?host=";
    private int mHttpDNSType;
    private Object mSource;
    private long mSourceId;

    public HTTPDNS(String str, AVMDLNetClient aVMDLNetClient, int i2, Handler handler) {
        super(str, aVMDLNetClient, handler);
        this.mHttpDNSType = i2;
    }

    private String _getURL() {
        StringBuilder sb = new StringBuilder();
        int i2 = this.mHttpDNSType;
        if (i2 == 2 || i2 == 1) {
            sb.append("https://" + AVMDLDNSParser.mGlobalOwnDNSParseHost + mTTDNSServer);
        } else if (i2 == 3) {
            sb.append("https://" + AVMDLDNSParser.mGlobalGoogleDNSParseHost + mGoogleDNSServer);
        }
        sb.append(this.mHostname);
        int i3 = this.mHttpDNSType;
        if (i3 == 2 || i3 == 1) {
            sb.append("&source=vod");
        }
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void _handleResponse(JSONObject jSONObject, Error error) {
        AVMDLDNSInfo aVMDLDNSInfo;
        String.format("****http dns id:%s type:%d host:%s", this.mId, Integer.valueOf(this.mHttpDNSType), this.mHostname);
        AVMDLDNSInfo aVMDLDNSInfo2 = new AVMDLDNSInfo(this.mHttpDNSType, this.mHostname, (String) null, 0L, this.mId);
        if (error != null) {
            String str = error.errStr;
            aVMDLDNSInfo2.mErrorStr = str;
            String.format("handle response receive err:%s", str);
        } else if (jSONObject == null || jSONObject.length() == 0) {
            int i2 = this.mHttpDNSType;
            new Error(i2, this.mHostname, this.mId, String.format("HTTP dns empty, type:%d", Integer.valueOf(i2)));
            String.format("json null err", new Object[0]);
        } else {
            try {
                aVMDLDNSInfo = parserResult(jSONObject);
            } catch (Throwable th) {
                String.format("handle response exception:%s", th.toString());
                aVMDLDNSInfo = null;
            }
            if (aVMDLDNSInfo != null) {
                String.format("****parse suc for host:%s iplist:%s", this.mHostname, aVMDLDNSInfo.mIpList);
                IPCache.getInstance().put(this.mHostname, aVMDLDNSInfo);
                notifySuccess(aVMDLDNSInfo);
                return;
            }
            String.format("info null err", new Object[0]);
        }
        String.format("****parse failed for host:%s", this.mHostname);
        notifyError(aVMDLDNSInfo2);
    }

    private AVMDLDNSInfo parserResult(JSONObject jSONObject) throws JSONException {
        long jCurrentTimeMillis;
        String strOptString;
        String string;
        int i2 = this.mHttpDNSType;
        String str = "";
        if (i2 == 2 || i2 == 1) {
            if (jSONObject == null || jSONObject.length() == 0) {
                return null;
            }
            iOptInt = jSONObject.has("ttl") ? jSONObject.optInt("ttl") : 60;
            String.format("receive expiredtime:%d force expiredtime:%d ", Integer.valueOf(iOptInt), Integer.valueOf(AVMDLDNSParser.mGlobalForceExpiredTime));
            int i3 = AVMDLDNSParser.mGlobalForceExpiredTime;
            if (i3 > 0) {
                iOptInt = i3;
            }
            jCurrentTimeMillis = System.currentTimeMillis() + (iOptInt * 1000);
            JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("ips");
            if (jSONArrayOptJSONArray == null || jSONArrayOptJSONArray.length() == 0) {
                return null;
            }
            int i4 = 0;
            strOptString = null;
            while (i4 < jSONArrayOptJSONArray.length()) {
                try {
                    string = jSONArrayOptJSONArray.getString(i4);
                } catch (Exception unused) {
                    string = null;
                }
                if (!TextUtils.isEmpty(string)) {
                    str = TextUtils.isEmpty(str) ? str + string : str + "," + string;
                }
                i4++;
                strOptString = string;
            }
        } else {
            jCurrentTimeMillis = 0;
            strOptString = null;
        }
        if (this.mHttpDNSType == 3) {
            try {
                JSONArray jSONArray = jSONObject.getJSONArray("Answer");
                for (int i5 = 0; i5 < jSONArray.length(); i5++) {
                    JSONObject jSONObject2 = jSONArray.getJSONObject(i5);
                    if (jSONObject2.has("type") && jSONObject2.getInt("type") == 1) {
                        if (jSONObject2.has("TTL")) {
                            iOptInt = jSONObject2.optInt("TTL");
                        }
                        if (jSONObject2.has("data")) {
                            strOptString = jSONObject2.optString("data");
                        }
                        String str2 = strOptString;
                        if (TextUtils.isEmpty(str2)) {
                            strOptString = str2;
                        } else {
                            strOptString = str2;
                            str = TextUtils.isEmpty(str) ? str + str2 : str + "," + str2;
                        }
                    }
                }
                String.format("receive expiredtime:%d force expiredtime:%d ", Integer.valueOf(iOptInt), Integer.valueOf(AVMDLDNSParser.mGlobalForceExpiredTime));
                int i6 = AVMDLDNSParser.mGlobalForceExpiredTime;
                if (i6 > 0) {
                    iOptInt = i6;
                }
                jCurrentTimeMillis = System.currentTimeMillis() + (iOptInt * 1000);
            } catch (Exception unused2) {
                return null;
            }
        }
        return new AVMDLDNSInfo(this.mHttpDNSType, this.mHostname, str, jCurrentTimeMillis, this.mId);
    }

    @Override // com.bykv.vk.component.ttvideo.mediakit.net.BaseDNS
    public void cancel() {
        if (this.mCancelled) {
            return;
        }
        this.mCancelled = true;
        this.mNetClient.cancel();
    }

    @Override // com.bykv.vk.component.ttvideo.mediakit.net.BaseDNS
    public void start() throws SecurityException {
        String str_getURL = _getURL();
        for (Method method : this.mNetClient.getClass().getDeclaredMethods()) {
            if (method.getName().equals("startTask") && method.getParameterTypes().length == 5) {
                this.mNetClient.startTask(str_getURL, null, null, 0, new AVMDLNetClient.CompletionListener() { // from class: com.bykv.vk.component.ttvideo.mediakit.net.HTTPDNS.1
                    @Override // com.bykv.vk.component.ttvideo.mediakit.net.AVMDLNetClient.CompletionListener
                    public void onCompletion(JSONObject jSONObject, Error error) {
                        HTTPDNS.this._handleResponse(jSONObject, error);
                    }
                });
                return;
            }
        }
        this.mNetClient.startTask(str_getURL, null, new AVMDLNetClient.CompletionListener() { // from class: com.bykv.vk.component.ttvideo.mediakit.net.HTTPDNS.2
            @Override // com.bykv.vk.component.ttvideo.mediakit.net.AVMDLNetClient.CompletionListener
            public void onCompletion(JSONObject jSONObject, Error error) {
                HTTPDNS.this._handleResponse(jSONObject, error);
            }
        });
    }
}
