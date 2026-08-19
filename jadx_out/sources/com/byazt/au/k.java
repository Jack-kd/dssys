package com.byazt.au;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.RemoteException;
import android.util.SparseArray;
import com.byazt.fu.DownloadTask;
import com.byazt.yk.CSJIndependentProcessDownloadService;
import com.byazt.yk.q;
import java.util.Iterator;
import java.util.List;
import org.json.JSONException;

@com.byazt.kj.hp(hp = {0, 1, 273, 42})
/* loaded from: classes2.dex */
public class k extends com.byazt.yk.hp implements ServiceConnection {

    /* renamed from: w, reason: collision with root package name */
    public static final String f18292w = "k";

    /* renamed from: a, reason: collision with root package name */
    public com.byazt.yk.q f18293a;
    public com.byazt.yk.k eb;

    /* renamed from: s, reason: collision with root package name */
    public int f18294s = -1;

    private void eb() {
        SparseArray<List<DownloadTask>> sparseArrayClone;
        try {
            synchronized (this.hp) {
                sparseArrayClone = this.hp.clone();
                this.hp.clear();
            }
            if (sparseArrayClone == null || sparseArrayClone.size() <= 0 || com.byazt.yk.jx.ud() == null) {
                return;
            }
            for (int i2 = 0; i2 < sparseArrayClone.size(); i2++) {
                List<DownloadTask> list = sparseArrayClone.get(sparseArrayClone.keyAt(i2));
                if (list != null) {
                    Iterator<DownloadTask> it = list.iterator();
                    while (it.hasNext()) {
                        try {
                            this.f18293a.hp(com.byazt.xq.eb.hp(it.next()));
                        } catch (RemoteException unused) {
                        }
                    }
                }
            }
        } catch (Throwable th) {
            com.byazt.nu.hp.l(f18292w, "resumePendingTaskForIndependent failed", th);
        }
    }

    @Override // com.byazt.yk.hp, com.byazt.yk.v
    public IBinder hp(Intent intent) throws JSONException {
        if (intent != null && intent.getBooleanExtra("fix_downloader_db_sigbus", false)) {
            com.byazt.jb.hp.hp("fix_sigbus_downloader_db", true);
        }
        com.byazt.nu.hp.l(f18292w, "onBind IndependentDownloadBinder");
        return new zy();
    }

    @Override // com.byazt.yk.hp, com.byazt.yk.v
    public void jx(DownloadTask downloadTask) {
        if (downloadTask == null) {
            return;
        }
        com.byazt.yk.j.hp().hp(downloadTask.getDownloadId(), true);
        hp hpVarUd = com.byazt.yk.jx.ud();
        if (hpVarUd != null) {
            hpVarUd.hp(downloadTask);
        }
    }

    @Override // com.byazt.yk.hp, com.byazt.yk.v
    public void l(DownloadTask downloadTask) {
        if (downloadTask == null) {
            return;
        }
        String str = f18292w;
        StringBuilder sb = new StringBuilder("tryDownload aidlService == null:");
        sb.append(this.f18293a == null);
        com.byazt.nu.hp.l(str, sb.toString());
        if (this.f18293a == null) {
            hp(downloadTask);
            startService(com.byazt.yk.jx.mp(), this);
        } else {
            eb();
            try {
                this.f18293a.hp(com.byazt.xq.eb.hp(downloadTask));
            } catch (RemoteException unused) {
            }
        }
    }

    @Override // android.content.ServiceConnection
    public void onBindingDied(ComponentName componentName) {
        this.f18293a = null;
        com.byazt.yk.k kVar = this.eb;
        if (kVar != null) {
            kVar.s();
        }
    }

    @Override // android.content.ServiceConnection
    public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        String str = f18292w;
        com.byazt.nu.hp.l(str, "onServiceConnected ");
        this.f18293a = q.hp.hp(iBinder);
        com.byazt.yk.k kVar = this.eb;
        if (kVar != null) {
            kVar.hp(iBinder);
        }
        StringBuilder sb = new StringBuilder("onServiceConnected aidlService!=null");
        sb.append(this.f18293a != null);
        sb.append(" pendingTasks.size:");
        sb.append(this.hp.size());
        com.byazt.nu.hp.l(str, sb.toString());
        if (this.f18293a != null) {
            com.byazt.yk.j.hp().l();
            this.f27989l = true;
            this.f27988j = false;
            int i2 = this.f18294s;
            if (i2 != -1) {
                try {
                    this.f18293a.jl(i2);
                } catch (RemoteException unused) {
                }
            }
            if (this.f18293a != null) {
                eb();
            }
        }
    }

    @Override // android.content.ServiceConnection
    public void onServiceDisconnected(ComponentName componentName) {
        com.byazt.nu.hp.l(f18292w, "onServiceDisconnected ");
        this.f18293a = null;
        this.f27989l = false;
        com.byazt.yk.k kVar = this.eb;
        if (kVar != null) {
            kVar.s();
        }
    }

    @Override // com.byazt.yk.hp
    public void startService(Context context, ServiceConnection serviceConnection) {
        try {
            com.byazt.nu.hp.l(f18292w, "bindService");
            Intent intent = new Intent(context, (Class<?>) CSJIndependentProcessDownloadService.class);
            if (com.byazt.xq.a.hp()) {
                intent.putExtra("fix_downloader_db_sigbus", com.byazt.jb.hp.jx().hp("fix_sigbus_downloader_db"));
            }
            if (serviceConnection != null) {
                context.bindService(intent, serviceConnection, 1);
            }
            context.startService(intent);
        } catch (Throwable unused) {
        }
    }

    @Override // com.byazt.yk.hp
    public void stopService(Context context, ServiceConnection serviceConnection) {
        com.byazt.nu.hp.l(f18292w, "stopService");
        this.f27989l = false;
        Intent intent = new Intent(context, (Class<?>) CSJIndependentProcessDownloadService.class);
        if (serviceConnection != null) {
            context.unbindService(serviceConnection);
        }
        context.stopService(intent);
    }

    @Override // com.byazt.yk.hp, com.byazt.yk.v
    public void hp(com.byazt.yk.k kVar) {
        this.eb = kVar;
    }

    @Override // com.byazt.yk.hp, com.byazt.yk.v
    public void hp(int i2) {
        com.byazt.yk.q qVar = this.f18293a;
        if (qVar == null) {
            this.f18294s = i2;
        } else {
            try {
                qVar.jl(i2);
            } catch (RemoteException unused) {
            }
        }
    }

    @Override // com.byazt.yk.hp, com.byazt.yk.v
    public void startService() {
        if (this.f18293a == null) {
            startService(com.byazt.yk.jx.mp(), this);
        }
    }
}
