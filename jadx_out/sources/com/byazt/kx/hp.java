package com.byazt.kx;

import android.content.ComponentName;
import android.content.Intent;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.RemoteException;
import androidx.annotation.Nullable;
import com.byazt.ik.a;
import com.byazt.ye.s;
import com.byazt.ye.w;
import com.bytedance.pangle.Zeus;
import com.bytedance.pangle.log.ZeusLogger;
import com.bytedance.pangle.plugin.Plugin;
import com.bytedance.pangle.plugin.PluginManager;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;

@com.byazt.kj.hp(hp = {0, 1, 1331, 28})
/* loaded from: classes.dex */
public class hp extends w.hp {

    /* renamed from: l, reason: collision with root package name */
    public static volatile hp f22234l;
    public final HashMap<ComponentName, IBinder> jx = new HashMap<>();

    /* renamed from: j, reason: collision with root package name */
    public final HashMap<ComponentName, l> f22236j = new HashMap<>();

    /* renamed from: w, reason: collision with root package name */
    public final C0301hp<Intent> f22239w = new C0301hp<>();

    /* renamed from: a, reason: collision with root package name */
    public final HashMap<ComponentName, com.byazt.ou.hp> f22235a = new HashMap<>();
    public final HashSet<ComponentName> eb = new HashSet<>();

    /* renamed from: s, reason: collision with root package name */
    public final HashSet<ComponentName> f22238s = new HashSet<>();

    /* renamed from: q, reason: collision with root package name */
    public final List<Runnable> f22237q = new ArrayList();
    public final Handler hp = new Handler(Looper.getMainLooper());

    @com.byazt.kj.hp(hp = {0, 1, 1331, 170})
    /* renamed from: com.byazt.kx.hp$hp, reason: collision with other inner class name */
    public class C0301hp<T> extends HashMap<s, T> {
        public C0301hp() {
        }

        @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
        public boolean containsKey(@Nullable Object obj) {
            if (super.containsKey(obj)) {
                return true;
            }
            if (!(obj instanceof s)) {
                return false;
            }
            Iterator<s> it = keySet().iterator();
            while (it.hasNext()) {
                try {
                } catch (RemoteException e2) {
                    a.hp(e2);
                }
                if (it.next().hp() == ((s) obj).hp()) {
                    return true;
                }
            }
            return false;
        }

        @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
        @Nullable
        public T remove(@Nullable Object obj) {
            s next;
            T t2 = (T) super.remove(obj);
            if (t2 != null) {
                return t2;
            }
            Iterator<s> it = keySet().iterator();
            while (true) {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
                try {
                } catch (RemoteException e2) {
                    a.hp(e2);
                }
                if (next.hp() == ((s) obj).hp()) {
                    break;
                }
            }
            return (T) super.remove(next);
        }
    }

    @com.byazt.kj.hp(hp = {0, 1, 1331, 255})
    public class l extends HashSet<s> {
        public l() {
        }

        @Override // java.util.HashSet, java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(@Nullable Object obj) {
            if (super.contains(obj)) {
                return true;
            }
            if (!(obj instanceof s)) {
                return false;
            }
            Iterator<s> it = iterator();
            while (it.hasNext()) {
                try {
                } catch (RemoteException e2) {
                    a.hp(e2);
                }
                if (it.next().hp() == ((s) obj).hp()) {
                    return true;
                }
            }
            return false;
        }

