package com.octopus.ad.internal.e;

import android.R;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.graphics.Color;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import com.bykv.vk.component.ttvideo.player.C;
import com.octopus.ad.AdActivity;
import com.octopus.ad.internal.b.a;
import com.octopus.ad.internal.p;
import com.octopus.ad.internal.q;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Queue;

/* loaded from: classes4.dex */
public class f extends a {

    /* renamed from: t, reason: collision with root package name */
    public static f f34875t;

    /* renamed from: A, reason: collision with root package name */
    private final Queue<e> f34876A;

    /* renamed from: B, reason: collision with root package name */
    private AdActivity.a f34877B;

    /* renamed from: u, reason: collision with root package name */
    protected boolean f34878u;

    /* renamed from: v, reason: collision with root package name */
    protected boolean f34879v;

    /* renamed from: w, reason: collision with root package name */
    private int f34880w;

    /* renamed from: x, reason: collision with root package name */
    private int f34881x;

    /* renamed from: y, reason: collision with root package name */
    private boolean f34882y;

    /* renamed from: z, reason: collision with root package name */
    private final String f34883z;

    public f(Context context, p pVar, boolean z2, String str) {
        super(context, str);
        this.f34880w = 0;
        this.f34881x = 10000;
        this.f34876A = new LinkedList();
        this.f34877B = null;
        this.f34878u = false;
        this.f34879v = false;
        this.f34747f = pVar;
        this.f34748g = z2;
        this.f34883z = str;
        this.f34744c.a(pVar);
        if (d()) {
            this.f34880w = -16777216;
        } else if (z2) {
            this.f34880w = 0;
        } else {
            this.f34880w = Color.argb(8, 0, 0, 0);
        }
    }

    private boolean b(c cVar) {
        if (cVar != null && !cVar.j()) {
            return true;
        }
        com.octopus.ad.internal.c.f.e(com.octopus.ad.internal.c.f.f34565a, "Loaded an ad with an invalid displayable");
        return false;
    }

    @Override // com.octopus.ad.internal.e.a
    public void a(Context context, AttributeSet attributeSet) {
        super.a(context, attributeSet);
        try {
            this.f34746e.a(-1, this.f34883z);
            DisplayMetrics displayMetricsB = com.octopus.ad.internal.c.b.b(context);
            int top = displayMetricsB.heightPixels;
            int i2 = displayMetricsB.widthPixels;
            try {
                Activity activity = (Activity) context;
                activity.getWindow().getDecorView().getWindowVisibleDisplayFrame(new Rect());
                top -= activity.getWindow().findViewById(R.id.content).getTop();
            } catch (Exception e2) {
                com.octopus.ad.d.b.f.a("OctopusAd", "An Exception Caught", e2);
            }
            q qVarA = q.a();
            int iQ = (int) ((top / qVarA.q()) + 0.5f);
            this.f34744c.b((int) ((i2 / qVarA.p()) + 0.5f));
            this.f34744c.c(iQ);
        } catch (Exception e3) {
            com.octopus.ad.d.b.f.a("OctopusAd", "An Exception Caught", e3);
        }
    }

    @Override // com.octopus.ad.internal.e.a, com.octopus.ad.AdLifeControl
    public void cancel() {
        super.cancel();
        f34875t = null;
        this.f34876A.clear();
    }

    @Override // com.octopus.ad.internal.e.a, com.octopus.ad.AdLifeControl
    public void destroy() {
        super.destroy();
        com.octopus.ad.internal.c.f.b(com.octopus.ad.internal.c.f.f34567c, com.octopus.ad.internal.c.f.a(com.octopus.ad.R.string.destroy_int));
        com.octopus.ad.internal.c cVar = this.f34746e;
        if (cVar != null) {
            cVar.a();
        }
        this.f34876A.clear();
        f34875t = null;
    }

    public AdActivity.a getAdImplementation() {
        return this.f34877B;
    }

    public Queue<e> getAdQueue() {
        return this.f34876A;
    }

    public int getBackgroundColor() {
        com.octopus.ad.internal.c.f.b(com.octopus.ad.internal.c.f.f34567c, com.octopus.ad.internal.c.f.a(com.octopus.ad.R.string.get_bg));
        return this.f34880w;
    }

    public int getCloseButtonDelay() {
        return this.f34881x;
    }

    @Override // com.octopus.ad.internal.a
    public p getMediaType() {
        return this.f34747f;
    }

    @Override // com.octopus.ad.internal.e.a
    public boolean k() {
        return true;
    }

    @Override // com.octopus.ad.internal.e.a, com.octopus.ad.AdLifeControl
    public void onCreateLifeCycle() {
        super.onCreateLifeCycle();
    }

    @Override // com.octopus.ad.internal.e.a, com.octopus.ad.AdLifeControl
    public void onDestroyLifeCycle() {
        super.onDestroyLifeCycle();
    }

