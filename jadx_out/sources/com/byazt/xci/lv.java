package com.byazt.xci;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ALOG_WRITE_FUNC_ADDR, MediaPlayer.MEIDA_PLAYER_OPTION_NATIVE_RENDER_ROTATION_ADAPT})
/* loaded from: classes3.dex */
public class lv {

    /* renamed from: e, reason: collision with root package name */
    public static int f27343e;
    public static int gu;
    public static int hp;

    /* renamed from: j, reason: collision with root package name */
    public static int f27344j;
    public static int jl;
    public static int jx;

    /* renamed from: k, reason: collision with root package name */
    public static int f27345k;

    /* renamed from: l, reason: collision with root package name */
    public static int f27346l;

    /* renamed from: q, reason: collision with root package name */
    public static int f27348q;

    /* renamed from: u, reason: collision with root package name */
    public static int f27350u;

    /* renamed from: v, reason: collision with root package name */
    public static int f27351v;
    public static int vv;
    public static int xs;
    public static int zy;

    /* renamed from: b, reason: collision with root package name */
    public final int f27353b;
    public final int cx;
    public final String di;
    public final int ec;

    /* renamed from: n, reason: collision with root package name */
    public final int f27354n;
    public final int ns;
    public final int sz;

    /* renamed from: w, reason: collision with root package name */
    public static final ArrayList<int[]> f27352w = new ArrayList<>();

    /* renamed from: a, reason: collision with root package name */
    public static final ArrayList<int[]> f27341a = new ArrayList<>();
    public static final ArrayList<int[]> eb = new ArrayList<>();

    /* renamed from: s, reason: collision with root package name */
    public static final ArrayList<int[]> f27349s = new ArrayList<>();

    /* renamed from: o, reason: collision with root package name */
    public static String f27347o = "已为您延迟到奖励下发后再播放下一个";

    /* renamed from: d, reason: collision with root package name */
    public static int f27342d = 3;
    public static int wv = 0;
    public static int hq = 0;

    public lv(JSONObject jSONObject) {
        this.f27353b = jSONObject.optInt("carousel_pos", -1);
        this.ec = jSONObject.optInt("insert_ad_control", 0);
        this.sz = jSONObject.optInt("refresh_ad_control", 0);
        this.cx = jSONObject.optInt("refresh_ad_imp_max_time", 0);
        this.f27354n = jSONObject.optInt("force_refresh_ad_control", 0);
        this.ns = jSONObject.optInt("web_refresh_control", 0);
        this.di = jSONObject.optString("carousel_tip_content", "秒后将继续播放下一个");
    }

    public static int a() {
        return f27344j;
    }

    public static int e() {
        return vv / 1000;
    }

    public static int eb() {
        return f27351v;
    }

    public static String gu() {
        return f27347o;
    }

