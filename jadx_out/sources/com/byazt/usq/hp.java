package com.byazt.usq;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.net.NetworkInfo;
import android.telephony.TelephonyManager;
import androidx.annotation.NonNull;
import com.byazt.gjx.a;
import com.umeng.analytics.pro.bv;
import java.lang.reflect.Method;
import java.util.Iterator;
import java.util.LinkedList;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 1249, 28})
/* loaded from: classes3.dex */
public class hp {
    public static volatile hp hp;

    /* renamed from: j, reason: collision with root package name */
    public volatile int f26413j = -1;
    public ConnectivityManager jx;

    /* renamed from: l, reason: collision with root package name */
    public volatile int f26414l;

    /* renamed from: w, reason: collision with root package name */
    public TelephonyManager f26415w;

    public hp() {
        this.jx = null;
        this.f26415w = null;
        Context contextJx = a.jx();
        if (contextJx != null) {
            this.jx = (ConnectivityManager) contextJx.getSystemService("connectivity");
            this.f26415w = (TelephonyManager) contextJx.getSystemService("phone");
        }
        hp((int) (((w.hp().jx() / 1000) / 60) / 60));
    }

    private int a() {
        Network activeNetwork;
        NetworkCapabilities networkCapabilities;
        try {
            ConnectivityManager connectivityManager = this.jx;
            NetworkInfo activeNetworkInfo = connectivityManager != null ? connectivityManager.getActiveNetworkInfo() : null;
            if (activeNetworkInfo == null || !activeNetworkInfo.isAvailable() || (activeNetwork = this.jx.getActiveNetwork()) == null || (networkCapabilities = this.jx.getNetworkCapabilities(activeNetwork)) == null) {
                return 0;
            }
            boolean zHasTransport = networkCapabilities.hasTransport(0);
            boolean zHasTransport2 = networkCapabilities.hasTransport(1);
            if (hp(this.jx) && zHasTransport2) {
                return 3;
            }
            if (zHasTransport2) {
                return 1;
            }
            return zHasTransport ? 2 : 0;
        } catch (Exception unused) {
            return 0;
        }
    }

    public static hp hp() {
        if (hp == null) {
            synchronized (hp.class) {
                try {
                    if (hp == null) {
                        hp = new hp();
                    }
                } finally {
                }
            }
        }
        return hp;
    }

    public int j() {
        this.f26413j = a();
        return this.f26413j;
    }

    @NonNull
    public int[] jx() {
        int[] iArr = new int[this.f26414l];
        LinkedList<JSONObject> linkedListHp = l.hp().hp("sp_screen");
        if (linkedListHp != null && linkedListHp.size() > 0) {
            int iCurrentTimeMillis = (int) (((System.currentTimeMillis() / 1000) / 60) / 60);
            Iterator<JSONObject> it = linkedListHp.iterator();
            while (it.hasNext()) {
                JSONObject next = it.next();
                long jOptLong = next.optLong(bv.aI, 0L);
                int iOptInt = next.optInt("val", 0);
                int i2 = iCurrentTimeMillis - ((int) (((jOptLong / 1000) / 60) / 60));
                if (i2 >= 0 && i2 < this.f26414l) {
                    iArr[i2] = iOptInt;
                }
            }
        }
        return iArr;
    }

    @NonNull
    public int[] l() {
        int[] iArr = new int[this.f26414l];
        LinkedList<JSONObject> linkedListHp = l.hp().hp("sp_net");
        if (linkedListHp != null && !linkedListHp.isEmpty()) {
            int iOptLong = (int) (((linkedListHp.get(linkedListHp.size() - 1).optLong(bv.aI, 0L) / 1000) / 60) / 60);
            Iterator<JSONObject> it = linkedListHp.iterator();
            while (it.hasNext()) {
                JSONObject next = it.next();
                long jOptLong = next.optLong(bv.aI, 0L);
                int iOptInt = next.optInt("val", 0);
                int i2 = iOptLong - ((int) (((jOptLong / 1000) / 60) / 60));
                if (i2 >= 0 && i2 < this.f26414l) {
                    iArr[i2] = iOptInt;
                }
            }
        }
        return iArr;
    }

    public int w() {
        TelephonyManager telephonyManager = this.f26415w;
        if (telephonyManager != null) {
            return telephonyManager.getSimState();
        }
        return -1;
    }

    private static boolean hp(ConnectivityManager connectivityManager) throws NoSuchMethodException, SecurityException {
        try {
            Method declaredMethod = ConnectivityManager.class.getDeclaredMethod("getMobileDataEnabled", null);
            declaredMethod.setAccessible(true);
            return ((Boolean) declaredMethod.invoke(connectivityManager, null)).booleanValue();
        } catch (Exception unused) {
            return false;
        }
    }

    public void hp(int i2) {
        if (i2 <= 0) {
            this.f26414l = 1;
        } else if (i2 > 168) {
            this.f26414l = 168;
        } else {
            this.f26414l = i2;
        }
    }
}
