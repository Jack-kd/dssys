package com.byazt.wnd;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Point;
import android.graphics.Shader;
import android.view.View;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_SET_AVPH_MAX_AV_DIFF, 1836})
/* loaded from: classes3.dex */
public class BookPageView extends View {

    /* renamed from: a, reason: collision with root package name */
    public Point f26944a;
    public Point eb;
    public Paint hp;

    /* renamed from: j, reason: collision with root package name */
    public Point f26945j;
    public Point jx;

    /* renamed from: l, reason: collision with root package name */
    public Paint f26946l;

    /* renamed from: w, reason: collision with root package name */
    public Point f26947w;

    public BookPageView(Context context) {
        super(context);
        this.hp = new Paint();
        this.f26946l = new Paint();
        this.jx = new Point();
        this.f26945j = new Point();
        this.f26947w = new Point();
        this.f26944a = new Point();
        this.eb = new Point();
        this.hp.setColor(-16711936);
        this.hp.setTextSize(25.0f);
        post(new Runnable() { // from class: com.byazt.wnd.BookPageView.1
            @Override // java.lang.Runnable
            public void run() {
                BookPageView.this.jx.x = r0.getWidth() - 10;
                BookPageView.this.jx.y = r0.getHeight() - 10;
                BookPageView.this.f26946l.setShader(new LinearGradient(0.0f, 0.0f, BookPageView.this.getWidth(), BookPageView.this.getHeight(), -7829368, -12303292, Shader.TileMode.MIRROR));
                BookPageView.this.f26946l.setStyle(Paint.Style.FILL_AND_STROKE);
                BookPageView.this.f26946l.setStrokeWidth(6.0f);
                BookPageView.this.f26946l.setShadowLayer(10.0f, 5.0f, 5.0f, -1);
            }
        });
    }

    public Path getFilterAreaPath() {
        Path path = new Path();
        Point point = this.f26945j;
        path.moveTo(point.x, point.y);
        Point point2 = this.f26944a;
        path.lineTo(point2.x, point2.y);
        Point point3 = this.eb;
        path.lineTo(point3.x, point3.y);
        path.close();
        return path;
    }

    public void hp(Point point) {
        Point point2 = this.jx;
        point2.x = point.x;
        point2.y = point.y;
        invalidate();
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        hp();
        Path path = new Path();
        Point point = this.f26944a;
        path.moveTo(point.x, point.y);
        Point point2 = this.jx;
        path.lineTo(point2.x, point2.y);
        Point point3 = this.eb;
        path.lineTo(point3.x, point3.y);
        path.close();
        canvas.drawPath(path, this.f26946l);
    }

    private void hp() {
        this.f26945j.x = getWidth();
        this.f26945j.y = getHeight();
        Point point = this.f26947w;
        Point point2 = this.jx;
        int i2 = point2.x;
        Point point3 = this.f26945j;
        int i3 = (i2 + point3.x) / 2;
        point.x = i3;
        int i4 = (point2.y + point3.y) / 2;
        point.y = i4;
        Point point4 = this.f26944a;
        int i5 = point3.y;
        point4.x = i3 - (((i5 - i4) * (i5 - i4)) / (point3.x - i3));
        point4.y = i5;
        Point point5 = this.eb;
        point5.x = point3.x;
        int i6 = point.y;
        int i7 = point3.x;
        int i8 = point.x;
        point5.y = i6 - (((i7 - i8) * (i7 - i8)) / (point3.y - i6));
    }
}