    public static void hp(JSONObject jSONObject) {
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("app_common_config");
        if (jSONObjectOptJSONObject != null) {
            try {
                int iOptInt = jSONObjectOptJSONObject.optInt("insert_ad_control", 1);
                hp = iOptInt;
                if (iOptInt < 0 || iOptInt > 1) {
                    hp = 1;
                }
                int iOptInt2 = jSONObjectOptJSONObject.optInt("insert_ad_control_fs", 1);
                f27346l = iOptInt2;
                if (iOptInt2 < 0 || iOptInt2 > 1) {
                    f27346l = 1;
                }
                jx = jSONObjectOptJSONObject.optInt("insert_ad_req_num", 3);
                f27344j = jSONObjectOptJSONObject.optInt("insert_ad_req_num_fs", 2);
                f27348q = jSONObjectOptJSONObject.optInt("insert_ad_toast_max_time", 5);
                f27343e = jSONObjectOptJSONObject.optInt("insert_ad_tip_max_time", 0);
                gu = jSONObjectOptJSONObject.optInt("insert_ad_tip_max_time_fs", 3);
                jl = jSONObjectOptJSONObject.optInt("refresh_ad_tip_max_time", 3);
                zy = jSONObjectOptJSONObject.optInt("refresh_ad_tip_max_time_fs", 3);
                int iOptInt3 = jSONObjectOptJSONObject.optInt("refresh_ad_control", 1);
                f27345k = iOptInt3;
                if (iOptInt3 < 0 || iOptInt3 > 1) {
                    f27345k = 1;
                }
                f27351v = jSONObjectOptJSONObject.optInt("refresh_ad_req_num", 3);
                int iOptInt4 = jSONObjectOptJSONObject.optInt("force_refresh_ad_control", 1);
                f27350u = iOptInt4;
                if (iOptInt4 < 0 || iOptInt4 > 1) {
                    f27350u = 1;
                }
                xs = jSONObjectOptJSONObject.optInt("force_refresh_ad_pause_over_time", 5000);
                vv = jSONObjectOptJSONObject.optInt("refresh_ad_reduce_time", 0);
                JSONArray jSONArrayOptJSONArray = jSONObjectOptJSONObject.optJSONArray("insert_ad_pt_show_time");
                if (jSONArrayOptJSONArray == null || jSONArrayOptJSONArray.length() <= 0) {
                    f27352w.add(new int[]{0, 500});
                } else {
                    f27352w.clear();
                    for (int i2 = 0; i2 < jSONArrayOptJSONArray.length(); i2++) {
                        JSONArray jSONArrayOptJSONArray2 = jSONArrayOptJSONArray.optJSONArray(i2);
                        if (jSONArrayOptJSONArray2 != null && jSONArrayOptJSONArray2.length() == 2) {
                            f27352w.add(new int[]{jSONArrayOptJSONArray2.optInt(0), jSONArrayOptJSONArray2.optInt(1)});
                        }
                    }
                }
                JSONArray jSONArrayOptJSONArray3 = jSONObjectOptJSONObject.optJSONArray("insert_ad_vd_show_time");
                if (jSONArrayOptJSONArray3 == null || jSONArrayOptJSONArray3.length() <= 0) {
                    f27341a.add(new int[]{0, 500});
                } else {
                    f27341a.clear();
                    for (int i3 = 0; i3 < jSONArrayOptJSONArray3.length(); i3++) {
                        JSONArray jSONArrayOptJSONArray4 = jSONArrayOptJSONArray3.optJSONArray(i3);
                        if (jSONArrayOptJSONArray4 != null && jSONArrayOptJSONArray4.length() == 2) {
                            f27341a.add(new int[]{jSONArrayOptJSONArray4.optInt(0), jSONArrayOptJSONArray4.optInt(1)});
                        }
                    }
                }
                JSONArray jSONArrayOptJSONArray5 = jSONObjectOptJSONObject.optJSONArray("insert_ad_pt_show_time_fs");
                if (jSONArrayOptJSONArray5 == null || jSONArrayOptJSONArray5.length() <= 0) {
                    eb.add(new int[]{0, 500});
                } else {
                    eb.clear();
                    for (int i4 = 0; i4 < jSONArrayOptJSONArray5.length(); i4++) {
                        JSONArray jSONArrayOptJSONArray6 = jSONArrayOptJSONArray5.optJSONArray(i4);
                        if (jSONArrayOptJSONArray6 != null && jSONArrayOptJSONArray6.length() == 2) {
                            eb.add(new int[]{jSONArrayOptJSONArray6.optInt(0), jSONArrayOptJSONArray6.optInt(1)});
                        }
                    }
                }
                JSONArray jSONArrayOptJSONArray7 = jSONObjectOptJSONObject.optJSONArray("insert_ad_vd_show_time_fs");
                if (jSONArrayOptJSONArray7 == null || jSONArrayOptJSONArray7.length() <= 0) {
                    f27349s.add(new int[]{0, 500});
                } else {
                    f27349s.clear();
                    for (int i5 = 0; i5 < jSONArrayOptJSONArray7.length(); i5++) {
                        JSONArray jSONArrayOptJSONArray8 = jSONArrayOptJSONArray7.optJSONArray(i5);
                        if (jSONArrayOptJSONArray8 != null && jSONArrayOptJSONArray8.length() == 2) {
                            f27349s.add(new int[]{jSONArrayOptJSONArray8.optInt(0), jSONArrayOptJSONArray8.optInt(1)});
                        }
                    }
                }
                JSONObject jSONObjectOptJSONObject2 = jSONObjectOptJSONObject.optJSONObject("reward_aggregation_config");
                if (jSONObjectOptJSONObject2 != null) {
                    f27347o = jSONObjectOptJSONObject2.optString("refresh_ad_clickafter_tip_content", "已为您延迟到奖励下发后再播放下一个");
                    f27342d = jSONObjectOptJSONObject2.optInt("refresh_ad_clickafter_tip_content_max_time", 3);
                    wv = jSONObjectOptJSONObject2.optInt("refresh_ad_ifclick_swtich");
                    hq = jSONObjectOptJSONObject2.optInt("refresh_ad_ifclick_swtich_fs");
                }
            } catch (Exception unused) {
            }
        }
    }

