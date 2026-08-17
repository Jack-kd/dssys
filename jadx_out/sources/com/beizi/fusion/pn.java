package com.beizi.fusion;

import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.view.View;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.nativ.render.interaction.InteractionModel;
import com.beizi.fusion.fd;
import com.beizi.fusion.ze;

/* loaded from: classes2.dex */
public abstract class pn extends r3 implements ad {

    /* renamed from: i, reason: collision with root package name */
    protected SensorManager f15654i;

    /* renamed from: j, reason: collision with root package name */
    private final a f15655j;

    /* renamed from: k, reason: collision with root package name */
    protected final ze f15656k;

    public class a implements SensorEventListener {

        /* renamed from: a, reason: collision with root package name */
        private b f15657a;

        public a() {
        }

        @Override // android.hardware.SensorEventListener
        public void onAccuracyChanged(Sensor sensor, int i2) {
        }

        @Override // android.hardware.SensorEventListener
        public void onSensorChanged(SensorEvent sensorEvent) {
            float[] fArr;
            b bVar = this.f15657a;
            if (bVar == null || (fArr = sensorEvent.values) == null || fArr.length <= 2) {
                return;
            }
            bVar.a(sensorEvent);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a() {
            this.f15657a = pn.this.i();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void b() {
            this.f15657a = null;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void c() {
            b bVarI = pn.this.i();
            this.f15657a = bVarI;
            bVarI.a();
        }
    }

    public interface b {
        void a();

        void a(SensorEvent sensorEvent);
    }

    public pn(Context context) {
        super(context);
        this.f15656k = ze.a.a();
        this.f15655j = new a();
    }

    @Override // com.beizi.fusion.r3, com.beizi.fusion.zc
    public /* bridge */ /* synthetic */ void a(fc fcVar) {
        super.a(fcVar);
    }

    @Override // com.beizi.fusion.r3, com.beizi.fusion.zc
    public void b() {
        super.b();
        a(false);
    }

    @Override // com.beizi.fusion.ad
    public ze c() {
        return this.f15656k;
    }

    @Override // com.beizi.fusion.r3, com.beizi.fusion.ya
    public /* bridge */ /* synthetic */ xa d() {
        return super.d();
    }

    public abstract fd.a f();

    public abstract Sensor[] g();

    public abstract Sensor h();

    public abstract b i();

    public void j() {
        if (this.f15871f.isClickRemoveSensor()) {
            a(false);
            this.f15873h = true;
        }
        a(f());
        this.f15655j.c();
    }

    public void k() {
        if (this.f15654i == null || h() == null || !this.f15870e || this.f15873h) {
            return;
        }
        this.f15655j.a();
        this.f15654i.registerListener(this.f15655j, h(), 1);
        Sensor[] sensorArrG = g();
        try {
            Thread.sleep(300L);
            if (sensorArrG != null) {
                for (Sensor sensor : sensorArrG) {
                    this.f15654i.registerListener(this.f15655j, sensor, 1);
                }
            }
        } catch (InterruptedException e2) {
            throw new RuntimeException(e2);
        }
    }

    @Override // com.beizi.fusion.r3
    public /* bridge */ /* synthetic */ void a(InteractionModel interactionModel) {
        super.a(interactionModel);
    }

    public Boolean a(SensorEvent sensorEvent, int i2) {
        Sensor sensor;
        return Boolean.valueOf((sensorEvent == null || (sensor = sensorEvent.sensor) == null || sensor.getType() != i2 || sensorEvent.values == null) ? false : true);
    }

    @Override // com.beizi.fusion.r3, com.beizi.fusion.zc
    public void a(View view, EnumC1130d enumC1130d) {
        super.a(view, enumC1130d);
        Context context = view.getContext();
        if (context != null) {
            this.f15654i = (SensorManager) context.getApplicationContext().getSystemService("sensor");
        }
    }

    public void a(boolean z2) {
        if (this.f15654i != null) {
            this.f15655j.b();
            this.f15654i.unregisterListener(this.f15655j);
            if (z2 && this.f15871f.isHideRemoveSensor()) {
                this.f15873h = true;
            }
        }
    }

    @Override // com.beizi.fusion.r3, com.beizi.fusion.zc
    public void a() {
        super.a();
        k();
    }
}
