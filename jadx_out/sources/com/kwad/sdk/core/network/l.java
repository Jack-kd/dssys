package com.kwad.sdk.core.network;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.WorkerThread;
import com.kwad.sdk.core.network.f;
import com.kwad.sdk.core.network.idc.DomainException;
import com.kwad.sdk.core.response.model.BaseResultData;
import com.kwad.sdk.export.proxy.AdHttpProxy;
import com.kwad.sdk.service.ServiceProvider;
import com.kwad.sdk.utils.aq;
import com.kwad.sdk.utils.by;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes4.dex */
public abstract class l<R extends f, T extends BaseResultData> extends a<R> {
    public static String HTTP_CODE_ERROR_MSG = "网络错误";
    private static final String TAG = "Networking";

    @Nullable
    private g<R, T> mListener = null;
    private final com.kwad.sdk.core.network.b.b mMonitorRecorder = com.kwad.sdk.core.network.b.c.MD();

    private void checkAndSetHasData(BaseResultData baseResultData) {
        if (baseResultData.hasData()) {
            this.mMonitorRecorder.ey(1);
        }
    }

    private void checkIpDirect(c cVar) {
        com.kwad.sdk.service.a.f fVar;
        if (cVar == null || cVar.Mf() || (fVar = (com.kwad.sdk.service.a.f) ServiceProvider.get(com.kwad.sdk.service.a.f.class)) == null || !aq.isNetworkConnected(fVar.getContext())) {
            return;
        }
        com.kwad.sdk.ip.direct.a.Rs();
    }

    private String getHostTypeByUrl(@NonNull String str) {
        return str.contains("/rest/zt/emoticon/package/list") ? "zt" : "api";
    }

    private void notifyOnErrorListener(@NonNull R r2, c cVar, String str) {
        String url = r2.getUrl();
        DomainException domainException = new DomainException(cVar.aSW, cVar.aSX);
        com.kwad.sdk.core.network.idc.a.Mo().a(url, getHostTypeByUrl(url), domainException);
        notifyOnErrorListener((l<R, T>) r2, cVar.code, str);
    }

    private void notifyOnStartRequest(@NonNull R r2) {
        g<R, T> gVar = this.mListener;
        if (gVar == null) {
            return;
        }
        gVar.onStartRequest(r2);
    }

    private void notifyOnSuccess(@NonNull R r2, T t2) {
        if (com.kwad.sdk.core.network.idc.a.Mo().Mq()) {
            String hostTypeByUrl = getHostTypeByUrl(r2.getUrl());
            if ("api".equals(hostTypeByUrl)) {
                com.kwad.sdk.core.network.idc.a.Mo().eN(hostTypeByUrl);
            }
        }
        g<R, T> gVar = this.mListener;
        if (gVar == null) {
            return;
        }
        gVar.onSuccess(r2, t2);
        this.mMonitorRecorder.MC();
    }

    private void onRequest(@NonNull g<R, T> gVar) {
        this.mMonitorRecorder.Mw();
        this.mListener = gVar;
    }

