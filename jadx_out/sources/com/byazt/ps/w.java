package com.byazt.ps;

import android.animation.PropertyValuesHolder;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 1039, MediaPlayer.MEDIA_PLAYER_OPTION_SET_PIPE_START_OFFSET})
/* loaded from: classes3.dex */
public class w extends hp {

    /* renamed from: a, reason: collision with root package name */
    public float f24508a;

    /* renamed from: e, reason: collision with root package name */
    public Path f24509e;
    public String eb;
    public Path gu;

    /* renamed from: j, reason: collision with root package name */
    public float f24510j;
    public Path jl;
    public float jx;

    /* renamed from: q, reason: collision with root package name */
    public boolean f24511q;

    /* renamed from: s, reason: collision with root package name */
    public boolean f24512s;

    /* renamed from: w, reason: collision with root package name */
    public Paint f24513w;
    public PorterDuffXfermode zy;

    public w(com.byazt.xs.jx jxVar, JSONObject jSONObject) {
        super(jxVar, jSONObject);
        this.f24512s = true;
        this.f24511q = true;
        Paint paint = new Paint();
        this.f24513w = paint;
        paint.setAntiAlias(true);
        this.f24489l.q().setLayerType(2, null);
        this.zy = new PorterDuffXfermode(PorterDuff.Mode.CLEAR);
        this.f24509e = new Path();
        this.gu = new Path();
        this.jl = new Path();
        this.f24513w.setXfermode(this.zy);
    }

    private void jx(Canvas canvas) {
        int iRz;
        int iRz2;
        if (this.f24489l.rz() <= 0.0f) {
            this.f24513w.setXfermode(this.zy);
            canvas.drawRect(0.0f, 0.0f, this.jx, this.f24510j, this.f24513w);
            return;
        }
        iRz = (int) (this.jx * this.f24489l.rz());
        iRz2 = (int) (this.f24510j * this.f24489l.rz());
        this.f24513w.setXfermode(this.zy);
        String str = this.eb;
        str.getClass();
        switch (str) {
            case "bottom":
                canvas.drawRect(0.0f, iRz2, this.jx, this.f24510j, this.f24513w);
                break;
            case "center":
                this.f24509e.reset();
                this.gu.reset();
                this.jl.reset();
                Path.Direction direction = Path.Direction.CW;
                this.f24509e.addCircle(this.jx / 2.0f, this.f24510j / 2.0f, iRz, direction);
                Path path = this.gu;
                float f2 = this.jx;
                path.addRect(f2 / 2.0f, 0.0f, f2, this.f24510j, direction);
                Path path2 = this.gu;
                Path path3 = this.f24509e;
                Path.Op op = Path.Op.DIFFERENCE;
                path2.op(path3, op);
                this.jl.addRect(0.0f, 0.0f, this.jx / 2.0f, this.f24510j, direction);
                this.jl.op(this.f24509e, op);
                canvas.drawPath(this.gu, this.f24513w);
                canvas.drawPath(this.jl, this.f24513w);
                break;
            case "top":
                canvas.drawRect(0.0f, 0.0f, this.jx, this.f24510j - iRz2, this.f24513w);
                break;
            case "left":
                canvas.drawRect(0.0f, 0.0f, this.jx - iRz, this.f24510j, this.f24513w);
                break;
            case "right":
                canvas.drawRect(iRz, 0.0f, this.jx, this.f24510j, this.f24513w);
                break;
        }
    }

    @Override // com.byazt.ps.hp
    public void hp(Canvas canvas) {
        jx(canvas);
    }

    @Override // com.byazt.ps.hp
    public void l() {
        this.f24508a = (float) this.hp.optDouble("start", 0.0d);
        this.eb = this.hp.optString("direction", "center");
    }

    @Override // com.byazt.ps.hp
    public void hp(int i2, int i3) {
        if (i2 > 0 && this.f24512s) {
            this.jx = i2;
            this.f24512s = false;
        }
        if (i3 <= 0 || !this.f24511q) {
            return;
        }
        this.f24510j = i3;
        this.f24511q = false;
    }

    @Override // com.byazt.ps.hp
    public void l(Canvas canvas) {
        jx(canvas);
    }

    @Override // com.byazt.ps.hp
    public List<PropertyValuesHolder> jx() {
        PropertyValuesHolder propertyValuesHolderOfFloat = PropertyValuesHolder.ofFloat(j(), this.f24508a, 1.0f);
        ArrayList arrayList = new ArrayList();
        arrayList.add(propertyValuesHolderOfFloat);
        return arrayList;
    }
}
