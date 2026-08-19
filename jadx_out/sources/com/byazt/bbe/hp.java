package com.byazt.bbe;

import android.text.TextUtils;
import androidx.exifinterface.media.ExifInterface;
import com.baidu.mobads.sdk.api.SplashAd;
import com.byazt.gkj.j;
import com.byazt.uhd.l;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_CMAF_SKIP_INIT_SECTION, 28})
/* loaded from: classes2.dex */
public class hp {
    public static final ArrayList<C0193hp> hp = new ArrayList<>();

    /* renamed from: j, reason: collision with root package name */
    public static final ArrayList<String> f18472j;
    public static final ArrayList<String> jx;

    /* renamed from: l, reason: collision with root package name */
    public static final String[] f18473l;

    @com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_CMAF_SKIP_INIT_SECTION, 170})
    /* renamed from: com.byazt.bbe.hp$hp, reason: collision with other inner class name */
    public static class C0193hp {
        public String hp;
        public String jx;

        /* renamed from: l, reason: collision with root package name */
        public int f18474l;

        public C0193hp(String str, int i2, String str2) {
            this.hp = str;
            this.f18474l = i2;
            this.jx = str2;
        }
    }

    static {
        String[] strArr = {"TTTransparentActivity", "openadsdk", "com.byazt.nn", "com.qq", "com.kwad", "baidu", "mbridge", "sigmob", MediationConstant.ADN_UNITY, MediationConstant.ADN_KLEVIN};
        f18473l = strArr;
        jx = new ArrayList<>(Arrays.asList(strArr));
        f18472j = new ArrayList<>();
    }

    public static boolean hp(String str, int i2, int i3) {
        ArrayList<C0193hp> arrayList = hp;
        if (arrayList.size() > 0) {
            int size = arrayList.size();
            int i4 = 0;
            while (i4 < size) {
                C0193hp c0193hp = arrayList.get(i4);
                i4++;
                C0193hp c0193hp2 = c0193hp;
                if (c0193hp2 != null && TextUtils.equals(c0193hp2.hp, str) && i3 == c0193hp2.f18474l) {
                    String str2 = c0193hp2.jx;
                    j jVarHp = l.hp().hp(str);
                    String networkSdkVersion = jVarHp != null ? jVarHp.getNetworkSdkVersion() : null;
                    if (!TextUtils.isEmpty(str2) && !TextUtils.isEmpty(networkSdkVersion)) {
                        if (str2.startsWith("<=")) {
                            return hp(networkSdkVersion, str2);
                        }
                        if (str2.startsWith(">=")) {
                            return l(networkSdkVersion, str2);
                        }
                    }
                }
            }
        } else if (TextUtils.equals("baidu", str)) {
            return true;
        }
        return false;
    }

    private static int jx(String str, String str2) {
        String strSubstring = str2.substring(2);
        if (str.startsWith("v") || str.startsWith(ExifInterface.GPS_MEASUREMENT_INTERRUPTED)) {
            str = str.substring(1);
        }
        return str.compareTo(strSubstring);
    }

    private static boolean l(String str, String str2) {
        return jx(str, str2) >= 0;
    }

    public static boolean l(String str) {
        com.byazt.aw.l.l(MediationConstant.TAG, "--==--- activityStr: ".concat(String.valueOf(str)));
        ArrayList<String> arrayList = jx;
        int size = arrayList.size();
        int i2 = 0;
        while (i2 < size) {
            String str2 = arrayList.get(i2);
            i2++;
            if (str.contains(str2)) {
                return jx(str);
            }
        }
        return false;
    }

    private static boolean jx(String str) {
        ArrayList<String> arrayList = f18472j;
        if (arrayList.size() == 0) {
            return true;
        }
        int size = arrayList.size();
        int i2 = 0;
        while (i2 < size) {
            String str2 = arrayList.get(i2);
            i2++;
            if (str.contains(str2)) {
                return false;
            }
        }
        return true;
    }

    private static boolean hp(String str, String str2) {
        return jx(str, str2) <= 0;
    }

    public static void hp(String str) {
        ArrayList<String> arrayList;
        List listAsList;
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            jx.clear();
            JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("act_str");
            if (jSONArrayOptJSONArray != null && jSONArrayOptJSONArray.length() > 0) {
                for (int i2 = 0; i2 < jSONArrayOptJSONArray.length(); i2++) {
                    String strOptString = jSONArrayOptJSONArray.optString(i2);
                    if (!TextUtils.isEmpty(strOptString)) {
                        jx.add(strOptString);
                    }
                }
            }
            f18472j.clear();
            JSONArray jSONArrayOptJSONArray2 = jSONObject.optJSONArray("not_act_str");
            if (jSONArrayOptJSONArray2 != null && jSONArrayOptJSONArray2.length() > 0) {
                for (int i3 = 0; i3 < jSONArrayOptJSONArray2.length(); i3++) {
                    String strOptString2 = jSONArrayOptJSONArray2.optString(i3);
                    if (!TextUtils.isEmpty(strOptString2)) {
                        f18472j.add(strOptString2);
                    }
                }
            }
            hp.clear();
            JSONArray jSONArrayOptJSONArray3 = jSONObject.optJSONArray("not_support");
            if (jSONArrayOptJSONArray3 != null && jSONArrayOptJSONArray3.length() > 0) {
                for (int i4 = 0; i4 < jSONArrayOptJSONArray3.length(); i4++) {
                    JSONObject jSONObjectOptJSONObject = jSONArrayOptJSONArray3.optJSONObject(i4);
                    if (jSONObjectOptJSONObject != null) {
                        hp.add(new C0193hp(jSONObjectOptJSONObject.optString(SplashAd.KEY_BIDFAIL_ADN), jSONObjectOptJSONObject.optInt("subtype"), jSONObjectOptJSONObject.optString("versions")));
                    }
                }
            }
            arrayList = jx;
            listAsList = Arrays.asList(f18473l);
        } catch (JSONException unused) {
            arrayList = jx;
            listAsList = Arrays.asList(f18473l);
        } catch (Throwable th) {
            jx.addAll(Arrays.asList(f18473l));
            throw th;
        }
        arrayList.addAll(listAsList);
    }
}
