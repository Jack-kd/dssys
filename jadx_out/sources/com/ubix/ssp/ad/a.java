package com.ubix.ssp.ad;

import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.Rect;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Base64;
import android.widget.Toast;
import androidx.annotation.NonNull;
import com.bykv.vk.component.ttvideo.player.C;
import com.qq.e.comm.constants.ErrorCode;
import com.ubix.ssp.ad.b;
import com.ubix.ssp.ad.d.k;
import com.ubix.ssp.ad.d.l;
import com.ubix.ssp.ad.e.a0.d;
import com.ubix.ssp.ad.e.a0.f;
import com.ubix.ssp.ad.e.v.e;
import com.ubix.ssp.ad.e.x.a;
import com.ubix.ssp.ad.e.y.a.a;
import com.ubix.ssp.ad.e.y.a.b;
import com.ubix.ssp.ad.e.y.a.c;
import com.ubix.ssp.ad.e.y.a.f;
import com.ubix.ssp.ad.e.y.a.g;
import com.ubix.ssp.ad.e.z.h;
import com.ubix.ssp.open.AdError;
import com.ubix.ssp.open.ParamsReview;
import com.ubix.ssp.open.nativee.UBiXNativeInteractionListener;
import com.ubix.ssp.open.video.UBiXRewardVideoExtra;
import java.io.File;
import java.io.InputStream;
import java.lang.ref.SoftReference;
import java.lang.reflect.Field;
import java.nio.charset.Charset;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.UUID;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes5.dex */
public abstract class a extends a.e {

    /* renamed from: b, reason: collision with root package name */
    public static final String f45536b = "a";

    /* renamed from: c, reason: collision with root package name */
    protected Context f45539c;

    /* renamed from: d, reason: collision with root package name */
    protected String f45540d;

    /* renamed from: e, reason: collision with root package name */
    protected List<com.ubix.ssp.ad.d.a> f45541e;

    /* renamed from: g, reason: collision with root package name */
    protected boolean f45543g;

    /* renamed from: k, reason: collision with root package name */
    protected String f45547k;

    /* renamed from: m, reason: collision with root package name */
    protected long f45549m;

    /* renamed from: n, reason: collision with root package name */
    private long f45550n;

    /* renamed from: r, reason: collision with root package name */
    protected z f45554r;

    /* renamed from: s, reason: collision with root package name */
    protected SoftReference<com.ubix.ssp.ad.e.z.h> f45555s;

    /* renamed from: y, reason: collision with root package name */
    protected com.ubix.ssp.ad.e.s.e f45561y;

    /* renamed from: h, reason: collision with root package name */
    protected int f45544h = 1;

    /* renamed from: i, reason: collision with root package name */
    protected int f45545i = 0;

    /* renamed from: j, reason: collision with root package name */
    private long f45546j = 0;

    /* renamed from: l, reason: collision with root package name */
    protected String f45548l = "";

    /* renamed from: o, reason: collision with root package name */
    protected long f45551o = 0;

    /* renamed from: p, reason: collision with root package name */
    private int f45552p = 0;

    /* renamed from: q, reason: collision with root package name */
    protected boolean f45553q = false;

    /* renamed from: t, reason: collision with root package name */
    private HashMap<String, Object> f45556t = new HashMap<>();

    /* renamed from: u, reason: collision with root package name */
    protected int f45557u = 1;

    /* renamed from: v, reason: collision with root package name */
    protected UBiXRewardVideoExtra f45558v = null;

    /* renamed from: w, reason: collision with root package name */
    protected boolean f45559w = false;

    /* renamed from: x, reason: collision with root package name */
    private boolean f45560x = false;

    /* renamed from: z, reason: collision with root package name */
    protected HashMap<String, String> f45562z = new HashMap<>();

    /* renamed from: A, reason: collision with root package name */
    private long f45537A = 0;

    /* renamed from: B, reason: collision with root package name */
    protected long f45538B = 0;

    /* renamed from: f, reason: collision with root package name */
    protected x f45542f = new x(this);

    /* renamed from: com.ubix.ssp.ad.a$a, reason: collision with other inner class name */
    public class C0782a implements f.r {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ boolean f45563a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ com.ubix.ssp.ad.d.a f45564b;

        /* renamed from: c, reason: collision with root package name */
        final /* synthetic */ com.ubix.ssp.ad.g.c f45565c;

        /* renamed from: d, reason: collision with root package name */
        final /* synthetic */ HashMap f45566d;

        public C0782a(boolean z2, com.ubix.ssp.ad.d.a aVar, com.ubix.ssp.ad.g.c cVar, HashMap map) {
            this.f45563a = z2;
            this.f45564b = aVar;
            this.f45565c = cVar;
            this.f45566d = map;
        }

        @Override // com.ubix.ssp.ad.e.a0.f.r
        public boolean a() {
            if (this.f45563a) {
                return true;
            }
            return a.this.a(this.f45564b, this.f45565c != null, this.f45566d);
        }
    }

    public interface a0 {
        void a(int i2);
    }

    public class b implements f.o {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ com.ubix.ssp.ad.d.a f45568a;

        public b(com.ubix.ssp.ad.d.a aVar) {
            this.f45568a = aVar;
        }

        @Override // com.ubix.ssp.ad.e.a0.f.o
        public void a() {
            SoftReference<com.ubix.ssp.ad.e.z.h> softReference = a.this.f45555s;
            if (softReference == null || softReference.get() == null) {
                return;
            }
            a aVar = a.this;
            aVar.b(aVar.f45555s.get().getType(), this.f45568a);
        }
    }

    public class c implements f.s {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ com.ubix.ssp.ad.d.a f45570a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ HashMap f45571b;

        public c(com.ubix.ssp.ad.d.a aVar, HashMap map) {
            this.f45570a = aVar;
            this.f45571b = map;
        }

        @Override // com.ubix.ssp.ad.e.a0.f.s
        public void a() {
            a.this.a(com.ubix.ssp.ad.e.a0.c.e(), this.f45570a, this.f45571b);
        }
    }

    public class d implements f.n {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ com.ubix.ssp.ad.d.a f45573a;

        public d(com.ubix.ssp.ad.d.a aVar) {
            this.f45573a = aVar;
        }

        @Override // com.ubix.ssp.ad.e.a0.f.n
        public void a() {
            SoftReference<com.ubix.ssp.ad.e.z.h> softReference = a.this.f45555s;
            if (softReference == null || softReference.get() == null) {
                return;
            }
            a aVar = a.this;
            aVar.a(aVar.f45555s.get().getType(), this.f45573a);
        }
    }

    public class e implements com.ubix.ssp.ad.e.a0.y.d.a {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ com.ubix.ssp.ad.d.a f45575a;

        public e(com.ubix.ssp.ad.d.a aVar) {
            this.f45575a = aVar;
        }

        @Override // com.ubix.ssp.ad.e.a0.y.d.a
        public void a() {
            com.ubix.ssp.ad.e.a0.u.e("guard", "onIstm begin");
            com.ubix.ssp.ad.e.a0.y.d.d.e().a(System.currentTimeMillis());
        }

        @Override // com.ubix.ssp.ad.e.a0.y.d.a
        public boolean b() {
            com.ubix.ssp.ad.d.l lVarA = a.this.a(this.f45575a.f45759a);
            com.ubix.ssp.ad.e.a0.u.e("guard", "seek parent " + lVarA.v0());
            return lVarA.v0();
        }

        @Override // com.ubix.ssp.ad.e.a0.y.d.a
        public void c() {
            com.ubix.ssp.ad.e.a0.u.e("guard", "onIstm error");
        }

        @Override // com.ubix.ssp.ad.e.a0.y.d.a
        public void a(String str) {
            com.ubix.ssp.ad.e.w.e eVarA;
            String str2;
            String str3;
            com.ubix.ssp.ad.e.a0.u.e("guard", "onIstm end");
            try {
                com.ubix.ssp.ad.e.a0.y.d.d dVarE = com.ubix.ssp.ad.e.a0.y.d.d.e();
                HashMap<String, Object> map = (HashMap) a.this.f45556t.clone();
                if (!TextUtils.isEmpty(this.f45575a.f45759a.f47442d.f47485o)) {
                    HashMap map2 = new HashMap();
                    map.put("EVENT_ATTRS", map2);
                    map.put("EVENT_CODE_ERROR", dVarE.j());
                    map2.put("tx_url", dVarE.g());
                    map2.put("tx_api_url", dVarE.k());
                    map2.put("tx_jmpt", "dplink");
                    map2.put("tx_tms", dVarE.c() + "");
                    map2.put("tx_hk_tms", dVarE.f() + "");
                    if (dVarE.g().equals(dVarE.k())) {
                        eVarA = com.ubix.ssp.ad.e.w.f.a(a.this.f45539c);
                        str2 = "09002";
                        str3 = "dp done";
                    } else {
                        eVarA = com.ubix.ssp.ad.e.w.f.a(a.this.f45539c);
                        str2 = "09003";
                        str3 = "dp error";
                    }
                    eVarA.b(map, str2, str3);
                }
            } finally {
                try {
                } finally {
                }
            }
        }
    }

    public class f implements d.InterfaceC0810d {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ com.ubix.ssp.ad.d.a f45577a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ long f45578b;

        /* renamed from: c, reason: collision with root package name */
        final /* synthetic */ Context f45579c;

        /* renamed from: d, reason: collision with root package name */
        final /* synthetic */ HashMap f45580d;

        public f(com.ubix.ssp.ad.d.a aVar, long j2, Context context, HashMap map) {
            this.f45577a = aVar;
            this.f45578b = j2;
            this.f45579c = context;
            this.f45580d = map;
        }

        @Override // com.ubix.ssp.ad.e.a0.d.InterfaceC0810d
        public void a(int i2) {
            a.this.a(2, this.f45577a);
            if (i2 == 100) {
                if (com.ubix.ssp.ad.d.b.f45785D <= 0 || SystemClock.elapsedRealtime() - this.f45578b <= com.ubix.ssp.ad.d.b.f45785D) {
                    String strA = this.f45577a.f45759a.f47442d.f47483m;
                    try {
                        com.ubix.ssp.ad.e.w.k kVarA = com.ubix.ssp.ad.e.w.k.a(this.f45579c);
                        a.b bVar = this.f45577a.f45759a.f47442d;
                        strA = kVarA.a(0, bVar.f47465M, bVar.f47468P, this.f45580d, bVar.f47483m);
                    } catch (Throwable th) {
                        th.printStackTrace();
                    }
                    String str = strA;
                    if (TextUtils.isEmpty(this.f45577a.f45759a.f47442d.f47483m)) {
                        return;
                    }
                    Context context = this.f45579c;
                    a aVar = a.this;
                    com.ubix.ssp.ad.e.a0.f.a(context, str, aVar.f45545i, aVar.a(this.f45577a.f45759a), a.this.f45540d, this.f45577a.f45759a);
                }
            }
        }

        @Override // com.ubix.ssp.ad.e.a0.d.InterfaceC0810d
        public void b(int i2) {
        }
    }

    public class g implements d.c {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ com.ubix.ssp.ad.d.a f45582a;

        public g(com.ubix.ssp.ad.d.a aVar) {
            this.f45582a = aVar;
        }

        @Override // com.ubix.ssp.ad.e.a0.d.c
        public void a(long j2) {
            a.this.a(2, this.f45582a);
        }

        @Override // com.ubix.ssp.ad.e.a0.d.c
        public void b(long j2) {
        }
    }

    public class h implements d.InterfaceC0810d {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ int f45584a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ com.ubix.ssp.ad.d.a f45585b;

        /* renamed from: c, reason: collision with root package name */
        final /* synthetic */ Context f45586c;

        /* renamed from: d, reason: collision with root package name */
        final /* synthetic */ HashMap f45587d;

        /* renamed from: e, reason: collision with root package name */
        final /* synthetic */ a0 f45588e;

        public h(int i2, com.ubix.ssp.ad.d.a aVar, Context context, HashMap map, a0 a0Var) {
            this.f45584a = i2;
            this.f45585b = aVar;
            this.f45586c = context;
            this.f45587d = map;
            this.f45588e = a0Var;
        }

        @Override // com.ubix.ssp.ad.e.a0.d.InterfaceC0810d
        public void a(int i2) {
            if (i2 == 100 && this.f45584a == 1) {
                String strA = this.f45585b.f45759a.f47442d.f47483m;
                try {
                    com.ubix.ssp.ad.e.w.k kVarA = com.ubix.ssp.ad.e.w.k.a(this.f45586c.getApplicationContext());
                    a.b bVar = this.f45585b.f45759a.f47442d;
                    strA = kVarA.a(0, bVar.f47465M, bVar.f47468P, this.f45587d, bVar.f47483m);
                } catch (Throwable th) {
                    th.printStackTrace();
                }
                String str = strA;
                Context context = this.f45586c;
                a aVar = a.this;
                com.ubix.ssp.ad.e.a0.f.a(context, str, aVar.f45545i, aVar.a(this.f45585b.f45759a), a.this.f45540d, this.f45585b.f45759a);
                a0 a0Var = this.f45588e;
                if (a0Var != null) {
                    a0Var.a(3);
                }
            }
        }