    public static boolean j() {
        return f27350u == 1;
    }

    public static int jl() {
        return f27342d;
    }

    public static boolean jx() {
        return f27345k == 1;
    }

    public static int k() {
        return hq;
    }

    public static boolean l() {
        return f27346l == 1;
    }

    public static int q() {
        return xs;
    }

    public static int s() {
        return f27348q;
    }

    public static int w() {
        return jx;
    }

    public static int zy() {
        return wv;
    }

    public static String a(mp mpVar) {
        lv lvVarEb = eb(mpVar);
        return lvVarEb == null ? "秒后将继续播放下一个" : lvVarEb.di;
    }

    private static lv eb(mp mpVar) {
        if (mpVar == null) {
            return null;
        }
        return mpVar.ux();
    }

    public static int j(mp mpVar) {
        lv lvVarEb = eb(mpVar);
        if (lvVarEb == null) {
            return -1;
        }
        return lvVarEb.f27353b;
    }

    public static int jx(mp mpVar) {
        lv lvVarEb = eb(mpVar);
        if (lvVarEb == null) {
            return 0;
        }
        return lvVarEb.f27354n;
    }

    public static int l(boolean z2) {
        return z2 ? jl : zy;
    }

    public static int w(mp mpVar) {
        lv lvVarEb = eb(mpVar);
        if (lvVarEb == null) {
            return 0;
        }
        return lvVarEb.cx;
    }

    private static boolean j(mp mpVar, boolean z2) {
        return (!z2 || f27346l == 1) && hp(mpVar) == 1 && j(mpVar) > 0;
    }

    private static boolean jx(mp mpVar, boolean z2) {
        return (!z2 || hp == 1) && hp(mpVar) == 1 && j(mpVar) > 0;
    }

    private static boolean l(boolean z2, int i2) {
        if (z2) {
            ArrayList<int[]> arrayList = f27349s;
            int size = arrayList.size();
            int i3 = 0;
            while (i3 < size) {
                int[] iArr = arrayList.get(i3);
                i3++;
                int[] iArr2 = iArr;
                if (i2 >= iArr2[0] && i2 <= iArr2[1]) {
                    return true;
                }
            }
        } else {
            ArrayList<int[]> arrayList2 = eb;
            int size2 = arrayList2.size();
            int i4 = 0;
            while (i4 < size2) {
                int[] iArr3 = arrayList2.get(i4);
                i4++;
                int[] iArr4 = iArr3;
                if (i2 >= iArr4[0] && i2 <= iArr4[1]) {
                    return true;
                }
            }
        }
        return false;
    }

