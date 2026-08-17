package com.byazt.xy;

import android.app.ActivityManager;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Environment;
import android.os.StatFs;
import android.os.SystemClock;
import android.text.TextUtils;
import com.anythink.core.common.m.f;
import com.byazt.jz.sz;
import com.byazt.pu.TTDownloadField;
import com.byazt.xci.qh;
import com.byazt.zn.b;
import com.byazt.zn.ec;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.kuaishou.weapon.p0.t;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_AVG_VIDEO_BUFFER_LENGTH, 28})
/* loaded from: classes3.dex */
public class hp {
    public static final hp hp = new hp();
    public qh eb;

    /* renamed from: q, reason: collision with root package name */
    public int[] f27848q;

    /* renamed from: s, reason: collision with root package name */
    public boolean f27849s;

    /* renamed from: l, reason: collision with root package name */
    public String f27847l = "";
    public String jx = "";

    /* renamed from: j, reason: collision with root package name */
    public String f27846j = "";

    /* renamed from: w, reason: collision with root package name */
    public String f27850w = "";

    /* renamed from: a, reason: collision with root package name */
    public JSONArray f27845a = new JSONArray();

    private hp() {
    }

    public static hp hp() {
        return hp;
    }

    private Long j() {
        long jCurrentTimeMillis = System.currentTimeMillis() - SystemClock.elapsedRealtime();
        this.f27850w = String.valueOf(jCurrentTimeMillis);
        return Long.valueOf(jCurrentTimeMillis);
    }

    private Long jx() {
        Long lValueOf = Long.valueOf(new StatFs(Environment.getExternalStorageDirectory().getPath()).getTotalBytes());
        this.jx = lValueOf.toString();
        return lValueOf;
    }

    private String l() {
        String strJx = ec.jx();
        this.f27847l = strJx;
        return strJx;
    }

    private ActivityManager.MemoryInfo l(Context context) {
        ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
        ((ActivityManager) context.getSystemService(TTDownloadField.TT_ACTIVITY)).getMemoryInfo(memoryInfo);
        this.f27846j = String.valueOf(memoryInfo.totalMem);
        return memoryInfo;
    }

    public void hp(Context context) {
        if (!sz.l().n()) {
            this.f27849s = false;
            return;
        }
        if (this.f27849s) {
            return;
        }
        try {
            l();
            j();
            jx();
            l(context);
            jx(context);
            this.eb = b.gu();
            this.f27849s = true;
        } catch (Exception unused) {
        }
    }

    private JSONArray jx(Context context) {
        JSONArray jSONArray = new JSONArray();
        try {
            HashMap map = new HashMap();
            map.put("com.ss.android.ugc.aweme", "a");
            map.put("com.ss.android.ugc.aweme.lite", "al");
            map.put("com.dragon.read", t.f31269k);
            map.put("com.ss.android.article.news", "n");
            map.put("com.ss.android.article.lite", "nl");
            PackageManager packageManager = context.getPackageManager();
            for (Map.Entry entry : map.entrySet()) {
                try {
                    PackageInfo packageInfo = packageManager.getPackageInfo((String) entry.getKey(), 0);
                    long j2 = packageInfo.firstInstallTime;
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("n", entry.getValue());
                    jSONObject.put("i", j2);
                    if (TextUtils.equals((CharSequence) entry.getValue(), "a") || TextUtils.equals((CharSequence) entry.getValue(), "n")) {
                        jSONObject.put("u", packageInfo.lastUpdateTime);
                    }
                    jSONArray.put(jSONObject);
                } catch (Throwable unused) {
                }
            }
            this.f27845a = jSONArray;
        } catch (Throwable unused2) {
        }
        return jSONArray;
    }

    public void hp(qh qhVar) {
        this.eb = qhVar;
    }

    public void hp(int[] iArr) {
        this.f27848q = iArr;
    }

    public void hp(JSONObject jSONObject) {
        if (sz.l().n()) {
            try {
                qh qhVar = this.eb;
                if (qhVar != null) {
                    JSONObject jSONObjectJx = qhVar.jx();
                    jSONObjectJx.put("sl", 0);
                    jSONObject.put(f.bA, jSONObjectJx);
                }
                jSONObject.put("boot_time_sec", this.f27850w);
                jSONObject.put("memory", this.f27846j);
                jSONObject.put("disk", this.jx);
                jSONObject.put("client_tun", this.f27847l);
                jSONObject.put("pkg_info", this.f27845a);
                int[] iArr = this.f27848q;
                if (iArr != null) {
                    jSONObject.put("inode", Arrays.toString(iArr));
                }
            } catch (Exception unused) {
            }
        }
    }
}
