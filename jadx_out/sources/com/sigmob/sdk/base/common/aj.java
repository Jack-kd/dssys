package com.sigmob.sdk.base.common;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Objects;
import java.util.Set;

/* loaded from: classes4.dex */
public class aj {

    /* renamed from: a, reason: collision with root package name */
    static final int f35725a = 1;

    /* renamed from: b, reason: collision with root package name */
    private static final String f35726b = "LocalBroadcastManager";

    /* renamed from: c, reason: collision with root package name */
    private static final boolean f35727c = false;

    /* renamed from: d, reason: collision with root package name */
    private static final Object f35728d = new Object();

    /* renamed from: e, reason: collision with root package name */
    private static aj f35729e;

    /* renamed from: f, reason: collision with root package name */
    private final Context f35730f;

    /* renamed from: g, reason: collision with root package name */
    private final HashMap<BroadcastReceiver, ArrayList<b>> f35731g = new HashMap<>();

    /* renamed from: h, reason: collision with root package name */
    private final HashMap<String, ArrayList<b>> f35732h = new HashMap<>();

    /* renamed from: i, reason: collision with root package name */
    private final ArrayList<a> f35733i = new ArrayList<>();

    /* renamed from: j, reason: collision with root package name */
    private final Handler f35734j = new Handler(Looper.getMainLooper()) { // from class: com.sigmob.sdk.base.common.aj.1
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (message.what == 1) {
                aj.this.a();
            } else {
                super.handleMessage(message);
            }
        }
    };

    public static final class a {

        /* renamed from: a, reason: collision with root package name */
        final Intent f35736a;

        /* renamed from: b, reason: collision with root package name */
        final ArrayList<b> f35737b;

        public a(Intent intent, ArrayList<b> arrayList) {
            this.f35736a = intent;
            this.f35737b = arrayList;
        }
    }

    public static final class b {

        /* renamed from: a, reason: collision with root package name */
        final IntentFilter f35738a;

        /* renamed from: b, reason: collision with root package name */
        final BroadcastReceiver f35739b;

        /* renamed from: c, reason: collision with root package name */
        boolean f35740c;

        /* renamed from: d, reason: collision with root package name */
        boolean f35741d;

        public b(IntentFilter intentFilter, BroadcastReceiver broadcastReceiver) {
            this.f35738a = intentFilter;
            this.f35739b = broadcastReceiver;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder(128);
            sb.append("Receiver{");
            sb.append(this.f35739b);
            sb.append(" filter=");
            sb.append(this.f35738a);
            if (this.f35741d) {
                sb.append(" DEAD");
            }
            sb.append("}");
            return sb.toString();
        }
    }

    private aj(Context context) {
        this.f35730f = context;
    }

    public static aj a(Context context) {
        aj ajVar;
        synchronized (f35728d) {
            try {
                if (f35729e == null) {
                    f35729e = new aj(context.getApplicationContext());
                }
                ajVar = f35729e;
            } catch (Throwable th) {
                throw th;
            }
        }
        return ajVar;
    }

    public void b(Intent intent) {
        if (a(intent)) {
            a();
        }
    }

    public void a() {
        int size;
        a[] aVarArr;
        while (true) {
            synchronized (this.f35731g) {
                try {
                    size = this.f35733i.size();
                    if (size <= 0) {
                        return;
                    }
                    aVarArr = new a[size];
                    this.f35733i.toArray(aVarArr);
                    this.f35733i.clear();
                } catch (Throwable th) {
                    throw th;
                }
            }
            for (int i2 = 0; i2 < size; i2++) {
                a aVar = aVarArr[i2];
                int size2 = aVar.f35737b.size();
                for (int i3 = 0; i3 < size2; i3++) {
                    b bVar = aVar.f35737b.get(i3);
                    if (!bVar.f35741d) {
                        bVar.f35739b.onReceive(this.f35730f, aVar.f35736a);
                    }
                }
            }
        }
    }

    public void a(BroadcastReceiver broadcastReceiver) {
        synchronized (this.f35731g) {
            try {
                ArrayList<b> arrayListRemove = this.f35731g.remove(broadcastReceiver);
                if (arrayListRemove != null) {
                    for (int size = arrayListRemove.size() - 1; size >= 0; size--) {
                        b bVar = arrayListRemove.get(size);
                        bVar.f35741d = true;
                        for (int i2 = 0; i2 < bVar.f35738a.countActions(); i2++) {
                            String action = bVar.f35738a.getAction(i2);
                            ArrayList<b> arrayList = this.f35732h.get(action);
                            if (arrayList != null) {
                                for (int size2 = arrayList.size() - 1; size2 >= 0; size2--) {
                                    b bVar2 = arrayList.get(size2);
                                    if (bVar2.f35739b == broadcastReceiver) {
                                        bVar2.f35741d = true;
                                        arrayList.remove(size2);
                                    }
                                }
                                if (arrayList.size() <= 0) {
                                    this.f35732h.remove(action);
                                }
                            }
                        }
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void a(BroadcastReceiver broadcastReceiver, IntentFilter intentFilter) {
        synchronized (this.f35731g) {
            try {
                b bVar = new b(intentFilter, broadcastReceiver);
                ArrayList<b> arrayList = this.f35731g.get(broadcastReceiver);
                if (arrayList == null) {
                    arrayList = new ArrayList<>(1);
                    this.f35731g.put(broadcastReceiver, arrayList);
                }
                arrayList.add(bVar);
                for (int i2 = 0; i2 < intentFilter.countActions(); i2++) {
                    String action = intentFilter.getAction(i2);
                    ArrayList<b> arrayList2 = this.f35732h.get(action);
                    if (arrayList2 == null) {
                        arrayList2 = new ArrayList<>(1);
                        this.f35732h.put(action, arrayList2);
                    }
                    arrayList2.add(bVar);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public boolean a(Intent intent) {
        return a(intent, 0);
    }

    public boolean a(Intent intent, int i2) {
        int i3;
        synchronized (this.f35731g) {
            try {
                String action = intent.getAction();
                String strResolveTypeIfNeeded = intent.resolveTypeIfNeeded(this.f35730f.getContentResolver());
                Uri data = intent.getData();
                String scheme = intent.getScheme();
                Set<String> categories = intent.getCategories();
                boolean z2 = (intent.getFlags() & 8) != 0;
                if (z2) {
                    intent.toString();
                }
                ArrayList<b> arrayList = this.f35732h.get(intent.getAction());
                if (arrayList == null) {
                    return false;
                }
                if (z2) {
                    arrayList.toString();
                }
                ArrayList arrayList2 = null;
                int i4 = 0;
                while (i4 < arrayList.size()) {
                    b bVar = arrayList.get(i4);
                    if (z2) {
                        Objects.toString(bVar.f35738a);
                    }
                    if (bVar.f35740c) {
                        i3 = i4;
                    } else {
                        i3 = i4;
                        int iMatch = bVar.f35738a.match(action, strResolveTypeIfNeeded, scheme, data, categories, "LocalBroadcastManager");
                        if (iMatch >= 0) {
                            if (z2) {
                                Integer.toHexString(iMatch);
                            }
                            if (arrayList2 == null) {
                                arrayList2 = new ArrayList();
                            }
                            arrayList2.add(bVar);
                            bVar.f35740c = true;
                        }
                    }
                    i4 = i3 + 1;
                }
                if (arrayList2 == null) {
                    return false;
                }
                for (int i5 = 0; i5 < arrayList2.size(); i5++) {
                    ((b) arrayList2.get(i5)).f35740c = false;
                }
                this.f35733i.add(new a(intent, arrayList2));
                if (!this.f35734j.hasMessages(1)) {
                    if (i2 > 0) {
                        this.f35734j.sendEmptyMessageDelayed(1, i2);
                    } else {
                        this.f35734j.sendEmptyMessage(1);
                    }
                }
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