    public static void l(com.byazt.ctq.w wVar) {
        try {
            wVar.put("insert_ad_control", hp);
            wVar.put("insert_ad_control_fs", f27346l);
            wVar.put("insert_ad_req_num", jx);
            wVar.put("insert_ad_req_num_fs", f27344j);
            wVar.put("insert_ad_toast_max_time", f27348q);
            wVar.put("insert_ad_tip_max_time", f27343e);
            wVar.put("insert_ad_tip_max_time_fs", gu);
            wVar.put("refresh_ad_tip_max_time", jl);
            wVar.put("refresh_ad_tip_max_time_fs", zy);
            wVar.put("refresh_ad_control", f27345k);
            wVar.put("refresh_ad_req_num", f27351v);
            wVar.put("force_refresh_ad_control", f27350u);
            wVar.put("force_refresh_ad_pause_over_time", xs);
            wVar.put("refresh_ad_reduce_time", vv);
            ArrayList<int[]> arrayList = f27352w;
            if (!arrayList.isEmpty()) {
                HashSet hashSet = new HashSet();
                int size = arrayList.size();
                int i2 = 0;
                while (i2 < size) {
                    int[] iArr = arrayList.get(i2);
                    i2++;
                    int[] iArr2 = iArr;
                    if (iArr2 != null && iArr2.length == 2) {
                        hashSet.add(iArr2[0] + "," + iArr2[1]);
                    }
                }
                wVar.put("insert_ad_pt_show_time", hashSet);
            }
            ArrayList<int[]> arrayList2 = f27341a;
            if (!arrayList2.isEmpty()) {
                HashSet hashSet2 = new HashSet();
                int size2 = arrayList2.size();
                int i3 = 0;
                while (i3 < size2) {
                    int[] iArr3 = arrayList2.get(i3);
                    i3++;
                    int[] iArr4 = iArr3;
                    if (iArr4 != null && iArr4.length == 2) {
                        hashSet2.add(iArr4[0] + "," + iArr4[1]);
                    }
                }
                wVar.put("insert_ad_vd_show_time", hashSet2);
            }
            ArrayList<int[]> arrayList3 = eb;
            if (!arrayList3.isEmpty()) {
                HashSet hashSet3 = new HashSet();
                int size3 = arrayList3.size();
                int i4 = 0;
                while (i4 < size3) {
                    int[] iArr5 = arrayList3.get(i4);
                    i4++;
                    int[] iArr6 = iArr5;
                    if (iArr6 != null && iArr6.length == 2) {
                        hashSet3.add(iArr6[0] + "," + iArr6[1]);
                    }
                }
                wVar.put("insert_ad_pt_show_time_fs", hashSet3);
            }
            ArrayList<int[]> arrayList4 = f27349s;
            if (!arrayList4.isEmpty()) {
                HashSet hashSet4 = new HashSet();
                int size4 = arrayList4.size();
                int i5 = 0;
                while (i5 < size4) {
                    int[] iArr7 = arrayList4.get(i5);
                    i5++;
                    int[] iArr8 = iArr7;
                    if (iArr8 != null && iArr8.length == 2) {
                        hashSet4.add(iArr8[0] + "," + iArr8[1]);
                    }
                }
                wVar.put("insert_ad_vd_show_time_fs", hashSet4);
            }
            wVar.put("refresh_ad_ifclick_swtich_fs", hq);
            wVar.put("refresh_ad_ifclick_swtich", wv);
            wVar.put("refresh_ad_clickafter_tip_content", f27347o);
            wVar.put("refresh_ad_clickafter_tip_content_max_time", f27342d);
        } catch (Exception unused) {
        }
    }

    public void l(JSONObject jSONObject) {
        try {
            jSONObject.put("carousel_pos", this.f27353b);
            jSONObject.put("insert_ad_control", this.ec);
            jSONObject.put("refresh_ad_control", this.sz);
            jSONObject.put("refresh_ad_imp_max_time", this.cx);
            jSONObject.put("force_refresh_ad_control", this.f27354n);
            jSONObject.put("web_refresh_control", this.ns);
            jSONObject.put("carousel_tip_content", this.di);
        } catch (JSONException unused) {
        }
    }

    public static int l(mp mpVar) {
        lv lvVarEb = eb(mpVar);
        if (lvVarEb == null) {
            return 0;
        }
        return lvVarEb.sz;
    }

    public static boolean l(mp mpVar, boolean z2) {
        return (!z2 || f27350u == 1) && jx(mpVar) == 1 && j(mpVar) > 0;
    }

    public static boolean l(boolean z2, mp mpVar, boolean z3) {
        return hp(z2, mpVar, z3) || hp(mpVar, z3) || l(mpVar, z3);
    }

    public static boolean hp() {
        return hp == 1;
    }

    public static int hp(boolean z2) {
        if (z2) {
            return f27343e;
        }
        return gu;
    }

    public static boolean hp(boolean z2, boolean z3, int i2) {
        return z2 ? hp(z3, i2) : l(z3, i2);
    }

    private static boolean hp(boolean z2, int i2) {
        if (z2) {
            ArrayList<int[]> arrayList = f27341a;
            int size = arrayList.size();
            int i3 = 0;
            while (i3 < size) {
                int[] iArr = arrayList.get(i3);
                i3++;
                int[] iArr2 = iArr;
                if (i2 >= iArr2[0] && i2 <= iArr2[1]) {
                    return true;
                }
            }
        } else {
            ArrayList<int[]> arrayList2 = f27352w;
            int size2 = arrayList2.size();
            int i4 = 0;
            while (i4 < size2) {
                int[] iArr3 = arrayList2.get(i4);
                i4++;
                int[] iArr4 = iArr3;
                if (i2 >= iArr4[0] && i2 <= iArr4[1]) {
                    return true;
                }
            }
        }
        return false;
    }

    public static boolean hp(int i2, mp mpVar, boolean z2) {
        return w(mpVar) > 0 && i2 * 1000 >= w(mpVar) - (l(z2) * 1000);
    }

