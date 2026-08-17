package com.smartdigimkt.sdk.basead.webtemplet;

import android.content.Context;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import com.anythink.core.common.inner.b.b;
import com.smartdigimkt.e0.t;
import com.smartdigimkt.i0.f;
import com.smartdigimkt.l3.a;
import com.smartdigimkt.m3.c;
import com.smartdigimkt.m3.e;
import com.smartdigimkt.sdk.core.SDKContext;
import com.smartdigimkt.w2.i;
import com.smartdigimkt.w2.j;
import com.smartdigimkt.w2.k;
import com.smartdigimkt.w2.l;
import com.smartdigimkt.w2.y;
import java.io.File;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;

/* loaded from: classes5.dex */
public class WTWebContainerView extends FrameLayout {

    /* renamed from: g, reason: collision with root package name */
    public static final /* synthetic */ int f44065g = 0;

    /* renamed from: a, reason: collision with root package name */
    public final c f44066a;

    /* renamed from: b, reason: collision with root package name */
    public final a f44067b;

    /* renamed from: c, reason: collision with root package name */
    public final k f44068c;

    /* renamed from: d, reason: collision with root package name */
    public WTWebView f44069d;

    /* renamed from: e, reason: collision with root package name */
    public final List f44070e;

    /* renamed from: f, reason: collision with root package name */
    public volatile boolean f44071f;

    public WTWebContainerView(@NonNull Context context) {
        super(context);
        this.f44070e = Collections.synchronizedList(new ArrayList());
        this.f44071f = false;
    }

    public final void a(WTWebView wTWebView) {
        if (this.f44069d == null) {
            if (wTWebView != null) {
                this.f44069d = wTWebView;
            } else {
                this.f44069d = (WTWebView) t.f40027c.remove(t.a(3, (a) null, this.f44066a));
            }
        }
        if (this.f44069d != null) {
            this.f44071f = true;
            synchronized (this.f44070e) {
                try {
                    if (!this.f44070e.isEmpty()) {
                        for (l lVar : this.f44070e) {
                            notifyInnerAdEvent(lVar.f44892a, lVar.f44893b);
                        }
                        this.f44070e.clear();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            this.f44069d.prepare(new j(this));
            this.f44069d.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
            addView(this.f44069d);
        }
    }

    public Object getJsCommunicationObject() {
        WTWebView wTWebView = this.f44069d;
        if (wTWebView != null) {
            return wTWebView.getJsCommunicationObject();
        }
        return null;
    }

    public void init(Object obj) {
        WTWebView wTWebView = (WTWebView) t.f40027c.remove(t.a(3, (a) null, this.f44066a));
        if (wTWebView != null) {
            a(wTWebView);
            return;
        }
        String strC = t.c(this.f44066a);
        String strA = t.a(3, (a) null, this.f44066a);
        try {
            this.f44069d = new WTWebView(SDKContext.getInstance().d());
            String string = new File(strC).toURI().toString();
            y.a(2, this.f44067b, this.f44066a, this.f44069d, new i(this), obj, strA, string);
        } catch (Throwable th) {
            k kVar = this.f44068c;
            if (kVar != null) {
                kVar.a(new f(b.f4585b, "wtWebView create fail with " + th.getMessage()));
            }
        }
    }

    public void notifyInnerAdEvent(int i2, Map<String, Object> map) {
        if (!this.f44071f) {
            synchronized (this.f44070e) {
                this.f44070e.add(new l(i2, map));
            }
        } else {
            WTWebView wTWebView = this.f44069d;
            if (wTWebView != null) {
                wTWebView.notifyInnerAdEvent(i2, map);
            }
        }
    }

    public void release() {
        WTWebView wTWebView = this.f44069d;
        if (wTWebView != null) {
            wTWebView.release();
        }
    }

    public WTWebContainerView(@NonNull Context context, c cVar, a aVar, k kVar) {
        super(context);
        this.f44070e = Collections.synchronizedList(new ArrayList());
        this.f44071f = false;
        this.f44066a = cVar;
        e eVar = aVar.f41644r;
        this.f44067b = aVar;
        this.f44068c = kVar;
    }
}