        @Override // com.ubix.ssp.ad.e.a0.d.InterfaceC0810d
        public void b(int i2) {
        }
    }

    public class i implements d.c {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ int f45590a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ com.ubix.ssp.ad.d.a f45591b;

        /* renamed from: c, reason: collision with root package name */
        final /* synthetic */ Context f45592c;

        /* renamed from: d, reason: collision with root package name */
        final /* synthetic */ HashMap f45593d;

        /* renamed from: e, reason: collision with root package name */
        final /* synthetic */ a0 f45594e;

        public i(int i2, com.ubix.ssp.ad.d.a aVar, Context context, HashMap map, a0 a0Var) {
            this.f45590a = i2;
            this.f45591b = aVar;
            this.f45592c = context;
            this.f45593d = map;
            this.f45594e = a0Var;
        }

        @Override // com.ubix.ssp.ad.e.a0.d.c
        public void a(long j2) {
        }

        @Override // com.ubix.ssp.ad.e.a0.d.c
        public void b(long j2) {
            if (j2 >= 1000 || this.f45590a != 1) {
                return;
            }
            String strA = this.f45591b.f45759a.f47442d.f47483m;
            try {
                com.ubix.ssp.ad.e.w.k kVarA = com.ubix.ssp.ad.e.w.k.a(this.f45592c.getApplicationContext());
                a.b bVar = this.f45591b.f45759a.f47442d;
                strA = kVarA.a(0, bVar.f47465M, bVar.f47468P, this.f45593d, bVar.f47483m);
            } catch (Throwable th) {
                th.printStackTrace();
            }
            String str = strA;
            Context context = this.f45592c;
            a aVar = a.this;
            com.ubix.ssp.ad.e.a0.f.a(context, str, aVar.f45545i, aVar.a(this.f45591b.f45759a), a.this.f45540d, this.f45591b.f45759a);
            a0 a0Var = this.f45594e;
            if (a0Var != null) {
                a0Var.a(3);
            }
        }
    }

    public class j implements d.e {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ com.ubix.ssp.ad.e.a0.d f45596a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ d.e f45597b;

        public j(com.ubix.ssp.ad.e.a0.d dVar, d.e eVar) {
            this.f45596a = dVar;
            this.f45597b = eVar;
        }

        @Override // com.ubix.ssp.ad.e.a0.d.e
        public void a(long j2, boolean z2) {
            try {
                com.ubix.ssp.ad.e.a0.u.e(a.f45536b, "blockPredict-onPopup " + j2 + " ; " + z2);
                if (z2) {
                    this.f45596a.c();
                }
            } catch (Exception unused) {
            }
            d.e eVar = this.f45597b;
            if (eVar != null) {
                eVar.a(j2, z2);
            }
        }

        @Override // com.ubix.ssp.ad.e.a0.d.e
        public void b(long j2, boolean z2) {
            try {
                com.ubix.ssp.ad.e.a0.u.e(a.f45536b, "blockPredict-onPopup " + j2 + " ; " + z2);
                if (z2) {
                    this.f45596a.c();
                }
            } catch (Exception unused) {
            }
            d.e eVar = this.f45597b;
            if (eVar != null) {
                eVar.b(j2, z2);
            }
        }
    }

    public class k implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ int f45599a;

