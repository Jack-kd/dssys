package com.ubix.ssp.ad.e.a0;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.bytedance.pangle.LocalBroadcastManager;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Objects;
import java.util.Set;

/* loaded from: classes5.dex */
public class m {

    /* renamed from: a, reason: collision with root package name */
    private static final Object f46346a = new Object();

    /* renamed from: b, reason: collision with root package name */
    private static m f46347b;

    /* renamed from: c, reason: collision with root package name */
    private final Context f46348c;

    /* renamed from: g, reason: collision with root package name */
    private final Handler f46352g;

    /* renamed from: d, reason: collision with root package name */
    private final HashMap<BroadcastReceiver, ArrayList<c>> f46349d = new HashMap<>();

    /* renamed from: e, reason: collision with root package name */
    private final HashMap<String, ArrayList<c>> f46350e = new HashMap<>();

    /* renamed from: f, reason: collision with root package name */
    private final ArrayList<b> f46351f = new ArrayList<>();

    /* renamed from: h, reason: collision with root package name */
    private boolean f46353h = false;

    public class a extends Handler {
        public a(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (message.what != 1) {
                super.handleMessage(message);
            } else {
                m.this.a();
            }
        }
    }

    public static final class b {

        /* renamed from: a, reason: collision with root package name */
        final Intent f46355a;

        /* renamed from: b, reason: collision with root package name */
        final ArrayList<c> f46356b;

        public b(Intent intent, ArrayList<c> arrayList) {
            this.f46355a = intent;
            this.f46356b = arrayList;
        }
    }

    public static final class c {

        /* renamed from: a, reason: collision with root package name */
        final IntentFilter f46357a;

        /* renamed from: b, reason: collision with root package name */
        final BroadcastReceiver f46358b;

        /* renamed from: c, reason: collision with root package name */
        boolean f46359c;

        /* renamed from: d, reason: collision with root package name */
        boolean f46360d;

        public c(IntentFilter intentFilter, BroadcastReceiver broadcastReceiver) {
            this.f46357a = intentFilter;
            this.f46358b = broadcastReceiver;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder(128);
            sb.append("Receiver{");
            sb.append(this.f46358b);
            sb.append(" filter=");
            sb.append(this.f46357a);
            if (this.f46360d) {
                sb.append(" DEAD");
            }
            sb.append("}");
            return sb.toString();
        }
    }

    private m(Context context) {
        this.f46348c = context;
        this.f46352g = new a(context.getMainLooper());
    }

    public static m a(Context context) {
        m mVar;
        synchronized (f46346a) {
            try {
                if (f46347b == null) {
                    f46347b = new m(context.getApplicationContext());
                }
                mVar = f46347b;
            } catch (Throwable th) {
                throw th;
            }
        }
        return mVar;
    }

    public void b(Intent intent) {
        if (a(intent)) {
            a();
        }
    }

    public void a() {
        int size;
        b[] bVarArr;
        while (true) {
            synchronized (this.f46349d) {
                try {
                    size = this.f46351f.size();
                    if (size <= 0) {
                        return;
                    }
                    bVarArr = new b[size];
                    this.f46351f.toArray(bVarArr);
                    this.f46351f.clear();
                } catch (Throwable th) {
                    throw th;
                }
            }
            for (int i2 = 0; i2 < size; i2++) {
                b bVar = bVarArr[i2];
                int size2 = bVar.f46356b.size();
                for (int i3 = 0; i3 < size2; i3++) {
                    c cVar = bVar.f46356b.get(i3);
                    if (!cVar.f46360d) {
                        cVar.f46358b.onReceive(this.f46348c, bVar.f46355a);
                    }
                }
            }
        }
    }

    public void a(BroadcastReceiver broadcastReceiver) {
        synchronized (this.f46349d) {
            try {
                this.f46353h = false;
                ArrayList<c> arrayListRemove = this.f46349d.remove(broadcastReceiver);
                if (arrayListRemove != null) {
                    for (int size = arrayListRemove.size() - 1; size >= 0; size--) {
                        c cVar = arrayListRemove.get(size);
                        cVar.f46360d = true;
                        for (int i2 = 0; i2 < cVar.f46357a.countActions(); i2++) {
                            String action = cVar.f46357a.getAction(i2);
                            ArrayList<c> arrayList = this.f46350e.get(action);
                            if (arrayList != null) {
                                for (int size2 = arrayList.size() - 1; size2 >= 0; size2--) {
                                    c cVar2 = arrayList.get(size2);
                                    if (cVar2.f46358b == broadcastReceiver) {
                                        cVar2.f46360d = true;
                                        arrayList.remove(size2);
                                    }
                                }
                                if (arrayList.size() <= 0) {
                                    this.f46350e.remove(action);
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
        synchronized (this.f46349d) {
            try {
                this.f46353h = true;
                c cVar = new c(intentFilter, broadcastReceiver);
                ArrayList<c> arrayList = this.f46349d.get(broadcastReceiver);
                if (arrayList == null) {
                    arrayList = new ArrayList<>(1);
                    this.f46349d.put(broadcastReceiver, arrayList);
                }
                arrayList.add(cVar);
                for (int i2 = 0; i2 < intentFilter.countActions(); i2++) {
                    String action = intentFilter.getAction(i2);
                    ArrayList<c> arrayList2 = this.f46350e.get(action);
                    if (arrayList2 == null) {
                        arrayList2 = new ArrayList<>(1);
                        this.f46350e.put(action, arrayList2);
                    }
                    arrayList2.add(cVar);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public boolean a(Intent intent) {
        int iMatch;
        synchronized (this.f46349d) {
            try {
                String action = intent.getAction();
                String strResolveTypeIfNeeded = intent.resolveTypeIfNeeded(this.f46348c.getContentResolver());
                Uri data = intent.getData();
                String scheme = intent.getScheme();
                Set<String> categories = intent.getCategories();
                boolean z2 = (intent.getFlags() & 8) != 0;
                if (z2) {
                    intent.toString();
                }
                ArrayList<c> arrayList = this.f46350e.get(intent.getAction());
                if (arrayList != null) {
                    if (z2) {
                        arrayList.toString();
                    }
                    ArrayList arrayList2 = null;
                    for (int i2 = 0; i2 < arrayList.size(); i2++) {
                        c cVar = arrayList.get(i2);
                        if (z2) {
                            Objects.toString(cVar.f46357a);
                        }
                        if (!cVar.f46359c && (iMatch = cVar.f46357a.match(action, strResolveTypeIfNeeded, scheme, data, categories, LocalBroadcastManager.TAG)) >= 0) {
                            if (z2) {
                                Integer.toHexString(iMatch);
                            }
                            if (arrayList2 == null) {
                                arrayList2 = new ArrayList();
                            }
                            arrayList2.add(cVar);
                            cVar.f46359c = true;
                        }
                    }
                    if (arrayList2 != null) {
                        for (int i3 = 0; i3 < arrayList2.size(); i3++) {
                            ((c) arrayList2.get(i3)).f46359c = false;
                        }
                        this.f46351f.add(new b(intent, arrayList2));
                        if (!this.f46352g.hasMessages(1)) {
                            this.f46352g.sendEmptyMessage(1);
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
}
