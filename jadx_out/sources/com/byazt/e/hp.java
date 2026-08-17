package com.byazt.e;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.os.IBinder;
import android.os.RemoteException;
import android.text.TextUtils;
import android.util.Pair;
import com.byazt.e.jx;
import com.byazt.t.jl;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 45, 28})
/* loaded from: classes2.dex */
public class hp {

    /* renamed from: a, reason: collision with root package name */
    public static String f19376a = "";
    public static volatile hp eb = null;

    /* renamed from: j, reason: collision with root package name */
    public static String f19377j = "";

    /* renamed from: w, reason: collision with root package name */
    public static String f19378w = "";
    public Context gu;
    public jx hp;

    /* renamed from: s, reason: collision with root package name */
    public boolean f19383s = true;

    /* renamed from: q, reason: collision with root package name */
    public boolean f19382q = false;

    /* renamed from: e, reason: collision with root package name */
    public volatile boolean f19379e = false;
    public final List<Pair<l, j>> jl = new ArrayList();

    /* renamed from: l, reason: collision with root package name */
    public final List<Object> f19381l = new ArrayList();
    public final ServiceConnection zy = new ServiceConnection() { // from class: com.byazt.e.hp.1
        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            synchronized (hp.this.jx) {
                try {
                    hp.this.hp(false);
                    hp.this.hp = jx.hp.hp(iBinder);
                    hp.this.jx();
                    Iterator<Object> it = hp.this.f19381l.iterator();
                    while (it.hasNext()) {
                        it.next();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            synchronized (hp.this.jx) {
                try {
                    hp.this.hp(false);
                    hp hpVar = hp.this;
                    hpVar.hp = null;
                    Iterator<Object> it = hpVar.f19381l.iterator();
                    while (it.hasNext()) {
                        it.next();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    };

    /* renamed from: k, reason: collision with root package name */
    public String f19380k = "";
    public final Object jx = new Object();

    private hp() {
    }

    public static hp hp() {
        if (eb == null) {
            synchronized (hp.class) {
                try {
                    if (eb == null) {
                        eb = new hp();
                    }
                } finally {
                }
            }
        }
        return eb;
    }

    public boolean j() {
        return this.f19379e;
    }

    public void jx() {
        for (Pair<l, j> pair : this.jl) {
            try {
                this.hp.hp((l) pair.first, (j) pair.second);
            } catch (RemoteException unused) {
            }
        }
        this.jl.clear();
    }

    public void l() {
        if (this.hp != null) {
            this.gu.unbindService(this.zy);
            this.hp = null;
        }
        this.f19381l.clear();
        this.jl.clear();
    }

    public boolean hp(Context context, boolean z2) {
        if (TextUtils.isEmpty(f19377j)) {
            JSONObject jSONObjectQ = jl.q();
            String strOptString = jSONObjectQ.optString("s");
            f19377j = com.byazt.wm.jx.hp(jSONObjectQ.optString("q"), strOptString);
            f19378w = com.byazt.wm.jx.hp(jSONObjectQ.optString("u"), strOptString);
            f19376a = com.byazt.wm.jx.hp(jSONObjectQ.optString("w"), strOptString);
        }
        this.f19382q = z2;
        if (context == null) {
            return true;
        }
        this.gu = context.getApplicationContext();
        if (TextUtils.isEmpty(f19376a)) {
            f19376a = this.gu.getPackageName();
        }
        if (this.hp != null || j()) {
            return true;
        }
        return this.gu.bindService(hp(context), this.zy, 33);
    }

    public Intent hp(Context context) {
        Intent intent = new Intent();
        intent.setAction(f19377j);
        List<ResolveInfo> listQueryIntentServices = context.getPackageManager().queryIntentServices(intent, 0);
        if (listQueryIntentServices == null || listQueryIntentServices.size() != 1) {
            return null;
        }
        Iterator<ResolveInfo> it = listQueryIntentServices.iterator();
        while (it.hasNext()) {
            ServiceInfo serviceInfo = it.next().serviceInfo;
            String str = serviceInfo.packageName;
            String str2 = serviceInfo.name;
            if (f19378w.equals(str)) {
                ComponentName componentName = new ComponentName(str, str2);
                Intent intent2 = new Intent(intent);
                intent2.setComponent(componentName);
                return intent2;
            }
        }
        return null;
    }

    public void hp(l lVar, j jVar) {
        synchronized (this.jx) {
            try {
                lVar.f19387w = f19376a;
                if (TextUtils.isEmpty(lVar.f19384a)) {
                    lVar.f19384a = this.f19380k;
                }
                jx jxVar = this.hp;
                if (jxVar != null) {
                    try {
                        jxVar.hp(lVar, jVar);
                    } catch (RemoteException unused) {
                    }
                } else if (j() || hp(this.gu, this.f19382q)) {
                    this.jl.add(Pair.create(lVar, jVar));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void hp(boolean z2) {
        this.f19379e = z2;
    }
}
