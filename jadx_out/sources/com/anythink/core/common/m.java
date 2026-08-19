package com.anythink.core.common;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.Uri;
import android.os.Handler;
import android.os.Message;
import com.bytedance.pangle.LocalBroadcastManager;
import com.sigmob.sdk.base.mta.PointParamKey;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Objects;
import java.util.Set;

/* loaded from: classes2.dex */
public final class m {

    /* renamed from: a, reason: collision with root package name */
    static final int f5493a = 1;

    /* renamed from: b, reason: collision with root package name */
    private static final String f5494b = "InnerBroadcastManager";

    /* renamed from: c, reason: collision with root package name */
    private static final boolean f5495c = false;

    /* renamed from: i, reason: collision with root package name */
    private static final Object f5496i = new Object();

    /* renamed from: j, reason: collision with root package name */
    private static m f5497j;

    /* renamed from: d, reason: collision with root package name */
    private final Context f5498d;

    /* renamed from: e, reason: collision with root package name */
    private final HashMap<BroadcastReceiver, ArrayList<b>> f5499e = new HashMap<>();

    /* renamed from: f, reason: collision with root package name */
    private final HashMap<String, ArrayList<b>> f5500f = new HashMap<>();

    /* renamed from: g, reason: collision with root package name */
    private final ArrayList<a> f5501g = new ArrayList<>();

    /* renamed from: h, reason: collision with root package name */
    private final Handler f5502h;

    public static final class a {

        /* renamed from: a, reason: collision with root package name */
        final Intent f5514a;

        /* renamed from: b, reason: collision with root package name */
        final ArrayList<b> f5515b;

        public a(Intent intent, ArrayList<b> arrayList) {
            this.f5514a = intent;
            this.f5515b = arrayList;
        }
    }

    public static final class b {

        /* renamed from: a, reason: collision with root package name */
        final IntentFilter f5600a;

        /* renamed from: b, reason: collision with root package name */
        final BroadcastReceiver f5601b;

        /* renamed from: c, reason: collision with root package name */
        boolean f5602c;

        /* renamed from: d, reason: collision with root package name */
        boolean f5603d;

        public b(IntentFilter intentFilter, BroadcastReceiver broadcastReceiver) {
            this.f5600a = intentFilter;
            this.f5601b = broadcastReceiver;
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder(128);
            sb.append("Receiver{");
            sb.append(this.f5601b);
            sb.append(" filter=");
            sb.append(this.f5600a);
            if (this.f5603d) {
                sb.append(" DEAD");
            }
            sb.append("}");
            return sb.toString();
        }
    }

    private m(Context context) {
        this.f5498d = context;
        this.f5502h = new Handler(context.getMainLooper()) { // from class: com.anythink.core.common.m.1
            @Override // android.os.Handler
            public final void handleMessage(Message message) {
                if (message.what != 1) {
                    super.handleMessage(message);
                } else {
                    m.this.a();
                }
            }
        };
    }

    private static m a(Context context) {
        m mVar;
        synchronized (f5496i) {
            try {
                if (f5497j == null) {
                    f5497j = new m(context.getApplicationContext());
                }
                mVar = f5497j;
            } catch (Throwable th) {
                throw th;
            }
        }
        return mVar;
    }

    private void b(Intent intent) {
        if (a(intent)) {
            a();
        }
    }

