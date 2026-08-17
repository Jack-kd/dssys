package com.beizi.fusion;

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

/* loaded from: classes2.dex */
public final class ih {

    /* renamed from: f, reason: collision with root package name */
    private static final Object f14458f = new Object();

    /* renamed from: g, reason: collision with root package name */
    private static ih f14459g;

    /* renamed from: a, reason: collision with root package name */
    private final Context f14460a;

    /* renamed from: b, reason: collision with root package name */
    private final HashMap f14461b = new HashMap();

    /* renamed from: c, reason: collision with root package name */
    private final HashMap f14462c = new HashMap();

    /* renamed from: d, reason: collision with root package name */
    private final ArrayList f14463d = new ArrayList();

    /* renamed from: e, reason: collision with root package name */
    private final Handler f14464e;

    public class a extends Handler {
        public a(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (message.what != 1) {
                super.handleMessage(message);
            } else {
                ih.this.a();
            }
        }
    }

    public static final class b {

        /* renamed from: a, reason: collision with root package name */
        final Intent f14466a;

        /* renamed from: b, reason: collision with root package name */
        final ArrayList f14467b;

        public b(Intent intent, ArrayList arrayList) {
            this.f14466a = intent;
            this.f14467b = arrayList;
        }
    }

    public static final class c {

        /* renamed from: a, reason: collision with root package name */
        final IntentFilter f14468a;

        /* renamed from: b, reason: collision with root package name */
        final BroadcastReceiver f14469b;

        /* renamed from: c, reason: collision with root package name */
        boolean f14470c;

        /* renamed from: d, reason: collision with root package name */
        boolean f14471d;

        public c(IntentFilter intentFilter, BroadcastReceiver broadcastReceiver) {
            this.f14468a = intentFilter;
            this.f14469b = broadcastReceiver;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder(128);
            sb.append("Receiver{");
            sb.append(this.f14469b);
            sb.append(" filter=");
            sb.append(this.f14468a);
            if (this.f14471d) {
                sb.append(" DEAD");
            }
            sb.append("}");
            return sb.toString();
        }
    }

    private ih(Context context) {
        this.f14460a = context;
        this.f14464e = new a(context.getMainLooper());
    }

    public static ih a(Context context) {
        ih ihVar;
        synchronized (f14458f) {
            try {
                if (f14459g == null) {
                    f14459g = new ih(context.getApplicationContext());
                }
                ihVar = f14459g;
            } catch (Throwable th) {
                throw th;
            }
        }
        return ihVar;
    }

    public void a(BroadcastReceiver broadcastReceiver, IntentFilter intentFilter) {
        synchronized (this.f14461b) {
            try {
                try {
                    c cVar = new c(intentFilter, broadcastReceiver);
                    ArrayList arrayList = (ArrayList) this.f14461b.get(broadcastReceiver);
                    if (arrayList == null) {
                        arrayList = new ArrayList(1);
                        this.f14461b.put(broadcastReceiver, arrayList);
                    }
                    arrayList.add(cVar);
                    for (int i2 = 0; i2 < intentFilter.countActions(); i2++) {
                        String action = intentFilter.getAction(i2);
                        ArrayList arrayList2 = (ArrayList) this.f14462c.get(action);
                        if (arrayList2 == null) {
                            arrayList2 = new ArrayList(1);
                            this.f14462c.put(action, arrayList2);
                        }
                        arrayList2.add(cVar);
                    }
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void a(BroadcastReceiver broadcastReceiver) {
        ArrayList arrayList;
        synchronized (this.f14461b) {
            try {
                arrayList = (ArrayList) this.f14461b.remove(broadcastReceiver);
            } catch (Exception e2) {
                e2.printStackTrace();
            }
            if (arrayList == null) {
                return;
            }
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                c cVar = (c) arrayList.get(size);
                cVar.f14471d = true;
                for (int i2 = 0; i2 < cVar.f14468a.countActions(); i2++) {
                    String action = cVar.f14468a.getAction(i2);
                    ArrayList arrayList2 = (ArrayList) this.f14462c.get(action);
                    if (arrayList2 != null) {
                        for (int size2 = arrayList2.size() - 1; size2 >= 0; size2--) {
                            c cVar2 = (c) arrayList2.get(size2);
                            if (cVar2.f14469b == broadcastReceiver) {
                                cVar2.f14471d = true;
                                arrayList2.remove(size2);
                            }
                        }
                        if (arrayList2.size() <= 0) {
                            this.f14462c.remove(action);
                        }
                    }
                }
            }
        }
    }

    public boolean a(Intent intent) {
        int iMatch;
        synchronized (this.f14461b) {
            try {
                try {
                    String action = intent.getAction();
                    String strResolveTypeIfNeeded = intent.resolveTypeIfNeeded(this.f14460a.getContentResolver());
                    Uri data = intent.getData();
                    String scheme = intent.getScheme();
                    Set<String> categories = intent.getCategories();
                    boolean z2 = (intent.getFlags() & 8) != 0;
                    if (z2) {
                        intent.toString();
                    }
                    ArrayList arrayList = (ArrayList) this.f14462c.get(intent.getAction());
                    if (arrayList != null) {
                        if (z2) {
                            arrayList.toString();
                        }
                        ArrayList arrayList2 = null;
                        for (int i2 = 0; i2 < arrayList.size(); i2++) {
                            c cVar = (c) arrayList.get(i2);
                            if (z2) {
                                Objects.toString(cVar.f14468a);
                            }
                            if (!cVar.f14470c && (iMatch = cVar.f14468a.match(action, strResolveTypeIfNeeded, scheme, data, categories, LocalBroadcastManager.TAG)) >= 0) {
                                if (z2) {
                                    Integer.toHexString(iMatch);
                                }
                                if (arrayList2 == null) {
                                    arrayList2 = new ArrayList();
                                }
                                arrayList2.add(cVar);
                                cVar.f14470c = true;
                            }
                        }
                        if (arrayList2 != null) {
                            for (int i3 = 0; i3 < arrayList2.size(); i3++) {
                                ((c) arrayList2.get(i3)).f14470c = false;
                            }
                            this.f14463d.add(new b(intent, arrayList2));
                            if (!this.f14464e.hasMessages(1)) {
                                this.f14464e.sendEmptyMessage(1);
                            }
                            return true;
                        }
                    }
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
                return false;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a() {
        int size;
        b[] bVarArr;
        while (true) {
            synchronized (this.f14461b) {
                try {
                    size = this.f14463d.size();
                    if (size <= 0) {
                        return;
                    }
                    bVarArr = new b[size];
                    this.f14463d.toArray(bVarArr);
                    this.f14463d.clear();
                } catch (Throwable th) {
                    throw th;
                }
            }
            for (int i2 = 0; i2 < size; i2++) {
                b bVar = bVarArr[i2];
                int size2 = bVar.f14467b.size();
                for (int i3 = 0; i3 < size2; i3++) {
                    c cVar = (c) bVar.f14467b.get(i3);
                    if (!cVar.f14471d) {
                        cVar.f14469b.onReceive(this.f14460a, bVar.f14466a);
                    }
                }
            }
        }
    }
}
