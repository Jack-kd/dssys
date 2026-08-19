package com.beizi.fusion;

import android.content.Context;
import android.view.MotionEvent;
import android.view.View;
import com.beizi.fusion.model.AdSpacesBean;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes2.dex */
public class m8 {

    /* renamed from: a, reason: collision with root package name */
    private Context f15063a;

    /* renamed from: b, reason: collision with root package name */
    private AdSpacesBean.BuyerBean.FullScreenClickBean f15064b;

    /* renamed from: c, reason: collision with root package name */
    private AdSpacesBean.BuyerBean.FullScreenClickBean f15065c;

    /* renamed from: e, reason: collision with root package name */
    private int f15067e;

    /* renamed from: d, reason: collision with root package name */
    private b f15066d = null;

    /* renamed from: f, reason: collision with root package name */
    private boolean f15068f = false;

    public class a implements View.OnTouchListener {

        /* renamed from: a, reason: collision with root package name */
        float f15069a;

        /* renamed from: b, reason: collision with root package name */
        float f15070b;

        /* renamed from: c, reason: collision with root package name */
        float f15071c;

        /* renamed from: d, reason: collision with root package name */
        float f15072d;

        /* renamed from: e, reason: collision with root package name */
        float f15073e;

        /* renamed from: f, reason: collision with root package name */
        float f15074f;

        /* renamed from: g, reason: collision with root package name */
        final /* synthetic */ b f15075g;

        public a(b bVar) {
            this.f15075g = bVar;
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            b bVar;
            int action = motionEvent.getAction();
            if (action == 0) {
                this.f15069a = motionEvent.getX();
                this.f15070b = motionEvent.getY();
                this.f15071c = motionEvent.getRawX();
                this.f15072d = motionEvent.getRawY();
                this.f15073e = motionEvent.getX();
                this.f15074f = motionEvent.getY();
            } else if (action != 1) {
                if (action == 2) {
                    this.f15073e = motionEvent.getX();
                    this.f15074f = motionEvent.getY();
                }
            } else if (Math.abs(this.f15073e - this.f15069a) <= 15.0f && Math.abs(this.f15074f - this.f15070b) <= 15.0f && (bVar = this.f15075g) != null) {
                bVar.a(String.valueOf(this.f15069a), String.valueOf(this.f15070b), String.valueOf(this.f15071c), String.valueOf(this.f15072d), String.valueOf(this.f15069a), String.valueOf(this.f15070b), String.valueOf(this.f15071c), String.valueOf(this.f15072d));
            }
            return true;
        }
    }

    public interface b {
        void a(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8);
    }

    public m8(Context context, AdSpacesBean.BuyerBean.FullScreenClickBean fullScreenClickBean, String str) {
        this.f15063a = context;
        this.f15064b = fullScreenClickBean;
        AdSpacesBean.BuyerBean.OrderDataFullScreenClickBean orderDataFullScreenClickBeanA = a(fullScreenClickBean.getOrderData(), str);
        if (orderDataFullScreenClickBeanA != null && orderDataFullScreenClickBeanA.getFullScreenClick() != null) {
            this.f15065c = orderDataFullScreenClickBeanA.getFullScreenClick();
        }
        AdSpacesBean.BuyerBean.FullScreenClickBean fullScreenClickBean2 = this.f15065c;
        if (fullScreenClickBean2 != null) {
            this.f15067e = fullScreenClickBean2.getRandomClickNum();
            return;
        }
        AdSpacesBean.BuyerBean.FullScreenClickBean fullScreenClickBean3 = this.f15064b;
        if (fullScreenClickBean3 != null) {
            this.f15067e = fullScreenClickBean3.getRandomClickNum();
        }
    }

    public void a(View view, b bVar) {
        if (view == null || bVar == null || !a(this.f15067e)) {
            return;
        }
        this.f15068f = true;
        view.setOnTouchListener(new a(bVar));
    }

    public void b() {
        this.f15064b = null;
        this.f15065c = null;
        this.f15066d = null;
        this.f15063a = null;
    }

    public static boolean a(int i2) {
        return ((int) ((Math.random() * 100.0d) + 1.0d)) <= i2;
    }

    private AdSpacesBean.BuyerBean.OrderDataFullScreenClickBean a(List list, String str) {
        if (list != null && str != null) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                AdSpacesBean.BuyerBean.OrderDataFullScreenClickBean orderDataFullScreenClickBean = (AdSpacesBean.BuyerBean.OrderDataFullScreenClickBean) it.next();
                List<String> orderList = orderDataFullScreenClickBean.getOrderList();
                if (orderList != null && orderList.contains(str)) {
                    return orderDataFullScreenClickBean;
                }
            }
        }
        return null;
    }

    public boolean a() {
        return this.f15068f;
    }
}