    private void a(BroadcastReceiver broadcastReceiver, IntentFilter intentFilter) {
        synchronized (this.f5499e) {
            try {
                b bVar = new b(intentFilter, broadcastReceiver);
                ArrayList<b> arrayList = this.f5499e.get(broadcastReceiver);
                if (arrayList == null) {
                    arrayList = new ArrayList<>(1);
                    this.f5499e.put(broadcastReceiver, arrayList);
                }
                arrayList.add(bVar);
                for (int i2 = 0; i2 < intentFilter.countActions(); i2++) {
                    String action = intentFilter.getAction(i2);
                    ArrayList<b> arrayList2 = this.f5500f.get(action);
                    if (arrayList2 == null) {
                        arrayList2 = new ArrayList<>(1);
                        this.f5500f.put(action, arrayList2);
                    }
                    arrayList2.add(bVar);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private void a(BroadcastReceiver broadcastReceiver) {
        synchronized (this.f5499e) {
            try {
                ArrayList<b> arrayListRemove = this.f5499e.remove(broadcastReceiver);
                if (arrayListRemove != null) {
                    for (int size = arrayListRemove.size() - 1; size >= 0; size--) {
                        b bVar = arrayListRemove.get(size);
                        bVar.f5603d = true;
                        for (int i2 = 0; i2 < bVar.f5600a.countActions(); i2++) {
                            String action = bVar.f5600a.getAction(i2);
                            ArrayList<b> arrayList = this.f5500f.get(action);
                            if (arrayList != null) {
                                for (int size2 = arrayList.size() - 1; size2 >= 0; size2--) {
                                    b bVar2 = arrayList.get(size2);
                                    if (bVar2.f5601b == broadcastReceiver) {
                                        bVar2.f5603d = true;
                                        arrayList.remove(size2);
                                    }
                                }
                                if (arrayList.size() <= 0) {
                                    this.f5500f.remove(action);
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

    private boolean a(Intent intent) {
        String str;
        synchronized (this.f5499e) {
            try {
                String action = intent.getAction();
                String strResolveTypeIfNeeded = intent.resolveTypeIfNeeded(this.f5498d.getContentResolver());
                Uri data = intent.getData();
                String scheme = intent.getScheme();
                Set<String> categories = intent.getCategories();
                boolean z2 = (intent.getFlags() & 8) != 0;
                if (z2) {
                    intent.toString();
                }
                ArrayList<b> arrayList = this.f5500f.get(intent.getAction());
                if (arrayList != null) {
                    if (z2) {
                        "Action list: ".concat(String.valueOf(arrayList));
                    }
                    ArrayList arrayList2 = null;
                    for (int i2 = 0; i2 < arrayList.size(); i2++) {
                        b bVar = arrayList.get(i2);
                        if (z2) {
                            Objects.toString(bVar.f5600a);
                        }
                        if (!bVar.f5602c) {
                            int iMatch = bVar.f5600a.match(action, strResolveTypeIfNeeded, scheme, data, categories, LocalBroadcastManager.TAG);
                            if (iMatch >= 0) {
                                if (z2) {
                                    Integer.toHexString(iMatch);
                                }
                                if (arrayList2 == null) {
                                    arrayList2 = new ArrayList();
                                }
                                arrayList2.add(bVar);
                                bVar.f5602c = true;
                            } else if (z2) {
                                if (iMatch == -4) {
                                    str = PointParamKey.CATEGORY;
                                } else if (iMatch == -3) {
                                    str = com.umeng.ccg.a.f49772z;
                                } else if (iMatch == -2) {
                                    str = "data";
                                } else if (iMatch != -1) {
                                    str = "unknown reason";
                                } else {
                                    str = "type";
                                }
                                "  Filter did not match: ".concat(str);
                            }
                        }
                    }
                    if (arrayList2 != null) {
                        for (int i3 = 0; i3 < arrayList2.size(); i3++) {
                            ((b) arrayList2.get(i3)).f5602c = false;
                        }
                        this.f5501g.add(new a(intent, arrayList2));
                        if (!this.f5502h.hasMessages(1)) {
                            this.f5502h.sendEmptyMessage(1);
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

    public final void a() {
        int size;
        a[] aVarArr;
        while (true) {
            synchronized (this.f5499e) {
                try {
                    size = this.f5501g.size();
                    if (size <= 0) {
                        return;
                    }
                    aVarArr = new a[size];
                    this.f5501g.toArray(aVarArr);
                    this.f5501g.clear();
                } catch (Throwable th) {
                    throw th;
                }
            }
            for (int i2 = 0; i2 < size; i2++) {
                a aVar = aVarArr[i2];
                int size2 = aVar.f5515b.size();
                for (int i3 = 0; i3 < size2; i3++) {
                    b bVar = aVar.f5515b.get(i3);
                    if (!bVar.f5603d) {
                        bVar.f5601b.onReceive(this.f5498d, aVar.f5514a);
                    }
                }
            }
        }
    }
}