    @Override // com.octopus.ad.internal.e.a, android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z2, int i2, int i3, int i4, int i5) {
    }

    @Override // com.octopus.ad.internal.e.a, com.octopus.ad.AdLifeControl
    public void onPauseLifeCycle() {
        super.onPauseLifeCycle();
    }

    @Override // com.octopus.ad.internal.e.a, com.octopus.ad.AdLifeControl
    public void onRestartLifeCycle() {
        super.onRestartLifeCycle();
    }

    @Override // com.octopus.ad.internal.e.a, com.octopus.ad.AdLifeControl
    public void onResumeLifeCycle() {
        super.onResumeLifeCycle();
    }

    @Override // com.octopus.ad.internal.e.a, com.octopus.ad.AdLifeControl
    public void onStartLifeCycle() {
        super.onStartLifeCycle();
    }

    @Override // com.octopus.ad.internal.e.a, com.octopus.ad.AdLifeControl
    public void onStopLifeCycle() {
        super.onStopLifeCycle();
    }

    @Override // com.octopus.ad.internal.e.a
    public void r() {
        this.f34878u = true;
    }

    public void setAdImplementation(AdActivity.a aVar) {
        this.f34877B = aVar;
    }

    @Override // android.view.View
    public void setBackgroundColor(int i2) {
        com.octopus.ad.internal.c.f.b(com.octopus.ad.internal.c.f.f34567c, com.octopus.ad.internal.c.f.a(com.octopus.ad.R.string.set_bg));
        this.f34880w = i2;
    }

    public void setCloseButtonDelay(int i2) {
        this.f34881x = Math.min(i2, 10000);
    }

    public void setDismissOnClick(boolean z2) {
        this.f34882y = z2;
    }

    public void t() {
        this.f34879v = true;
    }

    public void u() {
        this.f34879v = false;
    }

    @Override // com.octopus.ad.internal.e.a
    public boolean a(a.C0746a c0746a) {
        com.octopus.ad.internal.c cVar;
        h();
        getAdParameters().a(false);
        this.f34745d = c0746a;
        com.octopus.ad.internal.c.f.b(com.octopus.ad.internal.c.f.f34567c, com.octopus.ad.internal.c.f.a(com.octopus.ad.R.string.load_ad_int));
        if (!a() || (cVar = this.f34746e) == null) {
            return false;
        }
        cVar.a();
        this.f34746e.a(this.f34883z);
        this.f34749h = 1;
        this.f34750i = 0;
        return true;
    }

    @Override // com.octopus.ad.internal.e.a
    public boolean a(c cVar) {
        if (!b(cVar)) {
            b(80102);
            return false;
        }
        c cVar2 = this.f34743b;
        if (cVar2 != null) {
            cVar2.k();
        }
        if (!this.f34878u && !this.f34879v) {
            this.f34743b = cVar;
            this.f34876A.add(new d(cVar, Long.valueOf(System.currentTimeMillis()), false));
            return true;
        }
        if (cVar == null) {
            return true;
        }
        cVar.k();
        return true;
    }

    private boolean a(long j2) {
        int i2;
        boolean z2;
        ArrayList arrayList = new ArrayList();
        Iterator<e> it = this.f34876A.iterator();
        while (true) {
            i2 = 0;
            if (!it.hasNext()) {
                z2 = false;
                break;
            }
            e next = it.next();
            if (next != null && j2 - next.a() <= q.f34985y && j2 - next.a() >= 0 && !next.b()) {
                z2 = true;
                break;
            }
            arrayList.add(next);
        }
        int size = arrayList.size();
        while (i2 < size) {
            Object obj = arrayList.get(i2);
            i2++;
            this.f34876A.remove((e) obj);
        }
        return z2;
    }

    @Override // com.octopus.ad.internal.e.a
    public void a(Context context) {
        if (context == null) {
            return;
        }
        if ((this.f34756o && !this.f34755n) || !this.f34759r) {
            this.f34757p = true;
            this.f34760s = context;
            return;
        }
        com.octopus.ad.internal.c.f.b(com.octopus.ad.internal.c.f.f34567c, com.octopus.ad.internal.c.f.a(com.octopus.ad.R.string.show_int));
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (a(jCurrentTimeMillis) && !this.f34878u) {
            Intent intent = new Intent(context, AdActivity.a());
            intent.addFlags(C.ENCODING_PCM_MU_LAW);
            intent.putExtra("ACTIVITY_TYPE", "INTERSTITIAL");
            intent.putExtra("TIME", jCurrentTimeMillis);
            intent.putExtra("CLOSE_BUTTON_DELAY", this.f34881x);
            f34875t = this;
            try {
                context.startActivity(intent);
                return;
            } catch (Exception unused) {
                f34875t = null;
                return;
            }
        }
        com.octopus.ad.internal.c.f.d(com.octopus.ad.internal.c.f.f34565a, com.octopus.ad.internal.c.f.a(com.octopus.ad.R.string.empty_queue));
    }
}
