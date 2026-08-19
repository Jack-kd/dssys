package com.beizi.fusion;

import com.beizi.fusion.events.EventBean;
import com.beizi.fusion.events.EventCar;
import com.beizi.fusion.s1;
import com.beizi.fusion.s1.a;
import com.beizi.fusion.s1.b;
import com.beizi.fusion.s1.c;
import com.beizi.fusion.s1.d;
import com.beizi.fusion.s1.e;
import com.beizi.fusion.s1.f;
import com.beizi.fusion.s1.g;
import com.beizi.fusion.s1.h;
import com.beizi.fusion.s1.i;
import com.beizi.fusion.s1.j;
import com.beizi.fusion.s1.k;
import java.util.Observable;
import java.util.Observer;

/* loaded from: classes2.dex */
public class lk implements Observer {

    /* renamed from: a, reason: collision with root package name */
    private final s1 f14877a;

    /* renamed from: b, reason: collision with root package name */
    public s1.i f14878b;

    /* renamed from: c, reason: collision with root package name */
    public s1.h f14879c;

    /* renamed from: d, reason: collision with root package name */
    public s1.k f14880d;

    /* renamed from: e, reason: collision with root package name */
    public s1.g f14881e;

    /* renamed from: f, reason: collision with root package name */
    public s1.d f14882f;

    /* renamed from: g, reason: collision with root package name */
    public s1.e f14883g;

    /* renamed from: h, reason: collision with root package name */
    public s1.f f14884h;

    /* renamed from: i, reason: collision with root package name */
    public s1.c f14885i;

    /* renamed from: j, reason: collision with root package name */
    public s1.b f14886j;

    /* renamed from: k, reason: collision with root package name */
    public s1.j f14887k;

    /* renamed from: l, reason: collision with root package name */
    public s1.a f14888l;

    /* renamed from: m, reason: collision with root package name */
    private EventBean f14889m;

    /* renamed from: n, reason: collision with root package name */
    private boolean f14890n = false;

    public lk(EventBean eventBean) {
        this.f14889m = eventBean;
        s1 s1Var = new s1();
        this.f14877a = s1Var;
        this.f14878b = s1Var.new i();
        this.f14879c = s1Var.new h();
        this.f14880d = s1Var.new k();
        this.f14881e = s1Var.new g();
        this.f14882f = s1Var.new d();
        this.f14883g = s1Var.new e();
        this.f14884h = s1Var.new f();
        this.f14885i = s1Var.new c();
        this.f14886j = s1Var.new b();
        this.f14887k = s1Var.new j();
        this.f14888l = s1Var.new a();
    }

    public s1 a() {
        return this.f14877a;
    }

    public EventBean b() {
        return this.f14889m;
    }

    public boolean c() {
        return this.f14890n;
    }

    @Override // java.util.Observer
    public void update(Observable observable, Object obj) {
        if ((observable instanceof s1.l) && (obj instanceof EventBean)) {
            EventBean eventBean = (EventBean) obj;
            mh.a("BeiZis", "channel == " + eventBean.getBuyerId() + ",eventCode = " + eventBean.getEventCode() + ";buyerSpaceId:" + eventBean.getBuyerSpaceUuId() + ",srcType = " + eventBean.getBeiZiSrcType() + ",price = " + eventBean.getBeiZiPrice() + ",bidPrice = " + eventBean.getBidPrice() + ",eventId = " + eventBean.getReqId() + ",buyerSpaceId = " + eventBean.getBuyerSpaceId());
            EventCar.getInstance(q1.i().n()).goRoad(eventBean);
        }
    }

    public void a(boolean z2) {
        this.f14890n = z2;
    }
}