        @Override // java.util.HashSet, java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(@Nullable Object obj) {
            s sVar;
            if (super.remove(obj)) {
                return true;
            }
            Iterator it = iterator();
            while (true) {
                if (!it.hasNext()) {
                    sVar = null;
                    break;
                }
                sVar = (s) it.next();
                try {
                } catch (RemoteException e2) {
                    a.hp(e2);
                }
                if (sVar.hp() == ((s) obj).hp()) {
                    break;
                }
            }
            return super.remove(sVar);
        }
    }

    private hp() {
    }

    private com.byazt.ou.hp j(Intent intent, String str) {
        boolean zLoadPlugin;
        ComponentName component = intent.getComponent();
        Plugin plugin = PluginManager.getInstance().getPlugin(str);
        try {
            zLoadPlugin = Zeus.loadPlugin(str);
        } catch (Exception e2) {
            e = e2;
            zLoadPlugin = false;
        }
        try {
            com.byazt.ou.hp hpVar = (com.byazt.ou.hp) plugin.mClassLoader.loadClass(component.getClassName()).newInstance();
            hpVar.attach(plugin);
            return hpVar;
        } catch (Exception e3) {
            e = e3;
            ZeusLogger.errReport(ZeusLogger.TAG_SERVICE, "newServiceInstance failed! loadPlugin = ".concat(String.valueOf(zLoadPlugin)), e);
            return null;
        }
    }

    @Override // com.byazt.ye.w.hp, android.os.IInterface
    public IBinder asBinder() {
        return null;
    }

    @Override // com.byazt.ye.w
    public boolean bindService(final Intent intent, final s sVar, final int i2, final String str) throws RemoteException {
        if (!Zeus.hasInit()) {
            this.f22237q.add(new Runnable() { // from class: com.byazt.kx.hp.7
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        hp.this.l(intent, sVar, i2, str);
                    } catch (RemoteException e2) {
                        ZeusLogger.errReport(ZeusLogger.TAG_SERVICE, "pending bindService failed", e2);
                    }
                }
            });
            return true;
        }
        Plugin plugin = Zeus.getPlugin(str);
        if (plugin.isLoaded()) {
            return hp(intent, sVar, i2, str);
        }
        if (Zeus.loadPlugin(str)) {
            hp(intent, sVar, i2, str);
            return true;
        }
        plugin.addBindServicePluginPendingTask(new Plugin.hp() { // from class: com.byazt.kx.hp.6
            @Override // com.bytedance.pangle.plugin.Plugin.hp
            public void hp(int i3) throws RemoteException {
                hp.this.hp(intent, sVar, i2, str);
            }
        });
        return true;
    }

    public void jx() {
        for (Runnable runnable : this.f22237q) {
            if (runnable != null) {
                this.hp.post(runnable);
            }
        }
        this.f22237q.clear();
    }

    @Override // com.byazt.ye.w
    public ComponentName startService(final Intent intent, final String str) {
        if (Zeus.hasInit()) {
            Plugin plugin = Zeus.getPlugin(str);
            if (plugin.isLoaded()) {
                return hp(intent, str);
            }
            plugin.addStartServicePluginPendingTask(new Plugin.hp() { // from class: com.byazt.kx.hp.2
                @Override // com.bytedance.pangle.plugin.Plugin.hp
                public void hp(int i2) throws RemoteException {
                    hp.this.hp(intent, str);
                }
            });
        } else {
            this.f22237q.add(new Runnable() { // from class: com.byazt.kx.hp.3
                @Override // java.lang.Runnable
                public void run() {
                    hp.this.l(intent, str);
                }
            });
        }
        return intent.getComponent();
    }

    @Override // com.byazt.ye.w
    public boolean stopService(final Intent intent, String str) {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            l().hp(intent.getComponent());
            return true;
        }
        this.hp.post(new Runnable() { // from class: com.byazt.kx.hp.4
            @Override // java.lang.Runnable
            public void run() {
                hp.l().hp(intent.getComponent());
            }
        });
        return true;
    }

    @Override // com.byazt.ye.w
    public void unbindService(final s sVar) {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            hp(sVar);
        } else {
            this.hp.post(new Runnable() { // from class: com.byazt.kx.hp.8
                @Override // java.lang.Runnable
                public void run() {
                    hp.this.hp(sVar);
                }
            });
        }
    }

    public static hp l() {
        if (f22234l == null) {
            synchronized (hp.class) {
                try {
                    if (f22234l == null) {
                        f22234l = new hp();
                    }
                } finally {
                }
            }
        }
        return f22234l;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public ComponentName hp(final Intent intent, final String str) {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            return l(intent, str);
        }
        this.hp.post(new Runnable() { // from class: com.byazt.kx.hp.1
            @Override // java.lang.Runnable
            public void run() {
                hp.this.l(intent, str);
            }
        });
        return intent.getComponent();
    }

    private com.byazt.ou.hp jx(Intent intent, String str) {
        com.byazt.ou.hp hpVarJ = j(intent, str);
        if (hpVarJ != null) {
            hpVarJ.onCreate();
        }
        return hpVarJ;
    }

    private void jx(ComponentName componentName) {
        com.byazt.ou.hp hpVarRemove = this.f22235a.remove(componentName);
        this.f22238s.remove(componentName);
        this.jx.remove(componentName);
        this.eb.remove(componentName);
        if (hpVarRemove != null) {
            hpVarRemove.onDestroy();
        }
    }

    public synchronized boolean hp(ComponentName componentName) {
        if (!this.f22235a.containsKey(componentName)) {
            return false;
        }
        this.f22238s.add(componentName);
        return l(componentName);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized ComponentName l(Intent intent, String str) {
        try {
            ComponentName component = intent.getComponent();
            if (!this.f22235a.containsKey(component)) {
                com.byazt.ou.hp hpVarJx = jx(intent, str);
                if (hpVarJx == null) {
                    return component;
                }
                this.f22235a.put(component, hpVarJx);
                this.eb.add(component);
            }
            com.byazt.ou.hp hpVar = this.f22235a.get(component);
            if (hpVar != null) {
                hpVar.onStartCommand(intent, 0, 0);
            }
            return component;
        } catch (Throwable th) {
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean hp(final Intent intent, final s sVar, final int i2, final String str) throws RemoteException {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            return l(intent, sVar, i2, str);
        }
        this.hp.post(new Runnable() { // from class: com.byazt.kx.hp.5
            @Override // java.lang.Runnable
            public void run() {
                try {
                    hp.this.l(intent, sVar, i2, str);
                } catch (RemoteException e2) {
                    ZeusLogger.errReport(ZeusLogger.TAG_SERVICE, "bindService failed", e2);
                }
            }
        });
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void hp(s sVar) {
        try {
            for (ComponentName componentName : this.f22236j.keySet()) {
                l lVar = this.f22236j.get(componentName);
                if (lVar.contains(sVar)) {
                    lVar.remove(sVar);
                    Intent intentRemove = this.f22239w.remove(sVar);
                    if (lVar.size() == 0) {
                        this.f22236j.remove(componentName);
                        com.byazt.ou.hp hpVar = this.f22235a.get(componentName);
                        if (hpVar != null) {
                            hpVar.onUnbind(intentRemove);
                        }
                    }
                    l(componentName);
                    return;
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    private boolean l(ComponentName componentName) {
        if (!this.eb.contains(componentName)) {
            if (this.f22236j.get(componentName) != null) {
                return false;
            }
            jx(componentName);
            return true;
        }
        if (!this.f22238s.contains(componentName) || this.f22236j.containsKey(componentName)) {
            return false;
        }
        jx(componentName);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized boolean l(Intent intent, s sVar, int i2, String str) throws RemoteException {
        try {
            ComponentName component = intent.getComponent();
            if (!this.f22235a.containsKey(component)) {
                com.byazt.ou.hp hpVarJx = jx(intent, str);
                if (hpVarJx == null) {
                    return false;
                }
                this.f22235a.put(component, hpVarJx);
            }
            com.byazt.ou.hp hpVar = this.f22235a.get(component);
            if (!this.jx.containsKey(component)) {
                this.jx.put(component, hpVar.onBind(intent));
            }
            IBinder iBinder = this.jx.get(component);
            if (iBinder != null) {
                if (this.f22236j.containsKey(component)) {
                    if (!this.f22236j.get(component).contains(sVar)) {
                        this.f22236j.get(component).add(sVar);
                        this.f22239w.put(sVar, intent);
                        sVar.hp(component, iBinder);
                    }
                } else {
                    l lVar = new l();
                    lVar.add(sVar);
                    this.f22236j.put(component, lVar);
                    this.f22239w.put(sVar, intent);
                    sVar.hp(component, iBinder);
                }
            }
            return true;
        } catch (Throwable th) {
            throw th;
        }
    }
}