    public static boolean hp(int i2, mp mpVar) {
        return w(mpVar) > 0 && i2 * 1000 >= w(mpVar);
    }

    public static void hp(com.byazt.ctq.w wVar) {
        try {
            hp = wVar.getInt("insert_ad_control", 1);
            f27346l = wVar.getInt("insert_ad_control_fs", 1);
            jx = wVar.getInt("insert_ad_req_num", 3);
            f27344j = wVar.getInt("insert_ad_req_num_fs", 2);
            f27348q = wVar.getInt("insert_ad_toast_max_time", 5);
            f27343e = wVar.getInt("insert_ad_tip_max_time", 0);
            gu = wVar.getInt("insert_ad_tip_max_time_fs", 3);
            jl = wVar.getInt("refresh_ad_tip_max_time", 3);
            zy = wVar.getInt("refresh_ad_tip_max_time_fs", 3);
            f27345k = wVar.getInt("refresh_ad_control", 1);
            f27351v = wVar.getInt("refresh_ad_req_num", 3);
            f27350u = wVar.getInt("force_refresh_ad_control", 1);
            xs = wVar.getInt("force_refresh_ad_pause_over_time", 5000);
            vv = wVar.getInt("refresh_ad_reduce_time", 0);
            Set<String> stringSet = wVar.getStringSet("insert_ad_pt_show_time", null);
            if (stringSet != null && !stringSet.isEmpty()) {
                f27352w.clear();
                Iterator<String> it = stringSet.iterator();
                while (it.hasNext()) {
                    String[] strArrSplit = it.next().split(",");
                    if (strArrSplit.length == 2) {
                        f27352w.add(new int[]{Integer.parseInt(strArrSplit[0]), Integer.parseInt(strArrSplit[1])});
                    }
                }
            }
            Set<String> stringSet2 = wVar.getStringSet("insert_ad_vd_show_time", null);
            if (stringSet2 != null && !stringSet2.isEmpty()) {
                f27341a.clear();
                Iterator<String> it2 = stringSet2.iterator();
                while (it2.hasNext()) {
                    String[] strArrSplit2 = it2.next().split(",");
                    if (strArrSplit2.length == 2) {
                        f27341a.add(new int[]{Integer.parseInt(strArrSplit2[0]), Integer.parseInt(strArrSplit2[1])});
                    }
                }
            }
            Set<String> stringSet3 = wVar.getStringSet("insert_ad_pt_show_time_fs", null);
            if (stringSet3 != null && !stringSet3.isEmpty()) {
                eb.clear();
                Iterator<String> it3 = stringSet3.iterator();
                while (it3.hasNext()) {
                    String[] strArrSplit3 = it3.next().split(",");
                    if (strArrSplit3.length == 2) {
                        eb.add(new int[]{Integer.parseInt(strArrSplit3[0]), Integer.parseInt(strArrSplit3[1])});
                    }
                }
            }
            Set<String> stringSet4 = wVar.getStringSet("insert_ad_vd_show_time_fs", null);
            if (stringSet4 != null && !stringSet4.isEmpty()) {
                f27349s.clear();
                Iterator<String> it4 = stringSet4.iterator();
                while (it4.hasNext()) {
                    String[] strArrSplit4 = it4.next().split(",");
                    if (strArrSplit4.length == 2) {
                        f27349s.add(new int[]{Integer.parseInt(strArrSplit4[0]), Integer.parseInt(strArrSplit4[1])});
                    }
                }
            }
            f27347o = wVar.getString("refresh_ad_clickafter_tip_content", "已为您延迟到奖励下发后再播放下一个");
            f27342d = wVar.getInt("refresh_ad_clickafter_tip_content_max_time", 3);
            wv = wVar.getInt("refresh_ad_ifclick_swtich", 0);
            hq = wVar.getInt("refresh_ad_ifclick_swtich_fs", 0);
        } catch (Exception unused) {
        }
    }

    public static int hp(mp mpVar) {
        lv lvVarEb = eb(mpVar);
        if (lvVarEb == null) {
            return 0;
        }
        return lvVarEb.ec;
    }

    public static boolean hp(boolean z2, mp mpVar, boolean z3) {
        return z2 ? jx(mpVar, z3) : j(mpVar, z3);
    }

    public static boolean hp(mp mpVar, boolean z2) {
        return (!z2 || f27345k == 1) && l(mpVar) == 1 && j(mpVar) > 0;
    }
}
