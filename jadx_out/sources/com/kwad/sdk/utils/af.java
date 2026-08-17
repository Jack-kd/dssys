package com.kwad.sdk.utils;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.Uri;
import android.os.Handler;
import android.os.Message;
import com.bytedance.pangle.LocalBroadcastManager;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Objects;
import java.util.Set;

/* loaded from: classes4.dex */
public final class af {
    private static af bpk;
    private static final Object mLock = new Object();
    private final Context bpg;
    private final HashMap<BroadcastReceiver, ArrayList<b>> bph = new HashMap<>();
    private final HashMap<String, ArrayList<b>> bpi = new HashMap<>();
    private final ArrayList<a> bpj = new ArrayList<>();
    private final Handler jk;

    public static final class a {
        final ArrayList<b> bpm;
        final Intent intent;

        public a(Intent intent, ArrayList<b> arrayList) {
            this.intent = intent;
            this.bpm = arrayList;
        }
    }

    public static final class b {
        final BroadcastReceiver bpn;
        boolean bpo;
        boolean bpp;
        final IntentFilter filter;

        public b(IntentFilter intentFilter, BroadcastReceiver broadcastReceiver) {
            this.filter = intentFilter;
            this.bpn = broadcastReceiver;
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder(128);
            sb.append("Receiver{");
            sb.append(this.bpn);
            sb.append(" filter=");
            sb.append(this.filter);
            if (this.bpp) {
                sb.append(" DEAD");
            }
            sb.append("}");
            return sb.toString();
        }
    }

    private af(Context context) {
        this.bpg = context;
        this.jk = new Handler(context.getMainLooper()) { // from class: com.kwad.sdk.utils.af.1
            @Override // android.os.Handler
            public final void handleMessage(Message message) {
                if (message.what != 1) {
                    super.handleMessage(message);
                } else {
                    af.this.UR();
                }
            }
        };
    }

    public static af dj(Context context) {
        af afVar;
        synchronized (mLock) {
            try {
                if (bpk == null) {
                    bpk = new af(context.getApplicationContext());
                }
                afVar = bpk;
            } catch (Throwable th) {
                throw th;
            }
        }
        return afVar;
    }

    public final void UR() {
        int size;
        a[] aVarArr;
        while (true) {
            synchronized (this.bph) {
                try {
                    size = this.bpj.size();
                    if (size <= 0) {
                        return;
                    }
                    aVarArr = new a[size];
                    this.bpj.toArray(aVarArr);
                    this.bpj.clear();
                } catch (Throwable th) {
                    throw th;
                }
            }
            for (int i2 = 0; i2 < size; i2++) {
                a aVar = aVarArr[i2];
                int size2 = aVar.bpm.size();
                for (int i3 = 0; i3 < size2; i3++) {
                    b bVar = aVar.bpm.get(i3);
                    if (!bVar.bpp) {
                        bVar.bpn.onReceive(this.bpg, aVar.intent);
                    }
                }
            }
        }
    }

    public final void a(BroadcastReceiver broadcastReceiver, IntentFilter intentFilter) {
        synchronized (this.bph) {
            try {
                b bVar = new b(intentFilter, broadcastReceiver);
                ArrayList<b> arrayList = this.bph.get(broadcastReceiver);
                if (arrayList == null) {
                    arrayList = new ArrayList<>(1);
                    this.bph.put(broadcastReceiver, arrayList);
                }
                arrayList.add(bVar);
                for (int i2 = 0; i2 < intentFilter.countActions(); i2++) {
                    String action = intentFilter.getAction(i2);
                    ArrayList<b> arrayList2 = this.bpi.get(action);
                    if (arrayList2 == null) {
                        arrayList2 = new ArrayList<>(1);
                        this.bpi.put(action, arrayList2);
                    }
                    arrayList2.add(bVar);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final boolean i(Intent intent) {
        int iMatch;
        synchronized (this.bph) {
            try {
                String action = intent.getAction();
                String strResolveTypeIfNeeded = intent.resolveTypeIfNeeded(this.bpg.getContentResolver());
                Uri data = intent.getData();
                String scheme = intent.getScheme();
                Set<String> categories = intent.getCategories();
                boolean z2 = (intent.getFlags() & 8) != 0;
                if (z2) {
                    intent.toString();
                }
                ArrayList<b> arrayList = this.bpi.get(intent.getAction());
                if (arrayList != null) {
                    if (z2) {
                        arrayList.toString();
                    }
                    ArrayList arrayList2 = null;
                    for (int i2 = 0; i2 < arrayList.size(); i2++) {
                        b bVar = arrayList.get(i2);
                        if (z2) {
                            Objects.toString(bVar.filter);
                        }
                        if (!bVar.bpo && (iMatch = bVar.filter.match(action, strResolveTypeIfNeeded, scheme, data, categories, LocalBroadcastManager.TAG)) >= 0) {
                            if (z2) {
                                Integer.toHexString(iMatch);
                            }
                            if (arrayList2 == null) {
                                arrayList2 = new ArrayList();
                            }
                            arrayList2.add(bVar);
                            bVar.bpo = true;
                        }
                    }
                    if (arrayList2 != null) {
                        for (int i3 = 0; i3 < arrayList2.size(); i3++) {
                            ((b) arrayList2.get(i3)).bpo = false;
                        }
                        this.bpj.add(new a(intent, arrayList2));
                        if (!this.jk.hasMessages(1)) {
                            this.jk.sendEmptyMessage(1);
                        }
                        return true;
                    }
                }
                return false;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void unregisterReceiver(BroadcastReceiver broadcastReceiver) {
        synchronized (this.bph) {
            try {
                ArrayList<b> arrayListRemove = this.bph.remove(broadcastReceiver);
                if (arrayListRemove == null) {
                    return;
                }
                for (int size = arrayListRemove.size() - 1; size >= 0; size--) {
                    b bVar = arrayListRemove.get(size);
                    bVar.bpp = true;
                    for (int i2 = 0; i2 < bVar.filter.countActions(); i2++) {
                        String action = bVar.filter.getAction(i2);
                        ArrayList<b> arrayList = this.bpi.get(action);
                        if (arrayList != null) {
                            for (int size2 = arrayList.size() - 1; size2 >= 0; size2--) {
                                b bVar2 = arrayList.get(size2);
                                if (bVar2.bpn == broadcastReceiver) {
                                    bVar2.bpp = true;
                                    arrayList.remove(size2);
                                }
                            }
                            if (arrayList.size() <= 0) {
                                this.bpi.remove(action);
                            }
                        }
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
