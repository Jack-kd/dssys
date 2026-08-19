package com.anythink.core.common.r;

import android.text.TextUtils;
import androidx.work.WorkRequest;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class g {

    /* renamed from: a, reason: collision with root package name */
    public static final String f7297a = "g";

    /* renamed from: b, reason: collision with root package name */
    private boolean f7298b;

    /* renamed from: c, reason: collision with root package name */
    private long f7299c;

    /* renamed from: d, reason: collision with root package name */
    private int f7300d;

    /* renamed from: e, reason: collision with root package name */
    private long f7301e;

    /* renamed from: f, reason: collision with root package name */
    private int f7302f;

    /* renamed from: g, reason: collision with root package name */
    private long f7303g;

    /* renamed from: h, reason: collision with root package name */
    private int f7304h;

    /* renamed from: i, reason: collision with root package name */
    private long f7305i;

    /* renamed from: j, reason: collision with root package name */
    private Integer[] f7306j;

    /* renamed from: k, reason: collision with root package name */
    private final List<h> f7307k = Collections.synchronizedList(new ArrayList());

    /* renamed from: l, reason: collision with root package name */
    private final Map<String, h> f7308l = new ConcurrentHashMap();

    private static int a(int i2) {
        switch (i2) {
            case 1:
                return 10;
            case 2:
                return 12;
            case 3:
                return 6;
            case 4:
                return 11;
            case 5:
                return 15;
            case 6:
                return 16;
            default:
                return 17;
        }
    }

    private static Integer[] b(JSONObject jSONObject) {
        try {
            JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("pre_load_mode_n");
            if (jSONArrayOptJSONArray == null || jSONArrayOptJSONArray.length() <= 0) {
                return new Integer[]{Integer.valueOf(a(jSONObject.optInt("pre_load_mode", 1))), 6, 11};
            }
            Integer[] numArr = new Integer[jSONArrayOptJSONArray.length()];
            for (int i2 = 0; i2 < jSONArrayOptJSONArray.length(); i2++) {
                try {
                    numArr[i2] = Integer.valueOf(a(jSONArrayOptJSONArray.optInt(i2)));
                } catch (Throwable unused) {
                    return numArr;
                }
            }
            return numArr;
        } catch (Throwable unused2) {
            return null;
        }
    }

    private static Integer[] c(JSONObject jSONObject) {
        Integer[] numArr = null;
        try {
            JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("pre_load_mode_n");
            if (jSONArrayOptJSONArray != null && jSONArrayOptJSONArray.length() > 0) {
                numArr = new Integer[jSONArrayOptJSONArray.length()];
                for (int i2 = 0; i2 < jSONArrayOptJSONArray.length(); i2++) {
                    numArr[i2] = Integer.valueOf(a(jSONArrayOptJSONArray.optInt(i2)));
                }
            }
        } catch (Throwable unused) {
        }
        return numArr;
    }

    private int m() {
        return this.f7302f;
    }

    public final Map<String, h> d() {
        return this.f7308l;
    }

    public final List<h> e() {
        return this.f7307k;
    }

    public final long f() {
        return this.f7303g;
    }

    public final int g() {
        if (this.f7304h <= 0) {
            this.f7304h = 6;
        }
        return this.f7304h;
    }

    public final long h() {
        return this.f7305i;
    }

    public final boolean i() {
        Integer[] numArr;
        if (this.f7307k != null) {
            for (int i2 = 0; i2 < this.f7307k.size(); i2++) {
                h hVar = this.f7307k.get(i2);
                if (hVar != null && (numArr = hVar.f7319k) != null) {
                    for (Integer num : numArr) {
                        if (num.intValue() == 10) {
                            return true;
                        }
                    }
                }
            }
        }
        Integer[] numArr2 = this.f7306j;
        if (numArr2 != null) {
            return Arrays.asList(numArr2).contains(10);
        }
        return false;
    }

    public final boolean j() {
        Integer[] numArr = this.f7306j;
        if (numArr != null) {
            return Arrays.asList(numArr).contains(10);
        }
        return false;
    }

    public final boolean k() {
        return this.f7298b;
    }

    public final void l() {
        this.f7298b = true;
    }

    public String toString() {
        return "SharedPlaceConfig{isPreLocalConfig=" + this.f7298b + ", delayPreloadTime=" + this.f7299c + ", parallelReqNum=" + this.f7300d + ", preLoadTimeout=" + this.f7301e + ", preloadMode=" + this.f7302f + ", loadDelayTimeInWF=" + this.f7303g + ", retryLoadCountInFailed=" + this.f7304h + ", retryLoadDelayTimeInfFailed=" + this.f7305i + ", loadModes=" + Arrays.toString(this.f7306j) + ", sharedPlaceInfoList=" + this.f7307k + ", placementIdToSharedPlaceInfoMap=" + this.f7308l + '}';
    }

    public static g a(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        try {
            g gVar = new g();
            gVar.f7299c = jSONObject.optLong("pre_load_time", WorkRequest.DEFAULT_BACKOFF_DELAY_MILLIS);
            gVar.f7300d = jSONObject.optInt("pre_load_num", 1);
            gVar.f7301e = jSONObject.optLong("pre_load_timeout", WorkRequest.DEFAULT_BACKOFF_DELAY_MILLIS);
            gVar.f7302f = jSONObject.optInt("pre_load_mode", 1);
            gVar.f7303g = jSONObject.optLong("shared_delay_time_in_wf", 2000L);
            gVar.f7305i = jSONObject.optLong("shared_retry_time_in_loadfailed", 15000L);
            gVar.f7304h = jSONObject.optInt("shared_retry_count_in_loadfailed", 6);
            gVar.f7306j = b(jSONObject);
            JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("formats");
            if (jSONArrayOptJSONArray != null) {
                int length = jSONArrayOptJSONArray.length();
                for (int i2 = 0; i2 < length; i2++) {
                    try {
                        JSONObject jSONObjectOptJSONObject = jSONArrayOptJSONArray.optJSONObject(i2);
                        if (jSONObjectOptJSONObject != null) {
                            h hVar = new h();
                            hVar.f7309a = jSONObjectOptJSONObject.optInt("format");
                            hVar.f7310b = jSONObjectOptJSONObject.optString(com.anythink.core.common.m.f.bn, "");
                            hVar.f7311c = jSONObjectOptJSONObject.optInt("req_pacing");
                            hVar.f7312d = jSONObjectOptJSONObject.optInt("ad_cache", 1);
                            hVar.f7313e = jSONObjectOptJSONObject.optDouble("ad_ecpm", -1.0d);
                            hVar.f7318j = gVar;
                            if (!jSONObjectOptJSONObject.isNull("pre_load_mode_n")) {
                                hVar.f7319k = c(jSONObjectOptJSONObject);
                            }
                            gVar.f7307k.add(hVar);
                            gVar.f7308l.put(hVar.f7310b, hVar);
                        }
                    } catch (Throwable unused) {
                    }
                }
            }
            return gVar;
        } catch (Throwable unused2) {
            return null;
        }
    }

    public final long c() {
        return this.f7301e;
    }

    public final int b() {
        return this.f7300d;
    }

    public final long a() {
        return this.f7299c;
    }

    public final boolean a(int i2, String str) {
        h hVar;
        Integer[] numArr;
        if (this.f7308l == null || TextUtils.isEmpty(str) || (hVar = this.f7308l.get(str)) == null || (numArr = hVar.f7319k) == null) {
            Integer[] numArr2 = this.f7306j;
            if (numArr2 != null) {
                return Arrays.asList(numArr2).contains(Integer.valueOf(i2));
            }
        } else {
            for (Integer num : numArr) {
                if (num.intValue() == i2) {
                    return true;
                }
            }
        }
        return false;
    }
}
