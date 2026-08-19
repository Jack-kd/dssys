package com.bykv.vk.component.ttvideo.mediakit.net;

import com.byazt.uhg.e;
import com.byazt.uhg.jl;
import com.byazt.uhg.jx;
import com.byazt.uhg.k;
import com.byazt.uhg.l;
import com.byazt.uhg.u;
import com.byazt.uhg.v;
import com.byazt.uhg.xs;
import com.bykv.vk.component.ttvideo.mediakit.net.AVMDLNetClient;
import java.io.IOException;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class AVMDLHTTPNetwork extends AVMDLNetClient {
    private static final int HTTP_TIME_OUT = 10;
    public static final e JSON = e.hp("application/json");
    private static jl mClient;
    private l mCall;

    @Override // com.bykv.vk.component.ttvideo.mediakit.net.AVMDLNetClient
    public void cancel() {
        l lVar = this.mCall;
        if (lVar == null || lVar.j()) {
            return;
        }
        this.mCall.jx();
    }

    @Override // com.bykv.vk.component.ttvideo.mediakit.net.AVMDLNetClient
    public void startTask(String str, Map<String, String> map, final AVMDLNetClient.CompletionListener completionListener) {
        synchronized (AVMDLHTTPNetwork.class) {
            try {
                if (mClient == null) {
                    jl.hp hpVarL = new jl().l();
                    TimeUnit timeUnit = TimeUnit.SECONDS;
                    mClient = hpVarL.hp(10L, timeUnit).jx(10L, timeUnit).l(10L, timeUnit).hp();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        k.hp hpVarHp = new k.hp().hp(str);
        if (map != null) {
            for (String str2 : map.keySet()) {
                hpVarHp.hp(str2, map.get(str2));
            }
        }
        l lVarHp = mClient.hp(hpVarHp.l());
        this.mCall = lVarHp;
        lVarHp.hp(new jx() { // from class: com.bykv.vk.component.ttvideo.mediakit.net.AVMDLHTTPNetwork.1
            @Override // com.byazt.uhg.jx
            public void onFailure(l lVar, IOException iOException) {
                completionListener.onCompletion(null, new Error(0, null, null, iOException.toString()));
            }

            @Override // com.byazt.uhg.jx
            public void onResponse(l lVar, u uVar) throws Throwable {
                xs xsVarA;
                Throwable th2;
                JSONObject jSONObject;
                try {
                    xsVarA = uVar.a();
                    try {
                        try {
                            jSONObject = new JSONObject(xsVarA.l());
                            e = null;
                        } catch (Throwable th3) {
                            th2 = th3;
                            if (xsVarA != null) {
                                try {
                                    xsVarA.close();
                                } catch (Exception unused) {
                                }
                            }
                            throw th2;
                        }
                    } catch (Exception e2) {
                        e = e2;
                        jSONObject = null;
                    }
                    if (e == null && !uVar.j()) {
                        e = new Exception("http fail");
                        uVar.jx();
                    }
                    if (xsVarA != null) {
                        try {
                            xsVarA.close();
                        } catch (Exception unused2) {
                        }
                    }
                    if (e == null) {
                        completionListener.onCompletion(jSONObject, null);
                    } else {
                        completionListener.onCompletion(jSONObject, new Error(0, null, null, e.toString()));
                    }
                } catch (Throwable th4) {
                    xsVarA = null;
                    th2 = th4;
                }
            }
        });
    }

    @Override // com.bykv.vk.component.ttvideo.mediakit.net.AVMDLNetClient
    public void startTask(String str, Map<String, String> map, JSONObject jSONObject, int i2, final AVMDLNetClient.CompletionListener completionListener) {
        synchronized (AVMDLHTTPNetwork.class) {
            try {
                if (mClient == null) {
                    jl.hp hpVarL = new jl().l();
                    TimeUnit timeUnit = TimeUnit.SECONDS;
                    mClient = hpVarL.hp(10L, timeUnit).jx(10L, timeUnit).l(10L, timeUnit).hp();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        k.hp hpVarHp = new k.hp().hp(str);
        if (map != null && map.size() > 0) {
            for (String str2 : map.keySet()) {
                hpVarHp.l(str2, map.get(str2));
            }
        }
        if (i2 == 1) {
            hpVarHp.hp(v.hp(JSON, String.valueOf(jSONObject)));
        }
        l lVarHp = mClient.hp(hpVarHp.l());
        this.mCall = lVarHp;
        lVarHp.hp(new jx() { // from class: com.bykv.vk.component.ttvideo.mediakit.net.AVMDLHTTPNetwork.2
            @Override // com.byazt.uhg.jx
            public void onFailure(l lVar, IOException iOException) {
                completionListener.onCompletion(null, new Error(0, null, null, iOException.toString()));
            }

            @Override // com.byazt.uhg.jx
            public void onResponse(l lVar, u uVar) throws Throwable {
                xs xsVarA;
                Throwable th2;
                String string;
                JSONObject jSONObject2;
                try {
                    xsVarA = uVar.a();
                    try {
                        try {
                            jSONObject2 = new JSONObject(xsVarA.l());
                            string = null;
                        } catch (Throwable th3) {
                            th2 = th3;
                            if (xsVarA != null) {
                                try {
                                    xsVarA.close();
                                } catch (Exception unused) {
                                }
                            }
                            throw th2;
                        }
                    } catch (Exception e2) {
                        string = e2.toString();
                        jSONObject2 = null;
                    }
                    if (!uVar.j()) {
                        string = uVar.w();
                        uVar.jx();
                    }
                    if (xsVarA != null) {
                        try {
                            xsVarA.close();
                        } catch (Exception unused2) {
                        }
                    }
                    if (string == null) {
                        completionListener.onCompletion(jSONObject2, null);
                    } else {
                        completionListener.onCompletion(jSONObject2, new Error(0, null, null, string.toString()));
                    }
                } catch (Throwable th4) {
                    xsVarA = null;
                    th2 = th4;
                }
            }
        });
    }
}