        public k(int i2) {
            this.f45599a = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            a.this.a("EVENT_AD_TYPE", Integer.valueOf(this.f45599a));
            Context context = a.this.f45539c;
            if (context != null) {
                com.ubix.ssp.ad.e.w.f.a(context).a(a.this.f45556t);
            }
            a aVar = a.this;
            AdError adErrorB = aVar.b(aVar.f45540d);
            if (adErrorB != null) {
                Message message = new Message();
                message.what = 9;
                message.obj = adErrorB;
                a.this.f45542f.sendMessage(message);
                return;
            }
            com.ubix.ssp.ad.e.x.b bVarA = com.ubix.ssp.ad.e.x.b.a(a.this.f45539c);
            a aVar2 = a.this;
            String str = aVar2.f45540d;
            bVarA.a(str, aVar2.a(aVar2.f45539c, str, this.f45599a), a.this);
            com.ubix.ssp.ad.e.w.f.a(a.this.f45539c).h(a.this.f45556t);
            a aVar3 = a.this;
            aVar3.f45537A = com.ubix.ssp.ad.e.a0.v.c(aVar3.f45539c, "ubix_sp_gold", "pd" + a.this.f45540d);
            a aVar4 = a.this;
            aVar4.f45538B = com.ubix.ssp.ad.e.a0.v.c(aVar4.f45539c, "ubix_sp_gold", "dc" + a.this.f45540d);
        }
    }

    public class l implements d.InterfaceC0810d {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ d.InterfaceC0810d f45601a;

        public l(d.InterfaceC0810d interfaceC0810d) {
            this.f45601a = interfaceC0810d;
        }

        @Override // com.ubix.ssp.ad.e.a0.d.InterfaceC0810d
        public void a(int i2) {
            com.ubix.ssp.ad.e.a0.u.e(a.f45536b, "blockPredict-onDenied " + i2);
            d.InterfaceC0810d interfaceC0810d = this.f45601a;
            if (interfaceC0810d != null) {
                interfaceC0810d.a(i2);
            }
        }

        @Override // com.ubix.ssp.ad.e.a0.d.InterfaceC0810d
        public void b(int i2) {
            com.ubix.ssp.ad.e.a0.u.e(a.f45536b, "blockPredict-onAllowed " + i2);
            d.InterfaceC0810d interfaceC0810d = this.f45601a;
            if (interfaceC0810d != null) {
                interfaceC0810d.b(i2);
            }
        }
    }

    public class m implements d.c {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ String f45603a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ Context f45604b;

        /* renamed from: c, reason: collision with root package name */
        final /* synthetic */ d.c f45605c;

        /* renamed from: d, reason: collision with root package name */
        final /* synthetic */ com.ubix.ssp.ad.e.a0.d f45606d;

        public m(String str, Context context, d.c cVar, com.ubix.ssp.ad.e.a0.d dVar) {
            this.f45603a = str;
            this.f45604b = context;
            this.f45605c = cVar;
            this.f45606d = dVar;
        }

        @Override // com.ubix.ssp.ad.e.a0.d.c
        public void a(long j2) {
            try {
                if (!TextUtils.isEmpty(this.f45603a)) {
                    HashMap<String, Object> map = (HashMap) a.this.f45556t.clone();
                    HashMap map2 = new HashMap();
                    map2.put("ubix_dp_tag_id", this.f45603a);
                    map.put("EVENT_DURATION", Long.valueOf(j2));
                    map.put("EVENT_ATTRS", map2);
                    com.ubix.ssp.ad.e.w.f.a(this.f45604b.getApplicationContext()).b(map, "04001", "");
                }
            } catch (Exception unused) {
            }
            d.c cVar = this.f45605c;
            if (cVar != null) {
                cVar.a(j2);
            }
        }

        @Override // com.ubix.ssp.ad.e.a0.d.c
        public void b(long j2) {
            try {
                com.ubix.ssp.ad.e.a0.u.e(a.f45536b, "blockPredict-onReturned " + j2);
                this.f45606d.c();
            } catch (Exception unused) {
            }
            try {
                if (!TextUtils.isEmpty(this.f45603a)) {
                    HashMap<String, Object> map = (HashMap) a.this.f45556t.clone();
                    HashMap map2 = new HashMap();
                    map2.put("ubix_dp_tag_id", this.f45603a);
                    map.put("EVENT_DURATION", Long.valueOf(j2));
                    map.put("EVENT_ATTRS", map2);
                    com.ubix.ssp.ad.e.w.f.a(this.f45604b.getApplicationContext()).b(map, "04002", "");
                }
            } catch (Exception unused2) {
            }
            d.c cVar = this.f45605c;
            if (cVar != null) {
                cVar.b(j2);
            }
        }
    }

    public class n implements d.f {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ int f45608a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ com.ubix.ssp.ad.e.a0.d f45609b;

        public n(int i2, com.ubix.ssp.ad.e.a0.d dVar) {
            this.f45608a = i2;
            this.f45609b = dVar;
        }

        @Override // com.ubix.ssp.ad.e.a0.d.f
        public void a() {
            try {
                com.ubix.ssp.ad.e.a0.u.e(a.f45536b, "onActivity onHide" + this.f45608a);
                this.f45609b.c();
                x xVar = a.this.f45542f;
                if (xVar != null) {
                    int i2 = this.f45608a;
                    if (i2 == 0) {
                        xVar.sendEmptyMessage(12);
                    } else {
                        xVar.sendEmptyMessageDelayed(12, i2);
                    }
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }

        @Override // com.ubix.ssp.ad.e.a0.d.f
        public void b() {
        }
    }

    public class o extends BroadcastReceiver {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ long f45611a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ boolean f45612b;

        public o(long j2, boolean z2) {
            this.f45611a = j2;
            this.f45612b = z2;
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if ("MainFrameHasError".equals(intent.getAction())) {
                a.this.b(context, intent, this.f45611a, this);
                return;
            }
            if ("MainFrameDestroy".equals(intent.getAction())) {
                a.this.a(context, intent, this.f45611a, this);
            } else if ("WebViewLoadFinished".equals(intent.getAction())) {
                intent.putExtra("onlyFinish", this.f45612b);
                a.this.c(context, intent, this.f45611a, this);
            }
        }
    }

    public class p implements Runnable {
        public p() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                int i2 = com.ubix.ssp.ad.d.b.f45788G;
                int i3 = 1;
                if (i2 == 0) {
                    i2 = 1;
                }
                String string = null;
                if (i2 == 2) {
                    try {
                        if (com.ubix.ssp.ad.d.b.a().getAppList() != null && !com.ubix.ssp.ad.d.b.a().getAppList().isEmpty()) {
                            string = com.ubix.ssp.ad.d.b.a().getAppList().toString();
                            if (!TextUtils.isEmpty(string)) {
                                string = string.replace("[", "").replace("]", "").replace(" ", "");
                            }
                        }
                    } catch (Throwable th) {
                        th.printStackTrace();
                    }
                }
                if (!com.ubix.ssp.ad.d.b.f45794a.getPrivacyManager().isCanGetAppList()) {
                    i3 = 2;
                }
                com.ubix.ssp.ad.e.a0.c.a(i2, i3, string);
            } catch (Throwable th2) {
                th2.printStackTrace();
            }
        }
    }

    public class q implements e.b {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ com.ubix.ssp.ad.b f45615a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ l.a f45616b;

        public q(com.ubix.ssp.ad.b bVar, l.a aVar) {
            this.f45615a = bVar;
            this.f45616b = aVar;
        }

        @Override // com.ubix.ssp.ad.e.v.e.b
        public void a(com.ubix.ssp.ad.e.v.e eVar, String str, String str2, boolean z2) {
            if (this.f45615a.a(this.f45616b)) {
                a.this.l();
            }
        }

        @Override // com.ubix.ssp.ad.e.v.e.b
        public void a(AdError adError) {
        }
    }

    public class r implements Runnable {
        public r() {
        }

        @Override // java.lang.Runnable
        public void run() {
            com.ubix.ssp.ad.e.a0.v.a(a.this.f45539c, "ubix_sp_gold", "pd" + a.this.f45540d, a.this.f45537A);
        }
    }

    public class s implements b.e {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ com.ubix.ssp.ad.d.a f45619a;

        public s(com.ubix.ssp.ad.d.a aVar) {
            this.f45619a = aVar;
        }

        @Override // com.ubix.ssp.ad.b.e
        public void a(int i2, HashMap<String, String> map) {
            a.this.b(this.f45619a, map);
        }
    }

    public class t implements h.c {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ com.ubix.ssp.ad.d.l f45621a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ com.ubix.ssp.ad.d.a f45622b;

        /* renamed from: c, reason: collision with root package name */
        final /* synthetic */ com.ubix.ssp.ad.g.k.c f45623c;

        public t(com.ubix.ssp.ad.d.l lVar, com.ubix.ssp.ad.d.a aVar, com.ubix.ssp.ad.g.k.c cVar) {
            this.f45621a = lVar;
            this.f45622b = aVar;
            this.f45623c = cVar;
        }

        @Override // com.ubix.ssp.ad.e.z.h.c
        public void a(com.ubix.ssp.ad.e.z.h hVar) {
            com.ubix.ssp.ad.g.k.c cVar = this.f45623c;
            if (cVar != null) {
                cVar.a();
            }
        }

        @Override // com.ubix.ssp.ad.e.z.h.c
        public void b(com.ubix.ssp.ad.e.z.h hVar) {
        }

        @Override // com.ubix.ssp.ad.e.z.h.c
        public void c(com.ubix.ssp.ad.e.z.h hVar) {
        }

        @Override // com.ubix.ssp.ad.e.z.h.c
        public void a(com.ubix.ssp.ad.e.z.h hVar, HashMap<String, String> map) {
            try {
                a.this.f45560x = true;
                hVar.a();
                Toast toastMakeText = Toast.makeText(com.ubix.ssp.ad.e.a0.c.e(), "谢谢您的反馈！我们将给您带来更优质的广告体验", 0);
                toastMakeText.setGravity(17, 0, 0);
                toastMakeText.show();
                String str = map.get("dislikeId");
                String str2 = map.get("dislikeContent");
                if (TextUtils.isEmpty(str)) {
                    return;
                }
                if (TextUtils.isEmpty(str2)) {
                    str2 = "";
                }
                HashMap map2 = new HashMap();
                if (!TextUtils.isEmpty(com.ubix.ssp.ad.d.b.f45794a.getUserId())) {
                    map2.put("ubix_tx_uid", com.ubix.ssp.ad.d.b.f45794a.getUserId());
                }
                map2.put("ubix_tx_ctr_config", this.f45621a.C() + "");
                map2.put("ubix_tx_creative_title", this.f45622b.f45759a.f47442d.f47475e);
                map2.put("ubix_tx_creative_desc", this.f45622b.f45759a.f47442d.f47476f);
                map2.put("ubix_tx_ad_source", this.f45622b.f45759a.f47442d.f47490t);
                map2.put("ubix_tx_ad_render_method", a.this.f45557u + "");
                a.this.a("EVENT_ATTRS", map2);
                com.ubix.ssp.ad.e.w.f.a(a.this.f45539c).a(a.this.f45556t, str, str2);
                com.ubix.ssp.ad.g.k.c cVar = this.f45623c;
                if (cVar != null) {
                    cVar.a(str);
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    public class u extends z {

        /* renamed from: f, reason: collision with root package name */
        final /* synthetic */ UBiXNativeInteractionListener f45625f;

        /* renamed from: g, reason: collision with root package name */
        final /* synthetic */ HashMap f45626g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public u(HashMap map, int i2, com.ubix.ssp.ad.e.s.e eVar, UBiXNativeInteractionListener uBiXNativeInteractionListener, HashMap map2) {
            super(map, i2, eVar);
            this.f45625f = uBiXNativeInteractionListener;
            this.f45626g = map2;
        }

        @Override // com.ubix.ssp.ad.a.z, com.ubix.ssp.ad.e.s.e
        public void a(int i2) {
            super.a(i2);
            com.ubix.ssp.ad.e.a0.u.e(a.f45536b, "onStart " + i2);
            UBiXNativeInteractionListener uBiXNativeInteractionListener = this.f45625f;
            if (uBiXNativeInteractionListener != null) {
                uBiXNativeInteractionListener.onAdStatusChanged();
            }
        }

        @Override // com.ubix.ssp.ad.a.z, com.ubix.ssp.ad.e.s.e
        public void b(int i2, int i3) {
            com.ubix.ssp.ad.e.a0.u.e(a.f45536b, "onResume " + i2);
            super.b(i2, i3);
            SoftReference<com.ubix.ssp.ad.e.z.h> softReference = a.this.f45555s;
            if (softReference != null && softReference.get() != null) {
                if (a.this.f45555s.get() instanceof com.ubix.ssp.ad.e.z.e) {
                    ((com.ubix.ssp.ad.e.z.e) a.this.f45555s.get()).setText("下载中" + i3 + "%");
                } else {
                    ((com.ubix.ssp.ad.e.z.g) a.this.f45555s.get()).a("下载中" + i3 + "%", i3);
                }
            }
            UBiXNativeInteractionListener uBiXNativeInteractionListener = this.f45625f;
            if (uBiXNativeInteractionListener != null) {
                uBiXNativeInteractionListener.onAdStatusChanged();
            }
        }

        @Override // com.ubix.ssp.ad.a.z, com.ubix.ssp.ad.e.s.e
        public void c(int i2, int i3) {
            super.c(i2, i3);
            com.ubix.ssp.ad.e.a0.u.e(a.f45536b, "onUpdate " + i3);
            SoftReference<com.ubix.ssp.ad.e.z.h> softReference = a.this.f45555s;
            if (softReference == null || softReference.get() == null) {
                return;
            }
            if (a.this.f45555s.get() instanceof com.ubix.ssp.ad.e.z.e) {
                ((com.ubix.ssp.ad.e.z.e) a.this.f45555s.get()).a(i3);
            } else {
                ((com.ubix.ssp.ad.e.z.g) a.this.f45555s.get()).b(i3);
            }
        }

        @Override // com.ubix.ssp.ad.a.z, com.ubix.ssp.ad.e.s.e
        public void a(int i2, int i3) {
            com.ubix.ssp.ad.e.a0.u.e(a.f45536b, "onPause " + i2);
            super.a(i2, i3);
            SoftReference<com.ubix.ssp.ad.e.z.h> softReference = a.this.f45555s;
            if (softReference != null && softReference.get() != null) {
                if (a.this.f45555s.get() instanceof com.ubix.ssp.ad.e.z.e) {
                    ((com.ubix.ssp.ad.e.z.e) a.this.f45555s.get()).setText("继续下载" + i3 + "%");
                } else {
                    ((com.ubix.ssp.ad.e.z.g) a.this.f45555s.get()).a("继续下载" + i3 + "%", i3);
                }
            }
            com.ubix.ssp.ad.e.s.c.a().a(this, null);
            UBiXNativeInteractionListener uBiXNativeInteractionListener = this.f45625f;
            if (uBiXNativeInteractionListener != null) {
                uBiXNativeInteractionListener.onAdStatusChanged();
            }
        }

        @Override // com.ubix.ssp.ad.a.z, com.ubix.ssp.ad.e.s.e
        public void a(int i2, AdError adError, String str) {
            com.ubix.ssp.ad.e.a0.u.e(a.f45536b, "onFail " + i2);
            super.a(i2, adError, str);
            SoftReference<com.ubix.ssp.ad.e.z.h> softReference = a.this.f45555s;
            if (softReference != null && softReference.get() != null) {
                if (a.this.f45555s.get() instanceof com.ubix.ssp.ad.e.z.e) {
                    ((com.ubix.ssp.ad.e.z.e) a.this.f45555s.get()).setText("重新下载");
                } else {
                    ((com.ubix.ssp.ad.e.z.g) a.this.f45555s.get()).a("重新下载", -999);
                }
            }
            UBiXNativeInteractionListener uBiXNativeInteractionListener = this.f45625f;
            if (uBiXNativeInteractionListener != null) {
                uBiXNativeInteractionListener.onAdStatusChanged();
            }
        }

        @Override // com.ubix.ssp.ad.a.z, com.ubix.ssp.ad.e.s.e
        public void a(int i2, String str) {
            com.ubix.ssp.ad.e.a0.u.e(a.f45536b, "onComplete " + i2);
            super.a(i2, str);
            SoftReference<com.ubix.ssp.ad.e.z.h> softReference = a.this.f45555s;
            if (softReference != null && softReference.get() != null) {
                if (a.this.f45555s.get() instanceof com.ubix.ssp.ad.e.z.e) {
                    ((com.ubix.ssp.ad.e.z.e) a.this.f45555s.get()).setText("立即安装");
                } else {
                    ((com.ubix.ssp.ad.e.z.g) a.this.f45555s.get()).a("立即安装", -999);
                }
            }
            try {
                if (!this.f45626g.containsKey("__NO_CLICK_CONFIRM_KEY__")) {
                    this.f45626g.put("__NO_CLICK_CONFIRM_KEY__", "TRUE");
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
            UBiXNativeInteractionListener uBiXNativeInteractionListener = this.f45625f;
            if (uBiXNativeInteractionListener != null) {
                uBiXNativeInteractionListener.onAdStatusChanged();
            }
            a.this.A();
        }
    }

    public class v implements f.p {
        public v() {
        }

        @Override // com.ubix.ssp.ad.e.a0.f.p
        public void a(com.ubix.ssp.ad.e.z.h hVar) {
            a.this.f45555s = new SoftReference<>(hVar);
        }
    }

    public class w implements f.q {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ com.ubix.ssp.ad.d.a f45629a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ HashMap f45630b;

        public w(com.ubix.ssp.ad.d.a aVar, HashMap map) {
            this.f45629a = aVar;
            this.f45630b = map;
        }

        @Override // com.ubix.ssp.ad.e.a0.f.q
        public void a() {
            a.this.a(this.f45629a, this.f45630b);
        }
    }

    public static class x extends Handler {

        /* renamed from: a, reason: collision with root package name */
        private SoftReference<a> f45632a;

        public x(a aVar) {
            super(Looper.getMainLooper());
            this.f45632a = new SoftReference<>(aVar);
        }

        @Override // android.os.Handler
        public void dispatchMessage(@NonNull Message message) {
            try {
                Field declaredField = Handler.class.getDeclaredField("mCallback");
                declaredField.setAccessible(true);
                declaredField.set(this, null);
                super.dispatchMessage(message);
            } catch (Throwable unused) {
                super.dispatchMessage(message);
            }
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            try {
                super.handleMessage(message);
                SoftReference<a> softReference = this.f45632a;
                if (softReference == null || softReference.get() == null) {
                    return;
                }
                if (message.what == 9) {
                    try {
                        AdError adError = (AdError) message.obj;
                        com.ubix.ssp.ad.e.w.f.a(this.f45632a.get().f45539c).c(this.f45632a.get().f45556t, Integer.parseInt(((com.ubix.ssp.ad.e.a0.a0.a) adError).a()), adError.getErrorMessage());
                    } catch (Exception e2) {
                        e2.printStackTrace();
                    }
                    message.what = 6;
                }
                SoftReference<a> softReference2 = this.f45632a;
                if (softReference2 == null || softReference2.get() == null) {
                    return;
                }
                this.f45632a.get().a(message);
            } catch (Throwable th) {
                try {
                    th.printStackTrace();
                    AdError adErrorJ = com.ubix.ssp.ad.e.a0.a0.a.j(12, "错误！可能对象已经被释放");
                    com.ubix.ssp.ad.e.w.f.a(this.f45632a.get().f45539c).c(this.f45632a.get().f45556t, Integer.parseInt(((com.ubix.ssp.ad.e.a0.a0.a) adErrorJ).a()), adErrorJ.getErrorMessage());
                } catch (Throwable th2) {
                    th2.printStackTrace();
                }
            }
        }
    }

    public interface y {
        void a();

        boolean a(boolean z2);
    }

    public abstract class z implements com.ubix.ssp.ad.e.s.e {

        /* renamed from: a, reason: collision with root package name */
        protected int f45633a;

        /* renamed from: b, reason: collision with root package name */
        protected int f45634b;

        /* renamed from: c, reason: collision with root package name */
        protected com.ubix.ssp.ad.e.s.e f45635c;

        /* renamed from: d, reason: collision with root package name */
        protected HashMap<String, String> f45636d;

        public z() {
            this.f45636d = new HashMap<>();
            this.f45633a = 0;
            if (a.this.f45541e.isEmpty()) {
                return;
            }
            this.f45634b = a.this.f45541e.get(this.f45633a).f45759a.f47442d.f47472b.hashCode();
        }

        @Override // com.ubix.ssp.ad.e.s.e
        public int a() {
            return this.f45634b;
        }

        @Override // com.ubix.ssp.ad.e.s.e
        public void b(int i2, int i3) {
            if (!a.this.f45541e.isEmpty()) {
                a aVar = a.this;
                aVar.a(aVar.f45541e.get(this.f45633a).f45759a, this.f45636d, 306);
            }
            com.ubix.ssp.ad.e.s.e eVar = this.f45635c;
            if (eVar != null) {
                eVar.b(i2, i3);
            }
        }

        @Override // com.ubix.ssp.ad.e.s.e
        public void c(int i2, int i3) {
            com.ubix.ssp.ad.e.s.e eVar = this.f45635c;
            if (eVar != null) {
                eVar.c(i2, i3);
            }
        }

        public z(int i2) {
            this.f45636d = new HashMap<>();
            this.f45633a = i2;
            this.f45634b = a.this.f45541e.get(i2).f45759a.f47442d.f47472b.hashCode();
        }

        @Override // com.ubix.ssp.ad.e.s.e
        public void a(int i2) {
            if (!a.this.f45541e.isEmpty()) {
                a aVar = a.this;
                aVar.a(aVar.f45541e.get(this.f45633a).f45759a, this.f45636d, 301);
            }
            Context context = a.this.f45539c;
            if (context != null) {
                Toast.makeText(context, "开始下载", 1).show();
            }
            com.ubix.ssp.ad.e.s.e eVar = this.f45635c;
            if (eVar != null) {
                eVar.a(i2);
            }
        }

        public z(int i2, int i3) {
            this.f45636d = new HashMap<>();
            this.f45633a = i3;
            this.f45634b = i2;
        }

        @Override // com.ubix.ssp.ad.e.s.e
        public void a(int i2, int i3) {
            if (!a.this.f45541e.isEmpty()) {
                a aVar = a.this;
                aVar.a(aVar.f45541e.get(this.f45633a).f45759a, this.f45636d, 305);
            }
            com.ubix.ssp.ad.e.s.e eVar = this.f45635c;
            if (eVar != null) {
                eVar.a(i2, i3);
            }
        }

        public z(a aVar, HashMap<String, String> map) {
            this(aVar, map, (z) null);
        }

        /* JADX WARN: Removed duplicated region for block: B:10:0x001e  */
        @Override // com.ubix.ssp.ad.e.s.e
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void a(int r5, com.ubix.ssp.open.AdError r6, java.lang.String r7) {
            /*
                r4 = this;
                com.ubix.ssp.ad.e.s.c r0 = com.ubix.ssp.ad.e.s.c.a()
                r0.a(r4, r7)
                if (r6 == 0) goto L1e
                int r0 = r6.getErrorCode()
                r1 = 5
                if (r0 != r1) goto L13
                java.lang.String r0 = "30802"
                goto L20
            L13:
                int r0 = r6.getErrorCode()
                r1 = 8
                if (r0 != r1) goto L1e
                java.lang.String r0 = "30801"
                goto L20
            L1e:
                java.lang.String r0 = "30809"
            L20:
                java.util.HashMap<java.lang.String, java.lang.String> r1 = r4.f45636d
                java.lang.String r2 = "__DOWN_ERR_ID__"
                r1.put(r2, r0)
                com.ubix.ssp.ad.a r0 = com.ubix.ssp.ad.a.this
                java.util.List<com.ubix.ssp.ad.d.a> r0 = r0.f45541e
                boolean r0 = r0.isEmpty()
                if (r0 != 0) goto L46
                com.ubix.ssp.ad.a r0 = com.ubix.ssp.ad.a.this
                java.util.List<com.ubix.ssp.ad.d.a> r1 = r0.f45541e
                int r2 = r4.f45633a
                java.lang.Object r1 = r1.get(r2)
                com.ubix.ssp.ad.d.a r1 = (com.ubix.ssp.ad.d.a) r1
                com.ubix.ssp.ad.e.y.a.a r1 = r1.f45759a
                java.util.HashMap<java.lang.String, java.lang.String> r2 = r4.f45636d
                r3 = 308(0x134, float:4.32E-43)
                r0.a(r1, r2, r3)
            L46:
                com.ubix.ssp.ad.e.s.e r0 = r4.f45635c
                if (r0 == 0) goto L4d
                r0.a(r5, r6, r7)
            L4d:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.ubix.ssp.ad.a.z.a(int, com.ubix.ssp.open.AdError, java.lang.String):void");
        }

        public z(HashMap<String, String> map, int i2, com.ubix.ssp.ad.e.s.e eVar) {
            this.f45636d = new HashMap<>();
            if (map != null) {
                this.f45636d = map;
            }
            this.f45633a = i2;
            if (!a.this.f45541e.isEmpty()) {
                this.f45634b = a.this.f45541e.get(i2).f45773o;
            }
            this.f45635c = eVar;
        }

        @Override // com.ubix.ssp.ad.e.s.e
        public void a(int i2, String str) {
            com.ubix.ssp.ad.e.s.c.a().a(this, str);
            if (!a.this.f45541e.isEmpty()) {
                a aVar = a.this;
                aVar.a(aVar.f45541e.get(this.f45633a).f45759a, this.f45636d, 302);
                a aVar2 = a.this;
                aVar2.a(aVar2.f45541e.get(this.f45633a).f45759a, this.f45636d, 303);
            }
            com.ubix.ssp.ad.e.s.e eVar = this.f45635c;
            if (eVar != null) {
                eVar.a(i2, str);
            }
        }

        public z(a aVar, HashMap<String, String> map, z zVar) {
            this(map, 0, zVar);
        }

        public void a(com.ubix.ssp.ad.e.s.e eVar) {
            this.f45635c = eVar;
        }
    }

    public a(Context context, String str) {
        this.f45547k = "";
        this.f45540d = str;
        this.f45547k = UUID.randomUUID().toString().replace("-", "");
        if (context != null) {
            this.f45539c = context.getApplicationContext();
        }
        a("EVENT_REQUEST_ID", this.f45547k);
        a("EVENT_SLOT_ID", str);
    }

    private int k() {
        HashMap<String, String> map = this.f45562z;
        if (map != null && !map.isEmpty()) {
            String str = this.f45562z.get("sensor_disabled");
            if (!TextUtils.isEmpty(str) && str.equals("1")) {
                return 1;
            }
        }
        return 2;
    }

    private void z() {
        try {
            com.ubix.ssp.ad.e.a0.c.y();
            com.ubix.ssp.ad.e.a0.c.f46115d.execute(new p());
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public void A() {
        com.ubix.ssp.ad.e.a0.u.e("waitInstallResult");
    }

    public int a(com.ubix.ssp.ad.d.a aVar, int i2, HashMap<String, String> map, int i3, int i4, int i5, boolean z2, com.ubix.ssp.ad.g.c cVar, com.ubix.ssp.ad.g.h hVar) {
        l(aVar);
        com.ubix.ssp.ad.e.a0.u.e("clickEventNoTracking " + aVar);
        int iA = new com.ubix.ssp.ad.e.a0.f(a(aVar.f45759a), map).a(aVar, i2, this.f45540d, i3, i4, i5, new v(), new w(aVar, map), new C0782a(z2, aVar, cVar, map), new b(aVar), new c(aVar, map), cVar, new d(aVar), hVar);
        if (iA != 2 && iA != 32 && iA != 31) {
            com.ubix.ssp.ad.e.a0.y.d.d.e().a();
        }
        return iA;
    }

    public abstract void a(Message message);

    public void c(Context context, Intent intent, long j2, BroadcastReceiver broadcastReceiver) {
        if (intent.getBooleanExtra("onlyFinish", true)) {
            com.ubix.ssp.ad.e.a0.m.a(context.getApplicationContext()).a(broadcastReceiver);
        }
    }

    public List<com.ubix.ssp.ad.d.a> d(com.ubix.ssp.ad.e.y.a.e eVar) throws com.ubix.ssp.ad.e.a0.a0.b {
        List<com.ubix.ssp.ad.d.a> listB = b(eVar);
        if (listB == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList(listB);
        int size = arrayList.size();
        int i2 = 0;
        while (i2 < size) {
            Object obj = arrayList.get(i2);
            i2++;
            com.ubix.ssp.ad.d.a aVar = (com.ubix.ssp.ad.d.a) obj;
            if (aVar.f45776r) {
                listB.remove(aVar);
                if (listB.isEmpty()) {
                    throw new com.ubix.ssp.ad.e.a0.a0.b(com.ubix.ssp.ad.e.a0.a0.a.k(5, aVar.f45775q + ""));
                }
            } else {
                AdError adErrorJ = j(aVar);
                if (adErrorJ != null) {
                    this.f45548l = aVar.f45766h;
                    listB.remove(aVar);
                    if (listB.isEmpty()) {
                        throw new com.ubix.ssp.ad.e.a0.a0.b(adErrorJ);
                    }
                } else if (h(aVar)) {
                    continue;
                } else {
                    this.f45548l = aVar.f45766h;
                    listB.remove(aVar);
                    if (listB.isEmpty()) {
                        throw new com.ubix.ssp.ad.e.a0.a0.b(com.ubix.ssp.ad.e.a0.a0.a.k(11, "合规信息缺失"));
                    }
                }
            }
        }
        if (listB.isEmpty()) {
            return null;
        }
        return listB;
    }

    public int e(com.ubix.ssp.ad.d.a aVar) {
        com.ubix.ssp.ad.e.y.a.a aVar2;
        com.ubix.ssp.ad.e.s.g.a aVarC;
        if (aVar == null || (aVar2 = aVar.f45759a) == null || aVar2.f47442d == null || (aVarC = com.ubix.ssp.ad.e.s.b.c().c(aVar.f45773o)) == null) {
            return 0;
        }
        return aVarC.e();
    }

    public int f(com.ubix.ssp.ad.d.a aVar) {
        com.ubix.ssp.ad.e.y.a.a aVar2;
        com.ubix.ssp.ad.e.s.g.b bVarB;
        if (aVar != null && (aVar2 = aVar.f45759a) != null && aVar2.f47442d != null) {
            if (com.ubix.ssp.ad.e.a0.c.g(!TextUtils.isEmpty(aVar.f45779u) ? aVar.f45779u : aVar.f45759a.f47442d.f47478h)) {
                return 1;
            }
            if (TextUtils.isEmpty(aVar.f45759a.f47442d.f47484n)) {
                return 0;
            }
            File file = new File(com.ubix.ssp.ad.e.a0.k.c(this.f45539c), aVar.f45759a.f47442d.f47484n.hashCode() + ".apk");
            if (file.exists() && !TextUtils.isEmpty(com.ubix.ssp.ad.e.a0.c.a(this.f45539c, file.getPath()))) {
                return 8;
            }
            com.ubix.ssp.ad.e.s.g.a aVarC = com.ubix.ssp.ad.e.s.b.c().c(aVar.f45773o);
            if (aVarC != null && (bVarB = aVarC.b()) != null) {
                switch (bVarB.b()) {
                    case 41:
                    case 42:
                    case 43:
                    case 44:
                    case 48:
                        return 4;
                    case 45:
                        return 32;
                    case 46:
                        return 8;
                    case 47:
                        return 16;
                    default:
                        return 0;
                }
            }
        }
        return 0;
    }

    public long g(com.ubix.ssp.ad.d.a aVar) throws NumberFormatException {
        long j2 = 0;
        try {
            if (!aVar.f45772n) {
                return aVar.f45759a.f47443e;
            }
            if (!TextUtils.isEmpty(aVar.f45771m)) {
                try {
                    j2 = Long.parseLong(com.ubix.ssp.ad.e.a0.a.a(Base64.decode(aVar.f45771m, 8)));
                    return j2;
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
            }
            return 0L;
        } catch (Exception unused) {
            return j2;
        }
    }

    public void h() {
    }

    public boolean i() {
        if (System.currentTimeMillis() - this.f45546j < 1000) {
            return true;
        }
        this.f45546j = System.currentTimeMillis();
        return false;
    }

    public abstract AdError j(com.ubix.ssp.ad.d.a aVar);

    public HashMap<String, Object> j() {
        return this.f45556t;
    }

    public String l(int i2) {
        this.f45545i = i2;
        this.f45549m = SystemClock.elapsedRealtime();
        a("EVENT_AD_TYPE", Integer.valueOf(i2));
        Context context = this.f45539c;
        if (context != null) {
            com.ubix.ssp.ad.e.w.f.a(context).a(j());
        }
        AdError adErrorB = b(this.f45540d);
        if (adErrorB != null) {
            com.ubix.ssp.ad.e.a0.u.c(f45536b, "loadAd failed, errorCode:" + adErrorB.getErrorCode() + ", errorMsg:" + adErrorB.getErrorMessage());
            Context context2 = this.f45539c;
            if (context2 != null) {
                com.ubix.ssp.ad.e.w.f.a(context2).c(j(), Integer.parseInt(((com.ubix.ssp.ad.e.a0.a0.a) adErrorB).a()), adErrorB.getErrorMessage());
            }
            return null;
        }
        com.ubix.ssp.ad.e.y.a.d dVarA = a(this.f45539c, this.f45540d, i2);
        if (dVarA != null) {
            try {
                String str = new String(Base64.encode(com.ubix.ssp.ad.e.y.c.f.a(dVarA), 10));
                Context context3 = this.f45539c;
                if (context3 != null) {
                    com.ubix.ssp.ad.e.w.f.a(context3).h(j());
                }
                z();
                return str;
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
        if (this.f45539c != null) {
            AdError adErrorJ = com.ubix.ssp.ad.e.a0.a0.a.j(12, "请求参数异常，请检查传入的广告参数是否正确");
            com.ubix.ssp.ad.e.w.f.a(this.f45539c).c(j(), Integer.parseInt(((com.ubix.ssp.ad.e.a0.a0.a) adErrorJ).a()), adErrorJ.getErrorMessage());
        }
        return null;
    }

    public void m() {
        try {
            Context contextE = com.ubix.ssp.ad.e.a0.c.e();
            if (contextE == null) {
                return;
            }
            Intent intent = new Intent();
            intent.setFlags(C.ENCODING_PCM_MU_LAW);
            intent.setComponent(new ComponentName(contextE.getPackageName(), "com.ubix.ssp.open.comm.AdActivity"));
            intent.putExtra("dance", true);
            contextE.startActivity(intent);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public void n() {
        this.f45553q = true;
    }

    public void o() {
    }

    public void p() {
        this.f45553q = true;
    }

    public void q() {
        long jElapsedRealtime = SystemClock.elapsedRealtime() - this.f45551o;
        if (jElapsedRealtime <= 0) {
            jElapsedRealtime = 0;
        }
        a("EVENT_DURATION", Long.valueOf(jElapsedRealtime));
        com.ubix.ssp.ad.e.w.f.a(this.f45539c).o(this.f45556t);
    }

    public void r() {
        long jElapsedRealtime = SystemClock.elapsedRealtime() - this.f45551o;
        if (jElapsedRealtime <= 0) {
            jElapsedRealtime = 0;
        }
        a("EVENT_DURATION", Long.valueOf(jElapsedRealtime));
        com.ubix.ssp.ad.e.w.f.a(this.f45539c).i(this.f45556t);
    }

    public void s() {
        long jElapsedRealtime = SystemClock.elapsedRealtime() - this.f45551o;
        if (jElapsedRealtime <= 0) {
            jElapsedRealtime = 0;
        }
        a("EVENT_DURATION", Long.valueOf(jElapsedRealtime));
        com.ubix.ssp.ad.e.w.f.a(this.f45539c).b(this.f45556t);
    }

    public void t() {
        long jElapsedRealtime = SystemClock.elapsedRealtime() - this.f45551o;
        if (jElapsedRealtime <= 0) {
            jElapsedRealtime = 0;
        }
        a("EVENT_DURATION", Long.valueOf(jElapsedRealtime));
        com.ubix.ssp.ad.e.w.f.a(this.f45539c).d(this.f45556t);
    }

    public void u() {
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        this.f45550n = jElapsedRealtime;
        long j2 = jElapsedRealtime - this.f45549m;
        if (j2 <= 0) {
            j2 = 0;
        }
        a("EVENT_DURATION", Long.valueOf(j2));
        com.ubix.ssp.ad.e.w.f.a(this.f45539c).m(this.f45556t);
    }

    public void v() {
        com.ubix.ssp.ad.e.w.f.a(this.f45539c).f(this.f45556t);
    }

    public void w() {
        com.ubix.ssp.ad.e.w.f.a(this.f45539c).n(this.f45556t);
    }

    public void x() {
        com.ubix.ssp.ad.e.w.f.a(this.f45539c).g(this.f45556t);
    }

    public void y() {
        this.f45551o = SystemClock.elapsedRealtime();
        long jElapsedRealtime = SystemClock.elapsedRealtime() - this.f45550n;
        if (jElapsedRealtime <= 0) {
            jElapsedRealtime = 0;
        }
        a("EVENT_DURATION", Long.valueOf(jElapsedRealtime));
        com.ubix.ssp.ad.e.w.f.a(this.f45539c).k(this.f45556t);
    }

    private boolean h(com.ubix.ssp.ad.d.a aVar) {
        com.ubix.ssp.ad.e.y.a.a aVar2;
        a.b bVar;
        if (aVar == null || (aVar2 = aVar.f45759a) == null || (bVar = aVar2.f47442d) == null) {
            return false;
        }
        return TextUtils.isEmpty(bVar.f47484n) || com.ubix.ssp.ad.e.a0.c.a(bVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l() {
        try {
            String strD = com.ubix.ssp.ad.e.a0.v.d(this.f45539c, "ubix_sp_gift" + this.f45540d, "joyful");
            if (TextUtils.isEmpty(strD)) {
                strD = "{}";
            }
            JSONObject jSONObject = new JSONObject(strD);
            String strOptString = jSONObject.optString("dataTime", "");
            String str = new SimpleDateFormat("yyyy-MM-dd").format(new Date());
            if (str.equals(strOptString)) {
                jSONObject.put("lastTime", System.currentTimeMillis());
                jSONObject.put("occurred", jSONObject.optInt("occurred") + 1);
            } else {
                jSONObject.put("dataTime", str);
                jSONObject.put("occurred", 1);
                jSONObject.put("lastTime", System.currentTimeMillis());
            }
            com.ubix.ssp.ad.e.a0.v.b(this.f45539c, "ubix_sp_gift" + this.f45540d, "joyful", jSONObject.toString());
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public int a(com.ubix.ssp.ad.d.a aVar, int i2, HashMap<String, String> map, int i3, boolean z2, com.ubix.ssp.ad.g.c cVar) {
        com.ubix.ssp.ad.e.y.a.a aVar2 = aVar.f45759a;
        if (aVar.f45772n) {
            map.put("__AUCTION_PRICE__", aVar.f45771m);
        }
        com.ubix.ssp.ad.d.l lVarA = a(aVar2);
        map.put("__SHOULD_CHECK__", lVarA.F0() + "");
        a(aVar2, lVarA.F0(), map);
        a(aVar2, map, 201);
        return a(aVar, i2, map, lVarA.L(), i3, i2 == 1 ? lVarA.y() : 0, z2, lVarA.o0() ? cVar : null, null);
    }

    public AdError b(String str) {
        if (this.f45539c == null) {
            return com.ubix.ssp.ad.e.a0.a0.a.j(4, "Activity/Context为空");
        }
        if (com.ubix.ssp.ad.d.b.f45796c) {
            return com.ubix.ssp.ad.e.a0.a0.a.j(11, "系统版本过低，无法返回广告");
        }
        if (com.ubix.ssp.ad.d.b.f45795b) {
            return com.ubix.ssp.ad.e.a0.a0.a.j(8, "SDK未初始化");
        }
        if (com.ubix.ssp.ad.d.b.f45802i == 2) {
            return com.ubix.ssp.ad.e.a0.a0.a.j(9, "SDK功能已经关闭");
        }
        if (TextUtils.isEmpty(com.ubix.ssp.ad.d.b.f45810q)) {
            return com.ubix.ssp.ad.e.a0.a0.a.j(1, "APP_ID为空");
        }
        if (TextUtils.isEmpty(str)) {
            return com.ubix.ssp.ad.e.a0.a0.a.j(2, "POS_ID为空");
        }
        if (a(this.f45539c)) {
            return com.ubix.ssp.ad.e.a0.a0.a.j(7, "超过请求频次，请勿频繁调用");
        }
        return null;
    }

    public void d(com.ubix.ssp.ad.d.a aVar) {
        HashMap<String, String> map = new HashMap<>();
        if (aVar.f45772n) {
            map.put("__AUCTION_PRICE__", aVar.f45771m);
        }
        a(aVar.f45759a, map, 101);
    }

    public List<com.ubix.ssp.ad.d.a> e(com.ubix.ssp.ad.e.y.a.e eVar) {
        this.f45541e = new ArrayList();
        for (com.ubix.ssp.ad.e.y.a.a aVar : eVar.f47625c) {
            this.f45541e.add(a(aVar, eVar.f47624b, "__AUCTION_PRICE__"));
        }
        return this.f45541e;
    }

    public void f(String str) {
        try {
            com.ubix.ssp.ad.e.v.e.b().a(str, (e.b) null);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public void g(String str) {
        Context context = this.f45539c;
        if (TextUtils.isEmpty(str)) {
            str = "此广告为厂商应用下载，允许自动下载";
        }
        Toast.makeText(context, str, 0).show();
    }

    public boolean i(com.ubix.ssp.ad.d.a aVar) {
        a.b.m mVar = aVar.f45759a.f47442d.f47491u;
        if (TextUtils.isEmpty(mVar.f47547c) || TextUtils.isEmpty(mVar.f47546b) || !com.ubix.ssp.ad.e.a0.x.c()) {
            return !TextUtils.isEmpty(aVar.f45759a.f47442d.f47485o) ? (com.ubix.ssp.ad.e.a0.c.a(this.f45539c, com.ubix.ssp.ad.e.a0.c.c(aVar.f45759a.f47442d.f47485o)) || TextUtils.isEmpty(aVar.f45759a.f47442d.f47484n)) ? false : true : !TextUtils.isEmpty(aVar.f45759a.f47442d.f47484n);
        }
        return false;
    }

    public String k(int i2) {
        return i2 != 33 ? i2 != 1 ? i2 != 2 ? i2 != 3 ? i2 != 4 ? i2 != 5 ? "unknown" : com.kuaishou.weapon.p0.t.f31275q : "download" : "h5" : com.kuaishou.weapon.p0.t.f31275q : com.baidu.mobads.sdk.internal.a.f10877a : "browser";
    }

    public void m(int i2) {
        this.f45545i = i2;
        this.f45549m = SystemClock.elapsedRealtime();
        this.f45553q = false;
        com.ubix.ssp.ad.e.x.g.b();
        com.ubix.ssp.ad.e.x.g.f47417a.execute(new k(i2));
        z();
    }

    private void k(com.ubix.ssp.ad.d.a aVar) {
        a.b bVar;
        try {
            long jElapsedRealtime = SystemClock.elapsedRealtime() - this.f45549m;
            if (jElapsedRealtime <= 0) {
                jElapsedRealtime = 0;
            }
            a("EVENT_DURATION", Long.valueOf(jElapsedRealtime));
            a("EVENT_BID_CPM", Long.valueOf(aVar.f45759a.f47443e));
            a("EVENT_MATERIAL_ID", aVar.f45759a.f47442d.f47472b);
            com.ubix.ssp.ad.e.y.a.a aVar2 = aVar.f45759a;
            if (aVar2 != null && (bVar = aVar2.f47442d) != null) {
                if (bVar.f47480j != null) {
                    int i2 = 0;
                    while (true) {
                        a.b.C0834b[] c0834bArr = aVar.f45759a.f47442d.f47480j;
                        if (i2 >= c0834bArr.length) {
                            break;
                        }
                        a.b.C0834b c0834b = c0834bArr[i2];
                        if (c0834b != null) {
                            b("EVENT_CREATIVE_URL", c0834b.f47499c);
                        }
                        i2++;
                    }
                }
                a.b.l lVar = aVar.f45759a.f47442d.f47481k;
                if (lVar != null) {
                    b("EVENT_CREATIVE_URL", lVar.f47536b);
                    b("EVENT_CREATIVE_URL", lVar.f47537c);
                }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        com.ubix.ssp.ad.e.w.f.a(this.f45539c).e(this.f45556t);
    }

    private void l(com.ubix.ssp.ad.d.a aVar) {
        if (com.ubix.ssp.ad.e.a0.y.d.c.a().b()) {
            com.ubix.ssp.ad.e.a0.y.d.d dVarE = com.ubix.ssp.ad.e.a0.y.d.d.e();
            if (dVarE.m()) {
                com.ubix.ssp.ad.e.a0.u.e("guard", "is empty");
                String str = this.f45547k;
                a.b bVar = aVar.f45759a.f47442d;
                dVarE.a(str, bVar.f47472b, bVar.f47485o);
                dVarE.a(new e(aVar));
                return;
            }
            com.ubix.ssp.ad.e.a0.u.e("guard", "is not empty");
            HashMap<String, Object> map = (HashMap) this.f45556t.clone();
            HashMap map2 = new HashMap();
            map.put("EVENT_ATTRS", map2);
            map2.put("tx_req_id", dVarE.h());
            map2.put("tx_tms", dVarE.c() + "");
            map2.put("tx_creative_id", dVarE.d());
            map2.put("tx_url", dVarE.g());
            com.ubix.ssp.ad.e.w.f.a(this.f45539c).b(map, "09001", "dp loss");
            dVarE.a();
        }
    }

    public List<com.ubix.ssp.ad.d.a> b(com.ubix.ssp.ad.e.y.a.e eVar) {
        com.ubix.ssp.ad.e.y.a.a[] aVarArr = eVar.f47625c;
        if (aVarArr == null) {
            return null;
        }
        if (aVarArr.length > 0) {
            e(eVar);
            return this.f45541e;
        }
        ArrayList arrayList = new ArrayList();
        com.ubix.ssp.ad.d.a aVar = new com.ubix.ssp.ad.d.a();
        aVar.f45776r = true;
        aVar.f45775q = eVar.f47627e;
        arrayList.add(aVar);
        return arrayList;
    }

    @Deprecated
    public void c(com.ubix.ssp.ad.d.a aVar) {
        try {
            if (com.ubix.ssp.ad.d.b.f45814u) {
                return;
            }
            com.ubix.ssp.ad.e.w.q.a.a(this.f45539c).a(aVar.f45761c);
        } catch (Exception unused) {
        }
    }

    public void d(AdError adError) {
        this.f45553q = true;
        com.ubix.ssp.ad.e.w.f.a(this.f45539c).b(this.f45556t, Integer.parseInt(((com.ubix.ssp.ad.e.a0.a0.a) adError).a()), adError.getErrorMessage());
    }

    public void e(String str) {
        String strB;
        Message message = new Message();
        message.what = 11;
        try {
            if (this.f45549m == 0) {
                this.f45549m = SystemClock.elapsedRealtime();
            }
            JSONObject jSONObject = new JSONObject(str);
            String strOptString = jSONObject.optString("message");
            String strOptString2 = jSONObject.optString("auction_price");
            strB = "";
            try {
                strB = TextUtils.isEmpty(strOptString2) ? "" : com.ubix.ssp.ad.e.a0.a.b(strOptString2.getBytes(Charset.forName("UTF-8")));
                com.ubix.ssp.ad.e.a0.u.a(f45536b, "price=" + strOptString2 + ";encrypt=" + strB);
            } catch (Exception unused) {
            }
            String strOptString3 = jSONObject.optString("request_id");
            if (!TextUtils.isEmpty(strOptString3)) {
                this.f45547k = strOptString3;
            }
            this.f45541e = new ArrayList();
            com.ubix.ssp.ad.d.a aVarA = a(com.ubix.ssp.ad.e.y.a.a.a(Base64.decode(strOptString, 8)), strOptString3, strB);
            aVarA.f45772n = true;
            this.f45541e.add(aVarA);
            AdError adErrorJ = j(aVarA);
            if (adErrorJ == null) {
                this.f45537A = com.ubix.ssp.ad.e.a0.v.c(this.f45539c, "ubix_sp_gold", "pd" + this.f45540d);
                k(aVarA);
                message.what = 10;
                message.obj = this.f45541e;
            } else {
                message.obj = adErrorJ;
            }
            this.f45542f.sendMessage(message);
        } catch (Exception e2) {
            message.obj = com.ubix.ssp.ad.e.a0.a0.a.j(10, "广告解析异常");
            this.f45542f.sendMessage(message);
            e2.printStackTrace();
        }
    }

    public Bundle a(String... strArr) {
        Bundle bundle = new Bundle();
        bundle.putStringArray("IMAGE_URL", strArr);
        return bundle;
    }

    public void b(int i2, com.ubix.ssp.ad.d.a aVar) {
    }

    @Override // com.ubix.ssp.ad.e.x.a
    /* renamed from: c, reason: merged with bridge method [inline-methods] */
    public void a(com.ubix.ssp.ad.e.y.a.e eVar) {
        Message message = new Message();
        try {
            List<com.ubix.ssp.ad.d.a> listD = d(eVar);
            this.f45541e = listD;
            if (listD == null) {
                AdError adErrorK = com.ubix.ssp.ad.e.a0.a0.a.k(7, "Ads解析异常");
                message.what = 6;
                message.obj = adErrorK;
            } else {
                k(listD.get(0));
                message.what = 5;
                message.obj = this.f45541e;
            }
            this.f45542f.sendMessage(message);
        } catch (com.ubix.ssp.ad.e.a0.a0.b e2) {
            message.what = 6;
            message.obj = e2.a();
            this.f45542f.sendMessage(message);
        }
    }

    public void d(String str) {
        com.ubix.ssp.ad.e.w.f.a(this.f45539c).a(this.f45556t, str);
    }

    public z a(HashMap<String, String> map, int i2, com.ubix.ssp.ad.e.s.e eVar) {
        return a(map, i2, eVar, (UBiXNativeInteractionListener) null);
    }

    public void b(Context context) {
        a(context, true);
    }

    public void c(AdError adError) {
        com.ubix.ssp.ad.e.w.f.a(this.f45539c).d(this.f45556t, Integer.parseInt(((com.ubix.ssp.ad.e.a0.a0.a) adError).a()), adError.getErrorMessage());
    }

    public z a(HashMap<String, String> map, int i2, com.ubix.ssp.ad.e.s.e eVar, UBiXNativeInteractionListener uBiXNativeInteractionListener) {
        return new u(map, i2, eVar, uBiXNativeInteractionListener, map);
    }

    public void b(Context context, Intent intent, long j2, BroadcastReceiver broadcastReceiver) {
    }

    public boolean c(String str) {
        List<g.c> list;
        if (!TextUtils.isEmpty(str) && (list = com.ubix.ssp.ad.e.a0.p.f46401g) != null) {
            Iterator<g.c> it = list.iterator();
            while (it.hasNext()) {
                if (str.equals(it.next().f47753d)) {
                    return true;
                }
            }
        }
        return false;
    }

    public com.ubix.ssp.ad.d.a a(com.ubix.ssp.ad.e.y.a.a aVar, String str, String str2) {
        com.ubix.ssp.ad.d.a aVar2 = new com.ubix.ssp.ad.d.a();
        if (com.ubix.ssp.ad.d.b.f45818y != 0 && !com.ubix.ssp.ad.d.b.f45819z && this.f45559w) {
            aVar.f47442d.f47463K = null;
        }
        aVar2.f45759a = aVar;
        aVar2.f45763e = this.f45545i;
        aVar2.f45761c = UUID.randomUUID().toString().replace("-", "");
        aVar2.f45762d = str;
        aVar2.f45769k = 1;
        aVar2.f45764f = com.ubix.ssp.ad.d.b.f45810q;
        aVar2.f45765g = this.f45540d;
        aVar2.f45767i = com.ubix.ssp.ad.e.a0.n.b().b(com.ubix.ssp.ad.e.y.c.f.a(aVar));
        long j2 = aVar.f47448j;
        if (j2 > 0) {
            aVar2.f45768j = j2;
        }
        aVar2.f45770l = System.currentTimeMillis();
        aVar2.f45771m = str2;
        a.b bVar = aVar.f47442d;
        if (bVar != null) {
            aVar2.f45774p = bVar.f47489s;
            aVar2.f45766h = bVar.f47490t;
        }
        aVar2.f45773o = str.hashCode();
        aVar2.f45781w = i(aVar2);
        return aVar2;
    }

    public void b(Context context, com.ubix.ssp.ad.d.a aVar, HashMap<String, String> map, int i2) {
        b(context, aVar, map, i2, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0053  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.ubix.ssp.ad.d.l a(com.ubix.ssp.ad.e.y.a.a r22) {
        /*
            Method dump skipped, instructions count: 1557
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ubix.ssp.ad.a.a(com.ubix.ssp.ad.e.y.a.a):com.ubix.ssp.ad.d.l");
    }

    public void b(Context context, com.ubix.ssp.ad.d.a aVar, HashMap<String, String> map, int i2, a0 a0Var) {
        try {
            a(context, aVar.f45759a.f47442d.f47462J, true, (d.e) null, (d.InterfaceC0810d) new h(i2, aVar, context, map, a0Var), (d.c) new i(i2, aVar, context, map, a0Var));
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public com.ubix.ssp.ad.e.y.a.d a(Context context, String str, int i2) {
        String str2;
        com.ubix.ssp.ad.e.y.a.d dVar = new com.ubix.ssp.ad.e.y.a.d();
        try {
            com.ubix.ssp.ad.e.y.a.k kVar = new com.ubix.ssp.ad.e.y.a.k();
            kVar.f47775b = com.ubix.ssp.ad.d.b.f45794a.getUserId();
            kVar.f47781h = com.ubix.ssp.ad.d.b.a().getPersonalizedState();
            kVar.f47782i = com.ubix.ssp.ad.d.b.a().getProgrammaticRecommendState();
            com.ubix.ssp.ad.e.y.a.i iVar = new com.ubix.ssp.ad.e.y.a.i();
            iVar.f47768c = com.ubix.ssp.ad.e.a0.r.a().h(context);
            iVar.f47769d = com.ubix.ssp.ad.e.a0.r.a().c(context);
            b.a aVar = new b.a();
            aVar.f47590c = i2 == 9 ? 3 : 2;
            aVar.f47591d = new com.ubix.ssp.ad.e.y.a.i[]{iVar};
            k.a aVarA = com.ubix.ssp.ad.d.k.a().a(str);
            com.ubix.ssp.ad.e.y.a.b bVar = new com.ubix.ssp.ad.e.y.a.b();
            bVar.f47569c = a(str);
            if (aVarA != null) {
                bVar.f47588v = aVarA.f45979b;
                bVar.f47587u = aVarA.f45978a;
            }
            bVar.f47570d = i2;
            bVar.f47584r = this.f45557u;
            bVar.f47579m = true;
            bVar.f47571e = 1;
            bVar.f47572f = new b.a[]{aVar};
            bVar.f47577k = com.ubix.ssp.ad.e.a0.x.b();
            bVar.f47585s = k();
            if (this.f45558v != null) {
                b.C0835b c0835b = new b.C0835b();
                c0835b.f47595c = a(this.f45558v.extra);
                c0835b.f47594b = a(this.f45558v.userId);
                bVar.f47586t = c0835b;
            }
            com.ubix.ssp.ad.d.c cVar = new com.ubix.ssp.ad.d.c();
            cVar.f45820a = a(com.ubix.ssp.ad.d.b.f45810q);
            com.ubix.ssp.ad.d.g gVar = new com.ubix.ssp.ad.d.g();
            c.a aVar2 = new c.a();
            aVar2.f47609d = a(com.ubix.ssp.ad.e.a0.c.h());
            double[] dArr = gVar.f45881H;
            aVar2.f47607b = dArr[0];
            aVar2.f47608c = dArr[1];
            com.ubix.ssp.ad.e.y.a.c cVar2 = new com.ubix.ssp.ad.e.y.a.c();
            cVar2.f47596b = a(cVar.f45820a);
            cVar2.f47597c = a(cVar.f45821b);
            cVar2.f47598d = a(cVar.f45822c);
            cVar2.f47599e = a(cVar.f45823d);
            cVar2.f47602h = a(cVar.f45826g);
            cVar2.f47600f = aVar2;
            cVar2.f47601g = cVar.f45825f;
            long j2 = cVar.f45827h;
            com.ubix.ssp.ad.d.b.f45800g = j2;
            if (j2 == 0) {
                str2 = "";
            } else {
                str2 = com.ubix.ssp.ad.d.b.f45800g + "";
            }
            cVar2.f47605k = str2;
            cVar2.f47606l = a(cVar.f45824e);
            com.ubix.ssp.ad.d.e eVar = new com.ubix.ssp.ad.d.e();
            f.b bVar2 = new f.b();
            bVar2.f47676e = a(eVar.f45833a);
            bVar2.f47677f = a(eVar.f45834b);
            bVar2.f47678g = a(eVar.f45838f);
            bVar2.f47685n = a(eVar.f45839g);
            bVar2.f47679h = a(eVar.f45836d);
            bVar2.f47687p = a(eVar.f45837e);
            bVar2.f47680i = a(eVar.f45840h);
            bVar2.f47681j = a(eVar.f45842j);
            bVar2.f47682k = a(eVar.f45844l);
            bVar2.f47683l = a(eVar.f45835c);
            com.ubix.ssp.ad.e.y.a.f fVar = new com.ubix.ssp.ad.e.y.a.f();
            fVar.f47646c = gVar.f45887e;
            fVar.f47638I = a(gVar.f45885c);
            fVar.f47639J = a(gVar.f45886d);
            fVar.f47647d = gVar.f45888f;
            fVar.f47648e = a(gVar.f45889g);
            fVar.f47649f = a(gVar.f45890h);
            fVar.f47644O = a(gVar.f45891i);
            fVar.f47650g = a(gVar.f45892j);
            fVar.f47652i = a(gVar.f45894l);
            fVar.f47651h = a(gVar.f45893k);
            fVar.f47653j = a(gVar.f45896n);
            fVar.f47654k = gVar.f45902t;
            fVar.f47630A = a(gVar.f45879F);
            fVar.f47669z = a(gVar.f45880G);
            fVar.f47668y = a(gVar.f45878E);
            boolean z2 = gVar.f45884b;
            fVar.f47642M = z2;
            int i3 = gVar.f45883a;
            fVar.f47641L = i3;
            if (com.ubix.ssp.ad.d.b.f45818y != 0 && (z2 || i3 == 2)) {
                this.f45559w = true;
            }
            com.ubix.ssp.ad.e.y.a.i iVar2 = new com.ubix.ssp.ad.e.y.a.i();
            iVar2.f47768c = com.ubix.ssp.ad.e.a0.r.a().e(context);
            iVar2.f47769d = com.ubix.ssp.ad.e.a0.r.a().d(context);
            fVar.f47655l = iVar2;
            fVar.f47656m = gVar.f45898p;
            fVar.f47637H = gVar.f45899q;
            fVar.f47657n = a(gVar.f45900r);
            fVar.f47631B = null;
            fVar.f47658o = gVar.f45901s;
            fVar.f47659p = a(gVar.f45903u);
            fVar.f47660q = gVar.f45904v;
            fVar.f47663t = gVar.f45907y;
            fVar.f47667x = gVar.f45874A;
            fVar.f47645b = bVar2;
            fVar.f47661r = a(gVar.f45905w);
            fVar.f47662s = a(gVar.f45906x);
            fVar.f47633D = a(gVar.f45875B);
            fVar.f47632C = a(gVar.f45876C);
            fVar.f47643N = gVar.f45882I;
            try {
                if (System.currentTimeMillis() - com.ubix.ssp.ad.d.b.f45807n < com.ubix.ssp.ad.d.b.f45808o) {
                    com.ubix.ssp.ad.e.a0.p.b(context);
                    fVar.f47635F = com.ubix.ssp.ad.e.a0.p.d();
                    fVar.f47636G = com.ubix.ssp.ad.e.a0.p.e();
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
            dVar.f47616d = kVar;
            dVar.f47622j = 1;
            dVar.f47615c = a("2.10.2.11");
            dVar.f47617e = cVar2;
            dVar.f47618f = fVar;
            dVar.f47619g = new com.ubix.ssp.ad.e.y.a.b[]{bVar};
            dVar.f47620h = a(com.ubix.ssp.ad.d.b.f45809p);
            dVar.f47621i = "";
            dVar.f47623k = "";
            dVar.f47614b = a(this.f45547k);
            if (com.ubix.ssp.ad.e.b.a("slot_req_info")) {
                com.ubix.ssp.ad.d.k.a().b();
            }
        } catch (Throwable th2) {
            th2.printStackTrace();
            Message message = new Message();
            message.what = 9;
            message.obj = com.ubix.ssp.ad.e.a0.a0.a.k(2, "请求参数异常，请检查传入的广告参数是否正确");
            this.f45542f.sendMessage(message);
        }
        return dVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x005f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void b(com.ubix.ssp.ad.b r21, com.ubix.ssp.ad.d.l r22) {
        /*
            r20 = this;
            int r0 = r22.C()
            r1 = r20
            int r2 = r1.f45545i
            r3 = 2
            if (r2 != r3) goto Lf
            int r0 = r22.I()
        Lf:
            r5 = r0
            r0 = r5 & 6
            r2 = 6
            if (r0 != r2) goto L29
            double r2 = r22.W()
            r6 = 4696837146684686336(0x412e848000000000, double:1000000.0)
            double r2 = r2 * r6
            double r6 = r22.i0()
            r8 = 4636737291354636288(0x4059000000000000, double:100.0)
            double r6 = r6 * r8
            double r2 = r2 + r6
        L27:
            r8 = r2
            goto L64
        L29:
            r0 = r5 & 32
            r2 = 32
            if (r0 == r2) goto L5f
            r0 = r5 & 16
            r2 = 16
            if (r0 == r2) goto L5f
            r0 = r5 & 68
            r2 = 68
            if (r0 == r2) goto L5f
            r0 = r5 & 132(0x84, float:1.85E-43)
            r2 = 132(0x84, float:1.85E-43)
            if (r0 != r2) goto L42
            goto L5f
        L42:
            r0 = r5 & 2
            if (r0 != r3) goto L4b
            double r2 = r22.W()
            goto L27
        L4b:
            r0 = r5 & 4
            r2 = 4
            if (r0 != r2) goto L51
            goto L5f
        L51:
            r0 = r5 & 8
            r2 = 8
            if (r0 != r2) goto L5c
            double r2 = r22.v()
            goto L27
        L5c:
            r2 = 0
            goto L27
        L5f:
            double r2 = r22.i0()
            goto L27
        L64:
            int r7 = r22.Z()
            r0 = 1
            if (r7 != r0) goto L71
            int[] r0 = r22.F()
        L6f:
            r11 = r0
            goto L7b
        L71:
            int[] r0 = new int[r0]
            int r2 = r22.T()
            r3 = 0
            r0[r3] = r2
            goto L6f
        L7b:
            int r10 = r22.h0()
            int r6 = r22.V()
            int r12 = r22.X()
            java.lang.String r13 = r22.B()
            java.lang.String r14 = r22.A()
            int r15 = r22.U()
            double r16 = r22.L0()
            boolean r18 = r22.C0()
            boolean r19 = r22.D0()
            r4 = r21
            r4.a(r5, r6, r7, r8, r10, r11, r12, r13, r14, r15, r16, r18, r19)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ubix.ssp.ad.a.b(com.ubix.ssp.ad.b, com.ubix.ssp.ad.d.l):void");
    }

    public ParamsReview a(com.ubix.ssp.ad.e.y.a.a aVar, boolean z2, boolean z3) {
        if (aVar != null) {
            try {
                if (aVar.f47442d != null) {
                    return com.ubix.ssp.ad.d.j.a(aVar, b(aVar), z2, z3);
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
        return null;
    }

    @Override // com.ubix.ssp.ad.e.x.a
    public void b(com.ubix.ssp.ad.e.x.d dVar) {
        Message message = new Message();
        message.what = 6;
        try {
            if (dVar == null) {
                message.obj = com.ubix.ssp.ad.e.a0.a0.a.k(2, "请求参数异常，请检查传入的广告参数是否正确");
            } else if (dVar.f47411c >= 400) {
                message.obj = com.ubix.ssp.ad.e.a0.a0.a.k(4, "响应异常，请根据返回码检查问题" + dVar.f47411c);
            } else {
                Exception exc = dVar.f47413e;
                if (exc != null) {
                    message.obj = com.ubix.ssp.ad.e.a0.a0.a.k(1, exc.toString());
                } else {
                    InputStream inputStream = dVar.f47410b;
                    if (inputStream != null) {
                        message.obj = com.ubix.ssp.ad.e.a0.a0.a.k(1, com.ubix.ssp.ad.e.x.a.a(inputStream));
                    } else {
                        message.obj = com.ubix.ssp.ad.e.a0.a0.a.k(5, "响应异常，请根据返回码检查问题" + dVar.f47411c);
                    }
                }
            }
            this.f45542f.sendMessage(message);
        } catch (Exception e2) {
            message.obj = com.ubix.ssp.ad.e.a0.a0.a.k(1, e2.toString());
            this.f45542f.sendMessage(message);
        }
    }

    private String a(String str) {
        return TextUtils.isEmpty(str) ? "" : str;
    }

    public void b(com.ubix.ssp.ad.e.y.a.a aVar, HashMap<String, String> map) {
        a(aVar, map, 5200);
        a(aVar, map, 5100);
    }

    public void b(AdError adError) {
        HashMap map = new HashMap();
        if (TextUtils.isEmpty(this.f45548l)) {
            com.ubix.ssp.ad.e.w.f.a(this.f45539c).e(this.f45556t, Integer.parseInt(((com.ubix.ssp.ad.e.a0.a0.a) adError).a()), adError.getErrorMessage());
            return;
        }
        try {
            HashMap<String, Object> map2 = (HashMap) this.f45556t.clone();
            map.put("ubix_tx_ad_source", this.f45548l);
            map2.put("EVENT_ATTRS", map);
            com.ubix.ssp.ad.e.w.f.a(this.f45539c).e(map2, Integer.parseInt(((com.ubix.ssp.ad.e.a0.a0.a) adError).a()), adError.getErrorMessage());
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public HashMap<String, String> a(com.ubix.ssp.ad.d.a aVar, long j2, long j3, long j4) {
        HashMap<String, String> map = new HashMap<>();
        map.put("__DURATION__", j3 + "");
        map.put("__PLAY_TIME__", j2 + "");
        map.put("__SKIP_TIME__", j4 + "");
        if (aVar.f45772n) {
            map.put("__AUCTION_PRICE__", aVar.f45771m);
        }
        return map;
    }

    public void b(String str, Object obj) {
        String str2;
        if (obj != null) {
            if (TextUtils.isEmpty(obj + "")) {
                return;
            }
            String str3 = (String) j().get(str);
            if (TextUtils.isEmpty(str3)) {
                str2 = obj + "";
            } else {
                str2 = str3 + "," + obj;
            }
            a(str, str2);
        }
    }

    public void a(int i2, com.ubix.ssp.ad.d.a aVar) {
    }

    public boolean b(com.ubix.ssp.ad.d.a aVar) {
        SoftReference<com.ubix.ssp.ad.e.z.h> softReference;
        SoftReference<com.ubix.ssp.ad.e.z.h> softReference2;
        Context context = this.f45539c;
        boolean zA = com.ubix.ssp.ad.e.s.f.a(context, context.getPackageName());
        com.ubix.ssp.ad.d.l lVarA = a(aVar.f45759a);
        if (lVarA == null) {
            return true;
        }
        int iF = lVarA.f();
        if (iF != 0) {
            if (iF != 2 || (softReference2 = this.f45555s) == null || softReference2.get() == null) {
                return true;
            }
        } else if (!zA || (softReference = this.f45555s) == null || softReference.get() == null) {
            return true;
        }
        this.f45555s.get().a();
        return true;
    }

    public void a(int i2, Object... objArr) {
        if (i2 != 0) {
            d(k(i2));
        }
    }

    public boolean b(com.ubix.ssp.ad.d.a aVar, HashMap<String, String> map) {
        this.f45543g = true;
        if (map.containsKey("__MULTI_CLICK_KEY__")) {
            s();
        } else {
            t();
        }
        return true;
    }

    public void a(Context context, Intent intent, long j2, BroadcastReceiver broadcastReceiver) {
        com.ubix.ssp.ad.e.a0.m.a(context).a(broadcastReceiver);
    }

    public boolean b(com.ubix.ssp.ad.e.y.a.a aVar) {
        try {
            int i2 = aVar.f47442d.f47489s;
            if (i2 == 1002 || i2 == 1005 || i2 == 4004 || i2 == 9001 || i2 == 9002) {
                return true;
            }
            switch (i2) {
                case 2011:
                case 2012:
                case 2013:
                case 2014:
                    return true;
                default:
                    switch (i2) {
                        case 6012:
                        case 6013:
                        case 6014:
                            return true;
                        default:
                            return false;
                    }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
            return false;
        }
    }

    public void a(Context context, com.ubix.ssp.ad.d.a aVar, HashMap<String, String> map) {
        if (com.ubix.ssp.ad.d.b.f45784C == 2) {
            a(context, "", true, (d.e) null, (d.InterfaceC0810d) new f(aVar, SystemClock.elapsedRealtime(), context, map), (d.c) new g(aVar));
        }
    }

    public void a(Context context, com.ubix.ssp.ad.d.a aVar, HashMap<String, String> map, int i2) {
        a(context, aVar, map, i2, (a0) null);
    }

    public void a(Context context, com.ubix.ssp.ad.d.a aVar, HashMap<String, String> map, int i2, a0 a0Var) {
        if (i2 == 1) {
            String strA = aVar.f45759a.f47442d.f47483m;
            try {
                com.ubix.ssp.ad.e.w.k kVarA = com.ubix.ssp.ad.e.w.k.a(context.getApplicationContext());
                a.b bVar = aVar.f45759a.f47442d;
                strA = kVarA.a(0, bVar.f47465M, bVar.f47468P, map, bVar.f47483m);
            } catch (Throwable th) {
                th.printStackTrace();
            }
            com.ubix.ssp.ad.e.a0.f.a(context, strA, this.f45545i, a(aVar.f45759a), this.f45540d, aVar.f45759a);
            if (a0Var != null) {
                a0Var.a(3);
            }
        }
    }

    public void a(Context context, String str, boolean z2) {
        a(context, str, z2, (d.e) null, (d.InterfaceC0810d) null, (d.c) null);
    }

    public void a(Context context, String str, boolean z2, d.e eVar, d.InterfaceC0810d interfaceC0810d, d.c cVar) {
        if (z2) {
            com.ubix.ssp.ad.e.a0.d dVar = new com.ubix.ssp.ad.e.a0.d(context);
            dVar.a(new j(dVar, eVar));
            dVar.a(new l(interfaceC0810d));
            dVar.a(new m(str, context, cVar, dVar));
        }
    }

    public void a(Context context, boolean z2) {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("MainFrameHasError");
        intentFilter.addAction("MainFrameDestroy");
        intentFilter.addAction("WebViewLoadFinished");
        com.ubix.ssp.ad.e.a0.m.a(context).a(new o(SystemClock.elapsedRealtime(), z2), intentFilter);
    }

    public void a(Context context, boolean z2, int i2) {
        if (z2) {
            com.ubix.ssp.ad.e.a0.d dVar = new com.ubix.ssp.ad.e.a0.d(context);
            dVar.a(new n(i2, dVar));
        }
    }

    public void a(Bundle bundle) {
        HashMap<String, Object> map;
        com.ubix.ssp.ad.e.w.e eVarA;
        String str;
        try {
            if (bundle.getInt("__SENSOR_INFO_TYPE__") == 1) {
                map = (HashMap) this.f45556t.clone();
                HashMap map2 = new HashMap();
                map2.put("ubix_tx_ca", String.format("%.2f_%.2f_%.2f", Float.valueOf(bundle.getFloat("__UBIX_ACC_X__")), Float.valueOf(bundle.getFloat("__UBIX_ACC_Y__")), Float.valueOf(bundle.getFloat("__UBIX_ACC_Z__"))));
                map2.put("ubix_tx_ma", String.format("%.2f_%.2f_%.2f", Float.valueOf(bundle.getFloat("__X_MAX_ACC__")), Float.valueOf(bundle.getFloat("__Y_MAX_ACC__")), Float.valueOf(bundle.getFloat("__Z_MAX_ACC__"))));
                map2.put("ubix_tx_tr", String.format("%.2f_%.2f_%.2f", Float.valueOf(bundle.getFloat("__TURN_X__")), Float.valueOf(bundle.getFloat("__TURN_Y__")), Float.valueOf(bundle.getFloat("__TURN_Z__"))));
                map2.put("ubix_tx_tt", String.format("%s", Long.valueOf(bundle.getLong("__TURN_TIME__"))));
                map.put("EVENT_ATTRS", map2);
                eVarA = com.ubix.ssp.ad.e.w.f.a(this.f45539c);
                str = "08001";
            } else {
                if (bundle.getInt("__SENSOR_INFO_TYPE__") != 0) {
                    return;
                }
                map = (HashMap) this.f45556t.clone();
                HashMap map3 = new HashMap();
                map3.put("ubix_tx_nss", bundle.getString("__SENSOR_UN_SUPPORT_LIST__"));
                map3.put("ubix_tx_sc", bundle.getString("__SENSOR_UN_RECEIVE__"));
                map.put("EVENT_ATTRS", map3);
                eVarA = com.ubix.ssp.ad.e.w.f.a(this.f45539c);
                str = "08002";
            }
            eVarA.b(map, str, "");
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public void a(com.ubix.ssp.ad.b bVar, com.ubix.ssp.ad.d.l lVar) {
        l.a aVarE = lVar.E();
        if (lVar.E0() && a(aVarE)) {
            if (aVarE.h()) {
                if (bVar.a(aVarE)) {
                    l();
                }
            } else {
                if (TextUtils.isEmpty(aVarE.e())) {
                    return;
                }
                com.ubix.ssp.ad.e.v.e.b().a(aVarE.e(), new q(bVar, aVarE));
            }
        }
    }

    public void a(com.ubix.ssp.ad.d.a aVar, int i2, long j2, long j3, long j4) {
        com.ubix.ssp.ad.e.y.a.a aVar2;
        HashMap<String, String> mapA;
        int i3;
        int i4 = this.f45552p;
        if (i2 >= i4 * 25) {
            if (i4 == 0) {
                com.ubix.ssp.ad.e.a0.u.b("Video at start: (" + i2 + "%)");
                aVar2 = aVar.f45759a;
                mapA = a(aVar, 0L, j3, j4);
                i3 = 5000;
            } else if (i4 == 1) {
                com.ubix.ssp.ad.e.a0.u.b("Video at first quartile: (" + i2 + "%)");
                aVar2 = aVar.f45759a;
                mapA = a(aVar, j2, j3, j4);
                i3 = ErrorCode.NO_AD_FILL_FOR_LIST_EMPTY;
            } else {
                if (i4 != 2) {
                    if (i4 == 3) {
                        com.ubix.ssp.ad.e.a0.u.b("Video at third quartile: (" + i2 + "%)");
                        aVar2 = aVar.f45759a;
                        mapA = a(aVar, j2, j3, j4);
                        i3 = 5075;
                    }
                    this.f45552p++;
                }
                com.ubix.ssp.ad.e.a0.u.b("Video at midpoint: (" + i2 + "%)");
                aVar2 = aVar.f45759a;
                mapA = a(aVar, j2, j3, j4);
                i3 = 5050;
            }
            a(aVar2, mapA, i3);
            this.f45552p++;
        }
    }

    public void a(com.ubix.ssp.ad.d.a aVar, com.ubix.ssp.ad.b bVar, com.ubix.ssp.ad.d.l lVar, HashMap<String, String> map) {
        int iAbs;
        if (a(map, lVar.w(), lVar.x(), System.currentTimeMillis() - com.ubix.ssp.ad.d.b.f45800g > lVar.K(), lVar.a())) {
            if ("3".equals(map.get("__CLICK_AREA__"))) {
                bVar.setShakeTrigger(true);
                long jElapsedRealtime = SystemClock.elapsedRealtime() - this.f45551o;
                if (jElapsedRealtime <= lVar.X()) {
                    return;
                }
                if (jElapsedRealtime <= lVar.X() + lVar.Y() && (iAbs = (int) Math.abs(jElapsedRealtime - (lVar.X() + lVar.Y()))) > 50) {
                    bVar.a(iAbs, new s(aVar));
                    return;
                }
            } else if ("6".equals(map.get("__CLICK_AREA__"))) {
                bVar.setShakeTrigger(true);
                b(aVar, map);
                return;
            } else if (bVar != null) {
                bVar.i();
            }
            b(aVar, map);
        }
    }

    public void a(com.ubix.ssp.ad.d.a aVar, com.ubix.ssp.ad.d.l lVar) {
        a(aVar, lVar, (com.ubix.ssp.ad.g.k.c) null);
    }

    public void a(com.ubix.ssp.ad.d.a aVar, com.ubix.ssp.ad.d.l lVar, com.ubix.ssp.ad.g.k.c cVar) {
        if (this.f45560x) {
            Toast toastMakeText = Toast.makeText(com.ubix.ssp.ad.e.a0.c.e(), "您已提交反馈！请勿重复提交", 0);
            toastMakeText.setGravity(17, 0, 0);
            toastMakeText.show();
        } else {
            Bundle bundle = new Bundle();
            bundle.putInt("TYPE", 4);
            com.ubix.ssp.ad.e.a0.c.a(this.f45539c, bundle, new t(lVar, aVar, cVar), (h.b) null);
        }
    }

    public void a(com.ubix.ssp.ad.d.a aVar, HashMap<String, String> map) {
        a(aVar);
        map.put("__DOWN_ERR_ID__", "30803");
        a(aVar.f45759a, map, 308);
    }

    public void a(com.ubix.ssp.ad.e.y.a.a aVar, int i2) {
        a(aVar, new HashMap<>(), i2);
    }

    public void a(com.ubix.ssp.ad.e.y.a.a aVar, long j2) {
        try {
            HashMap<String, String> map = new HashMap<>();
            map.put("__second_price__", j2 + "");
            com.ubix.ssp.ad.e.w.k.a(this.f45539c).a(aVar.f47442d, map, 701);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public void a(com.ubix.ssp.ad.e.y.a.a aVar, HashMap<String, String> map) {
        try {
            com.ubix.ssp.ad.e.w.k.a(this.f45539c).a(aVar.f47442d, map, 702);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public void a(com.ubix.ssp.ad.e.y.a.a aVar, HashMap<String, String> map, int i2) {
        com.ubix.ssp.ad.e.w.k.a(this.f45539c).a(aVar.f47442d, map, i2);
    }

    private void a(com.ubix.ssp.ad.e.y.a.a aVar, boolean z2, HashMap<String, String> map) {
        if (z2) {
            try {
                if (aVar.f47447i.equals("121")) {
                    map.put("__U_TB_CHECK__", com.ubix.ssp.ad.e.a0.c.q() + "");
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    public void a(AdError adError) {
        if (this.f45553q) {
            return;
        }
        this.f45553q = true;
        com.ubix.ssp.ad.e.w.f.a(this.f45539c).a(this.f45556t, Integer.parseInt(((com.ubix.ssp.ad.e.a0.a0.a) adError).a()), adError.getErrorMessage());
    }

    public void a(String str, Object obj) {
        this.f45556t.put(str, obj);
    }

    public void a(HashMap<String, String> map) {
        if (map == null) {
            return;
        }
        this.f45562z = map;
    }

    public boolean a(Context context) {
        return false;
    }

    public boolean a(com.ubix.ssp.ad.d.a aVar) {
        com.ubix.ssp.ad.e.s.d dVarC;
        Context context;
        try {
            Context context2 = this.f45539c;
            boolean zA = com.ubix.ssp.ad.e.s.f.a(context2, context2.getPackageName());
            com.ubix.ssp.ad.d.l lVarA = a(aVar.f45759a);
            if (lVarA != null) {
                int iE = lVarA.e();
                if (iE == 1) {
                    dVarC = com.ubix.ssp.ad.e.s.b.c();
                    context = this.f45539c;
                } else if (iE == 2 && !zA) {
                    dVarC = com.ubix.ssp.ad.e.s.b.c();
                    context = this.f45539c;
                }
                dVarC.a(context, aVar.f45773o);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        return true;
    }

    public boolean a(com.ubix.ssp.ad.d.a aVar, boolean z2, HashMap<String, String> map) {
        try {
            int iB = com.ubix.ssp.ad.e.s.b.c().b(aVar.f45773o);
            b(aVar);
            if (iB == 47) {
                this.f45554r = null;
            }
            com.ubix.ssp.ad.e.a0.u.e("triggerGlobalDownloadWindow status=" + iB + ";" + this.f45555s);
            if (!z2 && iB == 44) {
                com.ubix.ssp.ad.e.s.b.c().a(this.f45539c, aVar.f45773o);
                SoftReference<com.ubix.ssp.ad.e.z.h> softReference = this.f45555s;
                if (softReference != null && softReference.get() != null) {
                    ((com.ubix.ssp.ad.e.z.e) this.f45555s.get()).setText("下载继续");
                }
                return false;
            }
            if (iB == 45) {
                com.ubix.ssp.ad.e.s.b.c().b(this.f45539c, aVar.f45773o);
                if (this.f45554r == null) {
                    this.f45554r = a(map, this.f45541e.indexOf(aVar), this.f45561y);
                }
                com.ubix.ssp.ad.e.s.c.a().a(this.f45554r);
                return false;
            }
            if (iB == 43 || iB == 46) {
                if (this.f45554r == null) {
                    this.f45554r = a(map, this.f45541e.indexOf(aVar), this.f45561y);
                }
                com.ubix.ssp.ad.e.s.c.a().a(this.f45554r);
            }
            if (this.f45554r != null) {
                return true;
            }
            com.ubix.ssp.ad.e.s.c cVarA = com.ubix.ssp.ad.e.s.c.a();
            z zVarA = a(map, this.f45541e.indexOf(aVar), this.f45561y);
            this.f45554r = zVarA;
            cVarA.a(zVarA);
            return true;
        } catch (Exception e2) {
            e2.printStackTrace();
            return false;
        }
    }

    private boolean a(l.a aVar) throws JSONException {
        try {
            if (aVar.d() <= 0 && aVar.b() <= 0) {
                return true;
            }
            String strD = com.ubix.ssp.ad.e.a0.v.d(this.f45539c, "ubix_sp_gift" + this.f45540d, "joyful");
            if (TextUtils.isEmpty(strD)) {
                strD = "{}";
            }
            JSONObject jSONObject = new JSONObject(strD);
            String str = new SimpleDateFormat("yyyy-MM-dd").format(new Date());
            if (str.equals(jSONObject.optString("dataTime", ""))) {
                return (aVar.d() <= 0 || jSONObject.optInt("occurred", 0) < aVar.d()) && Math.abs(System.currentTimeMillis() - jSONObject.optLong("lastTime", 0L)) / 1000 > ((long) (aVar.b() * 60));
            }
            jSONObject.put("dataTime", str);
            jSONObject.put("occurred", 0);
            jSONObject.put("lastTime", 0);
            com.ubix.ssp.ad.e.a0.v.b(this.f45539c, "ubix_sp_gift" + this.f45540d, "joyful", jSONObject.toString());
            return true;
        } catch (Exception e2) {
            e2.printStackTrace();
            return false;
        }
    }

    private boolean a(HashMap<String, String> map, long j2, boolean z2, Rect rect) throws NumberFormatException {
        if (rect != null && z2) {
            try {
                if (System.currentTimeMillis() - this.f45537A < j2) {
                    return false;
                }
                if (!TextUtils.isEmpty(map.get("adLeft")) && !TextUtils.isEmpty(map.get("adRight")) && !TextUtils.isEmpty(map.get("adTop")) && !TextUtils.isEmpty(map.get("adBottom"))) {
                    String str = map.get("adLeft");
                    Objects.requireNonNull(str);
                    int i2 = Integer.parseInt(str);
                    String str2 = map.get("adRight");
                    Objects.requireNonNull(str2);
                    int i3 = Integer.parseInt(str2);
                    String str3 = map.get("adTop");
                    Objects.requireNonNull(str3);
                    int i4 = Integer.parseInt(str3);
                    String str4 = map.get("adBottom");
                    Objects.requireNonNull(str4);
                    int i5 = Integer.parseInt(str4);
                    int i6 = i3 - i2;
                    int i7 = i5 - i4;
                    rect.left = i2 + ((rect.left * i6) / 100);
                    rect.top = i4 + ((rect.top * i7) / 100);
                    rect.right = i3 - ((i6 * rect.right) / 100);
                    rect.bottom = i5 - ((i7 * rect.bottom) / 100);
                }
                if (!TextUtils.isEmpty(map.get("__UP_X__")) && !TextUtils.isEmpty(map.get("__UP_Y__"))) {
                    this.f45537A = System.currentTimeMillis();
                    String str5 = map.get("__UP_X__");
                    Objects.requireNonNull(str5);
                    int iIntValue = Float.valueOf(str5).intValue();
                    String str6 = map.get("__UP_Y__");
                    Objects.requireNonNull(str6);
                    if (rect.contains(iIntValue, Float.valueOf(str6).intValue())) {
                        map.put("__CLICK_AREA__", "1");
                        com.ubix.ssp.ad.e.a0.c.y();
                        com.ubix.ssp.ad.e.a0.c.f46115d.execute(new r());
                        return true;
                    }
                }
            } catch (Exception unused) {
            }
        }
        return false;
    }

    public boolean a(HashMap<String, String> map, Rect rect, long j2, boolean z2, boolean z3) {
        if (TextUtils.isEmpty(map.get("__CLICK_TRIGGER__"))) {
            return a(map, j2, z2, rect);
        }
        if ("4".equals(map.get("__CLICK_AREA__")) || "11".equals(map.get("__CLICK_AREA__")) || "7".equals(map.get("__CLICK_AREA__"))) {
            if (z3 || (!TextUtils.isEmpty(map.get("__INSIDE_AREA__")) && "true".equals(map.get("__INSIDE_AREA__")))) {
                return true;
            }
        } else if (TextUtils.isEmpty(map.get("__INSIDE_AREA__")) || "true".equals(map.get("__INSIDE_AREA__"))) {
            return true;
        }
        return a(map, j2, z2, rect);
    }
}