    private void parseCommonData(String str, String str2) {
        try {
            q.Mj().X(str, new JSONObject(str2).optString("requestSessionData"));
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
    }

    private void reportSdkCaughtException(Throwable th) {
        if (enableCrashReport()) {
            ServiceProvider.reportSdkCaughtException(th);
        } else {
            com.kwad.sdk.core.d.c.printStackTrace(th);
        }
    }

    private void setMonitorRequestId(@NonNull f fVar) {
        Map<String, String> header = fVar.getHeader();
        if (header != null) {
            String str = header.get(d.TRACK_ID_KEY);
            if (TextUtils.isEmpty(str)) {
                return;
            }
            this.mMonitorRecorder.eX(str);
        }
    }

    public void afterParseData(T t2) {
    }

    @Override // com.kwad.sdk.core.network.a
    public void cancel() {
        super.cancel();
        this.mListener = null;
    }

    public boolean enableCrashReport() {
        return true;
    }

    public boolean enableMonitorReport() {
        return true;
    }

    @Override // com.kwad.sdk.core.network.a
    @WorkerThread
    public void fetchImpl() {
        R r2 = null;
        c cVarDoPost = null;
        try {
            try {
                this.mMonitorRecorder.MA();
                R rCreateRequest = createRequest();
                try {
                    notifyOnStartRequest(rCreateRequest);
                    this.mMonitorRecorder.eT(rCreateRequest.getUrl()).eU(rCreateRequest.getUrl());
                    setMonitorRequestId(rCreateRequest);
                    if (aq.isNetworkConnected(((com.kwad.sdk.service.a.f) ServiceProvider.get(com.kwad.sdk.service.a.f.class)).getContext())) {
                        try {
                            String url = rCreateRequest.getUrl();
                            AdHttpProxy adHttpProxyEG = com.kwad.sdk.h.EG();
                            if (adHttpProxyEG instanceof com.kwad.sdk.core.network.c.b) {
                                this.mMonitorRecorder.eW("ok_http").Mz();
                            } else {
                                this.mMonitorRecorder.eW("http").Mz();
                            }
                            cVarDoPost = isPostByJson() ? adHttpProxyEG.doPost(url, rCreateRequest.getHeader(), rCreateRequest.getBody()) : adHttpProxyEG.doPost(url, rCreateRequest.getHeader(), rCreateRequest.getBodyMap());
                            com.kwad.sdk.core.d.c.i(TAG, "url: " + url + ", response: " + cVarDoPost);
                        } catch (Exception e2) {
                            notifyOnErrorListener((l<R, T>) rCreateRequest, e.aTj.errorCode, by.y(e2));
                            com.kwad.sdk.core.d.c.printStackTraceOnly(e2);
                            this.mMonitorRecorder.eV("requestError:" + e2.getMessage());
                        }
                        this.mMonitorRecorder.Mx().My().eA(com.kwad.sdk.ip.direct.a.getType());
                        try {
                            onResponse(rCreateRequest, cVarDoPost);
                        } catch (Exception e3) {
                            notifyOnErrorListener((l<R, T>) rCreateRequest, e.aTj.errorCode, by.y(e3));
                            this.mMonitorRecorder.eV("onResponseError:" + e3.getMessage());
                            com.kwad.sdk.core.d.c.w(TAG, "jky onResponseError: " + rCreateRequest.getUrl());
                            com.kwad.sdk.core.d.c.printStackTraceOnly(e3);
                        }
                    } else {
                        e eVar = e.aTc;
                        notifyOnErrorListener((l<R, T>) rCreateRequest, eVar.errorCode, eVar.msg);
                        this.mMonitorRecorder.ex(e.aTc.errorCode).eV(e.aTc.msg);
                    }
                } catch (Throwable th) {
                    th = th;
                    r2 = rCreateRequest;
                    try {
                        try {
                            this.mMonitorRecorder.eV("requestError:" + th.getMessage());
                        } catch (Exception unused) {
                        }
                        notifyOnErrorListener((l<R, T>) r2, e.aTj.errorCode, by.y(th));
                        com.kwad.sdk.core.d.c.printStackTrace(th);
                        if (!enableMonitorReport()) {
                        }
                    } finally {
                        try {
                            if (enableMonitorReport()) {
                                this.mMonitorRecorder.report();
                            }
                        } catch (Exception unused2) {
                        }
                    }
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Exception unused3) {
        }
    }

    public boolean isPostByJson() {
        return true;
    }

    @Override // com.kwad.sdk.core.network.a
    public void onResponse(R r2, c cVar) {
        if (cVar == null) {
            e eVar = e.aTc;
            notifyOnErrorListener((l<R, T>) r2, eVar.errorCode, eVar.msg);
            this.mMonitorRecorder.eV("responseBase is null");
            com.kwad.sdk.core.d.c.e(TAG, "request responseBase is null");
            return;
        }
        this.mMonitorRecorder.ex(cVar.code);
        checkIpDirect(cVar);
        if (TextUtils.isEmpty(cVar.aSY) || !cVar.Mf()) {
            notifyOnErrorListener((l<R, T>) r2, cVar, HTTP_CODE_ERROR_MSG);
            this.mMonitorRecorder.eV("httpCodeError:" + cVar.code + ":" + cVar.aSY);
            StringBuilder sb = new StringBuilder("request responseBase httpCodeError:");
            sb.append(cVar.code);
            com.kwad.sdk.core.d.c.w(TAG, sb.toString());
            return;
        }
        try {
            parseCommonData(r2.getUrl(), cVar.aSY);
            BaseResultData data = parseData(cVar.aSY);
            afterParseData(data);
            if (cVar.aSY != null) {
                this.mMonitorRecorder.aE(r7.length()).MB().ez(data.result);
            }
            if (!data.isResultOk()) {
                this.mMonitorRecorder.eV("serverCodeError:" + data.result + ":" + data.errorMsg);
                if (data.notifyFailOnResultError()) {
                    notifyOnErrorListener((l<R, T>) r2, data.result, data.errorMsg);
                    return;
                }
            }
            if (data.isDataEmpty()) {
                notifyOnErrorListener((l<R, T>) r2, e.aTe.errorCode, !TextUtils.isEmpty(data.testErrorMsg) ? data.testErrorMsg : e.aTe.msg);
            } else {
                checkAndSetHasData(data);
                notifyOnSuccess(r2, data);
            }
        } catch (Exception e2) {
            e eVar2 = e.aTd;
            notifyOnErrorListener((l<R, T>) r2, eVar2.errorCode, eVar2.msg);
            com.kwad.sdk.core.d.c.printStackTraceOnly(e2);
            this.mMonitorRecorder.eV("parseDataError:" + e2.getMessage());
        }
    }

    @NonNull
    public abstract T parseData(String str);

    public void request(@NonNull g<R, T> gVar) {
        try {
            onRequest(gVar);
            fetch();
        } catch (Throwable th) {
            notifyOnErrorListener((l<R, T>) null, e.aTj.errorCode, by.y(th));
            reportSdkCaughtException(th);
        }
    }

    private void notifyOnErrorListener(@NonNull R r2, int i2, String str) {
        try {
            h.Mg().b(r2, i2);
        } catch (Throwable th) {
            reportSdkCaughtException(th);
        }
        g<R, T> gVar = this.mListener;
        if (gVar == null) {
            return;
        }
        gVar.onError(r2, i2, str);
        this.mMonitorRecorder.MC();
    }
}
