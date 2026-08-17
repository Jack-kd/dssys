package com.smartdigimkt.k;

import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import com.smartdigimkt.sdk.core.SDKContext;
import com.umeng.commonsdk.statistics.UMErrorCode;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;

/* loaded from: classes5.dex */
public final class p implements Handler.Callback {

    /* renamed from: a, reason: collision with root package name */
    public final b0 f41165a;

    /* renamed from: b, reason: collision with root package name */
    public volatile HandlerThread f41166b;

    /* renamed from: c, reason: collision with root package name */
    public Handler f41167c;

    /* renamed from: d, reason: collision with root package name */
    public final List f41168d = Collections.synchronizedList(new ArrayList());

    /* renamed from: e, reason: collision with root package name */
    public final Map f41169e = Collections.synchronizedMap(new HashMap());

    /* renamed from: f, reason: collision with root package name */
    public int f41170f;

    public p(b0 b0Var) {
        this.f41165a = b0Var;
    }

    public final void a(r rVar, int i2) {
        b0 b0Var;
        com.smartdigimkt.m3.e eVar;
        if (rVar == null || (b0Var = this.f41165a) == null) {
            return;
        }
        rVar.f41202y = i2;
        com.smartdigimkt.m3.c cVar = rVar.f41187j;
        if (cVar == null || (eVar = cVar.f41832w) == null || eVar.f41842B0 == 1) {
            ((com.smartdigimkt.j.u) b0Var).a(rVar);
        } else if (SDKContext.getInstance().f44123l) {
            ((com.smartdigimkt.j.u) this.f41165a).a(rVar);
        }
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        try {
            int i2 = message.what;
            Object obj = message.obj;
            if (obj instanceof r) {
                r rVar = (r) obj;
                String str = rVar.f41192o;
                List list = this.f41168d;
                if (list != null) {
                    if (list.contains(str)) {
                        return false;
                    }
                    this.f41168d.add(str);
                }
                a(rVar, i2);
                List list2 = (List) this.f41169e.get(Integer.valueOf(i2));
                if (list2 != null) {
                    list2.remove(rVar);
                    this.f41169e.put(Integer.valueOf(i2), list2);
                }
            }
        } catch (Throwable th) {
            th.getMessage();
        }
        return false;
    }

    public final void a(ArrayList arrayList) {
        b0 b0Var;
        List list;
        Context contextD = SDKContext.getInstance().d();
        ArrayList arrayList2 = new ArrayList();
        for (int i2 = 0; i2 < arrayList.size(); i2++) {
            r rVar = (r) arrayList.get(i2);
            if (!com.smartdigimkt.n.b.b(contextD, rVar.f41182e) && (b0Var = this.f41165a) != null) {
                if (((com.smartdigimkt.j.u) b0Var).a(rVar.f41192o) && ((list = this.f41168d) == null || !list.contains(rVar.f41192o))) {
                    arrayList2.add(rVar);
                }
            }
        }
        arrayList2.size();
        if (arrayList2.size() == 0) {
            return;
        }
        this.f41169e.put(3, arrayList2);
        if (this.f41166b == null) {
            synchronized (p.class) {
                try {
                    if (this.f41166b == null) {
                        this.f41166b = new HandlerThread("sdm_apk_installer");
                        this.f41166b.start();
                        this.f41167c = new Handler(this.f41166b.getLooper(), this);
                    }
                } catch (Throwable th) {
                    th.getMessage();
                } finally {
                }
            }
        }
        this.f41170f = (new Random().nextInt(UMErrorCode.E_UM_BE_EMPTY_URL_PATH) + 60) * 1000;
        Handler handler = this.f41167c;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
            Message messageObtainMessage = this.f41167c.obtainMessage(3);
            messageObtainMessage.obj = arrayList2.get(0);
            this.f41167c.sendMessageDelayed(messageObtainMessage, this.f41170f);
        }
    }
}
