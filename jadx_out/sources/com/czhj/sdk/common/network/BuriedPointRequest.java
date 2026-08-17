package com.czhj.sdk.common.network;

import android.util.Base64;
import com.czhj.sdk.common.models.Config;
import com.czhj.sdk.common.utils.AESUtil;
import com.czhj.sdk.logger.SigmobLog;
import com.czhj.volley.DefaultRetryPolicy;
import com.czhj.volley.NetworkResponse;
import com.czhj.volley.Response;
import com.czhj.volley.VolleyError;
import java.util.Map;

/* loaded from: classes3.dex */
public class BuriedPointRequest extends SigmobRequest<NetworkResponse> {

    /* renamed from: a, reason: collision with root package name */
    private final RequestListener f29370a;

    /* renamed from: b, reason: collision with root package name */
    private byte[] f29371b;

    /* renamed from: c, reason: collision with root package name */
    private boolean f29372c;

    public interface RequestListener {
        void onErrorResponse(VolleyError volleyError);

        void onSuccess();
    }

    private BuriedPointRequest(String str, String str2, RequestListener requestListener) {
        super(str, 1, null);
        this.f29371b = null;
        this.f29370a = requestListener;
        setRetryPolicy(new DefaultRetryPolicy(5000, 2, 0.0f));
        setShouldCache(false);
        try {
            try {
                if (Config.sharedInstance().isEnc()) {
                    this.f29371b = AESUtil.Encrypt(str2.getBytes(), "KGpfzbYsn4T9Jyuq");
                    this.f29372c = true;
                }
                if (this.f29372c) {
                    return;
                }
                this.f29371b = str2.getBytes();
            } catch (Exception e2) {
                e2.printStackTrace();
                if (this.f29372c) {
                    return;
                }
                this.f29371b = str2.getBytes();
            }
        } catch (Throwable th) {
            if (!this.f29372c) {
                this.f29371b = str2.getBytes();
            }
            throw th;
        }
    }

    public static void BuriedPointSend(String str, RequestListener requestListener) {
        if ((str == null || str.isEmpty()) && requestListener != null) {
            requestListener.onErrorResponse(new VolleyError("body is empty"));
        }
        if (Networking.getBuriedPointRequestQueue() == null) {
            if (requestListener != null) {
                requestListener.onErrorResponse(new VolleyError("BuriedPointRequestQueue is empty"));
                return;
            }
            return;
        }
        try {
            Networking.getBuriedPointRequestQueue().add(new BuriedPointRequest(Config.sharedInstance().getLogUrl(), str, requestListener));
        } catch (Throwable th) {
            SigmobLog.e(th.getMessage());
            if (requestListener != null) {
                requestListener.onErrorResponse(new VolleyError("network is disconnect "));
            }
        }
    }

    @Override // com.czhj.volley.Request
    public void deliverError(VolleyError volleyError) {
        RequestListener requestListener;
        synchronized (this.mLock) {
            requestListener = this.f29370a;
        }
        SigmobLog.i("send dclog: " + getUrl() + " onErrorResponse");
        if (requestListener != null) {
            requestListener.onErrorResponse(volleyError);
        }
    }

    @Override // com.czhj.volley.Request
    public void deliverResponse(NetworkResponse networkResponse) {
        RequestListener requestListener;
        synchronized (this.mLock) {
            requestListener = this.f29370a;
        }
        SigmobLog.d("send dclog: " + getUrl() + " success");
        if (requestListener != null) {
            requestListener.onSuccess();
        }
    }

    @Override // com.czhj.sdk.common.network.SigmobRequest, com.czhj.volley.Request
    public byte[] getBody() {
        return this.f29371b;
    }

    @Override // com.czhj.sdk.common.network.SigmobRequest, com.czhj.volley.Request
    public Map<String, String> getHeaders() {
        Map<String, String> headers = super.getHeaders();
        if (this.f29372c) {
            headers.put("agn", Base64.encodeToString(AESUtil.generateNonce(), 2));
        }
        headers.put("gz", "on");
        return headers;
    }

    @Override // com.czhj.volley.Request
    public int getMaxLength() {
        return 100;
    }

    @Override // com.czhj.sdk.common.network.SigmobRequest, com.czhj.volley.Request
    public Response<NetworkResponse> parseNetworkResponse(NetworkResponse networkResponse) {
        return Response.success(networkResponse, null);
    }
}
